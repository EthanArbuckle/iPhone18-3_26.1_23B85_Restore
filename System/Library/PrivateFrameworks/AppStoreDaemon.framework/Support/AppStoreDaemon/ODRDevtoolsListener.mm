@interface ODRDevtoolsListener
- (void)configureClientWithConnection:(id)connection;
@end

@implementation ODRDevtoolsListener

- (void)configureClientWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_1002ECABC([ODRDeveloperToolsClient alloc], connectionCopy);
}

@end