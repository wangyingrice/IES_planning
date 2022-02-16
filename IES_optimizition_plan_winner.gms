$ontext
定义索引集合
$offtext
Sets
        T              Scheduling Period Index      /t1*t24/
;
parameters
       R_gas           Heat Value of Natural Gas  /9.77/
************************************************* 注入综合能源系统的最大电功率和气功率
       Pmax_grid      Maximum Electric Power of PCC /12000/
       Gmax_gas       Maximum Power of Natural Gas Well /60000/
**************************************************CHP机组参数
       eta_chp        Power Generation Efficiency of CHP /0.3/
       r_chp          Thermoelectric Ratio of CHP /1.5/
       Pmax_chp       Maximum Active Power of CHP /9000/
       gama_chp       Cooling Ratio of Waste Heat of CHP /0.6/
       eta_cq         Effiency of Absorption Chiller of CHP /1.2/
       eta_hq         Effiency of Waste Heat Boiler of CHP /0.9/
       Cmax_chp       Maximum Cool Power of CHP /6000/
       Hmax_chp       Maximum Heat Power of CHP /7000/
************************************************** 燃气机组、燃气锅炉、电热炉、电制冷机参数
       Pmax_gt        Maximum Active Power of Gas Turbine /0/
       eta_gt         Energy Efficiency of Gas Turbine /0.4/

       Hmax_gb        Maximum Heat Power of Gas Boiler /0/
       eta_gb         Energy Efficiency of Gas Boiler /0.9/

       Hmax_ph        Maximum Heat Power of Electric Heater /0/
       eta_ph         Energy Efficiency of Electric Heater /0.95/

       Cmax_pc        Maximum Cold Power of Electric Cooler /4000/
       eta_pc         Energy Efficiency of Electric Cooler /3.5/
**************************************************储能装置数据
       lamb_ps        Depreciation Cost Parameter of (Battery Storage Unit-BSU)/0.32/
       eta_loss_ps    Loss rate of BSU for per hour /0.002/
       eta_ps         Storing-Releasing Efficiency of BSU /0.95/
       PSmax_ps       Maximum Storing Power of BSU /2000/
       PSmin_ps       Minimum Storing Power of BSU /0/
       PRmax_ps       Maximum Releasing Power of BSU /2000/
       PRmin_ps       Minimum Releasing Power of BSU /0/
       Smax_ps        Maximum Capacity Limilation of BSU  /8000/
       Smin_ps        Minimum Capacity Limitation of BSU  /800/
       Sinit_ps       Initial Capacity of BSU             /800/

       lamb_hs        Depreciation Cost Parameter of (Heat Storage Unit-HSU)/0.25/
       eta_loss_hs    Loss rate of HSU for per hour /0.003/
       eta_hs         Storing-Releasing Efficiency of HSU /0.98/
       HSmax_hs       Maximum Storing Heat of HSU /1000/
       HSmin_hs       Minimum Storing Heat of HSU /0/
       HRmax_hs       Maximum Releasing Heat of HSU /1000/
       HRmin_hs       Minimum Releasing Heat of HSU /0/
       Smax_hS        Maximum Capacity Limilation of HSU  /4000/
       Smin_hS        Minimum Capacity Limitation of HSU  /400/
       Sinit_hs       Initial Capacity of HSU             /400/

       lamb_cs        Depreciation Cost Parameter of (Cool Storage Unit-CSU)/0.20/
       eta_loss_cs    Loss rate of CSU for per hour /0.002/
       Eta_cs         Storing-Releasing Efficiency of CSU /0.98/
       CSmax_cs       Maximum Storing Cold of CSU /2000/
       CSmin_cs       Mminimum Storing Cold of CSU /0/
       CRmax_cs       Maximum Releasing Cold of CSU /2000/
       CRmin_cs       Minimum Releasing Cold of CSU /0/
       Smax_cS        Maximum Capacity limilation of CSU  /8000/
       Smin_cS        Minimum Capacity limitation of CSU  /800/
       Sinit_cs       Initial Capacity of CSU             /800/

