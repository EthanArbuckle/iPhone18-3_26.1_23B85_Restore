@interface SiriNotificationsSetupViewController
+ (id)defaultSubtitleFont;
+ (id)locIntermediateStringForViewType:(int64_t)a3;
+ (id)locTableForViewType:(int64_t)a3;
+ (id)modelForUserInfo:(id)a3;
+ (id)modelForUserInfo:(id)a3 siriControllerClass:(Class)a4;
+ (id)viewModelForModel:(id)a3;
- (SiriNotificationsSetupProxPairingControllerProxy)mainController;
- (SiriNotificationsSetupViewController)init;
- (SiriNotificationsSetupViewController)initWithSiriControllerClass:(Class)a3;
- (id)deviceName;
- (id)extendedUserInfo;
- (void)announceCallsEnabledDonateTip;
- (void)handleContinueButton;
- (void)handleContinueForMessages;
- (void)handleDismissButton;
- (void)handleDismissForMessages;
- (void)handleDoNotAnnounceButton;
- (void)handleDoNotForMessages;
- (void)logDismissEventForAnnounceMessagesToDuet;
- (void)setUpActions;
- (void)setUpSubtitle;
- (void)setUpTitle;
- (void)transitionToNextCardIfNecessary;
- (void)updateAnnounceCallsStateForUserOptedIn;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SiriNotificationsSetupViewController

- (SiriNotificationsSetupProxPairingControllerProxy)mainController
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);

  return WeakRetained;
}

- (void)announceCallsEnabledDonateTip
{
  v4 = +[BMStreams discoverabilitySignal];
  v2 = [v4 source];
  v3 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:@"com.apple.siri.announce-calls.enabled" bundleID:@"com.apple.sharingd" context:0];
  [v2 sendEvent:v3];
}

- (void)transitionToNextCardIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  v3 = [(SiriNotificationsSetupViewController *)self model];
  v4 = [v3 isUpsellFlow];

  if (v4)
  {
    [WeakRetained dismiss:9];
  }

  else if ([WeakRetained shouldShowSpatialAudioSetUp])
  {
    [WeakRetained showSpatialAudioTutorial];
  }

  else
  {
    [WeakRetained showStatus:0];
  }
}

- (void)updateAnnounceCallsStateForUserOptedIn
{
  if (SFIsAnnounceCallsEnabled())
  {
    v3 = [(SiriNotificationsSetupViewController *)self model];
    v4 = [v3 isSiriAllowedWhileLocked];

    if (v4)
    {
      if (![(objc_class *)[(SiriNotificationsSetupViewController *)self siriControllerClass] announceCallsState])
      {
        [(objc_class *)[(SiriNotificationsSetupViewController *)self siriControllerClass] setAnnounceCallsState:3];

        [(SiriNotificationsSetupViewController *)self announceCallsEnabledDonateTip];
      }
    }
  }
}

- (void)handleDoNotAnnounceButton
{
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(SiriNotificationsSetupViewController *)self model];
  v4 = [v3 viewType];

  if (v4 == 2)
  {
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    if (dword_1001BE658 <= 90 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
LABEL_8:
    [(SiriNotificationsSetupViewController *)self handleDoNotForMessages];
  }

LABEL_9:

  [(SiriNotificationsSetupViewController *)self transitionToNextCardIfNecessary];
}

- (void)handleDoNotForMessages
{
  [(objc_class *)[(SiriNotificationsSetupViewController *)self siriControllerClass] setAnnounceMessagesEnabled:0];
  v4 = [(SiriNotificationsSetupViewController *)self mainController];
  v3 = [v4 announceMessagesEvent];
  [v3 setUserExplicitlyOptedOut:0];
}

