@interface WeatherDaemonDecommissioner
- (void)decommissionDaemonWithCompletion:(id)completion;
@end

@implementation WeatherDaemonDecommissioner

- (void)decommissionDaemonWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_100002EF4(&unk_1000052D0, v5);
}

@end