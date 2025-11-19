@interface ATXSlotResolutionParametersStatistics
+ (double)_smoothedBudgetForTimeOfDay:(int64_t)a3 currentTimeOfDay:(int64_t)a4;
+ (double)_smoothedCountForCoarseTimeOfDay:(int64_t)a3 currentTimeOfDay:(int64_t)a4;
+ (double)_smoothedCountForTimeOfDay:(int64_t)a3 currentTimeOfDay:(int64_t)a4;
+ (double)smoothedRatio:(double)a3 over:(double)a4;
- (ATXSlotResolutionParametersStatistics)initWithNumParameters:(int)a3;
- (double)_confirmRatio;
- (double)_timeOfDayBudgetStandardDeviation;
- (id)description;
- (void)_confirmRatio;
- (void)_updateTimeOfDayBudgetStatisticsForNewTimeOfDayBudget:(double)a3;
@end

@implementation ATXSlotResolutionParametersStatistics

- (ATXSlotResolutionParametersStatistics)initWithNumParameters:(int)a3
{
  v21.receiver = self;
  v21.super_class = ATXSlotResolutionParametersStatistics;
  v4 = [(ATXSlotResolutionParametersStatistics *)&v21 init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 6) = a3;
    *(v4 + 2) = 0;
    *(v4 + 2) = 0;
    *(v4 + 74) = 0;
    *(v4 + 248) = 0u;
    *(v4 + 45) = 0;
    *(v4 + 232) = 0u;
    *(v4 + 264) = 0u;
    *(v4 + 280) = 0u;
    *(v4 + 296) = 0u;
    *(v4 + 312) = 0u;
    *(v4 + 328) = 0u;
    *(v4 + 344) = 0u;
    v6 = [MEMORY[0x277CBEAA8] distantPast];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    v8 = vdupq_n_s64(0x41086A0000000000uLL);
    *(v5 + 88) = v8;
    *(v5 + 104) = v8;
    *(v5 + 120) = v8;
    *(v5 + 136) = 0u;
    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *(v5 + 184) = 0u;
    *(v5 + 200) = 0u;
    *(v5 + 216) = 0u;
    v9 = objc_opt_new();
    v10 = *(v5 + 5);
    *(v5 + 5) = v9;

    *(v5 + 8) = 0;
    *(v5 + 9) = 0;
    *(v5 + 10) = 0;
    *(v5 + 23) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 25) = 0u;
    *(v5 + 26) = 0u;
    *(v5 + 27) = 0u;
    *(v5 + 28) = 0u;
    *(v5 + 29) = 0u;
    *(v5 + 30) = 0u;
    *(v5 + 31) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 33) = 0u;
    *(v5 + 34) = 0u;
    *(v5 + 35) = 0u;
    *(v5 + 36) = 0u;
    bzero(v5 + 600, 0x218uLL);
    v11 = objc_opt_new();
    v12 = *(v5 + 142);
    *(v5 + 142) = v11;

    v13 = objc_opt_new();
    v14 = *(v5 + 143);
    *(v5 + 143) = v13;

    v15 = objc_opt_new();
    v16 = *(v5 + 144);
    *(v5 + 144) = v15;

    v17 = objc_opt_new();
    v18 = *(v5 + 145);
    *(v5 + 145) = v17;

    v19 = v5;
  }

  return v5;
}

- (void)_updateTimeOfDayBudgetStatisticsForNewTimeOfDayBudget:(double)a3
{
  v3 = self->_timeOfDayBudgetCount + 1.0;
  self->_timeOfDayBudgetCount = v3;
  timeOfDayBudgetMean = self->_timeOfDayBudgetMean;
  v5 = timeOfDayBudgetMean + (a3 - timeOfDayBudgetMean) / v3;
  self->_timeOfDayBudgetMean = v5;
  self->_timeOfDayBudgetSumOfSquaresOfDifferencesFromMean = self->_timeOfDayBudgetSumOfSquaresOfDifferencesFromMean + (a3 - timeOfDayBudgetMean) * (a3 - v5);
}

- (double)_timeOfDayBudgetStandardDeviation
{
  timeOfDayBudgetCount = self->_timeOfDayBudgetCount;
  if (timeOfDayBudgetCount >= 2.0)
  {
    return sqrt(self->_timeOfDayBudgetSumOfSquaresOfDifferencesFromMean / (timeOfDayBudgetCount + -1.0));
  }

  else
  {
    return 0.0;
  }
}

+ (double)smoothedRatio:(double)a3 over:(double)a4
{
  v6 = +[_ATXGlobals sharedInstance];
  [v6 slotResolutionRatioSmoothingThreshold];
  v8 = v7;

  return a3 * a4 / ((v8 + a4) * (v8 + a4));
}

- (double)_confirmRatio
{
  [(ATXSlotResolutionParametersStatistics *)self _totalFeedbackEvents];
  if (v4 < self->_totalConfirms)
  {
    [(ATXSlotResolutionParametersStatistics *)a2 _confirmRatio];
  }

  [(ATXSlotResolutionParametersStatistics *)self _totalFeedbackEvents];
  v5 = 0.0;
  if (v6 > 0.0)
  {
    totalConfirms = self->_totalConfirms;
    [(ATXSlotResolutionParametersStatistics *)self _totalFeedbackEvents];
    [ATXSlotResolutionParametersStatistics smoothedRatio:totalConfirms over:v8];
    v5 = v9;
    if (v9 < 0.0 || v9 > 1.0)
    {
      [(ATXSlotResolutionParametersStatistics *)a2 _confirmRatio];
    }
  }

  return v5;
}

+ (double)_smoothedCountForTimeOfDay:(int64_t)a3 currentTimeOfDay:(int64_t)a4
{
  v6 = +[_ATXGlobals sharedInstance];
  [v6 smoothedCountForTimeOfDayStd];
  v8 = v7;

  return ATXGaussianDistributionWithZeroMean(v8, (a3 - a4) * 0.0166666667);
}

+ (double)_smoothedCountForCoarseTimeOfDay:(int64_t)a3 currentTimeOfDay:(int64_t)a4
{
  v6 = +[_ATXGlobals sharedInstance];
  [v6 smoothedCountForCoarseTimeOfDayStd];
  v8 = v7;

  return ATXGaussianDistributionWithZeroMean(v8, (a3 - a4) * 0.0166666667);
}

+ (double)_smoothedBudgetForTimeOfDay:(int64_t)a3 currentTimeOfDay:(int64_t)a4
{
  v6 = +[_ATXGlobals sharedInstance];
  [v6 smoothedBudgetForTimeOfDayStd];
  v8 = v7;

  return ATXGaussianDistributionWithZeroMean(v8, (a3 - a4) * 0.0166666667);
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Statistics for %d parameters", self->_numParameters];

  return v2;
}

- (void)_confirmRatio
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXActionStatistics.m" lineNumber:436 description:{@"Invalid probablity found: %f", *&a3}];
}

@end