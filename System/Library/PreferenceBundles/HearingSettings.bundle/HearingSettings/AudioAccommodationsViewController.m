@interface AudioAccommodationsViewController
- (AudioAccommodationsViewController)init;
- (id)currentTransparencyMode:(id)a3;
- (id)personalAudioEnabled:(id)a3;
- (id)personalAudioEnabledForType:(id)a3;
- (id)personalAudioShape:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setShapeFooterForSpecifier:(id)a3;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)confirmationViewCancelledForSpecifier:(id)a3;
- (void)levelSliderDidChange:(id)a3;
- (void)mediaServerDied;
- (void)registerNotifications;
- (void)reloadSpecifiers;
- (void)saveNewConfiguration;
- (void)setPersonalAudioEnabled:(id)a3 specifier:(id)a4;
- (void)setPersonalAudioEnabledForType:(id)a3 specifier:(id)a4;
- (void)showAudioAccommodationsLearnMore;
- (void)showConfigurationConfirmationAndReload:(BOOL)a3;
- (void)showHeadphoneCheckConfirmationIfNeeded;
- (void)showHearingAssistConfirmationIfNeeded;
- (void)stopPlayingSample;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)toggleSample:(id)a3;
- (void)updateHeadphoneStatus;
- (void)updateLevelAndShape;
- (void)updateShapeFooter;
- (void)willBecomeActive;
- (void)willResignActive;
@end

@implementation AudioAccommodationsViewController

- (AudioAccommodationsViewController)init
{
  v21.receiver = self;
  v21.super_class = AudioAccommodationsViewController;
  v2 = [(AudioAccommodationsViewController *)&v21 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_B6E8;
    v18[3] = &unk_48918;
    objc_copyWeak(&v19, &location);
    v3 = objc_retainBlock(v18);
    v4 = +[PASettings sharedInstance];
    [v4 registerUpdateBlock:v3 forRetrieveSelector:"personalMediaConfiguration" withListener:v2];

    v5 = +[PASettings sharedInstance];
    [v5 registerUpdateBlock:v3 forRetrieveSelector:"configurationCameFromEnrollment" withListener:v2];

    v6 = +[PASettings sharedInstance];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_B774;
    v16[3] = &unk_48918;
    objc_copyWeak(&v17, &location);
    [v6 registerUpdateBlock:v16 forRetrieveSelector:"personalAudioAccommodationTypes" withListener:v2];

    v7 = +[PASettings sharedInstance];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_B7F8;
    v14 = &unk_48918;
    objc_copyWeak(&v15, &location);
    [v7 registerUpdateBlock:&v11 forRetrieveSelector:"transparencyCustomized" withListener:v2];

    v8 = [PASettings sharedInstance:v11];
    [v8 personalAudioAccommodationTypes];
    v2->_mediaEnabled = compoundAttributeContainsAttribute();

    [(AudioAccommodationsViewController *)v2 registerNotifications];
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"updateHeadphoneStatus" name:PAYodelConfigDidUpdate object:0];

    [(AudioAccommodationsViewController *)v2 updateHeadphoneStatus];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)registerNotifications
{
  v3 = +[AVSystemController sharedAVSystemController];
  v14[0] = AVSystemController_HeadphoneJackIsConnectedDidChangeNotification;
  v14[1] = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v14[2] = AVSystemController_ServerConnectionDiedNotification;
  v4 = [NSArray arrayWithObjects:v14 count:3];
  [v3 setAttribute:v4 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"headphoneStateChangedNotification:" name:AVSystemController_HeadphoneJackIsConnectedDidChangeNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  v7 = +[AVAudioSession sharedInstance];
  [v6 addObserver:self selector:"headphoneStateChangedNotification:" name:AVAudioSessionRouteChangeNotification object:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = AVSystemController_ActiveAudioRouteDidChangeNotification;
  v10 = +[AVSystemController sharedAVSystemController];
  [v8 addObserver:self selector:"headphoneStateChangedNotification:" name:v9 object:v10];

  v11 = +[NSNotificationCenter defaultCenter];
  v12 = AVSystemController_ServerConnectionDiedNotification;
  v13 = +[AVSystemController sharedAVSystemController];
  [v11 addObserver:self selector:"mediaServerDied" name:v12 object:v13];
}

- (void)mediaServerDied
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(AudioAccommodationsViewController *)self performSelector:"registerNotifications" withObject:0 afterDelay:2.0];

  [(AudioAccommodationsViewController *)self headphoneStateChangedNotification:0];
}