**************************************************设备投资价格
       Minv_chp       Insvesment cost per unit capacity of CHP /4000/
       Minv_rhe       Insvesment cost per unit capacity of Residual Heat Exchanger /122/
       Minv_ac        Insvesment cost per unit capacity of Absorption Chiller /789/
       Minv_gt        Insvesment cost per unit capacity of Gas Turbine /4188/
       Minv_gb        Insvesment cost per unit capacity of Gas Boiler /782/
       Minv_pc        Insvesment cost per unit capacity of Electric Refrigerator /598/
       Minv_ph        Insvesment cost per unit capacity of Electric Heater /1047/
       Minv_CSU       Insvesment cost per unit capacity of CSU /95/
       Minv_HSU       Insvesment cost per unit capacity of HSU /95/
       Minv_BSU       Insvesment cost per unit capacity of BSU /544/

**************************************************设备维护价格
       lamb_chp       Maintenance cost per unit of CHP /0.0542/
       lamb_rhe       Maintenance cost per unit of Residual Heat Exchanger /0.013/
       lamb_ac        Maintenance cost per unit of Absorption Chiller /0.008/
       lamb_gt        Maintenance cost per unit of Gas Turbine /0.0223/
       lamb_gb        Maintenance cost per unit of Gas Boiler /0.002/
       lamb_pc        Maintenance cost per unit of Electric Refrigerator /0.0099/
       lamb_ph        Maintenance cost per unit of Electric Heater /0.025/
       lamb_CSU       Maintenance cost per unit of CSU /0.001/
       lamb_HSU       Maintenance cost per unit of HSU /0.001/
       lamb_BSU       Maintenance cost per unit of BSU /0.001/

**************************************************季节天数
       Day            Typical Days /365/

**************************************************分时电价和分时气价
       lamb_grid(T)    Buying Electricity Price  /t1 0.35, t2 0.35, t3 0.35, t4 0.35, t5 0.35, t6 0.35, t7 0.35, t8 0.35,
                                                  t9 1.65, t10 1.65, t11 1.65, t12 1.65,
                                                  t13 0.95, t14 0.95, t15 0.95, t16 0.95, t17 0.85,
                                                  t18 1.65, t19 1.65, t20 1.65, t21 1.65,
                                                  t22 0.95, t23 0.95, t24 0.95/

       lamb_gas(T)    Buying Natural Gas Price    /t1 2.7, t2 2.7, t3 2.7, t4 2.7, t5 2.7, t6 2.7, t7 2.7,
                                                   t8 3.3, t9 3.3, t10 3.3, t11 3.3, t12 3.3,
                                                   t13 3.0, t14 3.0, t15 3.0, t16 3.0,
                                                   t17 3.3, t18 3.3, t19 3.3, t20 3.3,
                                                   t21 3.0,t22 3.0, t23 3.0, t24 3.0/

**************************************************不可替代负荷数据
       Cmax_load      Rated Cold Load  /11000/
       Hmax_load      Rated Heat Load  /8000/
       Pmax_load      Rated Electric Load /15000/
       Gmax_load      Rated Gas Load  /10000/

       c_rate(T)      Loading Rate of Cold Load   /t1 0.5, t2 0.48, t3 0.45, t4 0.4, t5 0.4, t6 0.43, t7 0.45, t8 0.5,
                                                   t9 0.7, t10 0.85, t11 0.95, t12 0.95, t13 0.93, t14  0.95, t15 1.0, t16 0.95,
                                                   t17 0.8, t18 0.7, t19 0.7, t20 0.68, t21 0.65, t22 0.64, t23 0.63, t24 0.62/

       h_rate(T)      Loading Rate of Heat Load   /t1 0.4, t2 0.4, t3 0.36, t4 0.3, t5 0.3, t6 0.4, t7 0.5, t8 0.6,
                                                   t9 0.66, t10 0.76, t11 0.9, t12 0.96, t13 0.9, t14 0.86, t15 0.8, t16 0.8,
                                                   t17 0.7, t18 0.7, t19 0.95, t20 1.0, t21 1.0, t22 0.8, t23 0.6, t24 0.3/

       p_rate(T)      Loading Rate of Power Load  /t1 0.3, t2 0.28, t3 0.25, t4 0.22, t5 0.23, t6 0.25, t7 0.3, t8 0.45,
                                                   t9 0.6, t10 0.75, t11 0.9, t12 0.95, t13 0.9, t14 0.85, t15 0.9, t16 0.95,
                                                   t17 0.9, t18 0.75, t19 0.6, t20 0.7, t21 0.65, t22 0.5, t23 0.4, t24 0.4/

       g_rate(T)      Loading Rate of Gas Load    /t1 0.15, t2 0.15, t3 0.14, t4 0.15, t5 0.2, t6 0.28, t7 0.35, t8 0.42,
                                                   t9 0.5, t10 0.6, t11 0.65, t12 0.65, t13 0.6, t14 0.6, t15 0.55, t16 0.53,
                                                   t17 0.65, t18 0.7, t19 0.62, t20 0.5, t21 0.42, t22 0.3, t23 0.25, t24 0.24/
