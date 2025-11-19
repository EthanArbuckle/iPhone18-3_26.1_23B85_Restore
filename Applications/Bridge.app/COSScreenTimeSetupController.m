@interface COSScreenTimeSetupController
+ (BOOL)_screenTimeEnabledWithoutPasscodeForFamilyMember:(id)a3;
+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)a3;
- (COSScreenTimeSetupController)init;
- (id)familyMember;
- (id)familyMemberFirstName;
- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4;
@end

@implementation COSScreenTimeSetupController

- (COSScreenTimeSetupController)init
{
  v6.receiver = self;
  v6.super_class = COSScreenTimeSetupController;
  v2 = [(COSScreenTimeSetupController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(COSScreenTimeSetPasscodeViewController);
    firstController = v2->_firstController;
    v2->_firstController = v3;

    [(COSScreenTimeSetPasscodeViewController *)v2->_firstController setMiniFlowDelegate:v2];
  }

  return v2;
}

- (void)miniFlowStepComplete:(id)a3 nextControllerClass:(Class)a4
{
  if (a4)
  {
    v5 = objc_alloc_init(a4);
    [v5 setMiniFlowDelegate:self];
    [(COSScreenTimeSetupController *)self pushController:v5 animated:1];
  }

  else
  {
    v5 = [(COSScreenTimeSetupController *)self delegate];
    [v5 buddyControllerDone:self];
  }
}

- (id)familyMember
{
  v2 = [(COSScreenTimeSetupController *)self delegate];
  v3 = [v2 setupFlowUserInfo];
  v4 = [v3 objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  return v4;
}

- (id)familyMemberFirstName
{
  v2 = [(COSScreenTimeSetupController *)self familyMember];
  v3 = [v2 firstName];

  return v3;
}

+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)a3
{
  v3 = a3;
  v4 = [v3 setupFlowUserInfo];
  v5 = [v4 objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  if (v5)
  {
    v6 = [objc_opt_class() _screenTimeEnabledWithoutPasscodeForFamilyMember:v5];
  }

  else
  {
    v7 = sub_100015C10();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100186218();
    }

    v6 = 0;
  }

  v8 = sub_100015C10();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "+[COSScreenTimeSetupController controllerNeedsToRunForBuddyControllerDelegate:]";
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s => %d", &v10, 0x12u);
  }

  return v6;
}

+ (BOOL)_screenTimeEnabledWithoutPasscodeForFamilyMember:(id)a3
{
  v3 = a3;
  v4 = sub_100015C10();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 dsid];
    *buf = 136315650;
    *&buf[4] = "+[COSScreenTimeSetupController _screenTimeEnabledWithoutPasscodeForFamilyMember:]";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    *&buf[22] = 2114;
    v30 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: familyMember:%@, dsid:%{public}@", buf, 0x20u);
  }

  v6 = [v3 dsid];

  if (v6)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v7 = qword_1002BD278;
    v28 = qword_1002BD278;
    if (!qword_1002BD278)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000163E4;
      v30 = &unk_1002680D0;
      v31 = &v25;
      sub_1000163E4(buf);
      v7 = v26[3];
    }

    v8 = v7;
    _Block_object_dispose(&v25, 8);
    v9 = objc_opt_new();
    v25 = 0;
    v26 = &v25;
    v27 = 0x2050000000;
    v10 = qword_1002BD288;
    v28 = qword_1002BD288;
    if (!qword_1002BD288)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000165AC;
      v30 = &unk_1002680D0;
      v31 = &v25;
      sub_1000165AC(buf);
      v10 = v26[3];
    }

    v11 = v10;
    _Block_object_dispose(&v25, 8);
    v12 = [v10 alloc];
    v13 = [v3 dsid];
    v14 = [v12 initWithDSID:v13];

    v24 = 0;
    v15 = [v9 currentConfigurationForUser:v14 error:&v24];
    v16 = v24;
    if (v16)
    {
      v17 = sub_100015C10();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_100186298();
      }

      LOBYTE(v18) = 0;
    }

    else
    {
      if ([v15 screenTimeState] == 1)
      {
        v19 = [v15 passcode];
        v18 = v19 == 0;
      }

      else
      {
        v18 = 0;
      }

      v17 = sub_100015C10();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v15 screenTimeState];
        v21 = [v15 passcode];
        v22 = @"YES";
        *buf = 136316162;
        *&buf[4] = "+[COSScreenTimeSetupController _screenTimeEnabledWithoutPasscodeForFamilyMember:]";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        if (!v21)
        {
          v22 = @"NO";
        }

        *&buf[22] = 2112;
        v30 = v22;
        LOWORD(v31) = 1024;
        *(&v31 + 2) = v18;
        HIWORD(v31) = 2114;
        v32 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: screenTimeState:%zd hasPasscode:%@ => enabledWithoutPasscode:%d; currentConfiguration:%{public}@", buf, 0x30u);
      }
    }
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

@end