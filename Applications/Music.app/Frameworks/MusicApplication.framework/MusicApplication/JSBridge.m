@interface JSBridge
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
@end

@implementation JSBridge

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  sub_13C80(0, &qword_DE8ED0);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = self;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_9B3D18, v4);
}

@end