@interface SiriNotificationsSetupViewController
+ (id)defaultSubtitleFont;
+ (id)locIntermediateStringForViewType:(int64_t)type;
+ (id)locTableForViewType:(int64_t)type;
+ (id)modelForUserInfo:(id)info;
+ (id)modelForUserInfo:(id)info siriControllerClass:(Class)class;
+ (id)viewModelForModel:(id)model;
- (SiriNotificationsSetupProxPairingControllerProxy)mainController;
- (SiriNotificationsSetupViewController)init;
- (SiriNotificationsSetupViewController)initWithSiriControllerClass:(Class)class;
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
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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
  source = [v4 source];
  v3 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:@"com.apple.siri.announce-calls.enabled" bundleID:@"com.apple.sharingd" context:0];
  [source sendEvent:v3];
}

- (void)transitionToNextCardIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  model = [(SiriNotificationsSetupViewController *)self model];
  isUpsellFlow = [model isUpsellFlow];

  if (isUpsellFlow)
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
    model = [(SiriNotificationsSetupViewController *)self model];
    isSiriAllowedWhileLocked = [model isSiriAllowedWhileLocked];

    if (isSiriAllowedWhileLocked)
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

  model = [(SiriNotificationsSetupViewController *)self model];
  viewType = [model viewType];

  if (viewType == 2)
  {
    goto LABEL_8;
  }

  if (viewType == 1)
  {
    goto LABEL_9;
  }

  if (viewType)
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
  mainController = [(SiriNotificationsSetupViewController *)self mainController];
  announceMessagesEvent = [mainController announceMessagesEvent];
  [announceMessagesEvent setUserExplicitlyOptedOut:0];
}

- (void)handleContinueButton
{
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  model = [(SiriNotificationsSetupViewController *)self model];
  viewType = [model viewType];

  if (viewType == 2)
  {
    [(SiriNotificationsSetupViewController *)self handleContinueForMessages];
    goto LABEL_10;
  }

  if (viewType == 1)
  {
LABEL_10:
    [(SiriNotificationsSetupViewController *)self handleContinueForCalls];
    goto LABEL_11;
  }

  if (viewType)
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
  mainController = [(SiriNotificationsSetupViewController *)self mainController];
  announceMessagesEvent = [mainController announceMessagesEvent];
  [announceMessagesEvent setUserExplicitlyOptedIn:1];
}

