@interface HKSleepMetricsEngine
+ (double)_timeIntervalForDate:(id)a3 sinceDate:(id)a4 calendar:(id)a5;
+ (id)_computeStandardDeviationFor:(id)a3;
+ (id)_dateComponentsForInterval:(double)a3 sinceDate:(id)a4 calendar:(id)a5;
+ (id)_firstAsleepSegment:(id)a3;
+ (id)_firstSegmentMatchingSleepValues:(id)a3 inPeriods:(id)a4;
+ (id)_generateConsiderationIntervalFromDaySummaries:(id)a3 morningIndexRange:(id)a4;
+ (id)_lastAsleepSegment:(id)a3;
+ (id)_lastSegmentMatchingSleepValues:(id)a3 inPeriods:(id)a4;
+ (id)sleepMetricsForDaySummaries:(id)a3 inMorningIndexRange:(id)a4;
- (HKSleepMetricsEngine)initWithHealthStore:(id)a3;
- (void)fetchSleepMetricsForMorningIndexRange:(id)a3 completion:(id)a4;
@end

@implementation HKSleepMetricsEngine

- (HKSleepMetricsEngine)initWithHealthStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKSleepMetricsEngine;
  v6 = [(HKSleepMetricsEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
  }

  return v7;
}

- (void)fetchSleepMetricsForMorningIndexRange:(id)a3 completion:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v7 = a4;
  v8 = [HKSleepDaySummaryQuery alloc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__HKSleepMetricsEngine_fetchSleepMetricsForMorningIndexRange_completion___block_invoke;
  v16 = &unk_1E7381880;
  v17 = self;
  v18 = v7;
  v19 = var0;
  v20 = var1;
  v9 = v7;
  v10 = [(HKSleepDaySummaryQuery *)v8 initWithMorningIndexRange:var0 ascending:var1 limit:1 options:0 resultsHandler:1, &v13];
  v11 = [HKSleepDaySummaryCacheSettings alloc];
  v12 = [(HKSleepDaySummaryCacheSettings *)v11 initWithIdentifier:@"SleepMetricsEngine" mode:0, v13, v14, v15, v16, v17];
  [(HKSleepDaySummaryQuery *)v10 setCacheSettings:v12];

  [(HKQuery *)v10 setDebugIdentifier:@"SleepMetricsEngine"];
  [(HKHealthStore *)self->_healthStore executeQuery:v10];
}

void __73__HKSleepMetricsEngine_fetchSleepMetricsForMorningIndexRange_completion___block_invoke(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1[5];
  v10 = v6;
  if (v6)
  {
    v8 = a1[4];
    v9 = [objc_opt_class() sleepMetricsForDaySummaries:v10 inMorningIndexRange:{a1[6], a1[7]}];
    (*(v7 + 16))(v7, v9, 0);
  }

  else
  {
    (*(v7 + 16))(v7, 0, a4);
  }
}