- (void)willResignActive
{
  v3.receiver = self;
  v3.super_class = AudioAccommodationsViewController;
  [(AudioAccommodationsViewController *)&v3 willResignActive];
  v2 = +[PASettings sharedInstance];
  [v2 setCurrentEnrollmentProgress:0];
}

- (void)willBecomeActive
{
  v5.receiver = self;
  v5.super_class = AudioAccommodationsViewController;
  [(AudioAccommodationsViewController *)&v5 willBecomeActive];
  v3 = +[PASettings sharedInstance];
  v4 = [(PersonalAudioEnrollmentViewController *)self->_enrollmentController enrollment];
  [v3 setCurrentEnrollmentProgress:{objc_msgSend(v4, "progress")}];

  [(AudioAccommodationsViewController *)self reloadSpecifiers];
}

- (void)reloadSpecifiers
{
  v3 = +[HUAccessoryManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_BE1C;
  v4[3] = &unk_48B98;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    [(AudioAccommodationsViewController *)self updateLevelAndShape];
    v5 = +[PASettings sharedInstance];
    v6 = [v5 personalMediaEnabled];

    v7 = [objc_allocWithZone(NSMutableArray) init];
    v8 = +[PSSpecifier emptyGroupSpecifier];
    v9 = +[PASettings sharedInstance];
    v10 = [v9 configurationCameFromUser];

    if (v10)
    {
      v11 = accessibilityHearingAidSupportBundle();
      v12 = [v11 localizedStringForKey:@"PersonalAudioSetupFooter" value:@"PersonalAudioSetupFooter" table:@"HearingProtection-Yodel"];
      v13 = PSFooterTextGroupKey;
      [v8 setProperty:v12 forKey:PSFooterTextGroupKey];
    }

    else
    {
      v11 = paLocString();
      v13 = PSFooterTextGroupKey;
      [v8 setProperty:v11 forKey:PSFooterTextGroupKey];
    }

    v81 = v8;
    [v7 addObject:v8];
    v14 = paLocString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setPersonalAudioEnabled:specifier:" get:"personalAudioEnabled:" detail:0 cell:6 edit:0];

    [v15 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
    [v15 setIdentifier:@"AXPAEnableSpecID"];
    [v7 addObject:v15];
    v16 = +[PSSpecifier emptyGroupSpecifier];

    [v7 addObject:v16];
    v17 = paLocString();
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v18 setButtonAction:"startPMEEnrollment:"];
    [v18 setIdentifier:@"AXPAPersonalAudioSetupSpecID"];
    [v7 addObject:v18];
    if (!v6)
    {
      goto LABEL_48;
    }

    v19 = +[PASettings sharedInstance];
    if ([v19 personalMediaEnabled])
    {
    }

    else
    {
      v20 = +[PASettings sharedInstance];
      v21 = [v20 personalMediaConfiguration];

      if (!v21)
      {
LABEL_48:
        v75 = [v7 copy];
        v76 = *&self->PSListController_opaque[v3];
        *&self->PSListController_opaque[v3] = v75;

        v4 = *&self->PSListController_opaque[v3];
        goto LABEL_49;
      }
    }

    v79 = v13;
    v80 = v3;
    v22 = paLocString();
    v23 = [PSSpecifier groupSpecifierWithName:v22];

    [(AudioAccommodationsViewController *)self _setShapeFooterForSpecifier:v23];
    v78 = PSIsRadioGroupKey;
    [v23 setProperty:&__kCFBooleanTrue forKey:?];
    [v23 setIdentifier:@"AXPAShapeGroupSpecID"];
    v82 = v23;
    [v7 addObject:v23];
    v24 = +[PASettings sharedInstance];
    [v24 audiogramConfiguration];
    v26 = v25 = v7;

    v27 = v25;
    if (v26)
    {
      v28 = paLocString();
      v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v29 setProperty:&off_4C650 forKey:@"AXPAShapePropertyKey"];
      [v25 addObject:v29];
      v30 = PSRadioGroupCheckedSpecifierKey;
      if (self->_currentShape == 12)
      {
        [v82 setProperty:v29 forKey:PSRadioGroupCheckedSpecifierKey];
      }

      v18 = v29;
    }

    else
    {
      v30 = PSRadioGroupCheckedSpecifierKey;
    }

    for (i = 1; i != 4; ++i)
    {
      v32 = v18;
      v33 = paDescriptionForShape();
      v18 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:3 edit:0];

      v34 = [NSNumber numberWithUnsignedInteger:i];
      [v18 setProperty:v34 forKey:@"AXPAShapePropertyKey"];

      [v27 addObject:v18];
      if (i == self->_currentShape)
      {
        [v82 setProperty:v18 forKey:v30];
      }
    }

    v35 = +[PASettings sharedInstance];
    v36 = [v35 personalMediaConfiguration];
    v37 = [v36 level];

    if (v37 == &dword_C)
    {
      v38 = v27;
    }

    else
    {
      v39 = +[PSSpecifier emptyGroupSpecifier];
      v40 = paLocString();
      [v39 setProperty:v40 forKey:v79];

      [v27 addObject:v39];
      v41 = [(AudioAccommodationsViewController *)self view];
      [v41 bounds];
      LODWORD(v40) = [(HearingSettingsValueSliderCell *)AAStrengthSliderCell shouldAppearAsListForWidth:CGRectGetWidth(v84)];

      if (v40)
      {
        v42 = [PSSpecifier preferenceSpecifierNamed:&stru_49868 target:self set:"levelSliderDidChange:" get:"personalAudioLevel:" detail:0 cell:5 edit:0];

        [v42 setProperty:&__kCFBooleanTrue forKey:PSSliderIsContinuous];
        [v42 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
        [v42 setProperty:objc_opt_class() forKey:PSCellClassKey];
        [v42 setIdentifier:@"AXPALevelSpecID"];
        [v42 setUserInfo:self];
        [v27 addObject:v42];
        v18 = v42;
        v43 = v39;
      }

      else
      {
        [v39 setProperty:&__kCFBooleanTrue forKey:v78];
        [v39 setIdentifier:@"AXPALevelGroupSpecID"];
        v44 = 1;
        v43 = v39;
        do
        {
          v45 = v18;
          v46 = paDescriptionForLevel();
          v18 = [PSSpecifier preferenceSpecifierNamed:v46 target:self set:0 get:0 detail:0 cell:3 edit:0];

          v47 = [NSNumber numberWithUnsignedInteger:v44];
          [v18 setProperty:v47 forKey:@"AXPALevelPropertyKey"];

          [v27 addObject:v18];
          if (v44 == self->_currentLevel)
          {
            [v43 setProperty:v18 forKey:v30];
          }

          ++v44;
        }

        while (v44 != 4);
      }

      v38 = v27;
    }

    v48 = +[PSSpecifier emptyGroupSpecifier];

    [v38 addObject:v48];
    v49 = +[PASettings sharedInstance];
    [v49 currentEnrollmentProgress];

    if ([(AudioAccommodationsViewController *)self currentRouteSupportsAudioAccomodations])
    {
      v50 = +[HUUtilities sharedUtilities];
      v51 = [v50 wirelessSplitterEnabled] ^ 1;
    }

    else
    {
      v51 = 0;
    }

    v52 = +[PAStimulus musicStimulus];
    if ([v52 isPlaying])
    {
      self->_playingMedia;
    }

    v53 = paLocString();
    v54 = [PSSpecifier preferenceSpecifierNamed:v53 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v54 setButtonAction:"toggleSample:"];
    v55 = [NSNumber numberWithBool:v51];
    [v54 setProperty:v55 forKey:PSEnabledKey];

    [v54 setIdentifier:@"AXPAPlaySampleSpecID"];
    [v27 addObject:v54];
    if ((v51 & 1) == 0)
    {
      v56 = +[PAStimulus musicStimulus];
      v57 = [v56 isPlaying];

      if (v57)
      {
        [(AudioAccommodationsViewController *)self stopPlayingSample];
      }
    }

    v58 = paLocString();
    v59 = [PSSpecifier groupSpecifierWithName:v58];

    v60 = +[PASettings sharedInstance];
    v3 = v80;
    if ([v60 personalSoundVisible])
    {
      v61 = [(AudioAccommodationsViewController *)self pairedDeviceSupportsPSE];

      v62 = &__AXStringForVariables_ptr;
      if (!v61)
      {
        goto LABEL_40;
      }

      v60 = paLocString();
      [v59 setProperty:v60 forKey:v79];
    }

    else
    {
      v62 = &__AXStringForVariables_ptr;
    }

LABEL_40:
    [v27 addObject:v59];
    v63 = v62[178];
    v64 = paLocString();
    v65 = [v63 preferenceSpecifierNamed:v64 target:self set:"setPersonalAudioEnabledForType:specifier:" get:"personalAudioEnabledForType:" detail:0 cell:6 edit:0];

    [v65 setProperty:&off_4C668 forKey:@"AXPATypePropertyKey"];
    [v27 addObject:v65];
    v66 = v62[178];
    v67 = paLocString();
    v18 = [v66 preferenceSpecifierNamed:v67 target:self set:"setPersonalAudioEnabledForType:specifier:" get:"personalAudioEnabledForType:" detail:0 cell:6 edit:0];

    v7 = v27;
    [v18 setProperty:&off_4C680 forKey:@"AXPATypePropertyKey"];
    [v27 addObject:v18];
    v68 = +[PASettings sharedInstance];
    LODWORD(v64) = [v68 personalSoundVisible];

    if (!v64)
    {
LABEL_47:

      goto LABEL_48;
    }

    v69 = [(AudioAccommodationsViewController *)self availablePSEDevices];
    if ([v69 count] == &dword_0 + 1)
    {
      v70 = paLocString();
      v71 = [PSSpecifier preferenceSpecifierNamed:v70 target:self set:0 get:"currentTransparencyMode:" detail:objc_opt_class() cell:2 edit:0];

      v72 = [v69 allKeys];
      v73 = [v72 firstObject];
      [v71 setUserInfo:v73];
    }

    else
    {
      if ([v69 count] < 2)
      {
LABEL_46:

        goto LABEL_47;
      }

      v74 = paLocString();
      v71 = [PSSpecifier preferenceSpecifierNamed:v74 target:self set:0 get:"currentTransparencyMode:" detail:objc_opt_class() cell:2 edit:0];

      [v71 setUserInfo:v69];
    }

    v18 = v71;
    [v27 addObject:v71];
    goto LABEL_46;
  }

