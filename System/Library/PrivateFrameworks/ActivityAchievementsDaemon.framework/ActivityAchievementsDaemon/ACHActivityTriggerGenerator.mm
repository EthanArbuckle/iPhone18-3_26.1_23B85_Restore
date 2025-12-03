@interface ACHActivityTriggerGenerator
+ (unint64_t)allPossibleTriggers;
- ($A5E8A54F69D71102DC6A95EAED28A9DA)_incrementWithInitialState:(SEL)state forGoalType:(id *)type dataProvider:(int64_t)provider goalMetHandler:(id)handler;
- (ACHActivityTriggerGenerator)initWithPauseRingsCoordinator:(id)coordinator;
- (unint64_t)_triggersForNewActivityDataWithGoalType:(int64_t)type dataProvider:(id)provider goalMetHandler:(id)handler;
@end

@implementation ACHActivityTriggerGenerator

+ (unint64_t)allPossibleTriggers
{
  v2 = ACHGoalCompletionTrigger(0);
  v3 = ACHGoalCompletionTrigger(3);
  v4 = ACHGoalCompletionTrigger(1);
  return v2 | v3 | v4 | ACHGoalCompletionTrigger(2) | 0x3C9;
}

- (ACHActivityTriggerGenerator)initWithPauseRingsCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = ACHActivityTriggerGenerator;
  v6 = [(ACHActivityTriggerGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pauseRingsCoordinator, coordinator);
  }

  return v7;
}

- (unint64_t)_triggersForNewActivityDataWithGoalType:(int64_t)type dataProvider:(id)provider goalMetHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v10 = objc_autoreleasePoolPush();
  v11 = 0uLL;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  if (providerCopy)
  {
    [providerCopy currentStateForGoalType:type];
    v11 = 0uLL;
  }

  v43 = v11;
  v44 = v11;
  v41 = v11;
  v42 = v11;
  v39 = v11;
  v40 = v11;
  v37 = v11;
  v38 = v11;
  v36 = v11;
  v33 = v51;
  v34 = v52;
  v35 = v53;
  v29 = v47;
  v30 = v48;
  v31 = v49;
  v32 = v50;
  v27 = v45;
  v28 = v46;
  [(ACHActivityTriggerGenerator *)self _incrementWithInitialState:&v27 forGoalType:type dataProvider:providerCopy goalMetHandler:handlerCopy];
  v33 = v42;
  v34 = v43;
  v35 = v44;
  v29 = v38;
  v30 = v39;
  v31 = v40;
  v32 = v41;
  v27 = v36;
  v28 = v37;
  [providerCopy setNewState:&v27 forGoalType:type];
  todayActivitySummary = [providerCopy todayActivitySummary];
  isPaused = [todayActivitySummary isPaused];

  if ((isPaused & 1) == 0)
  {
    if (LOBYTE(v44.f64[0]) == 1)
    {
      v16 = ACHGoalCompletionTrigger(type);
      if ([providerCopy allGoalsMetToday])
      {
        v17 = v16 | 0x40;
      }

      else
      {
        v17 = v16;
      }
    }

    else
    {
      v17 = 0;
    }

    v18 = type == 3 || type == 0;
    if (v18)
    {
      v14.f64[0] = v38.f64[0];
      if (v38.f64[0] > 2.22044605e-16)
      {
        v14 = vrndmq_f64(vdivq_f64(v37, vdupq_lane_s64(*&v38.f64[0], 0)));
        v18 = v14.f64[1] == v14.f64[0];
        v14.f64[0] = 1.0;
        v19 = v18 || v14.f64[1] <= 1.0;
        v20 = 8;
        if (v19)
        {
          v20 = 0;
        }

        v17 |= v20;
      }
    }

    switch(type)
    {
      case 1:
        v21 = 256;
        break;
      case 2:
LABEL_37:
        v15 = v17 | BYTE1(v44.f64[0]);
        goto LABEL_38;
      case 3:
        v21 = 512;
        break;
      default:
        v21 = 128;
        break;
    }

    todayActivitySummary2 = [providerCopy todayActivitySummary];
    if ([todayActivitySummary2 activityMoveMode] == 2 && -[ACHActivityTriggerGenerator _goalTypeIsMoveType:](self, "_goalTypeIsMoveType:", type))
    {
      v23 = &v43;
    }

    else
    {
      v23 = &v42.f64[1];
    }

    v24 = *v23;

    if (v37.f64[1] <= v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = v21;
    }

    v17 |= v25;
    goto LABEL_37;
  }

  v15 = 0;
LABEL_38:
  objc_autoreleasePoolPop(v10);

  return v15;
}

