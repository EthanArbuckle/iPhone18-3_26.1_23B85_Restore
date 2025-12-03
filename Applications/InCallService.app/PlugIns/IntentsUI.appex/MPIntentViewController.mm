@interface MPIntentViewController
- (CGSize)desiredSize;
- (double)calculatedHeightForCallRecordCellsWithWidth:(double)width;
- (id)callHistoryCache;
- (id)callHistoryManager;
- (id)callRecords;
- (id)intent;
- (id)recentCallForCallRecord:(id)record;
- (id)recentsItemCache;
- (id)recentsItemForCall:(id)call numberOfOccurences:(unint64_t)occurences;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)voicemailForCallRecord:(id)record;
- (id)voicemailMessageViewModelForVoicemail:(id)voicemail;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureForCallHistory;
- (void)configureRecentCallTableViewCell:(id)cell forRecentCall:(id)call numberOfOccurences:(unint64_t)occurences;
- (void)configureViewForEmergencyCountdown;
- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion;
- (void)configureVoicemailTableViewCell:(id)cell forVoicemail:(id)voicemail;
- (void)recentsController:(id)controller didChangeCalls:(id)calls;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWasCancelled;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MPIntentViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MPIntentViewController;
  [(MPIntentViewController *)&v6 viewDidLoad];
  v3 = +[UIColor clearColor];
  view = [(MPIntentViewController *)self view];
  [view setBackgroundColor:v3];

  view2 = [(MPIntentViewController *)self view];
  [view2 setOpaque:0];

  [(MPIntentViewController *)self setCountdownCancelled:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = MPIntentViewController;
  [(MPIntentViewController *)&v12 viewDidAppear:appear];
  intent = [(MPIntentViewController *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    intent2 = [(MPIntentViewController *)self intent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  if (![(MPIntentViewController *)self countdownCancelled])
  {
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Disabling application idleTimer for CallIntentCountdown: countdownStarted", buf, 2u);
    }

    v8 = +[UIApplication sharedApplication];
    [v8 _setIdleTimerDisabled:1 forReason:@"CallIntentCountdown"];

    countdownView = [(MPIntentViewController *)self countdownView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007498;
    v10[3] = &unk_1000B1B80;
    v10[4] = self;
    [countdownView startCountdownFromNumber:3 withTimeInterval:v10 completion:COERCE_DOUBLE(COERCE_UNSIGNED_INT(2.0))];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = MPIntentViewController;
  [(MPIntentViewController *)&v6 viewWillDisappear:disappear];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling application idleTimer for CallIntentCountdown: viewWillDisappear", v5, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 _setIdleTimerDisabled:0 forReason:@"CallIntentCountdown"];
}

- (void)configureViewForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion
{
  interactionCopy = interaction;
  completionCopy = completion;
  parametersCopy = parameters;
  [(MPIntentViewController *)self setInteraction:interactionCopy];
  v13 = PHDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    intent = [interactionCopy intent];
    v24 = 138412290;
    v25 = intent;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Intent: %@", &v24, 0xCu);
  }

  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    intentResponse = [interactionCopy intentResponse];
    v24 = 138412290;
    v25 = intentResponse;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IntentResponse: %@", &v24, 0xCu);
  }

  intent2 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_8:
    [(MPIntentViewController *)self configureViewForEmergencyCountdown];
    goto LABEL_9;
  }

  intent3 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_8;
  }

  intent4 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  if (v21)
  {
    [(MPIntentViewController *)self configureForCallHistory];
  }

  else
  {
    v22 = PHDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10007A2E4(self);
    }

    v23 = +[NSSet set];
    completionCopy[2](completionCopy, 0, v23, CGSizeZero.width, CGSizeZero.height);
  }

LABEL_9:
  [(MPIntentViewController *)self desiredSize];
  (completionCopy[2])(completionCopy, 1, parametersCopy);
}