LABEL_49:

  return v4;
}

- (void)showAudioAccommodationsLearnMore
{
  v2 = UIApp;
  v3 = [NSURL URLWithString:@"https://support.apple.com/ht211218?cid=mc-ols-audio-article_ht211218-ios_ui-06042020"];
  [v2 openURL:v3 withCompletionHandler:0];
}

- (void)updateLevelAndShape
{
  v3 = +[PASettings sharedInstance];
  v5 = [v3 personalMediaConfiguration];

  self->_currentLevel = [v5 level];
  v4 = [v5 shape];
  self->_currentShape = v4;
  if (self->_currentLevel)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    self->_currentLevel = 1;
    if (self->_currentShape)
    {
      goto LABEL_3;
    }
  }

  self->_currentShape = 1;
LABEL_3:
}

- (void)_setShapeFooterForSpecifier:(id)a3
{
  currentShape = self->_currentShape;
  v4 = a3;
  v5 = paLocString();
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];
}

- (void)updateShapeFooter
{
  v3 = [(AudioAccommodationsViewController *)self specifierForID:@"AXPAShapeGroupSpecID"];
  [(AudioAccommodationsViewController *)self _setShapeFooterForSpecifier:v3];
  [(AudioAccommodationsViewController *)self reloadSpecifier:v3];
}

