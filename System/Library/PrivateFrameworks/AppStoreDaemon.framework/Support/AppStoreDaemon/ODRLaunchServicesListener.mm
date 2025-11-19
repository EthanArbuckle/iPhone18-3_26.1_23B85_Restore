@interface ODRLaunchServicesListener
- (void)configureClientWithConnection:(id)a3;
@end

@implementation ODRLaunchServicesListener

- (void)configureClientWithConnection:(id)a3
{
  v3 = a3;
  v4 = sub_100397130([ODRLaunchServicesClient alloc], v3);
}

@end