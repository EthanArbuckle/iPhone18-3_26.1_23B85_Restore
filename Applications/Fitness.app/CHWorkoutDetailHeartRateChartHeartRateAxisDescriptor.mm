@interface CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor
- (CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor)init;
- (id)_createAverageHeartRateLabel;
- (id)axisSubLabels;
- (void)setAverageHeartRate:(id)rate;
- (void)setSubAxisSpacing:(id)spacing;
@end

@implementation CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor

- (CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor)init
{
  v6.receiver = self;
  v6.super_class = CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor;
  v2 = [(CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor *)&v6 init];
  if (v2)
  {
    v3 = [[FIUIFormattingManager alloc] initWithUnitManager:0];
    formattingManager = v2->_formattingManager;
    v2->_formattingManager = v3;
  }

  return v2;
}

- (void)setSubAxisSpacing:(id)spacing
{
  v5.receiver = self;
  v5.super_class = CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor;
  [(CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor *)&v5 setSubAxisSpacing:spacing];
  averageHeartRateLabel = self->_averageHeartRateLabel;
  self->_averageHeartRateLabel = 0;
}

- (void)setAverageHeartRate:(id)rate
{
  objc_storeStrong(&self->_averageHeartRate, rate);
  rateCopy = rate;
  averageHeartRateLabel = self->_averageHeartRateLabel;
  self->_averageHeartRateLabel = 0;
}

- (id)axisSubLabels
{
  averageHeartRateLabel = self->_averageHeartRateLabel;
  if (!averageHeartRateLabel)
  {
    _createAverageHeartRateLabel = [(CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor *)self _createAverageHeartRateLabel];
    v5 = self->_averageHeartRateLabel;
    self->_averageHeartRateLabel = _createAverageHeartRateLabel;

    averageHeartRateLabel = self->_averageHeartRateLabel;
  }

  v8 = averageHeartRateLabel;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)_createAverageHeartRateLabel
{
  minValue = [(CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor *)self minValue];
  v4 = objc_alloc_init(FIUIChartAxisLabel);
  [v4 setLocation:minValue];
  highlightedSubLabelColor = [(CHWorkoutDetailHeartRateChartHeartRateAxisDescriptor *)self highlightedSubLabelColor];
  [v4 setLabelColor:highlightedSubLabelColor];

  if (minValue && (averageHeartRate = self->_averageHeartRate) != 0)
  {
    formattingManager = self->_formattingManager;
    [(NSNumber *)averageHeartRate doubleValue];
    v8 = [(FIUIFormattingManager *)formattingManager localizedStringWithBeatsPerMinute:?];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"BPM_AVG" value:&stru_1008680E8 table:@"Localizable"];
    v11 = [NSString localizedStringWithFormat:v10, v8];

    [v4 setText:v11];
  }

  else
  {
    [v4 setText:&stru_1008680E8];
  }

  return v4;
}

@end