- (void)handleContinueButton
{
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v3 = [(SiriNotificationsSetupViewController *)self model];
  v4 = [v3 viewType];

  if (v4 == 2)
  {
    [(SiriNotificationsSetupViewController *)self handleContinueForMessages];
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_10:
    [(SiriNotificationsSetupViewController *)self handleContinueForCalls];
    goto LABEL_11;
  }

  if (v4)
  {
    if (dword_1001BE658 <= 90 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    [(SiriNotificationsSetupViewController *)self handleContinueForMessages];
  }

LABEL_11:

  [(SiriNotificationsSetupViewController *)self transitionToNextCardIfNecessary];
}

- (void)handleContinueForMessages
{
  [(objc_class *)[(SiriNotificationsSetupViewController *)self siriControllerClass] setAnnounceMessagesEnabled:1];
  v4 = [(SiriNotificationsSetupViewController *)self mainController];
  v3 = [v4 announceMessagesEvent];
  [v3 setUserExplicitlyOptedIn:1];
}

- (void)handleDismissButton
{
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  v3 = [(SiriNotificationsSetupViewController *)self model];
  v4 = [v3 viewType];

  if (v4 == 2)
  {
    [(SiriNotificationsSetupViewController *)self handleDismissForMessages];
    goto LABEL_10;
  }

  if (v4 == 1)
  {
LABEL_10:
    [(SiriNotificationsSetupViewController *)self handleDismissForCalls];
    goto LABEL_11;
  }

  if (v4)
  {
    if (dword_1001BE658 <= 90 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
    {
      v5 = v4;
      LogPrintF();
    }
  }

  else
  {
    [(SiriNotificationsSetupViewController *)self handleDismissForMessages];
  }

LABEL_11:
  [WeakRetained dismiss:{5, v5}];
}

- (void)handleDismissForMessages
{
  [(SiriNotificationsSetupViewController *)self logDismissEventForAnnounceMessagesToDuet];
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  v3 = [WeakRetained announceMessagesEvent];
  [v3 setUserExplicitlyOptedIn:1];
}

- (void)logDismissEventForAnnounceMessagesToDuet
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = [@"iOS-" stringByAppendingString:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = +[_DKDiscoverabilitySignalsMetadataKey osBuild];
  [v4 setObject:v3 forKeyedSubscript:v5];

  v6 = [[_DKSource alloc] initWithIdentifier:0 bundleIdentifier:@"com.apple.Sharing" itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
  v7 = +[NSDate date];
  v8 = +[_DKSystemEventStreams discoverabilitySignalsStream];
  v9 = [_DKEvent eventWithStream:v8 source:v6 startDate:v7 endDate:v7 identifierStringValue:@"com.apple.siri.spoken-messages.opt-in.dismissed" metadata:v4];

  v10 = +[_DKKnowledgeStore knowledgeStore];
  v12 = v9;
  v11 = [NSArray arrayWithObjects:&v12 count:1];
  [v10 saveObjects:v11 responseQueue:0 withCompletion:&stru_100194CB8];
}

- (void)setUpActions
{
  objc_initWeak(&location, self);
  v3 = [(SiriNotificationsSetupViewController *)self viewModel];
  v4 = [v3 primaryActionTitle];

  v5 = [(SiriNotificationsSetupViewController *)self viewModel];
  v6 = [v5 primaryActionStyle];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EE570;
  v31[3] = &unk_1001958D8;
  objc_copyWeak(&v32, &location);
  v7 = [PRXAction actionWithTitle:v4 style:v6 handler:v31];
  v8 = [(SiriNotificationsSetupViewController *)self viewModel];
  [v7 setUsesLegacyStyling:{objc_msgSend(v8, "primaryActionUsesLegacyStyling")}];

  v9 = [(SiriNotificationsSetupViewController *)self addAction:v7];
  v10 = [(SiriNotificationsSetupViewController *)self viewModel];
  v11 = [v10 secondaryActionAvailable];

  if (v11)
  {
    v12 = [(SiriNotificationsSetupViewController *)self viewModel];
    v13 = [v12 secondaryActionTitle];

    v14 = [(SiriNotificationsSetupViewController *)self viewModel];
    v15 = [v14 secondaryActionStyle];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000EE5B0;
    v29[3] = &unk_1001958D8;
    objc_copyWeak(&v30, &location);
    v16 = [PRXAction actionWithTitle:v13 style:v15 handler:v29];
    v17 = [(SiriNotificationsSetupViewController *)self viewModel];
    [v16 setUsesLegacyStyling:{objc_msgSend(v17, "secondaryActionUsesLegacyStyling")}];

    v18 = [(SiriNotificationsSetupViewController *)self addAction:v16];
    objc_destroyWeak(&v30);
  }

  v19 = [(SiriNotificationsSetupViewController *)self viewModel];
  v20 = [v19 dismissActionTitle];

  v21 = [(SiriNotificationsSetupViewController *)self viewModel];
  v22 = [v21 dismissActionStyle];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000EE5F0;
  v27 = &unk_1001958D8;
  objc_copyWeak(&v28, &location);
  v23 = [PRXAction actionWithTitle:v20 style:v22 handler:&v24];
  [(SiriNotificationsSetupViewController *)self setDismissButtonAction:v23, v24, v25, v26, v27];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&location);
}

- (void)setUpSubtitle
{
  v8 = [PRXLabel labelWithStyle:1];
  v3 = [(SiriNotificationsSetupViewController *)self viewModel];
  v4 = [v3 subtitleFont];
  [v8 setFont:v4];

  v5 = [(SiriNotificationsSetupViewController *)self viewModel];
  v6 = [v5 subtitleText];
  [v8 setText:v6];

  v7 = [(SiriNotificationsSetupViewController *)self contentView];
  [v7 setSubtitleLabel:v8];
}

- (void)setUpTitle
{
  v10 = [PRXTextView textViewWithStyle:0];
  v3 = [(SiriNotificationsSetupViewController *)self viewModel];
  v4 = [v3 titleText];
  [v10 setTitleText:v4];

  v5 = [(SiriNotificationsSetupViewController *)self viewModel];
  v6 = [v5 titleFont];
  [v10 setFont:v6];

  v7 = [(SiriNotificationsSetupViewController *)self viewModel];
  v8 = [v7 titleColor];
  [v10 setTextColor:v8];

  v9 = [(SiriNotificationsSetupViewController *)self contentView];
  [v9 setTitleView:v10];
}

- (id)extendedUserInfo
{
  v3 = [(SiriNotificationsSetupViewController *)self mainController];
  v4 = [v3 userInfo];
  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

  v6 = [(SiriNotificationsSetupViewController *)self deviceName];
  [v5 setObject:v6 forKeyedSubscript:@"localizedDeviceName"];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 inEarDetection]);
  [v5 setObject:v7 forKeyedSubscript:@"inEarDetection"];

  v8 = [NSDictionary dictionaryWithDictionary:v5];

  return v8;
}

