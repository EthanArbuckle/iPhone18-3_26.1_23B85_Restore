@interface AAUIServerHookHandlerDelegate
- (BOOL)serverHookHandler:(id)handler isUserCancelError:(id)error;
@end

@implementation AAUIServerHookHandlerDelegate

- (BOOL)serverHookHandler:(id)handler isUserCancelError:(id)error
{
  errorCopy = error;
  if ([errorCopy aa_isAAErrorWithCode:-1] & 1) != 0 || (objc_msgSend(errorCopy, "ak_isUserCancelError") & 1) != 0 || (objc_msgSend(errorCopy, "cdp_isCDPErrorWithCode:", -5307))
  {
    ak_isLAUserCancelError = 1;
  }

  else
  {
    ak_isLAUserCancelError = [errorCopy ak_isLAUserCancelError];
  }

  return ak_isLAUserCancelError;
}

@end