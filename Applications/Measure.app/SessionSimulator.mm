@interface SessionSimulator
- (void)replaySensorDidFinishLoadingWithStartTimestamp:(double)a3 endTimestamp:(double)a4;
@end

@implementation SessionSimulator

- (void)replaySensorDidFinishLoadingWithStartTimestamp:(double)a3 endTimestamp:(double)a4
{
  v6 = self;
  sub_1000A697C(a3, a4);
}

@end