- (id)deviceName
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  v3 = [WeakRetained localizedName];

  if (!v3)
  {
    v4 = [WeakRetained userInfo];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    v8 = 0;
    sub_100126C30(Int64Ranged, 0, 1, 0, &v8, 0, 0);
    [WeakRetained setLocalizedName:v8];
  }

  v6 = [WeakRetained localizedName];

  return v6;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v5 viewDidDisappear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v10 viewDidAppear:a3];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setSpokenNotificationsProxCardSeen];

  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = SFIsAnnounceCallsEnabled();
  v6 = [(SiriNotificationsSetupViewController *)self siriControllerClass];
  if (v5)
  {
    [(objc_class *)v6 setHasUserSeenAnnounceCallsOptOutScreen:1];
  }

  else
  {
    [(objc_class *)v6 setHasUserSeenAnnounceMessagesOptOutScreen:1];
  }

  v7 = [(SiriNotificationsSetupViewController *)self model];
  if ([v7 isSiriAllowedWhileLocked])
  {
    v8 = [(SiriNotificationsSetupViewController *)self model];
    v9 = [v8 isUpsellFlow];

    if (v9)
    {
      [(objc_class *)[(SiriNotificationsSetupViewController *)self siriControllerClass] setAnnounceMessagesEnabled:1];
      [(SiriNotificationsSetupViewController *)self updateAnnounceCallsStateForUserOptedIn];
    }
  }

  else
  {
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7.receiver = self;
  v7.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v7 viewWillAppear:v3];
  v5 = [(SiriNotificationsSetupViewController *)self mainController];
  v6 = [v5 announceMessagesEvent];
  [v6 setPairingExitView:3];
}