- (void)viewWasCancelled
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "our view was cancelled, stopping countdown", buf, 2u);
  }

  countdownView = [(MPIntentViewController *)self countdownView];
  [countdownView cancel];

  [(MPIntentViewController *)self setCountdownCancelled:1];
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enabling application idleTimer for CallIntentCountdown: viewWasCancelled", v7, 2u);
  }

  v6 = +[UIApplication sharedApplication];
  [v6 _setIdleTimerDisabled:0 forReason:@"CallIntentCountdown"];
}

- (id)intent
{
  interaction = [(MPIntentViewController *)self interaction];
  intent = [interaction intent];

  return intent;
}

- (id)callRecords
{
  interaction = [(MPIntentViewController *)self interaction];
  intentResponse = [interaction intentResponse];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    callRecords = [intentResponse callRecords];
    if ([callRecords count])
    {
      goto LABEL_9;
    }

    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007A3C8();
    }
  }

  else
  {
    v5 = PHDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10007A388();
    }

    callRecords = 0;
  }

LABEL_9:

  return callRecords;
}

- (id)callHistoryManager
{
  if (qword_1000C6098 != -1)
  {
    sub_10007A408();
  }

  v3 = qword_1000C6090;

  return v3;
}

- (id)callHistoryCache
{
  if (qword_1000C60A8 != -1)
  {
    sub_10007A41C();
  }

  v3 = qword_1000C60A0;

  return v3;
}

- (id)recentCallForCallRecord:(id)record
{
  recordCopy = record;
  identifier = [recordCopy identifier];
  callHistoryCache = [(MPIntentViewController *)self callHistoryCache];
  v7 = [callHistoryCache objectForKey:identifier];

  if (!v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = identifier;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Searching for calls with identifier: %@", buf, 0xCu);
    }

    v9 = [NSPredicate predicateWithFormat:@"unique_id == %@", identifier];
    callHistoryManager = [(MPIntentViewController *)self callHistoryManager];
    v7 = [callHistoryManager callsWithPredicate:v9 limit:1 offset:0 batchSize:1];

    callHistoryCache2 = [(MPIntentViewController *)self callHistoryCache];
    v12 = callHistoryCache2;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    [callHistoryCache2 setObject:v13 forKey:identifier];
  }

  if ([v7 count] != 1)
  {
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007A430(v7);
    }
  }

  firstObject = [v7 firstObject];
  if (!firstObject)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10007A4C0();
    }
  }

  return firstObject;
}

- (id)voicemailForCallRecord:(id)record
{
  identifier = [record identifier];
  longLongValue = [identifier longLongValue];
  voicemailManager = [(MPIntentViewController *)self voicemailManager];
  v7 = [voicemailManager voicemailWithIdentifier:longLongValue];

  if (!v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10007A530();
    }
  }

  return v7;
}

- (double)calculatedHeightForCallRecordCellsWithWidth:(double)width
{
  callRecords = [(MPIntentViewController *)self callRecords];
  v6 = [callRecords count];

  if (!v6)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    callRecords2 = [(MPIntentViewController *)self callRecords];
    v10 = [callRecords2 objectAtIndexedSubscript:v7];

    if ([v10 callRecordType] == 5)
    {
      v11 = [(MPIntentViewController *)self voicemailForCallRecord:v10];
      if (v11)
      {
        v12 = [[MPVisualMessage alloc] initWithVMVoicemail:v11];
        prototypeVoicemailCell = [(MPIntentViewController *)self prototypeVoicemailCell];
        [(MPIntentViewController *)self configureVoicemailTableViewCell:prototypeVoicemailCell forVoicemail:v12];

        prototypeVoicemailCell2 = [(MPIntentViewController *)self prototypeVoicemailCell];
        LODWORD(v15) = 1148846080;
        LODWORD(v16) = 1112014848;
        [prototypeVoicemailCell2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v15, v16}];
        v18 = v17;

        v8 = v8 + fmin(v18, 100.0);
      }
    }

    else
    {
      v11 = [(MPIntentViewController *)self recentCallForCallRecord:v10];
      if (v11)
      {
        prototypeRecentCallCell = [(MPIntentViewController *)self prototypeRecentCallCell];
        numberOfCalls = [v10 numberOfCalls];
        -[MPIntentViewController configureRecentCallTableViewCell:forRecentCall:numberOfOccurences:](self, "configureRecentCallTableViewCell:forRecentCall:numberOfOccurences:", prototypeRecentCallCell, v11, [numberOfCalls unsignedIntegerValue]);

        prototypeRecentCallCell2 = [(MPIntentViewController *)self prototypeRecentCallCell];
        LODWORD(v22) = 1148846080;
        LODWORD(v23) = 1112014848;
        [prototypeRecentCallCell2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v22, v23}];
        v25 = v24;

        v8 = v8 + v25;
      }
    }

    ++v7;
    callRecords3 = [(MPIntentViewController *)self callRecords];
    v27 = [callRecords3 count];
  }

  while (v7 < v27);
  return v8;
}

