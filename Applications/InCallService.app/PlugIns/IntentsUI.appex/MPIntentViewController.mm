@interface MPIntentViewController
- (CGSize)desiredSize;
- (double)calculatedHeightForCallRecordCellsWithWidth:(double)a3;
- (id)callHistoryCache;
- (id)callHistoryManager;
- (id)callRecords;
- (id)intent;
- (id)recentCallForCallRecord:(id)a3;
- (id)recentsItemCache;
- (id)recentsItemForCall:(id)a3 numberOfOccurences:(unint64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)voicemailForCallRecord:(id)a3;
- (id)voicemailMessageViewModelForVoicemail:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureForCallHistory;
- (void)configureRecentCallTableViewCell:(id)a3 forRecentCall:(id)a4 numberOfOccurences:(unint64_t)a5;
- (void)configureViewForEmergencyCountdown;
- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7;
- (void)configureVoicemailTableViewCell:(id)a3 forVoicemail:(id)a4;
- (void)recentsController:(id)a3 didChangeCalls:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWasCancelled;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MPIntentViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = MPIntentViewController;
  [(MPIntentViewController *)&v6 viewDidLoad];
  v3 = +[UIColor clearColor];
  v4 = [(MPIntentViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(MPIntentViewController *)self view];
  [v5 setOpaque:0];

  [(MPIntentViewController *)self setCountdownCancelled:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = MPIntentViewController;
  [(MPIntentViewController *)&v12 viewDidAppear:a3];
  v4 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
  }

  else
  {
    v5 = [(MPIntentViewController *)self intent];
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

    v9 = [(MPIntentViewController *)self countdownView];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100007498;
    v10[3] = &unk_1000B1B80;
    v10[4] = self;
    [v9 startCountdownFromNumber:3 withTimeInterval:v10 completion:COERCE_DOUBLE(COERCE_UNSIGNED_INT(2.0))];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MPIntentViewController;
  [(MPIntentViewController *)&v6 viewWillDisappear:a3];
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Enabling application idleTimer for CallIntentCountdown: viewWillDisappear", v5, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  [v4 _setIdleTimerDisabled:0 forReason:@"CallIntentCountdown"];
}

- (void)configureViewForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7
{
  v10 = a4;
  v11 = a7;
  v12 = a3;
  [(MPIntentViewController *)self setInteraction:v10];
  v13 = PHDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 intent];
    v24 = 138412290;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Intent: %@", &v24, 0xCu);
  }

  v15 = PHDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v10 intentResponse];
    v24 = 138412290;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "IntentResponse: %@", &v24, 0xCu);
  }

  v17 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_8:
    [(MPIntentViewController *)self configureViewForEmergencyCountdown];
    goto LABEL_9;
  }

  v18 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_8;
  }

  v20 = [(MPIntentViewController *)self intent];
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
    v11[2](v11, 0, v23, CGSizeZero.width, CGSizeZero.height);
  }

LABEL_9:
  [(MPIntentViewController *)self desiredSize];
  (v11[2])(v11, 1, v12);
}

- (void)viewWasCancelled
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "our view was cancelled, stopping countdown", buf, 2u);
  }

  v4 = [(MPIntentViewController *)self countdownView];
  [v4 cancel];

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
  v2 = [(MPIntentViewController *)self interaction];
  v3 = [v2 intent];

  return v3;
}

- (id)callRecords
{
  v2 = [(MPIntentViewController *)self interaction];
  v3 = [v2 intentResponse];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 callRecords];
    if ([v4 count])
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

    v4 = 0;
  }

LABEL_9:

  return v4;
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