+ (id)sleepMetricsForDaySummaries:(id)a3 inMorningIndexRange:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v247 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v164 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v166 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v165 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v224 = a1;
  v184 = var0;
  v185 = var1;
  v208 = [a1 _generateConsiderationIntervalFromDaySummaries:v7 morningIndexRange:{var0, var1}];
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = v7;
  v214 = [obj countByEnumeratingWithState:&v241 objects:v246 count:16];
  if (!v214)
  {
    v213 = 0;
    v215 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v169 = 0;
    v187 = 0;
    v204 = 0;
    v206 = 0;
    v200 = 0;
    v202 = 0;
    v198 = 0;
    v209 = 0;
    v173 = 0.0;
    v174 = 0.0;
    v175 = 0.0;
    v176 = 0.0;
    v177 = 0.0;
    v178 = 0.0;
    v194 = 0.0;
    v196 = 0.0;
    v133 = obj;
    v190 = 0.0;
    v192 = 0.0;
    v188 = 0.0;
    v10 = 0.0;
    v179 = 0.0;
    goto LABEL_106;
  }

  v180 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v171 = 0;
  v168 = 0;
  v169 = 0;
  v187 = 0;
  v204 = 0;
  v206 = 0;
  v200 = 0;
  v202 = 0;
  v198 = 0;
  v209 = 0;
  v212 = *v242;
  v173 = 0.0;
  v174 = 0.0;
  v175 = 0.0;
  v176 = 0.0;
  v177 = 0.0;
  v178 = 0.0;
  if (var0)
  {
    v8 = 0;
  }

  else
  {
    v8 = var1 == 0;
  }

  v170 = 0.0;
  v167 = 0.0;
  v194 = 0.0;
  v196 = 0.0;
  v9 = v8;
  v210 = v9;
  v190 = 0.0;
  v192 = 0.0;
  v188 = 0.0;
  v10 = 0.0;
  v179 = 0.0;
  do
  {
    for (i = 0; i != v214; ++i)
    {
      if (*v242 != v212)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v241 + 1) + 8 * i);
      v230 = v11;
      if ((v210 & 1) == 0)
      {
        v12 = [v11 morningIndex];
        v13 = v12 >= v184 && v12 - v184 < v185;
        v11 = v230;
        if (!v13)
        {
          continue;
        }
      }

      v14 = [v11 dateInterval];
      v220 = [v224 _generateStrategyWithSleepDayInterval:v14 considerationInterval:v208];

      v228 = [v230 durationsForStrategy:v220];
      [v228 sleepDuration];
      v16 = v15;
      [v228 inBedDuration];
      v18 = v17;
      [v228 remSleepDuration];
      v20 = v19;
      [v228 coreSleepDuration];
      v22 = v21;
      [v228 deepSleepDuration];
      v24 = v23;
      [v228 unspecifiedSleepDuration];
      v26 = v25;
      [v228 awakeDuration];
      v28 = v27;
      if (v16 >= 2.22044605e-16 || v18 >= 2.22044605e-16)
      {
        if (v16 > 2.22044605e-16)
        {
          v30 = MEMORY[0x1E696AD98];
          v31 = __exp10(HKSleepStandardDeviationDecimalPrecision);
          v32 = [v30 numberWithDouble:round(v16 * v31) / v31];
          [v172 addObject:v32];

          ++v183;
          v179 = v179 + v16;
        }

        if (v18 > 2.22044605e-16)
        {
          v10 = v10 + v18;
        }

        v33 = v209;
        if (v18 > 2.22044605e-16)
        {
          v33 = v209 + 1;
        }

        v209 = v33;
        if (v20 <= 2.22044605e-16)
        {
          v34 = v188;
        }

        else
        {
          v34 = v188 + v20;
        }

        if (v20 <= 2.22044605e-16)
        {
          v35 = v198;
        }

        else
        {
          v35 = v198 + 1;
        }

        v36 = v190;
        if (v22 > 2.22044605e-16)
        {
          v36 = v190 + v22;
        }

        v188 = v34;
        v190 = v36;
        v37 = v200;
        if (v22 > 2.22044605e-16)
        {
          v37 = v200 + 1;
        }

        v198 = v35;
        v200 = v37;
        if (v24 <= 2.22044605e-16)
        {
          v38 = v192;
        }

        else
        {
          v38 = v192 + v24;
        }

        if (v24 <= 2.22044605e-16)
        {
          v39 = v202;
        }

        else
        {
          v39 = v202 + 1;
        }

        v40 = v194;
        if (v26 > 2.22044605e-16)
        {
          v40 = v194 + v26;
        }

        v192 = v38;
        v194 = v40;
        v41 = v204;
        if (v26 > 2.22044605e-16)
        {
          v41 = v204 + 1;
        }

        v202 = v39;
        v204 = v41;
        v42 = v196;
        if (v28 > 2.22044605e-16)
        {
          v42 = v196 + v28;
        }

        v196 = v42;
        v43 = v206;
        if (v28 > 2.22044605e-16)
        {
          v43 = v206 + 1;
        }

        v206 = v43;
        v218 = [v230 primarySchedule];
        if (v218)
        {
          v44 = [v230 morningIndex];
          v45 = [v230 calendar];
          v216 = [v218 bedtimeDateIntervalForMorningIndex:v44 calendar:v45];

          v225 = [v216 startDate];
          if (v225)
          {
            v46 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v225 duration:900.0];
            v240 = 0u;
            v238 = 0u;
            v239 = 0u;
            v237 = 0u;
            v47 = [v230 periods];
            v48 = [v47 countByEnumeratingWithState:&v237 objects:v245 count:16];
            if (v48)
            {
              v49 = 0;
              v50 = *v238;
              while (2)
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v238 != v50)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v52 = *(*(&v237 + 1) + 8 * j);
                  v53 = [v52 dateInterval];
                  v54 = [v53 intersectsDateInterval:v46];

                  if (v54)
                  {
                    v59 = v52;

                    ++v169;
                    v49 = v59;
                    goto LABEL_69;
                  }

                  v55 = [v52 dateInterval];
                  v56 = [v55 startDate];
                  v57 = [v56 hk_isAfterOrEqualToDate:v225];
                  if (v49)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  if (v58)
                  {
                    v49 = v52;
                  }
                }

                v48 = [v47 countByEnumeratingWithState:&v237 objects:v245 count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }

LABEL_69:

              if (v49)
              {
                v60 = [v49 dateInterval];
                v61 = [v60 startDate];
                [v61 timeIntervalSinceDate:v225];
                v63 = v62;

                ++v168;
                v167 = v167 + v63;
                goto LABEL_72;
              }
            }

            else
            {
              v49 = v47;
LABEL_72:
            }
          }

          if (v216)
          {
            [v216 duration];
            if (v64 > 2.22044605e-16)
            {
              [v216 duration];
              v66 = v65;
              v67 = __exp10(HKSleepStandardDeviationDecimalPrecision);
              v68 = round(v66 * v67) / v67;
              v69 = round(v16 * v67) / v67;
              if (v16 > 2.22044605e-16)
              {
                v70 = v69;
              }

              else
              {
                v70 = 0.0;
              }

              v71 = [MEMORY[0x1E696AD98] numberWithDouble:v68];
              [v166 addObject:v71];

              v72 = [MEMORY[0x1E696AD98] numberWithDouble:round(v67 * (v70 - v68)) / v67];
              [v165 addObject:v72];
            }
          }
        }

        v73 = v230;
        if (v16 > 2.22044605e-16)
        {
          if ([v230 hasNonZeroSleepDurationGoal])
          {
            v74 = [v230 sleepDurationGoal];
            v75 = +[HKUnit secondUnit];
            [v74 doubleValueForUnit:v75];
            v77 = v76;

            v78 = v77 - v16;
            if (v78 < 900.0)
            {
              [v164 hk_addDayIndex:{objc_msgSend(v230, "morningIndex")}];
            }

            ++v171;
            v170 = v170 + v78;
          }

          v73 = v230;
        }

        v79 = [v73 periods];
        v80 = [v79 firstObject];

        v81 = [v230 periods];
        v82 = [v81 lastObject];

        if (v80 && v82)
        {
          v83 = [v80 dateInterval];
          v84 = [v83 startDate];
          v85 = [v230 dateInterval];
          v86 = [v85 startDate];
          v87 = [v230 calendar];
          [v224 _timeIntervalForDate:v84 sinceDate:v86 calendar:v87];
          v89 = v88;

          v90 = [v82 dateInterval];
          v91 = [v90 endDate];
          v92 = [v230 dateInterval];
          v93 = [v92 startDate];
          v94 = [v230 calendar];
          [v224 _timeIntervalForDate:v91 sinceDate:v93 calendar:v94];
          v96 = v95;

          v177 = v177 + v96;
          v178 = v178 + v89;
          ++v182;
        }

        v97 = [v230 periods];
        v226 = [v224 _firstInBedSegment:v97];

        v98 = [v230 periods];
        v99 = [v224 _lastInBedSegment:v98];

        if (v226 && v99)
        {
          v100 = [v226 dateInterval];
          v101 = [v100 startDate];
          v102 = [v230 dateInterval];
          v103 = [v102 startDate];
          v104 = [v230 calendar];
          [v224 _timeIntervalForDate:v101 sinceDate:v103 calendar:v104];
          v106 = v105;

          v107 = [v99 dateInterval];
          v108 = [v107 endDate];
          v109 = [v230 dateInterval];
          v110 = [v109 startDate];
          v111 = [v230 calendar];
          [v224 _timeIntervalForDate:v108 sinceDate:v110 calendar:v111];
          v113 = v112;

          v175 = v175 + v106;
          v176 = v176 + v113;
          ++v181;
        }

        v114 = [v230 periods];
        v115 = [v224 _firstAsleepSegment:v114];

        v116 = [v230 periods];
        v117 = [v224 _lastAsleepSegment:v116];

        if (v115 && v117)
        {
          v118 = [v115 dateInterval];
          v119 = [v118 startDate];
          v120 = [v230 dateInterval];
          v121 = [v120 startDate];
          v122 = [v230 calendar];
          [v224 _timeIntervalForDate:v119 sinceDate:v121 calendar:v122];
          v124 = v123;

          v125 = [v117 dateInterval];
          v126 = [v125 endDate];
          v127 = [v230 dateInterval];
          v128 = [v127 startDate];
          v129 = [v230 calendar];
          [v224 _timeIntervalForDate:v126 sinceDate:v128 calendar:v129];
          v131 = v130;

          v173 = v173 + v124;
          v174 = v174 + v131;
          ++v180;
        }

        ++v187;
      }

      continue;
    }

    v214 = [obj countByEnumeratingWithState:&v241 objects:v246 count:16];
  }

  while (v214);

  if (v168 < 1)
  {
    v215 = 0;
  }

  else
  {
    v132 = [MEMORY[0x1E696AD98] numberWithDouble:v167 / v168];
    v215 = [HKQuantity hk_quantityWithSeconds:v132];
  }

  if (v171 < 1)
  {
    v213 = 0;
  }

  else
  {
    v133 = [MEMORY[0x1E696AD98] numberWithDouble:v170 / v171];
    v213 = [HKQuantity hk_quantityWithSeconds:v133];
LABEL_106:
  }

  v231 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v183, v179);
  v229 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v209, v10);
  v227 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v198, v188);
  v223 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v200, v190);
  v221 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v202, v192);
  v219 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v204, v194);
  v217 = _HKSleepSafeAverageDurationRoundedToNearestMinute(v206, v196);
  v205 = [HKQuantity hk_quantityWithSeconds:v231];
  v203 = [HKQuantity hk_quantityWithSeconds:v229];
  v211 = [HKQuantity hk_quantityWithSeconds:v227];
  v207 = [HKQuantity hk_quantityWithSeconds:v223];
  v201 = [HKQuantity hk_quantityWithSeconds:v221];
  v199 = [HKQuantity hk_quantityWithSeconds:v219];
  v197 = [HKQuantity hk_quantityWithSeconds:v217];
  v233 = 0;
  v234 = &v233;
  v235 = 0x2020000000;
  v236 = 0;
  v232[0] = MEMORY[0x1E69E9820];
  v232[1] = 3221225472;
  v232[2] = __72__HKSleepMetricsEngine_sleepMetricsForDaySummaries_inMorningIndexRange___block_invoke;
  v232[3] = &unk_1E73818A8;
  v232[6] = v185;
  v232[5] = v184;
  v232[4] = &v233;
  [v164 hk_enumerateDayIndexRangesWithOptions:2 usingBlock:v232];
  if (v182 < 1)
  {
    v193 = 0;
    v195 = 0;
  }

  else
  {
    v134 = [obj lastObject];
    v135 = [v134 calendar];

    v136 = [obj lastObject];
    v137 = [v136 dateInterval];
    v138 = [v137 startDate];

    v193 = [v224 _dateComponentsForInterval:v138 sinceDate:v135 calendar:v178 / v182];
    v195 = [v224 _dateComponentsForInterval:v138 sinceDate:v135 calendar:v177 / v182];
  }

  if (v181 < 1)
  {
    v189 = 0;
    v191 = 0;
    v146 = 0;
    v145 = 0;
  }

  else
  {
    v139 = [obj lastObject];
    v140 = [v139 calendar];

    v141 = [obj lastObject];
    v142 = [v141 dateInterval];
    v143 = [v142 startDate];

    v191 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v175 / v181];
    v144 = v176 / v181;
    v145 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v144];
    v189 = [v224 _dateComponentsForInterval:v143 sinceDate:v140 calendar:v175 / v181];
    v146 = [v224 _dateComponentsForInterval:v143 sinceDate:v140 calendar:v144];
  }

  if (v180 < 1)
  {
    v155 = 0;
    v156 = 0;
    v152 = 0;
    v154 = 0;
  }

  else
  {
    v147 = [obj lastObject];
    v148 = [v147 calendar];

    v149 = [obj lastObject];
    v150 = [v149 dateInterval];
    v151 = [v150 startDate];

    v152 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v173 / v180];
    v153 = v174 / v180;
    v154 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v153];
    v155 = [v224 _dateComponentsForInterval:v151 sinceDate:v148 calendar:v173 / v180];
    v156 = [v224 _dateComponentsForInterval:v151 sinceDate:v148 calendar:v153];
  }

  v157 = [v224 _computeStandardDeviationFor:v172];
  v158 = [v224 _computeStandardDeviationFor:v166];
  v159 = [v224 _computeStandardDeviationFor:v165];
  v160 = [v164 count];
  v161 = [HKSleepMetrics sleepMetricsWithMorningIndexRange:v184 sleepAnalysisAsleepCount:v185 sleepAnalysisInBedCount:v183 sleepAnalysisCount:v209 averageSleepDuration:v187 averageInBedDuration:v205 averageREMSleepDuration:v203 averageCoreSleepDuration:v211 averageDeepSleepDuration:v207 averageUnspecifiedSleepDuration:v201 averageAwakeDuration:v199 bedtimeAchievedCount:v197 sleepDurationGoalAchievedCount:v169 sleepDurationGoalStreakCount:v160 averageBedtimeMiss:v234[3] averageSleepDurationGoalMiss:v215 averageBedtime:v213 averageWakeTime:v193 averageInBedStartTime:v195 averageInBedEndTime:v189 averageSleepStartTime:v146 averageSleepEndTime:v155 standardDeviationActualTimeAsleep:v156 standardDeviationScheduledTimeAsleep:v157 standardDeviationActualVsScheduledTimeAsleep:v158 averageSleepStartOffset:v159 averageSleepEndOffset:v152 averageInBedStartOffset:v154 averageInBedEndOffset:v191, v145];

  _Block_object_dispose(&v233, 8);
  v162 = *MEMORY[0x1E69E9840];

  return v161;
}

