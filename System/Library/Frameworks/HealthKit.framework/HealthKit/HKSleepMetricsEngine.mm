@interface HKSleepMetricsEngine
+ (double)_timeIntervalForDate:(id)date sinceDate:(id)sinceDate calendar:(id)calendar;
+ (id)_computeStandardDeviationFor:(id)for;
+ (id)_dateComponentsForInterval:(double)interval sinceDate:(id)date calendar:(id)calendar;
+ (id)_firstAsleepSegment:(id)segment;
+ (id)_firstSegmentMatchingSleepValues:(id)values inPeriods:(id)periods;
+ (id)_generateConsiderationIntervalFromDaySummaries:(id)summaries morningIndexRange:(id)range;
+ (id)_lastAsleepSegment:(id)segment;
+ (id)_lastSegmentMatchingSleepValues:(id)values inPeriods:(id)periods;
+ (id)sleepMetricsForDaySummaries:(id)summaries inMorningIndexRange:(id)range;
- (HKSleepMetricsEngine)initWithHealthStore:(id)store;
- (void)fetchSleepMetricsForMorningIndexRange:(id)range completion:(id)completion;
@end

@implementation HKSleepMetricsEngine

- (HKSleepMetricsEngine)initWithHealthStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = HKSleepMetricsEngine;
  v6 = [(HKSleepMetricsEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
  }

  return v7;
}

- (void)fetchSleepMetricsForMorningIndexRange:(id)range completion:(id)completion
{
  var1 = range.var1;
  var0 = range.var0;
  completionCopy = completion;
  v8 = [HKSleepDaySummaryQuery alloc];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __73__HKSleepMetricsEngine_fetchSleepMetricsForMorningIndexRange_completion___block_invoke;
  v16 = &unk_1E7381880;
  selfCopy = self;
  v18 = completionCopy;
  v19 = var0;
  v20 = var1;
  v9 = completionCopy;
  v10 = [(HKSleepDaySummaryQuery *)v8 initWithMorningIndexRange:var0 ascending:var1 limit:1 options:0 resultsHandler:1, &v13];
  v11 = [HKSleepDaySummaryCacheSettings alloc];
  selfCopy = [(HKSleepDaySummaryCacheSettings *)v11 initWithIdentifier:@"SleepMetricsEngine" mode:0, v13, v14, v15, v16, selfCopy];
  [(HKSleepDaySummaryQuery *)v10 setCacheSettings:selfCopy];

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

+ (id)sleepMetricsForDaySummaries:(id)summaries inMorningIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v247 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  v164 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v172 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v166 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v165 = objc_alloc_init(MEMORY[0x1E695DF70]);
  selfCopy = self;
  v184 = var0;
  v185 = var1;
  v208 = [self _generateConsiderationIntervalFromDaySummaries:summariesCopy morningIndexRange:{var0, var1}];
  v243 = 0u;
  v244 = 0u;
  v241 = 0u;
  v242 = 0u;
  obj = summariesCopy;
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
    v171 = obj;
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
        morningIndex = [v11 morningIndex];
        v13 = morningIndex >= v184 && morningIndex - v184 < v185;
        v11 = v230;
        if (!v13)
        {
          continue;
        }
      }

      dateInterval = [v11 dateInterval];
      v220 = [selfCopy _generateStrategyWithSleepDayInterval:dateInterval considerationInterval:v208];

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
        primarySchedule = [v230 primarySchedule];
        if (primarySchedule)
        {
          morningIndex2 = [v230 morningIndex];
          calendar = [v230 calendar];
          v216 = [primarySchedule bedtimeDateIntervalForMorningIndex:morningIndex2 calendar:calendar];

          startDate = [v216 startDate];
          if (startDate)
          {
            v46 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate duration:900.0];
            v240 = 0u;
            v238 = 0u;
            v239 = 0u;
            v237 = 0u;
            periods = [v230 periods];
            v48 = [periods countByEnumeratingWithState:&v237 objects:v245 count:16];
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
                    objc_enumerationMutation(periods);
                  }

                  v52 = *(*(&v237 + 1) + 8 * j);
                  dateInterval2 = [v52 dateInterval];
                  v54 = [dateInterval2 intersectsDateInterval:v46];

                  if (v54)
                  {
                    v59 = v52;

                    ++v169;
                    v49 = v59;
                    goto LABEL_69;
                  }

                  dateInterval3 = [v52 dateInterval];
                  startDate2 = [dateInterval3 startDate];
                  v57 = [startDate2 hk_isAfterOrEqualToDate:startDate];
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

                v48 = [periods countByEnumeratingWithState:&v237 objects:v245 count:16];
                if (v48)
                {
                  continue;
                }

                break;
              }

