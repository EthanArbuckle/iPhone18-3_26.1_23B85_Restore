@interface CHWorkoutDetailHeartRateChartView
- (CHWorkoutDetailHeartRateChartView)initWithChartType:(unint64_t)a3;
- (id)_dateInterval;
- (void)_reloadChartPoints;
- (void)_updateChartSpacing;
- (void)layoutSubviews;
- (void)setHeartRateReadings:(id)a3 averageHeartRate:(id)a4 workout:(id)a5;
@end

@implementation CHWorkoutDetailHeartRateChartView

- (CHWorkoutDetailHeartRateChartView)initWithChartType:(unint64_t)a3
{
  v35.receiver = self;
  v35.super_class = CHWorkoutDetailHeartRateChartView;
  v4 = [(CHWorkoutDetailHeartRateChartView *)&v35 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_chartType = a3;
    v6 = [[FIUIChartView alloc] initWithDateInterval:0];
    chartView = v5->_chartView;
    v5->_chartView = v6;

    [(FIUIChartView *)v5->_chartView setDataSource:v5];
    [(FIUIChartView *)v5->_chartView setContentBufferEdgeInsets:-10.0, 0.0, -10.0, 0.0];
    [(CHWorkoutDetailHeartRateChartView *)v5 addSubview:v5->_chartView];
    v8 = objc_alloc_init(FIUIChartDashedBackgroundView);
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v8;

    [(FIUIChartDashedBackgroundView *)v5->_backgroundView setLineInsets:0.0, 0.0, 2.0, 0.0];
    [(FIUIChartDashedBackgroundView *)v5->_backgroundView setNumLines:3];
    [(FIUIChartDashedBackgroundView *)v5->_backgroundView setDirection:1];
    v10 = v5->_backgroundView;
    v11 = [UIColor colorWithWhite:1.0 alpha:0.15];
    [(FIUIChartDashedBackgroundView *)v10 setColor:v11];

    [(FIUIChartView *)v5->_chartView setBackgroundView:v5->_backgroundView];
    v12 = [UIFont defaultFontForTextStyle:UIFontTextStyleCaption1];
    v13 = [v12 fu_fontWithStraightSidedNumbers];

    v14 = [UIColor colorWithRed:0.301960784 green:0.301960784 blue:0.301960784 alpha:1.0];
    v15 = +[ARUIMetricColors heartRateColors];
    v16 = [v15 nonGradientTextColor];

    v17 = off_100832818;
    if (a3)
    {
      v17 = off_100832820;
    }

    v18 = objc_alloc_init(*v17);
    [v18 setHighlightedLabelColor:v14];
    [v18 setUnhighlightedLabelColor:v14];
    v34 = v16;
    [v18 setHighlightedSubLabelColor:v16];
    [v18 setUnhighlightedSubLabelColor:v16];
    [v18 setTextStyle:2];
    [v18 setTimeInterval:0];
    [v18 setSubTimeInterval:0];
    [v18 setSubLabelAlignment:1];
    [v18 setLabelFont:v13];
    [v18 setForceAMPMOnFirstLabel:1];
    [v18 setHideClippedLabels:1];
    v19 = objc_alloc_init(FIUIChartDateAnchorRule);
    [v19 setCalendarUnit:128];
    [v19 setRoundingValue:1];
    [v18 setAnchorRule:v19];
    [v18 setSubAnchorRule:v19];
    v20 = objc_alloc_init(NSDateComponents);
    [v20 setMinute:10];
    [v18 setAxisSpacing:v20];
    [v18 setSubAxisSpacing:v20];
    [v18 setAxisDescriptorPadding:2.0];
    [v18 setSubAxisDescriptorPadding:2.0];
    [(FIUIChartView *)v5->_chartView setXAxisDescriptor:v18];
    v21 = objc_alloc_init(FIUIChartMinMaxValueAxisDescriptor);
    v22 = +[UIColor secondaryLabelColor];
    [v21 setUnhighlightedLabelColor:v22];

    [v21 setLabelFont:v13];
    [v21 setAxisDescriptorPadding:1.0];
    v23 = +[UIColor blackColor];
    [v21 setShadowColor:v23];

    [v21 setShadowOffset:{0.0, 0.0}];
    [v21 setShadowBlur:3.0];
    [(FIUIChartView *)v5->_chartView setYAxisDescriptor:v21];
    v24 = objc_alloc_init(FIUIChartFloatingBarSeries);
    heartRateBarSeries = v5->_heartRateBarSeries;
    v5->_heartRateBarSeries = v24;

    [(FIUIChartFloatingBarSeries *)v5->_heartRateBarSeries setEdgeInsets:10.0, 0.0, 10.0, 0.0];
    v26 = v5->_heartRateBarSeries;
    [(FIUIChartView *)v5->_chartView valueForSmallWidth:1.0 mediumWidth:1.5 largeWidth:1.5];
    [(FIUIChartFloatingBarSeries *)v26 setCornerRadius:?];
    v27 = v5->_heartRateBarSeries;
    v28 = +[ARUIMetricColors heartRateColors];
    v29 = [v28 nonGradientTextColor];
    [(FIUIChartFloatingBarSeries *)v27 setBarColor:v29];

    v30 = v5->_heartRateBarSeries;
    v37[0] = v13;
    v36[0] = NSFontAttributeName;
    v36[1] = NSForegroundColorAttributeName;
    v31 = [(FIUIChartFloatingBarSeries *)v30 barColor];
    v37[1] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(FIUIChartFloatingBarSeries *)v30 setLabelAttributes:v32];
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CHWorkoutDetailHeartRateChartView;
  [(CHWorkoutDetailHeartRateChartView *)&v3 layoutSubviews];
  [(CHWorkoutDetailHeartRateChartView *)self bounds];
  [(FIUIChartView *)self->_chartView setFrame:?];
}