- (id)recentCallForCallRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(MPIntentViewController *)self callHistoryCache];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v8 = PHDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Searching for calls with identifier: %@", buf, 0xCu);
    }

    v9 = [NSPredicate predicateWithFormat:@"unique_id == %@", v5];
    v10 = [(MPIntentViewController *)self callHistoryManager];
    v7 = [v10 callsWithPredicate:v9 limit:1 offset:0 batchSize:1];

    v11 = [(MPIntentViewController *)self callHistoryCache];
    v12 = v11;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = &__NSArray0__struct;
    }

    [v11 setObject:v13 forKey:v5];
  }

  if ([v7 count] != 1)
  {
    v14 = PHDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10007A430(v7);
    }
  }

  v15 = [v7 firstObject];
  if (!v15)
  {
    v16 = PHDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10007A4C0();
    }
  }

  return v15;
}

- (id)voicemailForCallRecord:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 longLongValue];
  v6 = [(MPIntentViewController *)self voicemailManager];
  v7 = [v6 voicemailWithIdentifier:v5];

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

- (double)calculatedHeightForCallRecordCellsWithWidth:(double)a3
{
  v5 = [(MPIntentViewController *)self callRecords];
  v6 = [v5 count];

  if (!v6)
  {
    return 0.0;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    v9 = [(MPIntentViewController *)self callRecords];
    v10 = [v9 objectAtIndexedSubscript:v7];

    if ([v10 callRecordType] == 5)
    {
      v11 = [(MPIntentViewController *)self voicemailForCallRecord:v10];
      if (v11)
      {
        v12 = [[MPVisualMessage alloc] initWithVMVoicemail:v11];
        v13 = [(MPIntentViewController *)self prototypeVoicemailCell];
        [(MPIntentViewController *)self configureVoicemailTableViewCell:v13 forVoicemail:v12];

        v14 = [(MPIntentViewController *)self prototypeVoicemailCell];
        LODWORD(v15) = 1148846080;
        LODWORD(v16) = 1112014848;
        [v14 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v15, v16}];
        v18 = v17;

        v8 = v8 + fmin(v18, 100.0);
      }
    }

    else
    {
      v11 = [(MPIntentViewController *)self recentCallForCallRecord:v10];
      if (v11)
      {
        v19 = [(MPIntentViewController *)self prototypeRecentCallCell];
        v20 = [v10 numberOfCalls];
        -[MPIntentViewController configureRecentCallTableViewCell:forRecentCall:numberOfOccurences:](self, "configureRecentCallTableViewCell:forRecentCall:numberOfOccurences:", v19, v11, [v20 unsignedIntegerValue]);

        v21 = [(MPIntentViewController *)self prototypeRecentCallCell];
        LODWORD(v22) = 1148846080;
        LODWORD(v23) = 1112014848;
        [v21 systemLayoutSizeFittingSize:a3 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v22, v23}];
        v25 = v24;

        v8 = v8 + v25;
      }
    }

    ++v7;
    v26 = [(MPIntentViewController *)self callRecords];
    v27 = [v26 count];
  }

  while (v7 < v27);
  return v8;
}

