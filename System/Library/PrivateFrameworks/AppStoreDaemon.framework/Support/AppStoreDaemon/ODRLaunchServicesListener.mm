@interface ODRLaunchServicesListener
- (void)configureClientWithConnection:(id)connection;
@end

@implementation ODRLaunchServicesListener

- (void)configureClientWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_100397130([ODRLaunchServicesClient alloc], connectionCopy);
}

@end