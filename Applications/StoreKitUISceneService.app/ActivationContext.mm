@interface ActivationContext
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
@end

@implementation ActivationContext

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;

  v6 = a4;
  sub_1000686EC(v5, a4);
}

@end