- (CGSize)desiredSize
{
  intent = [(MPIntentViewController *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_4;
  }

  intent2 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_4:
    extensionContext = [(MPIntentViewController *)self extensionContext];
    [extensionContext hostedViewMaximumAllowedSize];
    v8 = v7;

    extensionContext2 = [(MPIntentViewController *)self extensionContext];
    [extensionContext2 hostedViewMaximumAllowedSize];
    v11 = v10;

    if (v11 <= 200.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 200.0;
    }

    goto LABEL_7;
  }

  intent3 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  v12 = 0.0;
  v8 = 0.0;
  if (v15)
  {
    extensionContext3 = [(MPIntentViewController *)self extensionContext];
    [extensionContext3 hostedViewMaximumAllowedSize];
    v8 = v17;

    [(MPIntentViewController *)self calculatedHeightForCallRecordCellsWithWidth:v8];
    v12 = v18;
  }

LABEL_7:
  v13 = v8;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)configureViewForEmergencyCountdown
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring for emergency countdown", v20, 2u);
  }

  v4 = [MPEmergencyCountdownView alloc];
  LODWORD(v5) = 1125515264;
  v6 = [(MPEmergencyCountdownView *)v4 initWithDiameter:v5];
  [(MPIntentViewController *)self setCountdownView:v6];

  view = [(MPIntentViewController *)self view];
  countdownView = [(MPIntentViewController *)self countdownView];
  [view addSubview:countdownView];

  countdownView2 = [(MPIntentViewController *)self countdownView];
  [countdownView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  countdownView3 = [(MPIntentViewController *)self countdownView];
  centerXAnchor = [countdownView3 centerXAnchor];
  view2 = [(MPIntentViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v14 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v14 setActive:1];

  countdownView4 = [(MPIntentViewController *)self countdownView];
  centerYAnchor = [countdownView4 centerYAnchor];
  view3 = [(MPIntentViewController *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v19 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v19 setActive:1];
}

- (void)configureForCallHistory
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Configuring for call history", buf, 2u);
  }

  v4 = +[PHApplicationServices sharedInstance];
  v65 = [TUCallHistoryController callHistoryControllerWithCoalescingStrategy:1 options:15];
  v5 = [PHRecentsController alloc];
  callProviderManager = [v4 callProviderManager];
  contactStore = [v4 contactStore];
  suggestedContactStore = [v4 suggestedContactStore];
  metadataCache = [v4 metadataCache];
  v10 = [(PHRecentsController *)v5 initWithCallHistoryController:v65 callProviderManager:callProviderManager contactStore:contactStore suggestedContactStore:suggestedContactStore metadataCache:metadataCache];
  [(MPIntentViewController *)self setRecentsController:v10];

  recentsController = [(MPIntentViewController *)self recentsController];
  [recentsController addDelegate:self queue:&_dispatch_main_q];

  v12 = objc_alloc_init(VMVoicemailManager);
  [(MPIntentViewController *)self setVoicemailManager:v12];

  voicemailManager = [(MPIntentViewController *)self voicemailManager];
  v14 = [PHVisualVoicemailManagerFactory getVisualVoiceMailWithVisualVoicemailManager:voicemailManager onVoicemailsChanged:&stru_1000B1D00];

  v15 = [MPVoicemailController alloc];
  v16 = [MPVoicemailAccountManagerDecorator alloc];
  voicemailManager2 = [(MPIntentViewController *)self voicemailManager];
  v18 = [(MPVoicemailAccountManagerDecorator *)v16 initWithVMD:voicemailManager2];
  callProviderManager2 = [v4 callProviderManager];
  contactStore2 = [v4 contactStore];
  suggestedContactStore2 = [v4 suggestedContactStore];
  metadataCache2 = [v4 metadataCache];
  v23 = [(MPVoicemailController *)v15 initWithVoicemailManager:v14 accountManager:v18 callProviderManager:callProviderManager2 contactStore:contactStore2 suggestedContactStore:suggestedContactStore2 metadataCache:metadataCache2];
  [(MPIntentViewController *)self setVoicemailController:v23];

  v24 = objc_alloc_init(MPLegacyRecentsTableViewCell);
  [(MPIntentViewController *)self setPrototypeRecentCallCell:v24];

  prototypeRecentCallCell = [(MPIntentViewController *)self prototypeRecentCallCell];
  [prototypeRecentCallCell updateFontsLayoutMetricsAndSeparatorInset];

  v26 = objc_alloc_init(PHVoicemailMessageTableViewCell);
  [(MPIntentViewController *)self setPrototypeVoicemailCell:v26];

  v27 = +[UIColor systemBlueColor];
  view = [(MPIntentViewController *)self view];
  [view setTintColor:v27];

  v29 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MPIntentViewController *)self setTableView:v29];

  tableView = [(MPIntentViewController *)self tableView];
  [tableView setDataSource:self];

  tableView2 = [(MPIntentViewController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(MPIntentViewController *)self tableView];
  [tableView3 setScrollEnabled:0];

  v33 = +[UIColor clearColor];
  tableView4 = [(MPIntentViewController *)self tableView];
  [tableView4 setBackgroundColor:v33];

  tableView5 = [(MPIntentViewController *)self tableView];
  layer = [tableView5 layer];
  [layer setHitTestsAsOpaque:1];

  tableView6 = [(MPIntentViewController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"MPLegacyRecentsTableViewCell"];

  tableView7 = [(MPIntentViewController *)self tableView];
  v39 = objc_opt_class();
  v40 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  [tableView7 registerClass:v39 forCellReuseIdentifier:v40];

  tableView8 = [(MPIntentViewController *)self tableView];
  [tableView8 setRowHeight:UITableViewAutomaticDimension];

  view2 = [(MPIntentViewController *)self view];
  tableView9 = [(MPIntentViewController *)self tableView];
  [view2 addSubview:tableView9];

  tableView10 = [(MPIntentViewController *)self tableView];
  [tableView10 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView11 = [(MPIntentViewController *)self tableView];
  topAnchor = [tableView11 topAnchor];
  view3 = [(MPIntentViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v49 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v49 setActive:1];

  tableView12 = [(MPIntentViewController *)self tableView];
  bottomAnchor = [tableView12 bottomAnchor];
  view4 = [(MPIntentViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v54 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v54 setActive:1];

  tableView13 = [(MPIntentViewController *)self tableView];
  leftAnchor = [tableView13 leftAnchor];
  view5 = [(MPIntentViewController *)self view];
  leftAnchor2 = [view5 leftAnchor];
  v59 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v59 setActive:1];

  tableView14 = [(MPIntentViewController *)self tableView];
  rightAnchor = [tableView14 rightAnchor];
  view6 = [(MPIntentViewController *)self view];
  rightAnchor2 = [view6 rightAnchor];
  v64 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  [v64 setActive:1];
}

- (id)voicemailMessageViewModelForVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  v5 = objc_alloc_init(MPVoicemailMessageViewModel);
  date = [voicemailCopy date];
  [(MPVoicemailMessageViewModel *)v5 setDate:date];

  v7 = PHVoicemailCellDateFormatter();
  date2 = [voicemailCopy date];
  v9 = [v7 stringFromDate:date2];
  [(MPVoicemailMessageViewModel *)v5 setLocalizedDate:v9];

  voicemailController = [(MPIntentViewController *)self voicemailController];
  v11 = [voicemailController localizedTitleForMessage:voicemailCopy];
  [(MPVoicemailMessageViewModel *)v5 setLocalizedTitle:v11];

  [voicemailCopy duration];
  v13 = PHVoicemailFormatTime(v12);
  [(MPVoicemailMessageViewModel *)v5 setLocalizedDuration:v13];

  voicemailController2 = [(MPIntentViewController *)self voicemailController];
  v15 = [voicemailController2 localizedSubtitleForMessage:voicemailCopy];
  [(MPVoicemailMessageViewModel *)v5 setLocalizedSubtitle:v15];

  -[MPVoicemailMessageViewModel setIsRead:](v5, "setIsRead:", [voicemailCopy isRead]);
  -[MPVoicemailMessageViewModel setIsDeleted:](v5, "setIsDeleted:", [voicemailCopy folder] == 2);
  isTranscriptionAvailable = [voicemailCopy isTranscriptionAvailable];
  v17 = PHDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10007A5A0(isTranscriptionAvailable, voicemailCopy, v17);
  }

  [(MPVoicemailMessageViewModel *)v5 setShowsTranscriptionView:isTranscriptionAvailable];
  [(MPVoicemailMessageViewModel *)v5 setShowsPlayerControls:1];
  [voicemailCopy duration];
  [(MPVoicemailMessageViewModel *)v5 setDuration:?];
  if (PHDeviceSupportsDualSim())
  {
    voicemailController3 = [(MPIntentViewController *)self voicemailController];
    callProviderManager = [voicemailController3 callProviderManager];
    telephonyProvider = [callProviderManager telephonyProvider];
    prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
    if ([prioritizedSenderIdentities count] < 2)
    {
    }

    else
    {
      receiverDestinationID = [voicemailCopy receiverDestinationID];
      v23 = [receiverDestinationID length];

      if (!v23)
      {
        goto LABEL_9;
      }

      v24 = [TUHandle alloc];
      receiverDestinationID2 = [voicemailCopy receiverDestinationID];
      voicemailController3 = [v24 initWithType:2 value:receiverDestinationID2];

      receiverISOCountryCode = [voicemailCopy receiverISOCountryCode];
      callProviderManager = [voicemailController3 canonicalHandleForISOCountryCode:receiverISOCountryCode];

      voicemailController4 = [(MPIntentViewController *)self voicemailController];
      callProviderManager2 = [voicemailController4 callProviderManager];
      telephonyProvider2 = [callProviderManager2 telephonyProvider];
      v30 = [telephonyProvider2 senderIdentityForHandle:callProviderManager];
      telephonyProvider = [v30 localizedShortName];

      [(MPVoicemailMessageViewModel *)v5 setLocalizedSenderIdentityTitle:telephonyProvider];
    }
  }

LABEL_9:
  v31 = [[VMMessageTranscriptViewModel alloc] initWithMPMessage:voicemailCopy];
  [(MPVoicemailMessageViewModel *)v5 setTranscriptViewModel:v31];

  return v5;
}

- (void)recentsController:(id)controller didChangeCalls:(id)calls
{
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling recent calls change", &v9, 0xCu);
  }

  recentsItemCache = [(MPIntentViewController *)self recentsItemCache];
  [recentsItemCache removeAllObjects];

  tableView = [(MPIntentViewController *)self tableView];
  [tableView reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  callRecords = [(MPIntentViewController *)self callRecords];
  v9 = [callRecords objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if ([v9 callRecordType] == 5)
  {
    v10 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithIdentifier:v10 forIndexPath:pathCopy];

    v12 = [(MPIntentViewController *)self voicemailForCallRecord:v9];
    if (!v12)
    {
      goto LABEL_7;
    }

    numberOfCalls = [[MPVisualMessage alloc] initWithVMVoicemail:v12];
    [(MPIntentViewController *)self configureVoicemailTableViewCell:v11 forVoicemail:numberOfCalls];
  }

  else
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"MPLegacyRecentsTableViewCell" forIndexPath:pathCopy];
    [v11 updateFontsLayoutMetricsAndSeparatorInset];
    v12 = [(MPIntentViewController *)self recentCallForCallRecord:v9];
    if (!v12)
    {
      goto LABEL_7;
    }

    numberOfCalls = [v9 numberOfCalls];
    [(MPIntentViewController *)self configureRecentCallTableViewCell:v11 forRecentCall:v12 numberOfOccurences:[(MPVisualMessage *)numberOfCalls unsignedIntegerValue]];
  }

