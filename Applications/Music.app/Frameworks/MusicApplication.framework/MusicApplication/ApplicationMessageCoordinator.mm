@interface ApplicationMessageCoordinator
- (void)messageDidReportMetricsEvent:(id)a3 eventProperties:(id)a4;
@end

@implementation ApplicationMessageCoordinator

- (void)messageDidReportMetricsEvent:(id)a3 eventProperties:(id)a4
{
  v5 = sub_AB8FF0();
  sub_60044();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a4;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_182270, v6);
}

@end