LABEL_69:

              if (v49)
              {
                dateInterval4 = [v49 dateInterval];
                startDate3 = [dateInterval4 startDate];
                [startDate3 timeIntervalSinceDate:startDate];
                v63 = v62;

                ++v168;
                v167 = v167 + v63;
                goto LABEL_72;
              }
            }

            else
            {
              v49 = periods;
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
            sleepDurationGoal = [v230 sleepDurationGoal];
            v75 = +[HKUnit secondUnit];
            [sleepDurationGoal doubleValueForUnit:v75];
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

        periods2 = [v73 periods];
        firstObject = [periods2 firstObject];

        periods3 = [v230 periods];
        lastObject = [periods3 lastObject];

        if (firstObject && lastObject)
        {
          dateInterval5 = [firstObject dateInterval];
          startDate4 = [dateInterval5 startDate];
          dateInterval6 = [v230 dateInterval];
          startDate5 = [dateInterval6 startDate];
          calendar2 = [v230 calendar];
          [selfCopy _timeIntervalForDate:startDate4 sinceDate:startDate5 calendar:calendar2];
          v89 = v88;

          dateInterval7 = [lastObject dateInterval];
          endDate = [dateInterval7 endDate];
          dateInterval8 = [v230 dateInterval];
          startDate6 = [dateInterval8 startDate];
          calendar3 = [v230 calendar];
          [selfCopy _timeIntervalForDate:endDate sinceDate:startDate6 calendar:calendar3];
          v96 = v95;

          v177 = v177 + v96;
          v178 = v178 + v89;
          ++v182;
        }

        periods4 = [v230 periods];
        v226 = [selfCopy _firstInBedSegment:periods4];

        periods5 = [v230 periods];
        v99 = [selfCopy _lastInBedSegment:periods5];

        if (v226 && v99)
        {
          dateInterval9 = [v226 dateInterval];
          startDate7 = [dateInterval9 startDate];
          dateInterval10 = [v230 dateInterval];
          startDate8 = [dateInterval10 startDate];
          calendar4 = [v230 calendar];
          [selfCopy _timeIntervalForDate:startDate7 sinceDate:startDate8 calendar:calendar4];
          v106 = v105;

          dateInterval11 = [v99 dateInterval];
          endDate2 = [dateInterval11 endDate];
          dateInterval12 = [v230 dateInterval];
          startDate9 = [dateInterval12 startDate];
          calendar5 = [v230 calendar];
          [selfCopy _timeIntervalForDate:endDate2 sinceDate:startDate9 calendar:calendar5];
          v113 = v112;

          v175 = v175 + v106;
          v176 = v176 + v113;
          ++v181;
        }

        periods6 = [v230 periods];
        v115 = [selfCopy _firstAsleepSegment:periods6];

        periods7 = [v230 periods];
        v117 = [selfCopy _lastAsleepSegment:periods7];

        if (v115 && v117)
        {
          dateInterval13 = [v115 dateInterval];
          startDate10 = [dateInterval13 startDate];
          dateInterval14 = [v230 dateInterval];
          startDate11 = [dateInterval14 startDate];
          calendar6 = [v230 calendar];
          [selfCopy _timeIntervalForDate:startDate10 sinceDate:startDate11 calendar:calendar6];
          v124 = v123;

          dateInterval15 = [v117 dateInterval];
          endDate3 = [dateInterval15 endDate];
          dateInterval16 = [v230 dateInterval];
          startDate12 = [dateInterval16 startDate];
          calendar7 = [v230 calendar];
          [selfCopy _timeIntervalForDate:endDate3 sinceDate:startDate12 calendar:calendar7];
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
    v168 = [MEMORY[0x1E696AD98] numberWithDouble:v167 / v168];
    v215 = [HKQuantity hk_quantityWithSeconds:v168];
  }

  if (v171 < 1)
  {
    v213 = 0;
  }

  else
  {
    v171 = [MEMORY[0x1E696AD98] numberWithDouble:v170 / v171];
    v213 = [HKQuantity hk_quantityWithSeconds:v171];
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
    v182 = 0;
    v1822 = 0;
  }

  else
  {
    lastObject2 = [obj lastObject];
    calendar8 = [lastObject2 calendar];

    lastObject3 = [obj lastObject];
    dateInterval17 = [lastObject3 dateInterval];
    startDate13 = [dateInterval17 startDate];

    v182 = [selfCopy _dateComponentsForInterval:startDate13 sinceDate:calendar8 calendar:v178 / v182];
    v1822 = [selfCopy _dateComponentsForInterval:startDate13 sinceDate:calendar8 calendar:v177 / v182];
  }

  if (v181 < 1)
  {
    v1812 = 0;
    v181 = 0;
    v146 = 0;
    v145 = 0;
  }

  else
  {
    lastObject4 = [obj lastObject];
    calendar9 = [lastObject4 calendar];

    lastObject5 = [obj lastObject];
    dateInterval18 = [lastObject5 dateInterval];
    startDate14 = [dateInterval18 startDate];

    v181 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v175 / v181];
    v144 = v176 / v181;
    v145 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v144];
    v1812 = [selfCopy _dateComponentsForInterval:startDate14 sinceDate:calendar9 calendar:v175 / v181];
    v146 = [selfCopy _dateComponentsForInterval:startDate14 sinceDate:calendar9 calendar:v144];
  }

  if (v180 < 1)
  {
    v1802 = 0;
    v156 = 0;
    v180 = 0;
    v154 = 0;
  }

  else
  {
    lastObject6 = [obj lastObject];
    calendar10 = [lastObject6 calendar];

    lastObject7 = [obj lastObject];
    dateInterval19 = [lastObject7 dateInterval];
    startDate15 = [dateInterval19 startDate];

    v180 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v173 / v180];
    v153 = v174 / v180;
    v154 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v153];
    v1802 = [selfCopy _dateComponentsForInterval:startDate15 sinceDate:calendar10 calendar:v173 / v180];
    v156 = [selfCopy _dateComponentsForInterval:startDate15 sinceDate:calendar10 calendar:v153];
  }

  v157 = [selfCopy _computeStandardDeviationFor:v172];
  v158 = [selfCopy _computeStandardDeviationFor:v166];
  v159 = [selfCopy _computeStandardDeviationFor:v165];
  v160 = [v164 count];
  v145 = [HKSleepMetrics sleepMetricsWithMorningIndexRange:v184 sleepAnalysisAsleepCount:v185 sleepAnalysisInBedCount:v183 sleepAnalysisCount:v209 averageSleepDuration:v187 averageInBedDuration:v205 averageREMSleepDuration:v203 averageCoreSleepDuration:v211 averageDeepSleepDuration:v207 averageUnspecifiedSleepDuration:v201 averageAwakeDuration:v199 bedtimeAchievedCount:v197 sleepDurationGoalAchievedCount:v169 sleepDurationGoalStreakCount:v160 averageBedtimeMiss:v234[3] averageSleepDurationGoalMiss:v215 averageBedtime:v213 averageWakeTime:v182 averageInBedStartTime:v1822 averageInBedEndTime:v1812 averageSleepStartTime:v146 averageSleepEndTime:v1802 standardDeviationActualTimeAsleep:v156 standardDeviationScheduledTimeAsleep:v157 standardDeviationActualVsScheduledTimeAsleep:v158 averageSleepStartOffset:v159 averageSleepEndOffset:v180 averageInBedStartOffset:v154 averageInBedEndOffset:v181, v145];

  _Block_object_dispose(&v233, 8);
  v162 = *MEMORY[0x1E69E9840];

  return v145;
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

