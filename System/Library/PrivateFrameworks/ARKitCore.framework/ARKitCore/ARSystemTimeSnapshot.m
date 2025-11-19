@interface ARSystemTimeSnapshot
+ (id)timeSinceSnapshot:(id)a3;
- (ARSystemTimeSnapshot)init;
- (ARSystemTimeSnapshot)initWithUpTime:(double)a3 upTimeIncludingSleep:(double)a4 upTimeIncludingSleepAndDriftCorrection:(double)a5;
- (id)description;
- (id)timeSinceSnapshot:(id)a3;
@end

@implementation ARSystemTimeSnapshot

+ (id)timeSinceSnapshot:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v4 timeSinceSnapshot:v3];

  return v5;
}

- (ARSystemTimeSnapshot)init
{
  v3 = ARGetSystemUpTime();
  v4 = ARGetSystemUpTimeIncludingSleep();
  v5 = ARGetSystemUpTimeIncludingSleepAndDriftCorrection();

  return [(ARSystemTimeSnapshot *)self initWithUpTime:v3 upTimeIncludingSleep:v4 upTimeIncludingSleepAndDriftCorrection:v5];
}

- (ARSystemTimeSnapshot)initWithUpTime:(double)a3 upTimeIncludingSleep:(double)a4 upTimeIncludingSleepAndDriftCorrection:(double)a5
{
  v9.receiver = self;
  v9.super_class = ARSystemTimeSnapshot;
  result = [(ARSystemTimeSnapshot *)&v9 init];
  if (result)
  {
    result->_upTime = a3;
    result->_upTimeIncludingSleep = a4;
    result->_upTimeIncludingSleepAndDriftCorrection = a5;
  }

  return result;
}

- (id)timeSinceSnapshot:(id)a3
{
  v4 = a3;
  v5 = [ARSystemTimeSnapshot alloc];
  upTime = self->_upTime;
  [v4 upTime];
  v8 = upTime - v7;
  upTimeIncludingSleep = self->_upTimeIncludingSleep;
  [v4 upTimeIncludingSleep];
  v11 = upTimeIncludingSleep - v10;
  upTimeIncludingSleepAndDriftCorrection = self->_upTimeIncludingSleepAndDriftCorrection;
  [v4 upTimeIncludingSleepAndDriftCorrection];
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