;
binary Variables
       US_ps(T)             Auxiliary Variable for Storage of BSU
       UR_ps(T)             Auxiliary Variable for Releasing of BSU
       US_hs(T)             Auxiliary Variable for Storage of HSU
       UR_hs(T)             Auxiliary Variable for Releasing of HSU
       US_cs(T)             Auxiliary Variable for Storage of CSU
       UR_cs(T)             Auxiliary Variable for Releasing of CSU
;
positive Variables
      FP                  Cost of Buying Electricity
      FG                  Cost of Buying Natural Gas
      FS                  Depreciation Cost of Energy Storage Unit
      FINV                Cost of equipment investment
      FM                  Cost of equipment maintenance
;

Variables
      obj                Objective Function

      P_grid(T)          Active Power of PCC
      G_gas(T)           Power of Natural Gas Well
*************************************储能设备
      PS_ps(T)           Storing Power of BSU
      PR_ps(T)           Releasing Power of BSU
      S_ps(T)            Capacity Sate of BSU

      HS_hs(T)           Storing Heat of HSU
      HR_hs(T)           Releasing Heat of HSU
      S_hs(T)            Capacity Sate of HSU

      CS_cs(T)           Storing Cold of CSU
      CR_cs(T)           Releasing Cold of CSU
      S_cs(T)            Capacity Sate of CSU
*************************************CHP设备、燃气轮机、燃气锅炉、电热炉、电制冷机参数
      P_chp(T)           Electric Power Output of CHP
      G_chp(T)           Consumed Gas Power of CHP
      Q_chp(T)           Waste Heat Power of CHP
      H_chp(T)           Heat Power Output of CHP
      C_chp(T)           Cool Power Output of CHP

      P_gt(T)            Power Output of GT
      G_gt(T)            Consumed Gas Power of GT

      H_gb(T)            Heat Power Output of GB
      G_gb(T)            Consumed Gas Power of GB

      H_ph(T)            Heat Power Output of Electric Heating Furnace
      P_ph(T)            Consumed Electric Power of Electric Heating Furnace

      C_pc(T)            Heat Power Output of  Electric Cooler
      P_pc(T)            Consumed Electric Power of Electric Cooler
;
************************************设备上下限出力限制

*************PCC处的电功率限制
      P_grid.lo(T)=0;
      P_grid.up(T)=Pmax_grid;
*************气井功率限制
      G_gas.lo(T)=0;
      G_gas.up(T)=Gmax_gas;
*************CHP电功率限制
      P_chp.lo(T)=0;
      P_chp.up(T)=Pmax_chp;
*************燃气机组电功率输出限制
      P_gt.lo(T)=0;
      P_gt.up(T)=Pmax_gt;
**************燃气锅炉热功率输出限制
      H_gb.lo(T)=0;
      H_gb.up(T)=Hmax_gb;
*************电热炉热功率输出限制
      H_ph.lo(T)=0;
      H_ph.up(T)=Hmax_ph;;
*************电制冷机冷功率输出限制
      C_pc.lo(T)=0;
      C_pc.up(T)=Cmax_pc;

Equations
      ObjFunc                     Total Cost of IES Equation
      Cost_FP                     Cost for Buying Electricity
      Cost_FG                     Cost for Buying Natural Gas
      Cost_FS                     Cost for ESU Degeneration
      Cost_FINV                   Cost of equipment investment
      Cost_FM                     Cost of equipment maintenance
***************************************
      Balance_C(T)                Cool Power Balance Equation
      Balance_H(T)                Heat Power Balance Equation
      Balance_P(T)                Electric Power Balance Equation
      Balance_G(T)                Gas Power Balance Equation
***************************************
      Effi_P_CHP(T)               Electric Power Output of CHP
      Effi_Q_CHP(T)               Wast Heat Power of CHP
      Effi_H_CHP(T)               Heat Power Output of CHP
      Effi_C_CHP(T)               Cool Power Output of CHP