+ (id)_generateConsiderationIntervalFromDaySummaries:(id)summaries morningIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v39 = *MEMORY[0x1E69E9840];
  summariesCopy = summaries;
  v7 = summariesCopy;
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
    lastObject = [summariesCopy lastObject];
    calendar = [lastObject calendar];
    if (calendar)
    {
      v12 = [v9 hk_sleepDayIntervalForMorningIndexRange:var0 calendar:{var1, calendar}];
    }

    else
    {
      hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
      v12 = [v9 hk_sleepDayIntervalForMorningIndexRange:var0 calendar:{var1, hk_gregorianCalendar}];
    }

    goto LABEL_29;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = [summariesCopy countByEnumeratingWithState:&v34 objects:v38 count:16];
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
        dateInterval = [v19 dateInterval];
        startDate = [dateInterval startDate];

        if (!v15 || ([v15 earlierDate:startDate], v22 = objc_claimAutoreleasedReturnValue(), v22, v22 == startDate))
        {
          v23 = startDate;

          v15 = v23;
        }

        dateInterval2 = [v19 dateInterval];
        endDate = [dateInterval2 endDate];

        if (!v16 || ([v16 laterDate:endDate], v26 = objc_claimAutoreleasedReturnValue(), v26, v26 == endDate))
        {
          v27 = endDate;

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
  distantPast = v15;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_26;
    }

