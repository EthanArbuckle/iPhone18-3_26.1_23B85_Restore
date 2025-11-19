@interface VoiceOverDuckingController
- (id)_specsForAudioDuckingMode;
- (id)_specsForVolume;
- (id)audioDuckingModeDescription;
- (id)audioDuckingVolumeDescription;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation VoiceOverDuckingController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = VoiceOverDuckingController;
  [(VoiceOverDuckingController *)&v14 viewDidLoad];
  objc_initWeak(&location, self);
  v3 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __41__VoiceOverDuckingController_viewDidLoad__block_invoke;
  v11[3] = &unk_255388;
  objc_copyWeak(&v12, &location);
  [v3 registerUpdateBlock:v11 forRetrieveSelector:"voiceOverMediaDuckingMode" withListener:self];

  objc_destroyWeak(&v12);
  v4 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __41__VoiceOverDuckingController_viewDidLoad__block_invoke_2;
  v9[3] = &unk_255388;
  objc_copyWeak(&v10, &location);
  [v4 registerUpdateBlock:v9 forRetrieveSelector:"voiceOverMediaDuckingAmount" withListener:self];

  objc_destroyWeak(&v10);
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"updateMediaDuckingSpecifiers:" name:kAXSVoiceOverTouchVolumeChangedNotification object:0];

  v6 = [(VoiceOverDuckingController *)self table];
  v7 = objc_opt_class();
  v8 = +[VoiceOverDuckingSliderCell cellReuseIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];

  objc_destroyWeak(&location);
}

void __41__VoiceOverDuckingController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMediaDuckingSpecifiers:0];
}

void __41__VoiceOverDuckingController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateMediaDuckingSpecifiers:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [(VoiceOverDuckingController *)self _specsForAudioDuckingMode];
    [v5 addObjectsFromArray:v6];

    v7 = [(VoiceOverDuckingController *)self _specsForVolume];
    [v5 addObjectsFromArray:v7];

    v8 = [v5 copy];
    v9 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v8;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)_specsForAudioDuckingMode
{
  v3 = +[NSMutableArray array];
  v4 = settingsLocString(@"AUDIO_DUCKING", @"VoiceOverSettings");
  v5 = [PSSpecifier groupSpecifierWithName:v4];

  [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v6 = PSIDKey;
  [v5 setProperty:@"DuckingModeGroup" forKey:PSIDKey];
  v7 = [(VoiceOverDuckingController *)self audioDuckingModeDescription];
  [v5 setProperty:v7 forKey:PSFooterTextGroupKey];

  [v3 addObject:v5];
  v8 = settingsLocString(@"AUDIO_DUCKING_OFF", @"VoiceOverSettings");
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setProperty:&off_27A7E8 forKey:@"DuckingModeValue"];
  [v9 setProperty:@"DuckingModeOffIdentifier" forKey:v6];
  v10 = settingsLocString(@"AUDIO_DUCKING_ONLY_SPEAKING", @"VoiceOverSettings");
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v11 setProperty:&off_27A800 forKey:@"DuckingModeValue"];
  [v11 setProperty:@"DuckingModeOnlySpeakingIdentifier" forKey:v6];
  v12 = settingsLocString(@"AUDIO_DUCKING_ALWAYS", @"VoiceOverSettings");
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

  [v13 setProperty:&off_27A818 forKey:@"DuckingModeValue"];
  [v13 setProperty:@"DuckingModeAlwaysSpeakingIdentifier" forKey:v6];
  v14 = +[AXSettings sharedInstance];
  v15 = [v14 voiceOverMediaDuckingMode];

  v16 = v9;
  if (v15)
  {
    v17 = +[AXSettings sharedInstance];
    v18 = [v17 voiceOverMediaDuckingMode];

    if (v18 == &dword_0 + 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }
  }

  v19 = v16;
  [v5 setProperty:v19 forKey:PSRadioGroupCheckedSpecifierKey];
  [v3 addObject:v9];
  [v3 addObject:v11];
  [v3 addObject:v13];

  return v3;
}

- (id)_specsForVolume
{
  v3 = +[NSMutableArray array];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 voiceOverMediaDuckingMode];

  if (v5)
  {
    v6 = settingsLocString(@"DUCKING_AMOUNT", @"VoiceOverSettings");
    v7 = [PSSpecifier groupSpecifierWithName:v6];

    [v7 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v8 = [(VoiceOverDuckingController *)self audioDuckingVolumeDescription];
    [v7 setProperty:v8 forKey:PSFooterTextGroupKey];

    [v3 addObject:v7];
    v9 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v3 addObject:v9];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v16.receiver = self;
  v16.super_class = VoiceOverDuckingController;
  v6 = a4;
  [(VoiceOverDuckingController *)&v16 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [v6 section];

  v8 = [(VoiceOverDuckingController *)self specifierAtIndex:[(VoiceOverDuckingController *)self indexOfGroup:v7]];
  v9 = [v8 propertyForKey:PSIDKey];
  LODWORD(v6) = [v9 isEqualToString:@"DuckingModeGroup"];

  if (v6)
  {
    v10 = [v8 propertyForKey:PSRadioGroupCheckedSpecifierKey];
    v11 = [v10 propertyForKey:@"DuckingModeValue"];
    v12 = [v11 intValue];

    v13 = +[AXSettings sharedInstance];
    [v13 setVoiceOverMediaDuckingMode:v12];
  }

  v14 = [(VoiceOverDuckingController *)self specifierForID:@"DuckingModeGroup"];
  v15 = [(VoiceOverDuckingController *)self audioDuckingModeDescription];
  [v14 setProperty:v15 forKey:PSFooterTextGroupKey];

  [(VoiceOverDuckingController *)self reloadSpecifier:v14 animated:1];
}

- (id)audioDuckingModeDescription
{
  v2 = settingsLocString(@"AUDIO_DUCKING_ALWAYS_FOOTER", @"VoiceOverSettings");
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 voiceOverMediaDuckingMode];

  if (v4)
  {
    v5 = +[AXSettings sharedInstance];
    v6 = [v5 voiceOverMediaDuckingMode];

    if (v6 != &dword_0 + 1)
    {
      goto LABEL_6;
    }

    v7 = @"AUDIO_DUCKING_ONLY_SPEAKING_FOOTER";
  }

  else
  {
    v7 = @"AUDIO_DUCKING_OFF_FOOTER";
  }

  v8 = settingsLocString(v7, @"VoiceOverSettings");

  v2 = v8;
LABEL_6:

  return v2;
}

- (id)audioDuckingVolumeDescription
{
  if (AXDeviceIsPhone())
  {
    v2 = @"AUDIO_DUCKING_VOLUME_FOOTER_IPHONE";
LABEL_7:
    v3 = settingsLocString(v2, @"VoiceOverSettings");
    goto LABEL_8;
  }

  if (AXDeviceIsPad())
  {
    v2 = @"AUDIO_DUCKING_VOLUME_FOOTER_IPAD";
    goto LABEL_7;
  }

  if (AXDeviceIsRealityDevice())
  {
    v2 = @"AUDIO_DUCKING_VOLUME_FOOTER_REALITY_DEVICE";
    goto LABEL_7;
  }

  v3 = &stru_25D420;
LABEL_8:

  return v3;
}

@end