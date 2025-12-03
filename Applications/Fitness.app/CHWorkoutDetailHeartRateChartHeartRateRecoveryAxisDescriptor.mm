@interface CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor
- (CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor)init;
- (id)_labelsForHeartRateRecovery;
- (id)_subLabelsForHeartRateRecovery;
- (id)axisLabels;
- (id)axisSubLabels;
- (void)invalidateCaches;
- (void)setAxisSpacing:(id)spacing;
- (void)setRecoveryHeartRateReadings:(id)readings;
- (void)setSubAxisSpacing:(id)spacing;
@end

@implementation CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor

- (CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor)init
{
  v6.receiver = self;
  v6.super_class = CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor;
  v2 = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)&v6 init];
  if (v2)
  {
    v3 = [[FIUIFormattingManager alloc] initWithUnitManager:0];
    formattingManager = v2->_formattingManager;
    v2->_formattingManager = v3;
  }

  return v2;
}

- (void)setRecoveryHeartRateReadings:(id)readings
{
  readingsCopy = readings;
  minValue = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self minValue];
  v6 = [_HKHeartRateRecoveryQueryUtility perMinuteWorkoutRecoveryHeartRateFromReadings:readingsCopy workoutEndDate:minValue];

  recoveryHeartRateReadingsByMinute = self->_recoveryHeartRateReadingsByMinute;
  self->_recoveryHeartRateReadingsByMinute = v6;

  cachedSubLabels = self->_cachedSubLabels;
  self->_cachedSubLabels = 0;
}

- (void)setAxisSpacing:(id)spacing
{
  v5.receiver = self;
  v5.super_class = CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor;
  [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)&v5 setAxisSpacing:spacing];
  cachedLabels = self->_cachedLabels;
  self->_cachedLabels = 0;
}

- (void)setSubAxisSpacing:(id)spacing
{
  v5.receiver = self;
  v5.super_class = CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor;
  [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)&v5 setSubAxisSpacing:spacing];
  cachedSubLabels = self->_cachedSubLabels;
  self->_cachedSubLabels = 0;
}

- (void)invalidateCaches
{
  v5.receiver = self;
  v5.super_class = CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor;
  [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)&v5 invalidateCaches];
  cachedLabels = self->_cachedLabels;
  self->_cachedLabels = 0;

  cachedSubLabels = self->_cachedSubLabels;
  self->_cachedSubLabels = 0;
}

- (id)axisLabels
{
  cachedLabels = self->_cachedLabels;
  if (!cachedLabels)
  {
    _labelsForHeartRateRecovery = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self _labelsForHeartRateRecovery];
    v5 = self->_cachedLabels;
    self->_cachedLabels = _labelsForHeartRateRecovery;

    cachedLabels = self->_cachedLabels;
  }

  return cachedLabels;
}

- (id)axisSubLabels
{
  cachedSubLabels = self->_cachedSubLabels;
  if (!cachedSubLabels)
  {
    _subLabelsForHeartRateRecovery = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self _subLabelsForHeartRateRecovery];
    v5 = self->_cachedSubLabels;
    self->_cachedSubLabels = _subLabelsForHeartRateRecovery;

    cachedSubLabels = self->_cachedSubLabels;
  }

  return cachedSubLabels;
}

- (id)_labelsForHeartRateRecovery
{
  minValue = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self minValue];
  if (minValue)
  {
    v4 = +[NSMutableArray array];
    v5 = +[NSCalendar currentCalendar];
    if (!self->_hourMinuteFormatter)
    {
      v6 = objc_alloc_init(NSDateFormatter);
      hourMinuteFormatter = self->_hourMinuteFormatter;
      self->_hourMinuteFormatter = v6;
    }

    if (!self->_minuteNumberFormatter)
    {
      v8 = objc_alloc_init(NSNumberFormatter);
      minuteNumberFormatter = self->_minuteNumberFormatter;
      self->_minuteNumberFormatter = v8;

      [(NSNumberFormatter *)self->_minuteNumberFormatter setNumberStyle:0];
      [(NSNumberFormatter *)self->_minuteNumberFormatter setMaximumFractionDigits:0];
    }

    v10 = ARUIRingsViewRenderer_ptr;
    v11 = objc_alloc_init(FIUIChartAxisLabel);
    v27 = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self _stringFromDate:minValue withTimeInterval:0 textStyle:2 forceAMPM:1];
    [v11 setText:?];
    [v11 setLocation:minValue];
    highlightedLabelColor = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self highlightedLabelColor];
    [v11 setLabelColor:highlightedLabelColor];

    v28 = v11;
    [v4 addObject:v11];
    v29 = minValue;
    v13 = minValue;
    v14 = v13;
    if (kHKWorkoutHeartRateRecoveryIntervalInMinutes < 2)
    {
      v16 = v13;
    }

    else
    {
      v15 = 1;
      v30 = kHKWorkoutHeartRateRecoveryIntervalInMinutes;
      do
      {
        v16 = [v5 dateByAddingUnit:64 value:1 toDate:v14 options:0];

        v17 = objc_alloc_init(v10[270]);
        v18 = +[NSBundle mainBundle];
        [v18 localizedStringForKey:@"MINUTES_SHORT_DESCRIPTION" value:&stru_1008680E8 table:@"Localizable"];
        v19 = v4;
        v20 = v5;
        v22 = v21 = v10;
        v23 = [NSString localizedStringWithFormat:v22, v15];

        v10 = v21;
        v5 = v20;
        v4 = v19;

        [v17 setText:v23];
        [v17 setLocation:v16];
        highlightedLabelColor2 = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self highlightedLabelColor];
        [v17 setLabelColor:highlightedLabelColor2];

        [v19 addObject:v17];
        ++v15;
        v14 = v16;
      }

      while (v30 != v15);
    }

    v25 = [v4 copy];

    minValue = v29;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)_subLabelsForHeartRateRecovery
{
  minValue = [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self minValue];
  if (minValue)
  {
    v4 = +[NSMutableArray array];
    v5 = +[NSCalendar currentCalendar];
    if (kHKWorkoutHeartRateRecoveryIntervalInMinutes >= 1)
    {
      v6 = 0;
      v18 = 40;
      v19 = kHKWorkoutHeartRateRecoveryIntervalInMinutes;
      do
      {
        v7 = *&self->FIUIChartTimeAxisDescriptor_opaque[v18];
        v8 = [NSNumber numberWithInt:v6, v18];
        v9 = [v7 objectForKeyedSubscript:v8];
        quantity = [v9 quantity];

        v11 = [(FIUIFormattingManager *)self->_formattingManager localizedStringWithHeartRate:quantity unitStyle:1];
        v12 = [v5 dateByAddingUnit:64 value:v6 toDate:minValue options:0];
        v13 = objc_alloc_init(FIUIChartAxisLabel);
        [v13 setText:v11];
        [v13 setLocation:v12];
        [(CHWorkoutDetailHeartRateChartHeartRateRecoveryAxisDescriptor *)self highlightedSubLabelColor];
        v15 = v14 = v4;
        [v13 setLabelColor:v15];

        v4 = v14;
        [v14 addObject:v13];

        ++v6;
      }

      while (v19 != v6);
    }

    v16 = [v4 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end