- ($A5E8A54F69D71102DC6A95EAED28A9DA)_incrementWithInitialState:(SEL)state forGoalType:(id *)type dataProvider:(int64_t)provider goalMetHandler:(id)handler
{
  v142 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v93 = a7;
  providerCopy = provider;
  v92 = ACHGoalDisplayName(provider);
  if (![handlerCopy todayIndex])
  {
    v29 = *&type->var14;
    *&retstr->var12 = *&type->var12;
    *&retstr->var14 = v29;
    *&retstr->var16 = *&type->var16;
    v30 = *&type->var6;
    *&retstr->var4 = *&type->var4;
    *&retstr->var6 = v30;
    v31 = *&type->var10;
    *&retstr->var8 = *&type->var8;
    *&retstr->var10 = v31;
    v32 = *&type->var2;
    *&retstr->var0 = *&type->var0;
    *&retstr->var2 = v32;
    goto LABEL_61;
  }

  v124 = 0;
  v125 = &v124;
  v11 = *&type->var14;
  v134 = *&type->var12;
  v135 = v11;
  v136 = *&type->var16;
  v12 = *&type->var6;
  v130 = *&type->var4;
  v131 = v12;
  v13 = *&type->var10;
  v132 = *&type->var8;
  v133 = v13;
  v14 = *&type->var2;
  v128 = *&type->var0;
  v129 = v14;
  v127 = &unk_221E74077;
  v94 = *(&v128 + 1) - v128;
  v126 = 0xB010000000;
  if ((*(&v128 + 1) - v128 + 86399) >= 0x2A2FF)
  {
    *&v129 = 0;
  }

  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  [handlerCopy todayIndex];
  v96 = _HKActivityCacheDateComponentsFromCacheIndex();
  v15 = [hk_gregorianCalendar dateFromComponents:?];
  v16 = [hk_gregorianCalendar hk_dateBySubtractingDays:1 fromDate:v15];
  v17 = _HKCacheIndexFromDate();
  [v96 year];
  [v96 month];
  v90 = ACHDateComponentsForYearMonthDay();
  v18 = ACHStartOfFitnessWeekBeforeDateInCalendar();
  v19 = [hk_gregorianCalendar components:28 fromDate:v18];
  v78 = v16;
  v79 = v18;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  pauseRings = [features pauseRings];

  v23 = v93;
  v24 = v93[2](v93, v125[9], v125[10]);
  v25 = v23[2](v23, v125[6], v125[8]);
  v88 = v23[2](v23, v125[7], v125[8]);
  if (!pauseRings)
  {
    v84 = 0;
    ringsPausedToday = 0;
    v28 = 0;
    if (v17 >= *(v125 + 4))
    {
      v26 = *(v125 + 4);
    }

    else
    {
      v26 = v17;
    }

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v82 = 0;
    goto LABEL_16;
  }

  ringsPausedToday = [handlerCopy ringsPausedToday];
  if (v17 >= *(v125 + 4))
  {
    v26 = *(v125 + 4);
  }

  else
  {
    v26 = v17;
  }

  pauseRingsCoordinator = [(ACHActivityTriggerGenerator *)self pauseRingsCoordinator];
  v84 = [pauseRingsCoordinator isPausedForActivitySummaryCacheIndexStart:v26 end:v17];

  v28 = ringsPausedToday;
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_9:
  v82 = v88 & (ringsPausedToday ^ 1);
LABEL_16:
  if (v94 > 172799)
  {
    v33 = 1;
  }

  else
  {
    v33 = v24 ^ 1;
  }

  year = [v19 year];
  if (year == [v96 year] && (v35 = objc_msgSend(v19, "month"), v35 == objc_msgSend(v96, "month")))
  {
    v36 = [v19 day];
    v83 = v36 == [v96 day];
  }

  else
  {
    v83 = 0;
  }

  year2 = [v90 year];
  if (year2 == [v96 year] && (v38 = objc_msgSend(v90, "month"), v38 == objc_msgSend(v96, "month")))
  {
    v39 = [v90 day];
    v81 = v39 == [v96 day];
  }

  else
  {
    v81 = 0;
  }

  v40 = ACHLogAwardEngine();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    todayIndex = [handlerCopy todayIndex];
    *buf = 134217984;
    *v138 = todayIndex;
    _os_log_impl(&dword_221DDC000, v40, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Today's Index: %ld", buf, 0xCu);
  }

  v80 = v28;

  v42 = ACHLogAwardEngine();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v138 = v96;
    _os_log_impl(&dword_221DDC000, v42, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Today's Date Components: %@", buf, 0xCu);
  }

  v43 = ACHLogAwardEngine();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = @"NO";
    if (pauseRings)
    {
      v44 = @"YES";
    }

    *buf = 138412290;
    *v138 = v44;
    _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Pause Rings Feature Enabled: %@", buf, 0xCu);
  }

  v45 = ACHLogAwardEngine();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = @"NO";
    if (ringsPausedToday)
    {
      v46 = @"YES";
    }

    *buf = 138412290;
    *v138 = v46;
    _os_log_impl(&dword_221DDC000, v45, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Today is paused: %@", buf, 0xCu);
  }

  v47 = ACHLogAwardEngine();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(v125 + 4);
    *buf = 134217984;
    *v138 = v48;
    _os_log_impl(&dword_221DDC000, v47, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Last Checked Summary Index: %lld", buf, 0xCu);
  }

  v49 = ACHLogAwardEngine();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = @"NO";
    *buf = 134218498;
    *v138 = v26;
    if (v84)
    {
      v50 = @"YES";
    }

    *&v138[8] = 2048;
    v139 = v17;
    v140 = 2112;
    v141 = v50;
    _os_log_impl(&dword_221DDC000, v49, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Paused since last checked index (%lld -> %lld): %@", buf, 0x20u);
  }

  v51 = ACHLogAwardEngine();
  v52 = v33 & (v84 ^ 1);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *v138 = v52;
    *&v138[4] = 1024;
    *&v138[6] = v83;
    LOWORD(v139) = 1024;
    *(&v139 + 2) = v81;
    _os_log_impl(&dword_221DDC000, v51, OS_LOG_TYPE_DEFAULT, "[ACHActivityTriggerGenerator] Should Reset Streak [All, Week, Month]: [%{BOOL}d, %{BOOL}d, %{BOOL}d]", buf, 0x14u);
  }

  v77 = v52;

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke;
  aBlock[3] = &unk_278492028;
  v53 = v92;
  v121 = v53;
  v122 = &v124;
  v123 = v94 / 86400;
  v85 = _Block_copy(aBlock);
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307;
  v114[3] = &unk_278492050;
  v54 = v53;
  v115 = v54;
  v118 = &v124;
  v119 = v94 / 86400;
  v55 = v15;
  v116 = v55;
  v56 = v19;
  v117 = v56;
  v57 = _Block_copy(v114);
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308;
  v108[3] = &unk_278492050;
  v58 = v54;
  v109 = v58;
  v112 = &v124;
  v113 = v94 / 86400;
  v59 = v55;
  v110 = v59;
  v60 = v90;
  v111 = v60;
  v61 = _Block_copy(v108);
  v105[0] = MEMORY[0x277D85DD0];
  v105[1] = 3221225472;
  v105[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309;
  v105[3] = &unk_278490FE8;
  v107 = &v124;
  v106 = v58;
  v62 = _Block_copy(v105);
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_310;
  v102[3] = &unk_278492078;
  v103 = v88;
  v102[4] = &v124;
  v104 = v80;
  v63 = _Block_copy(v102);
  v97[0] = MEMORY[0x277D85DD0];
  v97[1] = 3221225472;
  v97[2] = __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_2;
  v97[3] = &unk_278490980;
  v64 = handlerCopy;
  v98 = v64;
  selfCopy = self;
  v100 = &v124;
  v101 = providerCopy;
  v65 = _Block_copy(v97);
  if (v94 > 86399)
  {
    if (v77)
    {
      v85[2]();
    }

    if ((ringsPausedToday & 1) == 0)
    {
      ++*(v125 + 16);
      v65[2](v65);
    }
  }

  if (v81)
  {
    v61[2](v61);
  }

  if (v83)
  {
    v57[2](v57);
  }

  if (v82)
  {
    v62[2](v62);
  }

  v63[2](v63);
  todayIndex2 = [v64 todayIndex];
  v67 = v125;
  v68 = v125;
  *(v125 + 4) = todayIndex2;
  v69 = v68 + 4;
  v70 = v88;
  if (v88)
  {
    v70 = v82 & (ringsPausedToday ^ 1);
  }

  *(v67 + 160) = v70;
  *(v67 + 161) = (v94 - 86400) < 0x15180;
  v71 = v69[7];
  *&retstr->var12 = v69[6];
  *&retstr->var14 = v71;
  v72 = v69[3];
  *&retstr->var4 = v69[2];
  *&retstr->var6 = v72;
  v73 = v69[5];
  *&retstr->var8 = v69[4];
  *&retstr->var10 = v73;
  v74 = v69[1];
  *&retstr->var0 = *v69;
  *&retstr->var2 = v74;
  *&retstr->var16 = v69[8];

  _Block_object_dispose(&v124, 8);
LABEL_61:

  v76 = *MEMORY[0x277D85DE8];
  return result;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke(void *a1)
{
  v2 = ACHLogAwardEngine();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_cold_1(a1);
  }

  *(*(a1[5] + 8) + 88) = 0;
  *(*(a1[5] + 8) + 96) = 0;
  *(*(a1[5] + 8) + 104) = 0;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307(void *a1)
{
  v2 = ACHLogAwardEngine();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307_cold_1(a1);
  }

  *(*(a1[7] + 8) + 96) = 0;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308(void *a1)
{
  v2 = ACHLogAwardEngine();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308_cold_1(a1);
  }

  *(*(a1[7] + 8) + 104) = 0;
}