- (void)setHeartRateReadings:(id)a3 averageHeartRate:(id)a4 workout:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 copy];
  heartRateReadings = self->_heartRateReadings;
  self->_heartRateReadings = v10;

  averageHeartRate = self->_averageHeartRate;
  self->_averageHeartRate = v8;
  v13 = v8;

  workout = self->_workout;
  self->_workout = v9;

  [(CHWorkoutDetailHeartRateChartView *)self _updateChartSpacing];

  [(CHWorkoutDetailHeartRateChartView *)self _reloadChartPoints];
}

- (void)_reloadChartPoints
{
  v3 = [(FIUIChartView *)self->_chartView dateInterval];
  [v3 duration];
  v5 = v4 / 96.0;
  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSMutableArray array];
  heartRateChartPoints = self->_heartRateChartPoints;
  self->_heartRateChartPoints = v7;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v56 = self;
  obj = self->_heartRateReadings;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  v10 = UICollectionViewCompositionalLayout_ptr;
  if (v9)
  {
    v11 = v9;
    v12 = *v64;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        v15 = [v14 date];
        v16 = [v3 containsDate:v15];

        if (v16)
        {
          v17 = [v14 date];
          v18 = [v3 startDate];
          [v17 timeIntervalSinceDate:v18];
          v20 = v19;

          v21 = vcvtmd_s64_f64(v20 / v5);
          [v10[214] numberWithInteger:v21];
          v23 = v22 = v10;
          v24 = [v6 objectForKeyedSubscript:v23];

          if (!v24)
          {
            v24 = +[NSMutableIndexSet indexSet];
          }

          v25 = [v14 quantity];
          [v25 ch_beatsPerMinute];
          v27 = llround(v26);

          [v24 addIndex:v27];
          v28 = [v22[214] numberWithInteger:v21];
          [v6 setObject:v24 forKeyedSubscript:v28];

          v10 = v22;
        }
      }

      v11 = [(NSArray *)obj countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v11);
  }

  v29 = 0;
  v30 = -2;
  v31 = v56;
  do
  {
    v32 = [v10[214] numberWithUnsignedInteger:v30 + 2];
    v33 = [v6 objectForKeyedSubscript:v32];
    if (v33)
    {
    }

    else
    {
      v34 = [v10[214] numberWithUnsignedInteger:v30 + 3];
      v35 = [v6 objectForKeyedSubscript:v34];

      if (!v35)
      {
        goto LABEL_17;
      }
    }

    ++v29;
LABEL_17:
    v30 += 2;
  }

  while (v30 < 0x5E);
  v36 = [(NSArray *)v56->_heartRateReadings count];
  [v3 duration];
  v38 = v36 / v37 * 60.0;
  v40 = v38 >= 3.0 && v29 > 23 || v56->_chartType == 1;
  v41 = v40;
  v56->_hasAdequateDataForDisplay = v41;
  if (v40)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obja = [v6 allKeys];
    v42 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v60;
      do
      {
        for (j = 0; j != v43; j = j + 1)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(obja);
          }

          v46 = *(*(&v59 + 1) + 8 * j);
          v47 = v5 * [v46 integerValue];
          v48 = [v3 startDate];
          v49 = [v48 dateByAddingTimeInterval:v47];

          v50 = [v49 dateByAddingTimeInterval:v5 * 0.5];
          v51 = [v6 objectForKeyedSubscript:v46];
          v52 = [FIUIChartPointMultiple chartPointWithDate:v50 valueIndexSet:v51];
          [(NSMutableArray *)v56->_heartRateChartPoints addObject:v52];
        }

        v43 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v43);
    }

    v31 = v56;
    [(FIUIChartDashedBackgroundView *)v56->_backgroundView setNumLines:4];
    [(FIUIChartDashedBackgroundView *)v56->_backgroundView setShouldCenterLines:0];
  }

  else
  {
    _HKInitializeLogging();
    v53 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_ERROR))
    {
      sub_10069C578(v53, v29, v38);
    }

    [(FIUIChartDashedBackgroundView *)v56->_backgroundView setNumLines:2];
    [(FIUIChartDashedBackgroundView *)v56->_backgroundView setShouldCenterLines:1];
    v55 = [(FIUIChartView *)v56->_chartView xAxisDescriptor];
    [v55 setAverageHeartRate:0];
  }

  [(FIUIChartView *)v31->_chartView reloadData];
}

