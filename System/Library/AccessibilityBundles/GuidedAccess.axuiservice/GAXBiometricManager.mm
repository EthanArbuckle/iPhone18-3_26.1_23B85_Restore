@interface GAXBiometricManager
- (GAXBiometricManagerDelegate)delegate;
- (void)startBiometricAuthentication;
@end

@implementation GAXBiometricManager

- (void)startBiometricAuthentication
{
  v3 = GAXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Warming biometric authentication...", buf, 2u);
  }

  v4 = objc_alloc_init(LAContext);
  v5 = GAXLocString(@"END_GUIDED_ACCESS");
  [v4 setLocalizedReason:v5];

  v6 = GAXLocString(@"END_GUIDED_ACCESS");
  [v4 setLocalizedFallbackTitle:v6];

  v7 = GAXLocString(@"ENTER_GUIDED_ACCESS_PASSCODE");
  [v4 setLocalizedCancelTitle:v7];

  v14 = 0;
  [v4 canEvaluatePolicy:1 error:&v14];
  v8 = v14;
  v9 = GAXLogCommon();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Encountered policy error, presenting passcode sheet, %@", buf, 0xCu);
    }

    v11 = [(GAXBiometricManager *)self delegate];
    [v11 biometricManager:self attemptWasSuccessful:0];
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Evaluating biometric authentication for Guided Access...", buf, 2u);
    }

    v12 = +[AXSpringBoardServer server];
    [v12 invalidateSystemApertureInertAssertion];

    v11 = [v4 localizedReason];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2CA0C;
    v13[3] = &unk_5E050;
    v13[4] = self;
    [v4 evaluatePolicy:1 localizedReason:v11 reply:v13];
  }
}

- (GAXBiometricManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end