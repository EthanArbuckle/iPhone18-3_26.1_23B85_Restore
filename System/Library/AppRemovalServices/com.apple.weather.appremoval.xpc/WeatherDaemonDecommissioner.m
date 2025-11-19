@interface WeatherDaemonDecommissioner
- (void)decommissionDaemonWithCompletion:(id)a3;
@end

@implementation WeatherDaemonDecommissioner

- (void)decommissionDaemonWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_100002EF4(&unk_1000052D0, v5);
}

@end