- (void)viewDidLoad
{
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v32.receiver = self;
  v32.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v32 viewDidLoad];
  v31 = [(SiriNotificationsSetupViewController *)self extendedUserInfo];
  v3 = [objc_opt_class() modelForUserInfo:v31];
  [(SiriNotificationsSetupViewController *)self setModel:v3];

  v4 = objc_opt_class();
  v5 = [(SiriNotificationsSetupViewController *)self model];
  v6 = [v4 viewModelForModel:v5];
  [(SiriNotificationsSetupViewController *)self setViewModel:v6];

  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    v7 = [(SiriNotificationsSetupViewController *)self model];
    v8 = [v7 viewType];
    if (v8 > 2)
    {
      v9 = @"?";
    }

    else
    {
      v9 = off_100194D08[v8];
    }

    v24 = v9;
    LogPrintF();
  }

  [(SiriNotificationsSetupViewController *)self setDismissalType:3, v24];
  [(SiriNotificationsSetupViewController *)self setUpTitle];
  [(SiriNotificationsSetupViewController *)self setUpSubtitle];
  [(SiriNotificationsSetupViewController *)self setUpActions];
  v10 = [UIImageView alloc];
  v11 = [UIImage imageNamed:@"SpokenIcon"];
  v12 = [v10 initWithImage:v11];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(SiriNotificationsSetupViewController *)self contentView];
  [v13 addSubview:v12];

  v14 = [(SiriNotificationsSetupViewController *)self contentView];
  v15 = [v14 mainContentGuide];

  v30 = [v12 topAnchor];
  v29 = [v15 topAnchor];
  v28 = [v30 constraintGreaterThanOrEqualToAnchor:v29];
  v33[0] = v28;
  v27 = [v12 centerXAnchor];
  v26 = [v15 centerXAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v33[1] = v25;
  v16 = [v12 bottomAnchor];
  v17 = [v15 bottomAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];
  v33[2] = v18;
  v19 = [v12 heightAnchor];
  v20 = [v19 constraintEqualToConstant:76.0];
  v33[3] = v20;
  v21 = [v12 widthAnchor];
  v22 = [v21 constraintEqualToConstant:76.0];
  v33[4] = v22;
  v23 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v23];
}

- (SiriNotificationsSetupViewController)initWithSiriControllerClass:(Class)a3
{
  v7.receiver = self;
  v7.super_class = SiriNotificationsSetupViewController;
  v4 = [(SiriNotificationsSetupViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_siriControllerClass, a3);
  }

  return v5;
}

- (SiriNotificationsSetupViewController)init
{
  v3 = objc_opt_class();

  return [(SiriNotificationsSetupViewController *)self initWithSiriControllerClass:v3];
}

+ (id)viewModelForModel:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SiriNotificationsSetupViewModel);
  v6 = [a1 locIntermediateStringForViewType:{objc_msgSend(v4, "viewType")}];
  v7 = &swift_allocBox_ptr;
  v8 = [NSString stringWithFormat:@"ANNOUNCE_%@", v6];
  v9 = [a1 locTableForViewType:{objc_msgSend(v4, "viewType")}];
  v10 = [NSString stringWithFormat:@"%@_TITLE", v8];
  v11 = sub_10012794C(v9, v10);
  [(SiriNotificationsSetupViewModel *)v5 setTitleText:v11];

  v12 = [a1 defaultTitleFont];
  [(SiriNotificationsSetupViewModel *)v5 setTitleFont:v12];

  v13 = [a1 defaultTitleColor];
  [(SiriNotificationsSetupViewModel *)v5 setTitleColor:v13];

  v14 = [a1 defaultSubtitleFont];
  [(SiriNotificationsSetupViewModel *)v5 setSubtitleFont:v14];

  if ([v4 isSiriAllowedWhileLocked])
  {
    v15 = [NSString stringWithFormat:@"%@_SUBTITLE_FORMAT", v8];
    v16 = [v4 localizedDeviceName];
    v23 = sub_100127C0C(v9, v15, v17, v18, v19, v20, v21, v22, v16);
    [(SiriNotificationsSetupViewModel *)v5 setSubtitleText:v23];

    v7 = &swift_allocBox_ptr;
  }

  else
  {
    v24 = [NSString stringWithFormat:@"%@_SUBTITLE_LOCKED", v8];

    v15 = sub_10012794C(v9, v24);
    [(SiriNotificationsSetupViewModel *)v5 setSubtitleText:v15];
    v10 = v24;
  }

  -[SiriNotificationsSetupViewModel setPrimaryActionStyle:](v5, "setPrimaryActionStyle:", [a1 defaultPrimaryActionStyle]);
  [(SiriNotificationsSetupViewModel *)v5 setPrimaryActionUsesLegacyStyling:1];
  v25 = [v4 isSiriAllowedWhileLocked];
  v26 = [v4 isUpsellFlow];
  v27 = @"SET_UP_LATER";
  v28 = @"CONTINUE";
  if (v26)
  {
    v27 = @"CONTINUE";
    v28 = @"OK_BUTTON_TITLE";
  }

  if (v25)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = sub_10012794C(@"Localizable", v29);
  [(SiriNotificationsSetupViewModel *)v5 setPrimaryActionTitle:v30];

  if ([v4 isSiriAllowedWhileLocked])
  {
    [(SiriNotificationsSetupViewModel *)v5 setSecondaryActionAvailable:1];
    -[SiriNotificationsSetupViewModel setSecondaryActionStyle:](v5, "setSecondaryActionStyle:", [a1 defaultSecondaryActionStyle]);
    [(SiriNotificationsSetupViewModel *)v5 setSecondaryActionUsesLegacyStyling:1];
    v31 = [v7[394] stringWithFormat:@"%@_TURN_OFF", v8];

    v32 = sub_10012794C(v9, v31);
    [(SiriNotificationsSetupViewModel *)v5 setSecondaryActionTitle:v32];

    v10 = v31;
  }

  [(SiriNotificationsSetupViewModel *)v5 setDismissActionTitle:&stru_100195CA8];
  [(SiriNotificationsSetupViewModel *)v5 setDismissActionStyle:0];

  return v5;
}