void *__72__HKSleepMetricsEngine_sleepMetricsForDaySummaries_inMorningIndexRange___block_invoke(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *a4 = 1;
  v5 = result[5];
  v4 = result[6];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    goto LABEL_11;
  }

  v7 = a3 + a2 - 1;
  if (a3 <= 0)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v5 + v4 - 1;
  v9 = v4 <= 0 ? 0x7FFFFFFFFFFFFFFFLL : v8;
  if (v7 == v9)
  {
LABEL_11:
    *(*(result[4] + 8) + 24) = a3;
  }

  return result;
}

+ (id)_generateConsiderationIntervalFromDaySummaries:(id)a3 morningIndexRange:(id)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (var0)
  {
    v8 = 0;
  }

  else
  {
    v8 = var1 == 0;
  }

  if (!v8)
  {
    v9 = MEMORY[0x1E696AB80];
    v10 = [v6 lastObject];
    v11 = [v10 calendar];
    if (v11)
    {
      v12 = [v9 hk_sleepDayIntervalForMorningIndexRange:var0 calendar:{var1, v11}];
    }

    else
    {
      v28 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
      v12 = [v9 hk_sleepDayIntervalForMorningIndexRange:var0 calendar:{var1, v28}];
    }

    goto LABEL_29;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v7);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [v19 dateInterval];
        v21 = [v20 startDate];

        if (!v15 || ([v15 earlierDate:v21], v22 = objc_claimAutoreleasedReturnValue(), v22, v22 == v21))
        {
          v23 = v21;

          v15 = v23;
        }

        v24 = [v19 dateInterval];
        v25 = [v24 endDate];

        if (!v16 || ([v16 laterDate:v25], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == v25))
        {
          v27 = v25;

          v16 = v27;
        }
      }

      v14 = [v7 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v29 = objc_alloc(MEMORY[0x1E696AB80]);
  v30 = v15;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_26;
    }