- (id)_dateInterval
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [(HKWorkout *)self->_workout startDate];
  v5 = [v3 dateBySettingUnit:0x8000 value:0 ofDate:v4 options:0];

  v6 = [(HKWorkout *)self->_workout endDate];
  v7 = [v3 dateBySettingUnit:0x8000 value:0 ofDate:v6 options:0];

  chartType = self->_chartType;
  v9 = [NSDateInterval alloc];
  if (chartType == 1)
  {
    v10 = [v9 initWithStartDate:v7 duration:kHKWorkoutHeartRateRecoveryDisplayInterval];
  }

  else
  {
    v10 = [v9 initWithStartDate:v5 endDate:v7];
  }

  v11 = v10;

  return v11;
}

- (void)_updateChartSpacing
{
  v11 = [(CHWorkoutDetailHeartRateChartView *)self _dateInterval];
  [(FIUIChartView *)self->_chartView setDateInterval:v11];
  [v11 duration];
  v4 = v3 / 3.0;
  v5 = +[NSCalendar currentCalendar];
  v6 = [v11 startDate];
  v7 = [v11 startDate];
  v8 = [v7 dateByAddingTimeInterval:v4];
  v9 = [v5 components:224 fromDate:v6 toDate:v8 options:0];

  v10 = [(FIUIChartView *)self->_chartView xAxisDescriptor];
  [v10 setAxisSpacing:v9];
  [v10 setSubAxisSpacing:v9];
  [(FIUIChartView *)self->_chartView setXAxisDescriptor:v10];
  if (self->_chartType == 1)
  {
    [v10 setRecoveryHeartRateReadings:self->_heartRateReadings];
  }

  else
  {
    [v10 setAverageHeartRate:self->_averageHeartRate];
  }
}

@end