LABEL_7:

  return v11;
}

- (id)recentsItemCache
{
  if (qword_1000C60B8 != -1)
  {
    sub_10007A62C();
  }

  v3 = qword_1000C60B0;

  return v3;
}

- (id)recentsItemForCall:(id)call numberOfOccurences:(unint64_t)occurences
{
  callCopy = call;
  uniqueId = [callCopy uniqueId];
  recentsItemCache = [(MPIntentViewController *)self recentsItemCache];
  v9 = [recentsItemCache objectForKey:uniqueId];

  if (!v9)
  {
    recentsController = [(MPIntentViewController *)self recentsController];
    v9 = [recentsController itemForRecentCall:callCopy numberOfOccurences:occurences];

    if (v9)
    {
      recentsItemCache2 = [(MPIntentViewController *)self recentsItemCache];
      [recentsItemCache2 setObject:v9 forKey:uniqueId];
    }
  }

  return v9;
}

- (void)configureRecentCallTableViewCell:(id)cell forRecentCall:(id)call numberOfOccurences:(unint64_t)occurences
{
  callCopy = call;
  cellCopy = cell;
  v10 = [(MPIntentViewController *)self recentsItemForCall:callCopy numberOfOccurences:occurences];
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = callCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Recent Call: %@", &v16, 0xCu);
  }

  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Recents Item: %@", &v16, 0xCu);
  }

  [cellCopy configureWithRecentsItem:v10 recentCall:callCopy];
  [cellCopy setAccessoryType:0];
  v13 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v13];

  v14 = +[UIColor clearColor];
  contentView = [cellCopy contentView];

  [contentView setBackgroundColor:v14];
}