- (CGSize)desiredSize
{
  v3 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_4;
  }

  v4 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_4:
    v6 = [(MPIntentViewController *)self extensionContext];
    [v6 hostedViewMaximumAllowedSize];
    v8 = v7;

    v9 = [(MPIntentViewController *)self extensionContext];
    [v9 hostedViewMaximumAllowedSize];
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

  v14 = [(MPIntentViewController *)self intent];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  v12 = 0.0;
  v8 = 0.0;
  if (v15)
  {
    v16 = [(MPIntentViewController *)self extensionContext];
    [v16 hostedViewMaximumAllowedSize];
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

  v7 = [(MPIntentViewController *)self view];
  v8 = [(MPIntentViewController *)self countdownView];
  [v7 addSubview:v8];

  v9 = [(MPIntentViewController *)self countdownView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(MPIntentViewController *)self countdownView];
  v11 = [v10 centerXAnchor];
  v12 = [(MPIntentViewController *)self view];
  v13 = [v12 centerXAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  [v14 setActive:1];

  v15 = [(MPIntentViewController *)self countdownView];
  v16 = [v15 centerYAnchor];
  v17 = [(MPIntentViewController *)self view];
  v18 = [v17 centerYAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
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
  v6 = [v4 callProviderManager];
  v7 = [v4 contactStore];
  v8 = [v4 suggestedContactStore];
  v9 = [v4 metadataCache];
  v10 = [(PHRecentsController *)v5 initWithCallHistoryController:v65 callProviderManager:v6 contactStore:v7 suggestedContactStore:v8 metadataCache:v9];
  [(MPIntentViewController *)self setRecentsController:v10];

  v11 = [(MPIntentViewController *)self recentsController];
  [v11 addDelegate:self queue:&_dispatch_main_q];

  v12 = objc_alloc_init(VMVoicemailManager);
  [(MPIntentViewController *)self setVoicemailManager:v12];

  v13 = [(MPIntentViewController *)self voicemailManager];
  v14 = [PHVisualVoicemailManagerFactory getVisualVoiceMailWithVisualVoicemailManager:v13 onVoicemailsChanged:&stru_1000B1D00];

  v15 = [MPVoicemailController alloc];
  v16 = [MPVoicemailAccountManagerDecorator alloc];
  v17 = [(MPIntentViewController *)self voicemailManager];
  v18 = [(MPVoicemailAccountManagerDecorator *)v16 initWithVMD:v17];
  v19 = [v4 callProviderManager];
  v20 = [v4 contactStore];
  v21 = [v4 suggestedContactStore];
  v22 = [v4 metadataCache];
  v23 = [(MPVoicemailController *)v15 initWithVoicemailManager:v14 accountManager:v18 callProviderManager:v19 contactStore:v20 suggestedContactStore:v21 metadataCache:v22];
  [(MPIntentViewController *)self setVoicemailController:v23];

  v24 = objc_alloc_init(MPLegacyRecentsTableViewCell);
  [(MPIntentViewController *)self setPrototypeRecentCallCell:v24];

  v25 = [(MPIntentViewController *)self prototypeRecentCallCell];
  [v25 updateFontsLayoutMetricsAndSeparatorInset];

  v26 = objc_alloc_init(PHVoicemailMessageTableViewCell);
  [(MPIntentViewController *)self setPrototypeVoicemailCell:v26];

  v27 = +[UIColor systemBlueColor];
  v28 = [(MPIntentViewController *)self view];
  [v28 setTintColor:v27];

  v29 = [[UITableView alloc] initWithFrame:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(MPIntentViewController *)self setTableView:v29];

  v30 = [(MPIntentViewController *)self tableView];
  [v30 setDataSource:self];

  v31 = [(MPIntentViewController *)self tableView];
  [v31 setDelegate:self];

  v32 = [(MPIntentViewController *)self tableView];
  [v32 setScrollEnabled:0];

  v33 = +[UIColor clearColor];
  v34 = [(MPIntentViewController *)self tableView];
  [v34 setBackgroundColor:v33];

  v35 = [(MPIntentViewController *)self tableView];
  v36 = [v35 layer];
  [v36 setHitTestsAsOpaque:1];

  v37 = [(MPIntentViewController *)self tableView];
  [v37 registerClass:objc_opt_class() forCellReuseIdentifier:@"MPLegacyRecentsTableViewCell"];

  v38 = [(MPIntentViewController *)self tableView];
  v39 = objc_opt_class();
  v40 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  [v38 registerClass:v39 forCellReuseIdentifier:v40];

  v41 = [(MPIntentViewController *)self tableView];
  [v41 setRowHeight:UITableViewAutomaticDimension];

  v42 = [(MPIntentViewController *)self view];
  v43 = [(MPIntentViewController *)self tableView];
  [v42 addSubview:v43];

  v44 = [(MPIntentViewController *)self tableView];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];

  v45 = [(MPIntentViewController *)self tableView];
  v46 = [v45 topAnchor];
  v47 = [(MPIntentViewController *)self view];
  v48 = [v47 topAnchor];
  v49 = [v46 constraintEqualToAnchor:v48];
  [v49 setActive:1];

  v50 = [(MPIntentViewController *)self tableView];
  v51 = [v50 bottomAnchor];
  v52 = [(MPIntentViewController *)self view];
  v53 = [v52 bottomAnchor];
  v54 = [v51 constraintEqualToAnchor:v53];
  [v54 setActive:1];

  v55 = [(MPIntentViewController *)self tableView];
  v56 = [v55 leftAnchor];
  v57 = [(MPIntentViewController *)self view];
  v58 = [v57 leftAnchor];
  v59 = [v56 constraintEqualToAnchor:v58];
  [v59 setActive:1];

  v60 = [(MPIntentViewController *)self tableView];
  v61 = [v60 rightAnchor];
  v62 = [(MPIntentViewController *)self view];
  v63 = [v62 rightAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];
  [v64 setActive:1];
}

- (id)voicemailMessageViewModelForVoicemail:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPVoicemailMessageViewModel);
  v6 = [v4 date];
  [(MPVoicemailMessageViewModel *)v5 setDate:v6];

  v7 = PHVoicemailCellDateFormatter();
  v8 = [v4 date];
  v9 = [v7 stringFromDate:v8];
  [(MPVoicemailMessageViewModel *)v5 setLocalizedDate:v9];

  v10 = [(MPIntentViewController *)self voicemailController];
  v11 = [v10 localizedTitleForMessage:v4];
  [(MPVoicemailMessageViewModel *)v5 setLocalizedTitle:v11];

  [v4 duration];
  v13 = PHVoicemailFormatTime(v12);
  [(MPVoicemailMessageViewModel *)v5 setLocalizedDuration:v13];

  v14 = [(MPIntentViewController *)self voicemailController];
  v15 = [v14 localizedSubtitleForMessage:v4];
  [(MPVoicemailMessageViewModel *)v5 setLocalizedSubtitle:v15];

  -[MPVoicemailMessageViewModel setIsRead:](v5, "setIsRead:", [v4 isRead]);
  -[MPVoicemailMessageViewModel setIsDeleted:](v5, "setIsDeleted:", [v4 folder] == 2);
  v16 = [v4 isTranscriptionAvailable];
  v17 = PHDefaultLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10007A5A0(v16, v4, v17);
  }

  [(MPVoicemailMessageViewModel *)v5 setShowsTranscriptionView:v16];
  [(MPVoicemailMessageViewModel *)v5 setShowsPlayerControls:1];
  [v4 duration];
  [(MPVoicemailMessageViewModel *)v5 setDuration:?];
  if (PHDeviceSupportsDualSim())
  {
    v18 = [(MPIntentViewController *)self voicemailController];
    v19 = [v18 callProviderManager];
    v20 = [v19 telephonyProvider];
    v21 = [v20 prioritizedSenderIdentities];
    if ([v21 count] < 2)
    {
    }

    else
    {
      v22 = [v4 receiverDestinationID];
      v23 = [v22 length];

      if (!v23)
      {
        goto LABEL_9;
      }

      v24 = [TUHandle alloc];
      v25 = [v4 receiverDestinationID];
      v18 = [v24 initWithType:2 value:v25];

      v26 = [v4 receiverISOCountryCode];
      v19 = [v18 canonicalHandleForISOCountryCode:v26];

      v27 = [(MPIntentViewController *)self voicemailController];
      v28 = [v27 callProviderManager];
      v29 = [v28 telephonyProvider];
      v30 = [v29 senderIdentityForHandle:v19];
      v20 = [v30 localizedShortName];

      [(MPVoicemailMessageViewModel *)v5 setLocalizedSenderIdentityTitle:v20];
    }
  }

