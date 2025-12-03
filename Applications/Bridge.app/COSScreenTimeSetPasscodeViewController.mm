@interface COSScreenTimeSetPasscodeViewController
- (BOOL)_errorIsUserCanceledSettingPIN:(id)n;
- (COSScreenTimeSetPasscodeViewController)init;
- (STSMiniFlowControllerDelegate)miniFlowDelegate;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_collectThenSetScreenTimePasscodeForFamilyMember:(id)member withCompletionHandler:(id)handler;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSScreenTimeSetPasscodeViewController

- (COSScreenTimeSetPasscodeViewController)init
{
  v5.receiver = self;
  v5.super_class = COSScreenTimeSetPasscodeViewController;
  v2 = [(COSScreenTimeSetPasscodeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSScreenTimeSetPasscodeViewController *)v2 setStyle:2];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_SET_PASSCODE_TITLE" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (id)detailString
{
  miniFlowDelegate = [(COSScreenTimeSetPasscodeViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"SCREEN_TIME_SET_PASSCODE_DETAIL_%@_%@" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName, familyMemberFirstName];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_CONTINUE" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = sub_100015C10();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[COSScreenTimeSetPasscodeViewController suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  miniFlowDelegate = [(COSScreenTimeSetPasscodeViewController *)self miniFlowDelegate];
  familyMember = [miniFlowDelegate familyMember];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CCB8;
  v7[3] = &unk_1002684A8;
  v7[4] = self;
  [(COSScreenTimeSetPasscodeViewController *)self _collectThenSetScreenTimePasscodeForFamilyMember:familyMember withCompletionHandler:v7];
}

- (void)_collectThenSetScreenTimePasscodeForFamilyMember:(id)member withCompletionHandler:(id)handler
{
  memberCopy = member;
  handlerCopy = handler;
  v7 = sub_100015C10();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    dsid = [memberCopy dsid];
    *buf = 136315650;
    *&buf[4] = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = memberCopy;
    *&buf[22] = 2114;
    v51 = dsid;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: familyMember:%@, dsid:%{public}@", buf, 0x20u);
  }

  dsid2 = [memberCopy dsid];
  v10 = dsid2 == 0;

  if (v10)
  {
    v48 = NSLocalizedDescriptionKey;
    v49 = @"Missing familyMember.dsid";
    v30 = [NSDictionary dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    v28 = [NSError errorWithDomain:@"COSScreenTimeSetupErrorDomain" code:1 userInfo:v30];

    v20 = sub_100015C10();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1001880A0();
    }

    goto LABEL_22;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v11 = qword_1002BD448;
  v45 = qword_1002BD448;
  if (!qword_1002BD448)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10006D734;
    v51 = &unk_1002680D0;
    v52 = &v42;
    sub_10006D734(buf);
    v11 = v43[3];
  }

  v12 = v11;
  _Block_object_dispose(&v42, 8);
  v20 = objc_alloc_init(v11);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v21 = qword_1002BD458;
  v45 = qword_1002BD458;
  if (!qword_1002BD458)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10006D8FC;
    v51 = &unk_1002680D0;
    v52 = &v42;
    sub_10006D8FC(buf, v13, v14, v15, v16, v17, v18, v19, v37[0]);
    v21 = v43[3];
  }

  v22 = v21;
  _Block_object_dispose(&v42, 8);
  v23 = [v21 alloc];
  dsid3 = [memberCopy dsid];
  v25 = [v23 initWithDSID:dsid3];

  v41 = 0;
  v26 = [v20 currentConfigurationForUser:v25 error:&v41];
  v27 = v41;
  if (v27)
  {
    v28 = v27;
    v29 = sub_100015C10();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100187FB0();
    }

LABEL_21:

LABEL_22:
    handlerCopy[2](handlerCopy, v28);
    v25 = v28;
    goto LABEL_23;
  }

  screenTimeState = [v26 screenTimeState];
  v32 = sub_100015C10();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]";
    *&buf[12] = 2114;
    *&buf[14] = v26;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%s: currentConfiguration:%{public}@", buf, 0x16u);
  }

  if (screenTimeState != 1)
  {
    v46 = NSLocalizedDescriptionKey;
    v47 = @"Screen Time not enabled";
    v36 = [NSDictionary dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v28 = [NSError errorWithDomain:@"COSScreenTimeSetupErrorDomain" code:1 userInfo:v36];

    v29 = sub_100015C10();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_100188024();
    }

    goto LABEL_21;
  }

  v33 = sub_100015C10();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: collecting passcode (async)", buf, 0xCu);
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10006D410;
  v37[3] = &unk_100269A40;
  v38 = v26;
  v39 = v20;
  v40 = handlerCopy;
  v34 = v20;
  v35 = v26;
  [v34 collectPasscodeFromUserWithCompletionHandler:v37];

LABEL_23:
}

- (BOOL)_errorIsUserCanceledSettingPIN:(id)n
{
  nCopy = n;
  domain = [nCopy domain];
  if ([domain isEqualToString:@"STErrorDomain"])
  {
    v5 = [nCopy code] == 48;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (STSMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end