- (void)setPersonalAudioEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = +[PASettings sharedInstance];
  v7 = [v5 BOOLValue];

  [v6 setPersonalMediaEnabled:v7];
  [(AudioAccommodationsViewController *)self updateLevelAndShape];
  [(AudioAccommodationsViewController *)self saveNewConfiguration];
  [(AudioAccommodationsViewController *)self stopPlayingSample];

  [(AudioAccommodationsViewController *)self reloadSpecifiers];
}

- (id)personalAudioEnabled:(id)a3
{
  v3 = +[PASettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 personalMediaEnabled]);

  return v4;
}

- (void)setPersonalAudioEnabledForType:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = [a4 propertyForKey:@"AXPATypePropertyKey"];
  [v7 unsignedIntegerValue];

  v8 = +[PASettings sharedInstance];
  [v8 personalAudioAccommodationTypes];

  LODWORD(v8) = [v6 BOOLValue];
  if (v8)
  {
    v9 = compoundAttributeByAddingAttribute();
  }

  else
  {
    v9 = compoundAttributeByRemovingAttribute();
  }

  v10 = v9;
  self->_mediaEnabled = compoundAttributeContainsAttribute();
  v11 = +[PASettings sharedInstance];
  [v11 setPersonalAudioAccommodationTypes:v10];
}