LABEL_9:
  v31 = [[VMMessageTranscriptViewModel alloc] initWithMPMessage:v4];
  [(MPVoicemailMessageViewModel *)v5 setTranscriptViewModel:v31];

  return v5;
}

- (void)recentsController:(id)a3 didChangeCalls:(id)a4
{
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v6 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling recent calls change", &v9, 0xCu);
  }

  v7 = [(MPIntentViewController *)self recentsItemCache];
  [v7 removeAllObjects];

  v8 = [(MPIntentViewController *)self tableView];
  [v8 reloadData];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPIntentViewController *)self callRecords];
  v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  if ([v9 callRecordType] == 5)
  {
    v10 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
    v11 = [v6 dequeueReusableCellWithIdentifier:v10 forIndexPath:v7];

    v12 = [(MPIntentViewController *)self voicemailForCallRecord:v9];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [[MPVisualMessage alloc] initWithVMVoicemail:v12];
    [(MPIntentViewController *)self configureVoicemailTableViewCell:v11 forVoicemail:v13];
  }

  else
  {
    v11 = [v6 dequeueReusableCellWithIdentifier:@"MPLegacyRecentsTableViewCell" forIndexPath:v7];
    [v11 updateFontsLayoutMetricsAndSeparatorInset];
    v12 = [(MPIntentViewController *)self recentCallForCallRecord:v9];
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [v9 numberOfCalls];
    [(MPIntentViewController *)self configureRecentCallTableViewCell:v11 forRecentCall:v12 numberOfOccurences:[(MPVisualMessage *)v13 unsignedIntegerValue]];
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

- (id)recentsItemForCall:(id)a3 numberOfOccurences:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 uniqueId];
  v8 = [(MPIntentViewController *)self recentsItemCache];
  v9 = [v8 objectForKey:v7];

  if (!v9)
  {
    v10 = [(MPIntentViewController *)self recentsController];
    v9 = [v10 itemForRecentCall:v6 numberOfOccurences:a4];

    if (v9)
    {
      v11 = [(MPIntentViewController *)self recentsItemCache];
      [v11 setObject:v9 forKey:v7];
    }
  }

  return v9;
}

