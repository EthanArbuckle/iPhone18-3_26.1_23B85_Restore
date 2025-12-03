@interface SessionSimulator
- (void)replaySensorDidFinishLoadingWithStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp;
@end

@implementation SessionSimulator

- (void)replaySensorDidFinishLoadingWithStartTimestamp:(double)timestamp endTimestamp:(double)endTimestamp
{
  selfCopy = self;
  sub_1000A697C(timestamp, endTimestamp);
}

@end