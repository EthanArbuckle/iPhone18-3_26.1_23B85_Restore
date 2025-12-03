@interface ARSystemTimeSnapshot
+ (id)timeSinceSnapshot:(id)snapshot;
- (ARSystemTimeSnapshot)init;
- (ARSystemTimeSnapshot)initWithUpTime:(double)time upTimeIncludingSleep:(double)sleep upTimeIncludingSleepAndDriftCorrection:(double)correction;
- (id)description;
- (id)timeSinceSnapshot:(id)snapshot;
@end

@implementation ARSystemTimeSnapshot

+ (id)timeSinceSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v4 = objc_opt_new();
  v5 = [v4 timeSinceSnapshot:snapshotCopy];

  return v5;
}

- (ARSystemTimeSnapshot)init
{
  v3 = ARGetSystemUpTime();
  v4 = ARGetSystemUpTimeIncludingSleep();
  v5 = ARGetSystemUpTimeIncludingSleepAndDriftCorrection();

  return [(ARSystemTimeSnapshot *)self initWithUpTime:v3 upTimeIncludingSleep:v4 upTimeIncludingSleepAndDriftCorrection:v5];
}

- (ARSystemTimeSnapshot)initWithUpTime:(double)time upTimeIncludingSleep:(double)sleep upTimeIncludingSleepAndDriftCorrection:(double)correction
{
  v9.receiver = self;
  v9.super_class = ARSystemTimeSnapshot;
  result = [(ARSystemTimeSnapshot *)&v9 init];
  if (result)
  {
    result->_upTime = time;
    result->_upTimeIncludingSleep = sleep;
    result->_upTimeIncludingSleepAndDriftCorrection = correction;
  }

  return result;
}

- (id)timeSinceSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = [ARSystemTimeSnapshot alloc];
  upTime = self->_upTime;
  [snapshotCopy upTime];
  v8 = upTime - v7;
  upTimeIncludingSleep = self->_upTimeIncludingSleep;
  [snapshotCopy upTimeIncludingSleep];
  v11 = upTimeIncludingSleep - v10;
  upTimeIncludingSleepAndDriftCorrection = self->_upTimeIncludingSleepAndDriftCorrection;
  [snapshotCopy upTimeIncludingSleepAndDriftCorrection];
  v14 = v13;

  v15 = [(ARSystemTimeSnapshot *)v5 initWithUpTime:v8 upTimeIncludingSleep:v11 upTimeIncludingSleepAndDriftCorrection:upTimeIncludingSleepAndDriftCorrection - v14];

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p upTime=%f upTimeIncludingSleep=%f upTimeIncludingSleepAndDriftCorrection=%f>", v5, self, *&self->_upTime, *&self->_upTimeIncludingSleep, *&self->_upTimeIncludingSleepAndDriftCorrection];

  return v6;
}

@end