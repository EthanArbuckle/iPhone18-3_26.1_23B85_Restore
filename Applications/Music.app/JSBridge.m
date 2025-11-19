@interface JSBridge
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
@end

@implementation JSBridge

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  sub_100009F78(0, &qword_101182960);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = self;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CFA5A0, v4);
}

@end