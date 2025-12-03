@interface PBAAuthenticationPolicy
- (PBAAuthenticationPolicyDelegate)delegate;
- (void)passcodeAuthenticationFailedWithError:(id)error;
- (void)wipeDeviceWithReason:(id)reason;
@end

@implementation PBAAuthenticationPolicy

- (void)wipeDeviceWithReason:(id)reason
{
  reasonCopy = reason;
  v4 = +[SBFObliterationController sharedInstance];
  [v4 obliterateDataPartitionShowingProgress:0 skipDataObliteration:0 eraseDataPlan:0 reason:reasonCopy];
}

- (void)passcodeAuthenticationFailedWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:SBFMKBErrorDomain];

  if (v5 && [errorCopy code] == -14)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained authenticationPolicyEncounteredPolicyError:self];
  }
}

- (PBAAuthenticationPolicyDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end