- (id)personalAudioEnabledForType:(id)a3
{
  v3 = [a3 propertyForKey:@"AXPATypePropertyKey"];
  [v3 unsignedIntegerValue];

  v4 = +[PASettings sharedInstance];
  [v4 personalAudioAccommodationTypes];
  v5 = [NSNumber numberWithBool:compoundAttributeContainsAttribute()];

  return v5;
}

- (id)currentTransparencyMode:(id)a3
{
  v4 = paLocString();
  if ([(AudioAccommodationsViewController *)self transparencyCustomized])
  {
    v5 = paLocString();

    v4 = v5;
  }

  return v4;
}

- (id)personalAudioShape:(id)a3
{
  v4 = [a3 propertyForKey:@"AXPAShapePropertyKey"];
  v5 = v4;
  if (v4)
  {
    v6 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 unsignedIntegerValue] == self->_currentShape);
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (void)updateHeadphoneStatus
{
  v3 = +[HUAccessoryManager sharedInstance];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_D48C;
  v4[3] = &unk_48B98;
  v4[4] = self;
  [v3 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v4];
}

- (void)showHearingAssistConfirmationIfNeeded
{
  if ([(AudioAccommodationsViewController *)self hearingAssistEnabled])
  {
    v9 = objc_alloc_init(PSConfirmationSpecifier);
    v3 = accessibilityHearingAidSupportBundle();
    v4 = [v3 localizedStringForKey:@"PersonalAudioHearingAssistAlertTitle" value:@"PersonalAudioHearingAssistAlertTitle" table:@"HearingProtection-Yodel"];
    [v9 setTitle:v4];

    v5 = accessibilityHearingAidSupportBundle();
    v6 = [v5 localizedStringForKey:@"PersonalAudioHearingAssistAlertPrompt" value:@"PersonalAudioHearingAssistAlertPrompt" table:@"HearingProtection-Yodel"];
    [v9 setPrompt:v6];

    v7 = paLocString();
    [v9 setOkButton:v7];

    [(AudioAccommodationsViewController *)self showConfirmationViewForSpecifier:v9 useAlert:1];
  }

  else
  {
    v8 = HCLogAudioAccommodations();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Hearing assist is not enabled. Starting enrollment.", buf, 2u);
    }

    [(AudioAccommodationsViewController *)self showHeadphoneCheckConfirmationIfNeeded];
  }
}