- (void)handleDismissButton
{
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  model = [(SiriNotificationsSetupViewController *)self model];
  viewType = [model viewType];

  if (viewType == 2)
  {
    [(SiriNotificationsSetupViewController *)self handleDismissForMessages];
    goto LABEL_10;
  }

  if (viewType == 1)
  {
LABEL_10:
    [(SiriNotificationsSetupViewController *)self handleDismissForCalls];
    goto LABEL_11;
  }

  if (viewType)
  {
    if (dword_1001BE658 <= 90 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
    {
      v5 = viewType;
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
  announceMessagesEvent = [WeakRetained announceMessagesEvent];
  [announceMessagesEvent setUserExplicitlyOptedIn:1];
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
  viewModel = [(SiriNotificationsSetupViewController *)self viewModel];
  primaryActionTitle = [viewModel primaryActionTitle];

  viewModel2 = [(SiriNotificationsSetupViewController *)self viewModel];
  primaryActionStyle = [viewModel2 primaryActionStyle];

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000EE570;
  v31[3] = &unk_1001958D8;
  objc_copyWeak(&v32, &location);
  v7 = [PRXAction actionWithTitle:primaryActionTitle style:primaryActionStyle handler:v31];
  viewModel3 = [(SiriNotificationsSetupViewController *)self viewModel];
  [v7 setUsesLegacyStyling:{objc_msgSend(viewModel3, "primaryActionUsesLegacyStyling")}];

  v9 = [(SiriNotificationsSetupViewController *)self addAction:v7];
  viewModel4 = [(SiriNotificationsSetupViewController *)self viewModel];
  secondaryActionAvailable = [viewModel4 secondaryActionAvailable];

  if (secondaryActionAvailable)
  {
    viewModel5 = [(SiriNotificationsSetupViewController *)self viewModel];
    secondaryActionTitle = [viewModel5 secondaryActionTitle];

    viewModel6 = [(SiriNotificationsSetupViewController *)self viewModel];
    secondaryActionStyle = [viewModel6 secondaryActionStyle];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000EE5B0;
    v29[3] = &unk_1001958D8;
    objc_copyWeak(&v30, &location);
    v16 = [PRXAction actionWithTitle:secondaryActionTitle style:secondaryActionStyle handler:v29];
    viewModel7 = [(SiriNotificationsSetupViewController *)self viewModel];
    [v16 setUsesLegacyStyling:{objc_msgSend(viewModel7, "secondaryActionUsesLegacyStyling")}];

    v18 = [(SiriNotificationsSetupViewController *)self addAction:v16];
    objc_destroyWeak(&v30);
  }

  viewModel8 = [(SiriNotificationsSetupViewController *)self viewModel];
  dismissActionTitle = [viewModel8 dismissActionTitle];

  viewModel9 = [(SiriNotificationsSetupViewController *)self viewModel];
  dismissActionStyle = [viewModel9 dismissActionStyle];

  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000EE5F0;
  v27 = &unk_1001958D8;
  objc_copyWeak(&v28, &location);
  v23 = [PRXAction actionWithTitle:dismissActionTitle style:dismissActionStyle handler:&v24];
  [(SiriNotificationsSetupViewController *)self setDismissButtonAction:v23, v24, v25, v26, v27];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v32);

  objc_destroyWeak(&location);
}

- (void)setUpSubtitle
{
  v8 = [PRXLabel labelWithStyle:1];
  viewModel = [(SiriNotificationsSetupViewController *)self viewModel];
  subtitleFont = [viewModel subtitleFont];
  [v8 setFont:subtitleFont];

  viewModel2 = [(SiriNotificationsSetupViewController *)self viewModel];
  subtitleText = [viewModel2 subtitleText];
  [v8 setText:subtitleText];

  contentView = [(SiriNotificationsSetupViewController *)self contentView];
  [contentView setSubtitleLabel:v8];
}

- (void)setUpTitle
{
  v10 = [PRXTextView textViewWithStyle:0];
  viewModel = [(SiriNotificationsSetupViewController *)self viewModel];
  titleText = [viewModel titleText];
  [v10 setTitleText:titleText];

  viewModel2 = [(SiriNotificationsSetupViewController *)self viewModel];
  titleFont = [viewModel2 titleFont];
  [v10 setFont:titleFont];

  viewModel3 = [(SiriNotificationsSetupViewController *)self viewModel];
  titleColor = [viewModel3 titleColor];
  [v10 setTextColor:titleColor];

  contentView = [(SiriNotificationsSetupViewController *)self contentView];
  [contentView setTitleView:v10];
}

- (id)extendedUserInfo
{
  mainController = [(SiriNotificationsSetupViewController *)self mainController];
  userInfo = [mainController userInfo];
  v5 = [NSMutableDictionary dictionaryWithDictionary:userInfo];

  deviceName = [(SiriNotificationsSetupViewController *)self deviceName];
  [v5 setObject:deviceName forKeyedSubscript:@"localizedDeviceName"];

  v7 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [mainController inEarDetection]);
  [v5 setObject:v7 forKeyedSubscript:@"inEarDetection"];

  v8 = [NSDictionary dictionaryWithDictionary:v5];

  return v8;
}

- (id)deviceName
{
  WeakRetained = objc_loadWeakRetained(&self->_mainController);
  localizedName = [WeakRetained localizedName];

  if (!localizedName)
  {
    userInfo = [WeakRetained userInfo];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    v8 = 0;
    sub_100126C30(Int64Ranged, 0, 1, 0, &v8, 0, 0);
    [WeakRetained setLocalizedName:v8];
  }

  localizedName2 = [WeakRetained localizedName];

  return localizedName2;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v10 viewDidAppear:appear];
  v4 = +[AFPreferences sharedPreferences];
  [v4 setSpokenNotificationsProxCardSeen];

  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5 = SFIsAnnounceCallsEnabled();
  siriControllerClass = [(SiriNotificationsSetupViewController *)self siriControllerClass];
  if (v5)
  {
    [(objc_class *)siriControllerClass setHasUserSeenAnnounceCallsOptOutScreen:1];
  }

  else
  {
    [(objc_class *)siriControllerClass setHasUserSeenAnnounceMessagesOptOutScreen:1];
  }

  model = [(SiriNotificationsSetupViewController *)self model];
  if ([model isSiriAllowedWhileLocked])
  {
    model2 = [(SiriNotificationsSetupViewController *)self model];
    isUpsellFlow = [model2 isUpsellFlow];

    if (isUpsellFlow)
    {
      [(objc_class *)[(SiriNotificationsSetupViewController *)self siriControllerClass] setAnnounceMessagesEnabled:1];
      [(SiriNotificationsSetupViewController *)self updateAnnounceCallsStateForUserOptedIn];
    }
  }

  else
  {
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7.receiver = self;
  v7.super_class = SiriNotificationsSetupViewController;
  [(SiriNotificationsSetupViewController *)&v7 viewWillAppear:appearCopy];
  mainController = [(SiriNotificationsSetupViewController *)self mainController];
  announceMessagesEvent = [mainController announceMessagesEvent];
  [announceMessagesEvent setPairingExitView:3];
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
  extendedUserInfo = [(SiriNotificationsSetupViewController *)self extendedUserInfo];
  v3 = [objc_opt_class() modelForUserInfo:extendedUserInfo];
  [(SiriNotificationsSetupViewController *)self setModel:v3];

  v4 = objc_opt_class();
  model = [(SiriNotificationsSetupViewController *)self model];
  v6 = [v4 viewModelForModel:model];
  [(SiriNotificationsSetupViewController *)self setViewModel:v6];

  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    model2 = [(SiriNotificationsSetupViewController *)self model];
    viewType = [model2 viewType];
    if (viewType > 2)
    {
      v9 = @"?";
    }

    else
    {
      v9 = off_100194D08[viewType];
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
  contentView = [(SiriNotificationsSetupViewController *)self contentView];
  [contentView addSubview:v12];

  contentView2 = [(SiriNotificationsSetupViewController *)self contentView];
  mainContentGuide = [contentView2 mainContentGuide];

  topAnchor = [v12 topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v28 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v33[0] = v28;
  centerXAnchor = [v12 centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[1] = v25;
  bottomAnchor = [v12 bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v18 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v33[2] = v18;
  heightAnchor = [v12 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:76.0];
  v33[3] = v20;
  widthAnchor = [v12 widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:76.0];
  v33[4] = v22;
  v23 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v23];
}

- (SiriNotificationsSetupViewController)initWithSiriControllerClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = SiriNotificationsSetupViewController;
  v4 = [(SiriNotificationsSetupViewController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_siriControllerClass, class);
  }

  return v5;
}

- (SiriNotificationsSetupViewController)init
{
  v3 = objc_opt_class();

  return [(SiriNotificationsSetupViewController *)self initWithSiriControllerClass:v3];
}

+ (id)viewModelForModel:(id)model
{
  modelCopy = model;
  v5 = objc_alloc_init(SiriNotificationsSetupViewModel);
  v6 = [self locIntermediateStringForViewType:{objc_msgSend(modelCopy, "viewType")}];
  v7 = &swift_allocBox_ptr;
  v8 = [NSString stringWithFormat:@"ANNOUNCE_%@", v6];
  v9 = [self locTableForViewType:{objc_msgSend(modelCopy, "viewType")}];
  v10 = [NSString stringWithFormat:@"%@_TITLE", v8];
  v11 = sub_10012794C(v9, v10);
  [(SiriNotificationsSetupViewModel *)v5 setTitleText:v11];

  defaultTitleFont = [self defaultTitleFont];
  [(SiriNotificationsSetupViewModel *)v5 setTitleFont:defaultTitleFont];

  defaultTitleColor = [self defaultTitleColor];
  [(SiriNotificationsSetupViewModel *)v5 setTitleColor:defaultTitleColor];

  defaultSubtitleFont = [self defaultSubtitleFont];
  [(SiriNotificationsSetupViewModel *)v5 setSubtitleFont:defaultSubtitleFont];

  if ([modelCopy isSiriAllowedWhileLocked])
  {
    v15 = [NSString stringWithFormat:@"%@_SUBTITLE_FORMAT", v8];
    localizedDeviceName = [modelCopy localizedDeviceName];
    v23 = sub_100127C0C(v9, v15, v17, v18, v19, v20, v21, v22, localizedDeviceName);
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

  -[SiriNotificationsSetupViewModel setPrimaryActionStyle:](v5, "setPrimaryActionStyle:", [self defaultPrimaryActionStyle]);
  [(SiriNotificationsSetupViewModel *)v5 setPrimaryActionUsesLegacyStyling:1];
  isSiriAllowedWhileLocked = [modelCopy isSiriAllowedWhileLocked];
  isUpsellFlow = [modelCopy isUpsellFlow];
  v27 = @"SET_UP_LATER";
  v28 = @"CONTINUE";
  if (isUpsellFlow)
  {
    v27 = @"CONTINUE";
    v28 = @"OK_BUTTON_TITLE";
  }

  if (isSiriAllowedWhileLocked)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = sub_10012794C(@"Localizable", v29);
  [(SiriNotificationsSetupViewModel *)v5 setPrimaryActionTitle:v30];

  if ([modelCopy isSiriAllowedWhileLocked])
  {
    [(SiriNotificationsSetupViewModel *)v5 setSecondaryActionAvailable:1];
    -[SiriNotificationsSetupViewModel setSecondaryActionStyle:](v5, "setSecondaryActionStyle:", [self defaultSecondaryActionStyle]);
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

+ (id)locTableForViewType:(int64_t)type
{
  if (type < 3)
  {
    return off_100194CF0[type];
  }

  v3 = @"Localizable-AnnounceTelephony";
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

+ (id)locIntermediateStringForViewType:(int64_t)type
{
  if (type < 3)
  {
    return off_100194CD8[type];
  }

  v3 = @"MESSAGES_AND_CALLS";
  if (dword_1001BE658 <= 30 && (dword_1001BE658 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v3;
}

+ (id)modelForUserInfo:(id)info
{
  infoCopy = info;
  v5 = [self modelForUserInfo:infoCopy siriControllerClass:objc_opt_class()];

  return v5;
}

+ (id)modelForUserInfo:(id)info siriControllerClass:(Class)class
{
  infoCopy = info;
  v6 = objc_alloc_init(SiriNotificationsSetupModel);
  if (infoCopy)
  {
    [(SiriNotificationsSetupModel *)v6 setDeviceProductID:CFDictionaryGetInt64Ranged()];
    [(SiriNotificationsSetupModel *)v6 setDeviceSupportsInEarDetection:CFDictionaryGetInt64() != 0];
    [(SiriNotificationsSetupModel *)v6 setIsSiriAllowedWhileLocked:[(objc_class *)class isSiriAllowedWhileLocked]];
    [(SiriNotificationsSetupModel *)v6 setIsUpsellFlow:CFDictionaryGetInt64() != 0];
    CFStringGetTypeID();
    [(SiriNotificationsSetupModel *)v6 setLocalizedDeviceName:CFDictionaryGetTypedValue()];
    v7 = [(objc_class *)class shouldPromptForAnnounceMessagesForProductID:[(SiriNotificationsSetupModel *)v6 deviceProductID] isUpsellFlow:[(SiriNotificationsSetupModel *)v6 isUpsellFlow]];
    v8 = [(objc_class *)class shouldPromptForAnnounceCallsForProductID:[(SiriNotificationsSetupModel *)v6 deviceProductID] supportsInEarDetection:[(SiriNotificationsSetupModel *)v6 deviceSupportsInEarDetection] isUpsellFlow:[(SiriNotificationsSetupModel *)v6 isUpsellFlow]];
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