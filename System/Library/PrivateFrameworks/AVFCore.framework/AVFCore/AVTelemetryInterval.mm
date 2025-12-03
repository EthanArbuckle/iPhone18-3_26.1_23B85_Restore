@interface AVTelemetryInterval
- (id)initAndStartWith:(unint64_t)with;
- (void)end;
@end

@implementation AVTelemetryInterval

- (void)end
{
  v3 = mach_absolute_time();
  startTime = self->startTime;
  v5 = dword_1ED5AC364;
  if (!dword_1ED5AC364)
  {
    mach_timebase_info(&MachTimeToMicroseconds_sTimebaseInfo);
    v5 = dword_1ED5AC364;
  }

  v6 = (((v3 - startTime) * MachTimeToMicroseconds_sTimebaseInfo / v5) / 1000.0);
  v7 = +[AVTelemetryMonitor shared];
  apiCodeStore = self->apiCodeStore;

  [v7 incrementBucketCount:apiCodeStore executionTime:v6];
}

- (id)initAndStartWith:(unint64_t)with
{
  v7.receiver = self;
  v7.super_class = AVTelemetryInterval;
  v4 = [(AVTelemetryInterval *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->apiCodeStore = with;
    v4->startTime = mach_absolute_time();
  }

  return v5;
}

@end