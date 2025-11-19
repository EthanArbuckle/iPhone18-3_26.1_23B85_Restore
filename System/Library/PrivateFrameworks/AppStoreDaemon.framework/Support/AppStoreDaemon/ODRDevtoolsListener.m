@interface ODRDevtoolsListener
- (void)configureClientWithConnection:(id)a3;
@end

@implementation ODRDevtoolsListener

- (void)configureClientWithConnection:(id)a3
{
  v3 = a3;
  v4 = sub_1002ECABC([ODRDeveloperToolsClient alloc], v3);
}

@end