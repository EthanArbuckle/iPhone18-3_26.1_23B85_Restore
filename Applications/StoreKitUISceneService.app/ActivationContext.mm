@interface ActivationContext
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
@end

@implementation ActivationContext

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;

  errorCopy = error;
  sub_1000686EC(handleCopy, error);
}

@end