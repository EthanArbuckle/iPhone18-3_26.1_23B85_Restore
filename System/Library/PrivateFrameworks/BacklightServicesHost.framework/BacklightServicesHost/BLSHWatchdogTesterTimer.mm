@interface BLSHWatchdogTesterTimer
- (BLSHWatchdogTesterTimer)initWithExplanation:(id)explanation;
@end

@implementation BLSHWatchdogTesterTimer

- (BLSHWatchdogTesterTimer)initWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v9.receiver = self;
  v9.super_class = BLSHWatchdogTesterTimer;
  v5 = [(BLSHWatchdogTesterTimer *)&v9 init];
  if (v5)
  {
    v6 = [explanationCopy copy];
    explanation = v5->_explanation;
    v5->_explanation = v6;
  }

  return v5;
}

@end