LABEL_33:
    v33 = [MEMORY[0x1E695DF00] distantFuture];
    v12 = [v29 initWithStartDate:v30 endDate:v33];

    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v30 = [MEMORY[0x1E695DF00] distantPast];
  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_26:
  v12 = [v29 initWithStartDate:v30 endDate:v16];
  if (!v15)
  {
LABEL_27:
  }

LABEL_28:

LABEL_29:
  v31 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (double)_timeIntervalForDate:(id)a3 sinceDate:(id)a4 calendar:(id)a5
{
  v6 = a4;
  [a3 timeIntervalSinceReferenceDate];
  v8 = v7;
  [v6 timeIntervalSinceReferenceDate];
  v10 = v9;

  return v8 - v10;
}

+ (id)_dateComponentsForInterval:(double)a3 sinceDate:(id)a4 calendar:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [v7 dateByAddingUnit:128 value:v6 toDate:a4 options:0];
  v9 = [v7 components:224 fromDate:v8];

  return v9;
}

+ (id)_firstAsleepSegment:(id)a3
{
  v4 = a3;
  v5 = _HKCategoryValueSleepAnalysisAsleepValues();
  v6 = [a1 _firstSegmentMatchingSleepValues:v5 inPeriods:v4];

  return v6;
}

+ (id)_lastAsleepSegment:(id)a3
{
  v4 = a3;
  v5 = _HKCategoryValueSleepAnalysisAsleepValues();
  v6 = [a1 _lastSegmentMatchingSleepValues:v5 inPeriods:v4];

  return v6;
}

