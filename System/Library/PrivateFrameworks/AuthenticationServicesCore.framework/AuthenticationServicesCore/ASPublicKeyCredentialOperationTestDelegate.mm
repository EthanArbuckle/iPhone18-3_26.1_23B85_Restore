@interface ASPublicKeyCredentialOperationTestDelegate
- (void)didCompleteRegistrationWithCredential:(id)a3 error:(id)a4;
@end

@implementation ASPublicKeyCredentialOperationTestDelegate

- (void)didCompleteRegistrationWithCredential:(id)a3 error:(id)a4
{
  didCompletionRegistrationCallback = self->_didCompletionRegistrationCallback;
  if (didCompletionRegistrationCallback)
  {
    didCompletionRegistrationCallback[2](didCompletionRegistrationCallback, a3, a4);
    didCompletionRegistrationCallback = self->_didCompletionRegistrationCallback;
  }

  self->_didCompletionRegistrationCallback = 0;
}

@end