- (void)configureRecentCallTableViewCell:(id)a3 forRecentCall:(id)a4 numberOfOccurences:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(MPIntentViewController *)self recentsItemForCall:v8 numberOfOccurences:a5];
  v11 = PHDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Recent Call: %@", &v16, 0xCu);
  }

  v12 = PHDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Recents Item: %@", &v16, 0xCu);
  }

  [v9 configureWithRecentsItem:v10 recentCall:v8];
  [v9 setAccessoryType:0];
  v13 = +[UIColor clearColor];
  [v9 setBackgroundColor:v13];

  v14 = +[UIColor clearColor];
  v15 = [v9 contentView];

  [v15 setBackgroundColor:v14];
}

- (void)configureVoicemailTableViewCell:(id)a3 forVoicemail:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 setDelegate:self];
  v8 = +[UIColor clearColor];
  [v7 setBackgroundColor:v8];

  v9 = +[UIColor clearColor];
  v10 = [v7 contentView];
  [v10 setBackgroundColor:v9];

  v11 = [(MPIntentViewController *)self voicemailMessageViewModelForVoicemail:v6];

  [v7 configureWithVoicemailMessageViewModel:v11 expanded:0 shouldGrayForeground:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(MPIntentViewController *)self callRecords:a3];
  v5 = [v4 count];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a4;
  v6 = a3;
  v7 = [(MPIntentViewController *)self callRecords];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v14, "row")}];

  if ([v8 callRecordType] == 5)
  {
    v9 = [(MPIntentViewController *)self voicemailForCallRecord:v8];
    v10 = +[NSURL phoneAppVoicemailURLForRecordID:](NSURL, "phoneAppVoicemailURLForRecordID:", [v9 identifier]);
    TUOpenSensitiveURL();
  }

  else
  {
    v9 = [(MPIntentViewController *)self recentCallForCallRecord:v8];
    v11 = [v9 validRemoteParticipantHandles];
    v12 = [v11 count];

    v13 = [(MPIntentViewController *)self recentsController];
    v10 = v13;
    if (v12 < 2)
    {
      [v13 performDialRequestForRecentCall:v9];
    }

    else
    {
      [v13 performJoinRequestForRecentCall:v9];
    }
  }

  [v6 deselectRowAtIndexPath:v14 animated:1];
}

@end