+ (id)_firstSegmentMatchingSleepValues:(id)a3 inPeriods:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = a4;
  v22 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v7 = *v29;
    v23 = v6;
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v10 = [v9 segments];
        v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v25;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v25 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v24 + 1) + 8 * j);
              v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "category")}];
              v17 = [v5 containsObject:v16];

              if (v17)
              {
                v18 = v15;

                v6 = v23;
                goto LABEL_19;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v6 = v23;
        v7 = v21;
      }

      v18 = 0;
      v22 = [v23 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)_lastSegmentMatchingSleepValues:(id)a3 inPeriods:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = a4;
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  v6 = 0;
  if (v22)
  {
    v21 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v28 + 1) + 8 * v7);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = [v8 segments];
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "category")}];
              v16 = [v5 containsObject:v15];

              if (v16)
              {
                v17 = v14;

                v6 = v17;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }

        v7 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_computeStandardDeviationFor:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count])
  {
    v4 = [v3 count];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    v7 = 0.0;
    v8 = 0.0;
    if (v6)
    {
      v9 = v6;
      v10 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v28 + 1) + 8 * i) doubleValue];
          v8 = v8 + v12;
        }

        v9 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v9);
    }

    v13 = v4;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      v7 = 0.0;
      v18 = v8 / v13;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v24 + 1) + 8 * j) doubleValue];
          v7 = v7 + (v18 - v20) * (v18 - v20);
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    v21 = [MEMORY[0x1E696AD98] numberWithDouble:sqrt(v7 / (v13 + -1.0))];
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

@end