@interface BLSHWatchdogTesterTimer
- (BLSHWatchdogTesterTimer)initWithExplanation:(id)a3;
@end

@implementation BLSHWatchdogTesterTimer

- (BLSHWatchdogTesterTimer)initWithExplanation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLSHWatchdogTesterTimer;
  v5 = [(BLSHWatchdogTesterTimer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    explanation = v5->_explanation;
    v5->_explanation = v6;
  }

  return v5;
}

@end