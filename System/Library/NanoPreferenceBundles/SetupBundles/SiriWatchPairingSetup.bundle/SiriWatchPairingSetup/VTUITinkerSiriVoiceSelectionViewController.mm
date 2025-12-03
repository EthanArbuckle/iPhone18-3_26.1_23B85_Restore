@interface VTUITinkerSiriVoiceSelectionViewController
- (BOOL)holdBeforeDisplaying;
- (id)languageCode;
- (id)viewController;
- (void)dealloc;
- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice;
@end

@implementation VTUITinkerSiriVoiceSelectionViewController

- (BOOL)holdBeforeDisplaying
{
  if (!self->_provider)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = qword_CBE8;
    v19 = qword_CBE8;
    if (!qword_CBE8)
    {
      location[0] = _NSConcreteStackBlock;
      location[1] = 3221225472;
      location[2] = sub_3FC0;
      location[3] = &unk_8240;
      location[4] = &v16;
      sub_3FC0(location);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v5 = objc_alloc_init(v3);
    provider = self->_provider;
    self->_provider = v5;
  }

  languageCode = [(VTUITinkerSiriVoiceSelectionViewController *)self languageCode];
  objc_initWeak(location, self);
  v8 = self->_provider;
  v20 = languageCode;
  v9 = [NSArray arrayWithObjects:&v20 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_38C8;
  v12[3] = &unk_82E0;
  objc_copyWeak(&v14, location);
  v10 = languageCode;
  v13 = v10;
  [(AFEnablementFlowConfigurationProvider *)v8 configurationForEnablementFlow:9 recognitionLanguageCodes:v9 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);

  return 1;
}

- (id)viewController
{
  voiceSelectionViewController = self->_voiceSelectionViewController;
  if (!voiceSelectionViewController)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"NEXT" value:&stru_84A0 table:@"Localizable"];
    v7 = [v4 initWithTitle:v6 style:0 target:0 action:0];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v8 = qword_CBF8;
    v20 = qword_CBF8;
    if (!qword_CBF8)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_4188;
      v16[3] = &unk_8240;
      v16[4] = &v17;
      sub_4188(v16);
      v8 = v18[3];
    }

    v9 = v8;
    _Block_object_dispose(&v17, 8);
    v10 = [v8 alloc];
    languageCode = [(VTUITinkerSiriVoiceSelectionViewController *)self languageCode];
    v12 = [v10 initWithRecognitionLanguage:languageCode allowsRandomSelection:-[AFEnablementConfiguration voiceSelectionAllowsRandomSelection](self->_configuration barButtonItemForContinue:"voiceSelectionAllowsRandomSelection") customVoicePreviewer:v7 delegate:{0, self}];
    v13 = self->_voiceSelectionViewController;
    self->_voiceSelectionViewController = v12;

    navigationItem = [(VTUIVoiceSelectionViewController *)self->_voiceSelectionViewController navigationItem];
    [navigationItem setRightBarButtonItem:v7];

    voiceSelectionViewController = self->_voiceSelectionViewController;
  }

  return voiceSelectionViewController;
}

- (void)dealloc
{
  if (self->_configuration)
  {
    sharedPreferences = [sub_3D40() sharedPreferences];
    outputVoice = [sharedPreferences outputVoice];
    v5 = outputVoice != 0;

    completionLoggingBlock = [(AFEnablementConfiguration *)self->_configuration completionLoggingBlock];
    completionLoggingBlock[2](completionLoggingBlock, v5);
  }

  v7.receiver = self;
  v7.super_class = VTUITinkerSiriVoiceSelectionViewController;
  [(VTUITinkerSiriVoiceSelectionViewController *)&v7 dealloc];
}

- (id)languageCode
{
  sharedPreferences = [sub_3D40() sharedPreferences];
  languageCode = [sharedPreferences languageCode];

  if (!languageCode)
  {
    sharedPreferences2 = [sub_3D40() sharedPreferences];
    languageCode = [sharedPreferences2 bestSupportedLanguageCodeForLanguageCode:0];
  }

  return languageCode;
}

- (void)voiceSelectionController:(id)controller didSelectVoice:(id)voice
{
  voiceCopy = voice;
  v6 = +[BPSBridgeAppContext shared];
  activeDevice = [v6 activeDevice];

  sharedPreferences = [sub_3D40() sharedPreferences];
  languageCode = [(VTUITinkerSiriVoiceSelectionViewController *)self languageCode];
  [sharedPreferences setNanoLanguageCode:languageCode outputVoice:voiceCopy forTinkerDevice:activeDevice];

  [(VTUITinkerSiriVoiceSelectionViewController *)self applyConfirmedOptin:1];
}

@end