+ (id)defaultSubtitleFont
{
  v2 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryLarge];
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  [v4 pointSize];
  v5 = [UIFont fontWithDescriptor:v4 size:?];

  return v5;
}

+ (id)locTableForViewType:(int64_t)a3
{
  if (a3 < 3)
  {
    return off_100194CF0[a3];
  }

  v3 = @"Localizable-AnnounceTelephony";
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

+ (id)locIntermediateStringForViewType:(int64_t)a3
{
  if (a3 < 3)
  {
    return off_100194CD8[a3];
  }

  v3 = @"MESSAGES_AND_CALLS";
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

+ (id)modelForUserInfo:(id)a3
{
  v4 = a3;
  v5 = [a1 modelForUserInfo:v4 siriControllerClass:objc_opt_class()];

  return v5;
}

+ (id)modelForUserInfo:(id)a3 siriControllerClass:(Class)a4
{
  v5 = a3;
  v6 = objc_alloc_init(SiriNotificationsSetupModel);
  if (v5)
  {
    [(SiriNotificationsSetupModel *)v6 setDeviceProductID:CFDictionaryGetInt64Ranged()];
    [(SiriNotificationsSetupModel *)v6 setDeviceSupportsInEarDetection:CFDictionaryGetInt64() != 0];
    [(SiriNotificationsSetupModel *)v6 setIsSiriAllowedWhileLocked:[(objc_class *)a4 isSiriAllowedWhileLocked]];
    [(SiriNotificationsSetupModel *)v6 setIsUpsellFlow:CFDictionaryGetInt64() != 0];
    CFStringGetTypeID();
    [(SiriNotificationsSetupModel *)v6 setLocalizedDeviceName:CFDictionaryGetTypedValue()];
    v7 = [(objc_class *)a4 shouldPromptForAnnounceMessagesForProductID:[(SiriNotificationsSetupModel *)v6 deviceProductID] isUpsellFlow:[(SiriNotificationsSetupModel *)v6 isUpsellFlow]];
    v8 = [(objc_class *)a4 shouldPromptForAnnounceCallsForProductID:[(SiriNotificationsSetupModel *)v6 deviceProductID] supportsInEarDetection:[(SiriNotificationsSetupModel *)v6 deviceSupportsInEarDetection] isUpsellFlow:[(SiriNotificationsSetupModel *)v6 isUpsellFlow]];
    if ((v7 & 1) != 0 || v8)
    {
      v9 = 2;
      if ((v7 & v8) == 0)
      {
        v9 = 0;
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      [(SiriNotificationsSetupModel *)v6 setViewType:v10];
    }
  }

  else if (dword_1001BE658 <= 115 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6;
}

@end