- (void)showHeadphoneCheckConfirmationIfNeeded
{
  if (+[HCUtilities isInternalInstall])
  {
    v3 = +[PASettings sharedInstance];
    if ([v3 personalMediaAutomationSkipHeadphoneRequirement])
    {
      v4 = _AXSAutomationEnabled() != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = +[HUAccessoryManager sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_D794;
  v6[3] = &unk_48BE8;
  v7 = v4;
  v6[4] = self;
  [v5 getCurrentRouteSupportingHeadphoneAccommodationsWithCompletion:v6];
}

- (void)stopPlayingSample
{
  v3 = +[PASettings sharedInstance];
  [v3 personalAudioAccommodationTypes];

  if (self->_mediaEnabled)
  {
    v4 = compoundAttributeByAddingAttribute();
  }

  else
  {
    v4 = compoundAttributeByRemovingAttribute();
  }

  v5 = v4;
  v6 = +[PASettings sharedInstance];
  [v6 setPersonalAudioAccommodationTypes:v5];

  v7 = +[PAStimulus musicStimulus];
  [v7 stop];

  UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanFalse);
}

- (void)toggleSample:(id)a3
{
  v11 = a3;
  if (self->_playingMedia || (+[PAStimulus musicStimulus](PAStimulus, "musicStimulus"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isPlaying], v4, v5))
  {
    self->_playingMedia = 0;
    [(AudioAccommodationsViewController *)self stopPlayingSample];
  }

  else
  {
    self->_playingMedia = 1;
    v6 = +[PASettings sharedInstance];
    [v6 personalAudioAccommodationTypes];

    v7 = compoundAttributeByAddingAttribute();
    v8 = +[PASettings sharedInstance];
    [v8 setPersonalAudioAccommodationTypes:v7];

    v9 = +[PAStimulus musicStimulus];
    [v9 play];

    UIAccessibilityPostNotification(0x42Fu, &__kCFBooleanTrue);
  }

  v10 = paLocString();
  [v11 setName:v10];

  [(AudioAccommodationsViewController *)self reloadSpecifier:v11];
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  [(AudioAccommodationsViewController *)self saveNewConfiguration];

  [(AudioAccommodationsViewController *)self reloadSpecifiers];
}

- (void)confirmationViewCancelledForSpecifier:(id)a3
{
  v4 = HCLogAudioAccommodations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Alert cancelled", v5, 2u);
  }

  [(AudioAccommodationsViewController *)self reloadSpecifiers];
}

- (void)showConfigurationConfirmationAndReload:(BOOL)a3
{
  v3 = a3;
  v5 = +[PASettings sharedInstance];
  v6 = [v5 configurationCameFromEnrollment];

  if (v6)
  {
    v12 = objc_alloc_init(PSConfirmationSpecifier);
    v7 = +[HCUtilities deviceIsPad];
    v8 = paLocString();
    if (v7)
    {
      [v12 setOkButton:v8];
    }

    else
    {
      [v12 setTitle:v8];
    }

    v9 = paLocString();
    [v12 setPrompt:v9];

    v10 = paLocString();
    [v12 setCancelButton:v10];

    v11 = [NSNumber numberWithBool:1];
    [v12 setProperty:v11 forKey:PSConfirmationDestructiveKey];

    [(AudioAccommodationsViewController *)self showConfirmationViewForSpecifier:v12];
  }

  else
  {
    [(AudioAccommodationsViewController *)self saveNewConfiguration];
    if (v3)
    {

      [(AudioAccommodationsViewController *)self reloadSpecifiers];
    }
  }
}

- (void)saveNewConfiguration
{
  v8 = [PAConfiguration configurationWithLevel:self->_currentLevel andShape:self->_currentShape];
  if (self->_currentShape == 12)
  {
    v3 = +[PASettings sharedInstance];
    v4 = [v3 audiogramConfiguration];

    v8 = v4;
  }

  v5 = +[PASettings sharedInstance];
  [v5 setPersonalMediaConfiguration:v8];

  v6 = +[PASettings sharedInstance];
  [v6 setConfigurationCameFromEnrollment:0];

  v7 = +[PASettings sharedInstance];
  [v7 setConfigurationCameFromUser:1];
}

- (void)levelSliderDidChange:(id)a3
{
  [a3 floatValue];
  v5 = 2;
  v6 = 1;
  if (v4 > 0.5)
  {
    v6 = 3;
  }

  if (v4 != 0.5)
  {
    v5 = v6;
  }

  self->_currentLevel = v5;

  [(AudioAccommodationsViewController *)self showConfigurationConfirmationAndReload:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = AudioAccommodationsViewController;
  v6 = a4;
  [(AudioAccommodationsViewController *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AudioAccommodationsViewController *)self specifierAtIndexPath:v6, v11.receiver, v11.super_class];

  v8 = [v7 propertyForKey:@"AXPAShapePropertyKey"];
  v9 = [v7 propertyForKey:@"AXPALevelPropertyKey"];
  v10 = v9;
  if (v8)
  {
    self->_currentShape = [v8 unsignedIntegerValue];
    if (self->_currentLevel == 12)
    {
      self->_currentLevel = 1;
    }

    goto LABEL_6;
  }

  if (v9)
  {
    self->_currentLevel = [v9 unsignedIntegerValue];
LABEL_6:
    [(AudioAccommodationsViewController *)self showConfigurationConfirmationAndReload:1];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = AudioAccommodationsViewController;
  v6 = a4;
  v7 = [(AudioAccommodationsViewController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(AudioAccommodationsViewController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  v9 = [v8 propertyForKey:PSIDKey];
  LODWORD(v6) = [v9 isEqualToString:@"AXPAEnableSpecID"];

  if (v6)
  {
    v10 = [v7 textLabel];
    [v10 setNumberOfLines:0];
  }

  return v7;
}

@end