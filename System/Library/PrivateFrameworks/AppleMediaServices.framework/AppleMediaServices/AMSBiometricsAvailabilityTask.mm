@interface AMSBiometricsAvailabilityTask
- (AMSDaemonConnection)connection;
- (id)perform;
@end

@implementation AMSBiometricsAvailabilityTask

- (AMSDaemonConnection)connection
{
  v2 = sub_192BD6118();

  return v2;
}

- (id)perform
{
  v2 = self;
  v3 = sub_192BD61F8();

  return v3;
}

@end