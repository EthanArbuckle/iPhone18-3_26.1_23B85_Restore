@interface ASPublicKeyCredentialOperationTestDelegate
- (void)didCompleteRegistrationWithCredential:(id)credential error:(id)error;
@end

@implementation ASPublicKeyCredentialOperationTestDelegate

- (void)didCompleteRegistrationWithCredential:(id)credential error:(id)error
{
  didCompletionRegistrationCallback = self->_didCompletionRegistrationCallback;
  if (didCompletionRegistrationCallback)
  {
    didCompletionRegistrationCallback[2](didCompletionRegistrationCallback, credential, error);
    didCompletionRegistrationCallback = self->_didCompletionRegistrationCallback;
  }

  self->_didCompletionRegistrationCallback = 0;
}

@end