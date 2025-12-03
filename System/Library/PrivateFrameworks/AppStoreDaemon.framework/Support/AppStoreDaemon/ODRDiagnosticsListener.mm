@interface ODRDiagnosticsListener
- (void)configureClientWithConnection:(id)connection;
@end

@implementation ODRDiagnosticsListener

- (void)configureClientWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sub_10037B178([ODRDiagnosticsClient alloc], connectionCopy);
}

@end