***************************************
      Effi_P_GT(T)                Electric Power Output of GT
      Effi_H_GB(T)                Heat Power Output of GT
      Effi_H_PH(T)                Heat Power Output of Electric Heater
      Effi_C_PC(T)                Cool Power Output of Electric Cooler
***************************************

      BSU_1(T)                    Storing & Releasing Energy Balance of BSU
      BSU_2_1(T)                  Capacity Limit of BSU
      BSU_2_2(T)
      BSU_3                       Initial State of BSU
      BSU_4                       Energy Return of BSU
      BSU_5_1(T)                  Storing Power limit of BSU
      BSU_5_2(T)
      BSU_6_1(T)                  Releasing Power limit of BSU
      BSU_6_2(T)
      BSU_7(T)                    Mutual Exclusion for Storing & Releasing Energy of BSU
***************************************

      HSU_1(T)                    Storing & Releasing Energy Balance of HSU
      HSU_2_1(T)                  Capacity Limit of HSU
      HSU_2_2(T)
      HSU_3                       Initial State of HSU
      HSU_4                       Energy Return of HSU
      HSU_5_1(T)                  Storing Power limit of HSU
      HSU_5_2(T)
      HSU_6_1(T)                  Releasing Power limit of HSU
      HSU_6_2(T)

      HSU_7(T)                    Mutual Exclusion for Storing & Releasing Energy of HSU

***************************************
      CSU_1(T)                    Storing & Releasing Energy Balance of CSU
      CSU_2_1(T)                  Capacity Limit of CSU
      CSU_2_2(T)
      CSU_3                       Initial State of CSU
      CSU_4                       Energy Return of CSU
      CSU_5_1(T)                  Storing Power limit of CSU
      CSU_5_2(T)
      CSU_6_1(T)                  Releasing Power limit of CSU
      CSU_6_2(T)
      CSU_7(T)                    Mutual Exclusion for Storing & Releasing Energy of CSU

;
*********************成本函数
        ObjFunc            ..Obj=e=FINV+FM+FP+FG+FS;
        Cost_FP            ..FP=e=Day*sum(T,lamb_grid(T)*P_grid(T));
        Cost_FG            ..FG=e=Day*sum(T,lamb_gas(T)*G_gas(T)/R_gas);
        Cost_FS            ..FS=e=Day*sum(T,lamb_ps*PS_ps(T)+lamb_hs*HS_hs(T)+lamb_cs*CS_cs(T));
        Cost_FINV          ..FINV=e=1.06*(Minv_chp*Pmax_chp+Minv_rhe*Hmax_chp+Minv_ac*Cmax_chp+Minv_gt*Pmax_gt+Minv_gb*Hmax_gb+Minv_pc*Cmax_pc+Minv_ph*Hmax_ph+Minv_CSU*Smax_cS+Minv_HSU*Smax_hS+Minv_BSU*Smax_ps);
        Cost_FM            ..FM=e=Day*sum(T,lamb_chp*P_chp(T)+lamb_rhe*H_chp(T)+lamb_ac*C_chp(T)+lamb_gt*P_gt(T)+lamb_gb*H_gb(T)+lamb_pc*C_pc(T)+lamb_ph*H_ph(T));
*********************冷功率平衡
        Balance_C(T)       ..C_chp(T)+C_pc(T)+CR_cs(T)-CS_cs(T)=e=Cmax_load*c_rate(T);
        Balance_H(T)       ..H_chp(T)+H_gb(T)+H_ph(T)+HR_hs(T)-HS_hs(T)=e=Hmax_load*h_rate(T);
        Balance_P(T)       ..P_grid(T)+P_chp(T)+P_gt(T)+PR_ps(T)-PS_ps(T)-P_ph(T)-P_pc(T)=e=Pmax_load*p_rate(T);
        Balance_G(T)       ..G_gas(T)-G_chp(T)-G_gt(T)-G_gb(T)=g=Gmax_load*g_rate(T);
*********************CHP设备运行效率
        Effi_P_CHP(T)      ..P_chp(T)=e=eta_chp*G_chp(T);
        Effi_Q_CHP(T)      ..Q_chp(T)=e=r_chp*P_chp(T);
        Effi_H_CHP(T)      ..H_chp(T)=e=eta_hq*gama_chp*Q_chp(T);
        Effi_C_CHP(T)      ..C_chp(T)=e=eta_cq*(1-gama_chp)*Q_chp(T);
