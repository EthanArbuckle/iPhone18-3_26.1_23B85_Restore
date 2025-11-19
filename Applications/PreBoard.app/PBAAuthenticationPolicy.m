@interface PBAAuthenticationPolicy
- (PBAAuthenticationPolicyDelegate)delegate;
- (void)passcodeAuthenticationFailedWithError:(id)a3;
- (void)wipeDeviceWithReason:(id)a3;
@end

@implementation PBAAuthenticationPolicy

- (void)wipeDeviceWithReason:(id)a3
{
  v3 = a3;
  v4 = +[SBFObliterationController sharedInstance];
  [v4 obliterateDataPartitionShowingProgress:0 skipDataObliteration:0 eraseDataPlan:0 reason:v3];
}

- (void)passcodeAuthenticationFailedWithError:(id)a3
{
  v7 = a3;
  v4 = [v7 domain];
  v5 = [v4 isEqualToString:SBFMKBErrorDomain];

  if (v5 && [v7 code] == -14)
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