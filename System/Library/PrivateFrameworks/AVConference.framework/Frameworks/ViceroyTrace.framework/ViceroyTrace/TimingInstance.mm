@interface TimingInstance
+ (id)createTimingInstanceWithStartTime:(double)a3;
@end

@implementation TimingInstance

+ (id)createTimingInstanceWithStartTime:(double)a3
{
  v4 = objc_alloc_init(TimingInstance);
  [(TimingInstance *)v4 setStartTiming:a3];
  [(TimingInstance *)v4 setStopTiming:a3];
  [(TimingInstance *)v4 setTotalTime:0.0];
  [(TimingInstance *)v4 setIsRunning:0];

  return v4;
}

@end