- (void)configureVoicemailTableViewCell:(id)cell forVoicemail:(id)voicemail
{
  voicemailCopy = voicemail;
  cellCopy = cell;
  [cellCopy setDelegate:self];
  v8 = +[UIColor clearColor];
  [cellCopy setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  contentView = [cellCopy contentView];
  [contentView setBackgroundColor:v9];

  v11 = [(MPIntentViewController *)self voicemailMessageViewModelForVoicemail:voicemailCopy];

  [cellCopy configureWithVoicemailMessageViewModel:v11 expanded:0 shouldGrayForeground:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(MPIntentViewController *)self callRecords:view];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  callRecords = [(MPIntentViewController *)self callRecords];
  v8 = [callRecords objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  if ([v8 callRecordType] == 5)
  {
    v9 = [(MPIntentViewController *)self voicemailForCallRecord:v8];
    v10 = +[NSURL phoneAppVoicemailURLForRecordID:](NSURL, "phoneAppVoicemailURLForRecordID:", [v9 identifier]);
    TUOpenSensitiveURL();
  }

  else
  {
    v9 = [(MPIntentViewController *)self recentCallForCallRecord:v8];
    validRemoteParticipantHandles = [v9 validRemoteParticipantHandles];
    v12 = [validRemoteParticipantHandles count];

    recentsController = [(MPIntentViewController *)self recentsController];
    v10 = recentsController;
    if (v12 < 2)
    {
      [recentsController performDialRequestForRecentCall:v9];
    }

    else
    {
      [recentsController performJoinRequestForRecentCall:v9];
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end