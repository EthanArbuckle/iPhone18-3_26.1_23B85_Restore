@interface PasscodeActiveViewFactory
- (id)passcodeViewForPasscode:(id)passcode style:(id)style;
- (int)_lockStyleForPasscodeType:(int64_t)type;
@end

@implementation PasscodeActiveViewFactory

- (id)passcodeViewForPasscode:(id)passcode style:(id)style
{
  passcodeCopy = passcode;
  styleCopy = style;
  v8 = +[NSDate date];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __59__PasscodeActiveViewFactory_passcodeViewForPasscode_style___block_invoke;
  v15[3] = &unk_1000AB0D8;
  v15[4] = self;
  v16 = passcodeCopy;
  v17 = styleCopy;
  v9 = styleCopy;
  v10 = passcodeCopy;
  v11 = __59__PasscodeActiveViewFactory_passcodeViewForPasscode_style___block_invoke(v15);
  [v11 setShowsEmergencyCallButton:0];
  [v11 setBiometricAuthenticationAllowed:0];
  v12 = LALogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    [v8 timeIntervalSinceNow];
    *buf = 134217984;
    v19 = -v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "SBUIPasscodeLockViewFactory call took %.2f secs", buf, 0xCu);
  }

  return v11;
}

id __59__PasscodeActiveViewFactory_passcodeViewForPasscode_style___block_invoke(id *a1)
{
  v2 = [a1[4] _lockStyleForPasscodeType:{objc_msgSend(a1[5], "type")}];
  if ([a1[6] rawValue])
  {
    [SBUIPasscodeLockViewFactory lightPasscodeLockViewForStyle:v2];
  }

  else
  {
    [SBUIPasscodeLockViewFactory passcodeLockViewForStyle:v2];
  }
  v3 = ;

  return v3;
}

- (int)_lockStyleForPasscodeType:(int64_t)type
{
  if ((type - 2) < 3)
  {
    return type - 1;
  }

  else
  {
    return 0;
  }
}

@end