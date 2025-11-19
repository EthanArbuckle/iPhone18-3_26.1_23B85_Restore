@interface ODRDiagnosticsListener
- (void)configureClientWithConnection:(id)a3;
@end

@implementation ODRDiagnosticsListener

- (void)configureClientWithConnection:(id)a3
{
  v3 = a3;
  v4 = sub_10037B178([ODRDiagnosticsClient alloc], v3);
}

@end