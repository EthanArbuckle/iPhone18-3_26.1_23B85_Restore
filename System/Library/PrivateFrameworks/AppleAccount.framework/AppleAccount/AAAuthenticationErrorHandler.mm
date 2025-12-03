@interface AAAuthenticationErrorHandler
+ (void)handleAuthenticationError:(id)error resetAuthenticatedOnAlertFailure:(BOOL)failure forAccount:(id)account inStore:(id)store completion:(id)completion;
@end

@implementation AAAuthenticationErrorHandler

+ (void)handleAuthenticationError:(id)error resetAuthenticatedOnAlertFailure:(BOOL)failure forAccount:(id)account inStore:(id)store completion:(id)completion
{
  failureCopy = failure;
  errorCopy = error;
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
  if ([errorCopy ak_isUserCancelError])
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, errorCopy);
    }
  }

  else if (failureCopy)
  {
    [accountCopy setAuthenticated:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __121__AAAuthenticationErrorHandler_handleAuthenticationError_resetAuthenticatedOnAlertFailure_forAccount_inStore_completion___block_invoke;
    v15[3] = &unk_1E7C9C9A0;
    v16 = completionCopy;
    [storeCopy saveAccount:accountCopy withHandler:v15];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 2, errorCopy);
  }
}

uint64_t __121__AAAuthenticationErrorHandler_handleAuthenticationError_resetAuthenticatedOnAlertFailure_forAccount_inStore_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 2);
  }

  return result;
}

@end