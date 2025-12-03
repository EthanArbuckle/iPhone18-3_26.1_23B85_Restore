@interface ApplicationMessageCoordinator
- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties;
@end

@implementation ApplicationMessageCoordinator

- (void)messageDidReportMetricsEvent:(id)event eventProperties:(id)properties
{
  v5 = sub_AB8FF0();
  sub_60044();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  propertiesCopy = properties;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_182270, v6);
}

@end