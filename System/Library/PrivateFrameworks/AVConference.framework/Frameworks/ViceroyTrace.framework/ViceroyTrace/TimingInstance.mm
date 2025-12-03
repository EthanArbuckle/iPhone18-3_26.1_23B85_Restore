@interface TimingInstance
+ (id)createTimingInstanceWithStartTime:(double)time;
@end

@implementation TimingInstance

+ (id)createTimingInstanceWithStartTime:(double)time
{
  v4 = objc_alloc_init(TimingInstance);
  [(TimingInstance *)v4 setStartTiming:time];
  [(TimingInstance *)v4 setStopTiming:time];
  [(TimingInstance *)v4 setTotalTime:0.0];
  [(TimingInstance *)v4 setIsRunning:0];

  return v4;
}

@end