@interface AAUIServerHookHandlerDelegate
- (BOOL)serverHookHandler:(id)a3 isUserCancelError:(id)a4;
@end

@implementation AAUIServerHookHandlerDelegate

- (BOOL)serverHookHandler:(id)a3 isUserCancelError:(id)a4
{
  v4 = a4;
  if ([v4 aa_isAAErrorWithCode:-1] & 1) != 0 || (objc_msgSend(v4, "ak_isUserCancelError") & 1) != 0 || (objc_msgSend(v4, "cdp_isCDPErrorWithCode:", -5307))
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 ak_isLAUserCancelError];
  }

  return v5;
}

@end