*********************燃气机组运行效率
        Effi_P_GT(T)      ..P_gt(T)=e=eta_gt*G_gt(T);
*********************燃气锅炉运行效率
        Effi_H_GB(T)      ..H_gb(T)=e=eta_gb*G_gb(T);
*********************电热炉运行效率
        Effi_H_PH(T)      ..H_ph(T)=e=eta_ph*P_ph(T);
*********************电制冷机运行效率
        Effi_C_PC(T)      ..C_pc(T)=e=eta_pc*P_pc(T);
*********************储能运行约束
        BSU_1(T)$(ord(T)>=2)   ..S_ps(T)=e=(1-eta_loss_ps)*S_ps(T-1)+eta_ps*PS_ps(T)-PR_ps(T)/eta_ps;
        BSU_2_1(T)             ..Smin_ps=l=S_ps(T);
        BSU_2_2(T)             ..S_ps(T)=l=Smax_ps;
        BSU_3                  ..S_ps('t1')=e=(1-eta_loss_ps)*Sinit_ps+eta_ps*PS_ps('t1')-PR_ps('t1')/eta_ps;
        BSU_4                  ..S_ps('t24')=e=Sinit_ps;
        BSU_5_1(T)             ..US_ps(T)*PSmin_ps=l=PS_ps(T);
        BSU_5_2(T)             ..PS_ps(T)=l=US_ps(T)*PSmax_ps;
        BSU_6_1(T)             ..UR_ps(T)*PRmin_ps=l=PR_ps(T);
        BSU_6_2(T)             ..PR_ps(T)=l=UR_ps(T)*PRmax_ps;
        BSU_7(T)               ..US_ps(T)+UR_ps(T)=l=1;

        HSU_1(T)$(ord(T)>=2)   ..S_hs(T)=e=(1-eta_loss_hs)*S_hs(T-1)+eta_hs*HS_hs(T)-HR_hs(T)/eta_hs;
        HSU_2_1(T)             ..Smin_hs=l=S_hs(T);
        HSU_2_2(T)             ..S_hs(T)=l=Smax_hs;
        HSU_3                  ..S_hs('t1')=e=(1-eta_loss_hs)*Sinit_hs+eta_hs*HS_hs('t1')-HR_hs('t1')/eta_hs;
        HSU_4                  ..S_hs('t24')=e=Sinit_hs;
        HSU_5_1(T)             ..US_hs(T)*HSmin_hs=l=HS_hs(T);
        HSU_5_2(T)             ..HS_hs(T)=l=US_hs(T)*HSmax_hs;
        HSU_6_1(T)             ..UR_hs(T)*HRmin_hs=l=HR_hs(T);
        HSU_6_2(T)             ..HR_hs(T)=l=UR_hs(T)*HRmax_hs;
        HSU_7(T)               ..US_hs(T)+UR_hs(T)=l=1;

        CSU_1(T)$(ord(T)>=2)   ..S_cs(T)=e=(1-eta_loss_cs)*S_cs(T-1)+eta_cs*CS_cs(T)-CR_cs(T)/eta_cs;
        CSU_2_1(T)             ..Smin_cs=l=S_cs(T);
        CSU_2_2(T)             ..S_cs(T)=l=Smax_cs;
        CSU_3                  ..S_cs('t1')=e=(1-eta_loss_cs)*Sinit_cs+eta_cs*CS_cs('t1')-CR_cs('t1')/eta_cs;
        CSU_4                  ..S_cs('t24')=e=Sinit_cs;
        CSU_5_1(T)             ..US_cs(T)*CSmin_cs=l=CS_cs(T);
        CSU_5_2(T)             ..CS_cs(T)=l=US_cs(T)*CSmax_cs;
        CSU_6_1(T)             ..UR_cs(T)*CRmin_cs=l=CR_cs(T);
        CSU_6_2(T)             ..CR_cs(T)=l=UR_cs(T)*CRmax_cs;
        CSU_7(T)               ..US_cs(T)+UR_cs(T)=l=1;

**********************************选择求解器
OPTION
          MIP =Cplex;
*          MIP =bonmin
**********************************
MODEL
          IES_Optimiztion /all/;

SOLVE
          IES_Optimiztion using MIP minimizing Obj;

DISPLAY
         Obj.l
          FINV.l
          FM.l
          FP.l
          FG.l
          FS.l;









