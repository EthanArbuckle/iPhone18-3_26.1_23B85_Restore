@interface HSPCSiriVoiceRecognitionViewController
- (HSPCSiriVoiceRecognitionViewController)initWithCoordinator:(id)coordinator config:(id)config;
- (id)_checkForiCloudSiriEnabledAndEnableVoiceRecognition;
- (id)_enableVoiceRecognitionAndCommitConfiguration;
- (id)_showVoiceRecognitionConfirmation;
- (void)_enableVoiceRecognition;
@end

@implementation HSPCSiriVoiceRecognitionViewController

- (HSPCSiriVoiceRecognitionViewController)initWithCoordinator:(id)coordinator config:(id)config
{
  coordinatorCopy = coordinator;
  configCopy = config;
  v8 = [[PRXCardContentView alloc] initWithCardStyle:0];
  v19.receiver = self;
  v19.super_class = HSPCSiriVoiceRecognitionViewController;
  v9 = [(HSPCSiriVoiceRecognitionViewController *)&v19 initWithContentView:v8];
  v10 = v9;
  if (v9)
  {
    [(HSPCSiriVoiceRecognitionViewController *)v9 setConfig:configCopy];
    [(HSPCSiriVoiceRecognitionViewController *)v10 setCoordinator:coordinatorCopy];
    v11 = HULocalizedString();
    [(HSPCSiriVoiceRecognitionViewController *)v10 setTitle:v11];

    v12 = HULocalizedString();
    v13 = [(HSPCSiriVoiceRecognitionViewController *)v10 addProminentButtonWithLocalizedTitle:v12 target:v10 futureSelector:"_enableVoiceRecognitionAndCommitConfiguration"];

    v14 = HULocalizedString();
    v15 = [(HSPCSiriVoiceRecognitionViewController *)v10 addOptionalButtonWithLocalizedTitle:v14 target:v10 futureSelector:"_showVoiceRecognitionConfirmation"];

    v16 = HULocalizedString();
    [(HSPCSiriVoiceRecognitionViewController *)v10 setSubtitle:v16];

    v17 = HULocalizedString();
    [(HSPCSiriVoiceRecognitionViewController *)v10 setBottomTrayTitle:v17];
  }

  return v10;
}

- (void)_enableVoiceRecognition
{
  config = [(HSPCSiriVoiceRecognitionViewController *)self config];
  home = [config home];

  v5 = [HFUserItem alloc];
  currentUser = [home currentUser];
  v7 = [v5 initWithHome:home user:currentUser nameStyle:0];

  v8 = [v7 setEnableIdentifyVoice:1];
  v9 = HFLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@ Enabling voice recognition", &v11, 0xCu);
  }
}

- (id)_checkForiCloudSiriEnabledAndEnableVoiceRecognition
{
  v3 = [HUHomeFeatureOnboardingUtilities checkSiriForiCloudEnabledPromptingUser:self];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002153C;
  v6[3] = &unk_1000C6468;
  v6[4] = self;
  v4 = [v3 flatMap:v6];

  return v4;
}

- (id)_enableVoiceRecognitionAndCommitConfiguration
{
  _checkForiCloudSiriEnabledAndEnableVoiceRecognition = [(HSPCSiriVoiceRecognitionViewController *)self _checkForiCloudSiriEnabledAndEnableVoiceRecognition];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100021654;
  v7[3] = &unk_1000C5AD8;
  v7[4] = self;
  v7[5] = a2;
  v5 = [_checkForiCloudSiriEnabledAndEnableVoiceRecognition flatMap:v7];

  return v5;
}

- (id)_showVoiceRecognitionConfirmation
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Showing voice recognition confirmation alert", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v18 = 0x3032000000;
  v19 = sub_100021D60;
  v20 = sub_100021D70;
  v21 = objc_opt_new();
  v6 = HULocalizedString();
  v7 = HULocalizedString();
  v8 = HULocalizedString();
  v9 = HULocalizedString();
  v10 = [UIAlertController alertControllerWithTitle:v6 message:v7 preferredStyle:1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100021D78;
  v16[3] = &unk_1000C64B8;
  v16[4] = self;
  v16[5] = &buf;
  v16[6] = a2;
  v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:v16];
  [v10 addAction:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100021ED0;
  v15[3] = &unk_1000C64B8;
  v15[4] = self;
  v15[5] = &buf;
  v15[6] = a2;
  v12 = [UIAlertAction actionWithTitle:v8 style:0 handler:v15];
  [v10 addAction:v12];

  [(HSPCSiriVoiceRecognitionViewController *)self presentViewController:v10 animated:1 completion:0];
  v13 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v13;
}

@end