double __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309(uint64_t a1)
{
  v2 = a1 + 40;
  ++*(*(*(a1 + 40) + 8) + 88);
  ++*(*(*(a1 + 40) + 8) + 96);
  ++*(*(*(a1 + 40) + 8) + 104);
  ++*(*(*(a1 + 40) + 8) + 120);
  v3 = ACHLogAwardEngine();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_1(a1, v2);
  }

  v4 = *(*v2 + 8);
  if (*(v4 + 88) > *(v4 + 112))
  {
    v5 = ACHLogAwardEngine();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_2(a1, v2);
    }

    *(*(*v2 + 8) + 112) = *(*(*v2 + 8) + 88);
    v4 = *(*v2 + 8);
  }

  result = *(v4 + 64);
  if (result > *(v4 + 152))
  {
    v7 = ACHLogAwardEngine();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_3(a1, v2);
    }

    v8 = *(*v2 + 8);
    result = *(v8 + 64);
    *(v8 + 152) = result;
  }

  return result;
}

uint64_t __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_310(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(*(result + 32) + 8);
    v2 = *(v1 + 64);
    if (v2 > *(v1 + 152) && (*(result + 41) & 1) == 0)
    {
      *(v1 + 152) = v2;
    }
  }

  return result;
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) yesterdayActivitySummary];
  if ([v2 activityMoveMode] == 2)
  {
    v3 = [*(a1 + 40) _goalTypeIsMoveType:*(a1 + 56)];

    if (v3)
    {
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 72);
      if (v5 > *(v4 + 144) + 2.22044605e-16)
      {
        *(v4 + 144) = v5;
      }

      return;
    }
  }

  else
  {
  }

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 72);
  if (v7 > *(v6 + 136) + 2.22044605e-16)
  {
    *(v6 + 136) = v7;
  }
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_cold_1(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1[4];
  v2 = *(a1[5] + 8);
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[13];
  v6 = a1[6];
  OUTLINED_FUNCTION_4();
  v15 = 2114;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = 2114;
  v20 = v7;
  v21 = v8;
  v22 = v10;
  v23 = v8;
  v24 = v11;
  _os_log_debug_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEBUG, "[ACHActivityTriggerGenerator] Resetting current %{public}@ streak of %ld days, current week %{public}@ streak of %ld days, and current month %{public}@ streak of %ld after advancing %ld days", v14, 0x48u);
  v13 = *MEMORY[0x277D85DE8];
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_307_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[6];
  v2 = *(*(a1[7] + 8) + 96);
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEBUG, "[ACHActivityTriggerGenerator] Resetting current Week %{public}@ streak of %ld days after advancing %ld days. Today = %@, startOfFitnessWeekDate = %@", v8, 0x34u);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_308_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1[6];
  v2 = *(*(a1[7] + 8) + 104);
  v3 = a1[8];
  v4 = a1[4];
  v5 = a1[5];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEBUG, "[ACHActivityTriggerGenerator] Resetting current Month %{public}@ streak of %ld days after advancing %ld days. Today = %@, start of month = %@", v8, 0x34u);
  v7 = *MEMORY[0x277D85DE8];
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a1, a2, *MEMORY[0x277D85DE8]);
  v3 = v2[11];
  v4 = v2[12];
  v5 = v2[13];
  v6 = v2[15];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x3Eu);
  v12 = *MEMORY[0x277D85DE8];
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a1, a2, *MEMORY[0x277D85DE8]);
  v3 = *(v2 + 88);
  v4 = *(v2 + 112);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
  v10 = *MEMORY[0x277D85DE8];
}

void __98__ACHActivityTriggerGenerator__incrementWithInitialState_forGoalType_dataProvider_goalMetHandler___block_invoke_309_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1(a1, a2, *MEMORY[0x277D85DE8]);
  v3 = *(v2 + 64);
  v4 = *(v2 + 152);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
  v10 = *MEMORY[0x277D85DE8];
}

@end