LABEL_33:
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v12 = [v29 initWithStartDate:distantPast endDate:distantFuture];

    if (v15)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  if (!v16)
  {
    goto LABEL_33;
  }

LABEL_26:
  v12 = [v29 initWithStartDate:distantPast endDate:v16];
  if (!v15)
  {
LABEL_27:
  }

LABEL_28:

LABEL_29:
  v31 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (double)_timeIntervalForDate:(id)date sinceDate:(id)sinceDate calendar:(id)calendar
{
  sinceDateCopy = sinceDate;
  [date timeIntervalSinceReferenceDate];
  v8 = v7;
  [sinceDateCopy timeIntervalSinceReferenceDate];
  v10 = v9;

  return v8 - v10;
}

+ (id)_dateComponentsForInterval:(double)interval sinceDate:(id)date calendar:(id)calendar
{
  intervalCopy = interval;
  calendarCopy = calendar;
  v8 = [calendarCopy dateByAddingUnit:128 value:intervalCopy toDate:date options:0];
  v9 = [calendarCopy components:224 fromDate:v8];

  return v9;
}

+ (id)_firstAsleepSegment:(id)segment
{
  segmentCopy = segment;
  v5 = _HKCategoryValueSleepAnalysisAsleepValues();
  v6 = [self _firstSegmentMatchingSleepValues:v5 inPeriods:segmentCopy];

  return v6;
}

+ (id)_lastAsleepSegment:(id)segment
{
  segmentCopy = segment;
  v5 = _HKCategoryValueSleepAnalysisAsleepValues();
  v6 = [self _lastSegmentMatchingSleepValues:v5 inPeriods:segmentCopy];

  return v6;
}

+ (id)_firstSegmentMatchingSleepValues:(id)values inPeriods:(id)periods
{
  v34 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  periodsCopy = periods;
  v22 = [periodsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v7 = *v29;
    v23 = periodsCopy;
    v21 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(periodsCopy);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        segments = [v9 segments];
        v11 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(segments);
              }

              v15 = *(*(&v24 + 1) + 8 * j);
              v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "category")}];
              v17 = [valuesCopy containsObject:v16];

              if (v17)
              {
                v18 = v15;

                periodsCopy = v23;
                goto LABEL_19;
              }
            }

            v12 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        periodsCopy = v23;
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

+ (id)_lastSegmentMatchingSleepValues:(id)values inPeriods:(id)periods
{
  v34 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = periods;
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
        segments = [v8 segments];
        v10 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(segments);
              }

              v14 = *(*(&v24 + 1) + 8 * i);
              v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v14, "category")}];
              v16 = [valuesCopy containsObject:v15];

              if (v16)
              {
                v17 = v14;

                v6 = v17;
              }
            }

            v11 = [segments countByEnumeratingWithState:&v24 objects:v32 count:16];
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

+ (id)_computeStandardDeviationFor:(id)for
{
  v34 = *MEMORY[0x1E69E9840];
  forCopy = for;
  if ([forCopy count])
  {
    v4 = [forCopy count];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = forCopy;
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