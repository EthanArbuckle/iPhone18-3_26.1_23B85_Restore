@interface VMMessageViewController
+ (id)getFTVoiceMailOnVoicemailsChanged:(id)a3;
- (CNContactFormatter)contactFormatter;
- (MPVoicemailAccountManagerProtocol)accountManager;
- (MPVoicemailManagerProtocol)voicemailManager;
- (NSDateFormatter)dateFormatter;
- (VMMessageViewController)initWithContactStore:(id)a3;
- (VMMessageViewController)initWithManager:(id)a3;
- (VMPlayerControlsViewController)playerControlsViewController;
- (id)localizedSubtitleForMessage:(id)a3;
- (id)onVoicemailsChanged;
- (void)dealloc;
- (void)fetchMetadataForMessages:(id)a3;
- (void)handleContactStoreDidChangeNotification:(id)a3;
- (void)handleContentSizeCategoryDidChangeNotification:(id)a3;
- (void)handleCurrentLocaleDidChangeNotification:(id)a3;
- (void)handleSystemTimeZoneDidChangeNotification:(id)a3;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3;
- (void)handleVoicemailManagerVoicemailsDidChange;
- (void)loadView;
- (void)reloadData;
- (void)setVoicemailMessage:(id)a3;
- (void)viewDidLoad;
@end

@implementation VMMessageViewController

- (VMMessageViewController)initWithManager:(id)a3
{
  [(VMMessageViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMMessageViewController)initWithContactStore:(id)a3
{
  v5 = a3;
  v6 = [MPVoicemailAccountManagerDecorator alloc];
  v7 = objc_alloc_init(VMVoicemailManager);
  v8 = [(MPVoicemailAccountManagerDecorator *)v6 initWithVMD:v7];
  v19.receiver = self;
  v19.super_class = VMMessageViewController;
  v9 = [(VMViewController *)&v19 initWithManager:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, a3);
    v10 = objc_alloc_init(TUCallDirectoryMetadataCacheDataProvider);
    v20[0] = v10;
    v11 = objc_alloc_init(TUMapsMetadataCacheDataProvider);
    v20[1] = v11;
    v12 = objc_alloc_init(TUSuggestionsMetadataCacheDataProvider);
    v20[2] = v12;
    v13 = objc_alloc_init(TUGeoLocationMetadataCacheDataProvider);
    v20[3] = v13;
    v14 = [NSArray arrayWithObjects:v20 count:4];

    v15 = [[TUMetadataCache alloc] initWithDataProviders:v14];
    metadataCache = v9->_metadataCache;
    v9->_metadataCache = v15;

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v9 selector:"handleContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
    [v17 addObserver:v9 selector:"handleContentSizeCategoryDidChangeNotification:" name:UIContentSizeCategoryDidChangeNotification object:0];
    [v17 addObserver:v9 selector:"handleCurrentLocaleDidChangeNotification:" name:NSCurrentLocaleDidChangeNotification object:0];
    [v17 addObserver:v9 selector:"handleSystemTimeZoneDidChangeNotification:" name:NSSystemTimeZoneDidChangeNotification object:0];
    [v17 addObserver:v9 selector:"handleTUMetadataCacheDidFinishUpdatingNotification:" name:TUMetadataCacheDidFinishUpdatingNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VMMessageViewController;
  [(PHViewController *)&v4 dealloc];
}

- (void)loadView
{
  v24.receiver = self;
  v24.super_class = VMMessageViewController;
  [(VMMessageViewController *)&v24 loadView];
  v3 = [(VMMessageViewController *)self view];
  v4 = +[UIColor dynamicBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc_init(VMMessageView);
  v6 = [(VMMessageViewController *)self playerControlsViewController];
  v7 = [v6 playerControlsView];
  [(VMMessageView *)v5 setPlayerControlsView:v7];

  [(VMMessageViewController *)self setMessageView:v5];
  [v3 addSubview:v5];
  [(VMMessageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(VMMessageView *)v5 topAnchor];
  v9 = [(VMMessageViewController *)self view];
  v10 = [v9 topAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  [v11 setActive:1];

  v12 = [(VMMessageView *)v5 leadingAnchor];
  v13 = [(VMMessageViewController *)self view];
  v14 = [v13 leadingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  [v15 setActive:1];

  v16 = [(VMMessageView *)v5 heightAnchor];
  v17 = [(VMMessageViewController *)self view];
  v18 = [v17 heightAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  v20 = [(VMMessageView *)v5 widthAnchor];
  v21 = [(VMMessageViewController *)self view];
  v22 = [v21 widthAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VMMessageViewController;
  [(VMMessageViewController *)&v4 viewDidLoad];
  v3 = [(VMMessageViewController *)self voicemailMessage];

  if (v3)
  {
    [(VMMessageViewController *)self reloadData];
  }
}

- (id)onVoicemailsChanged
{
  onVoicemailsChanged = self->_onVoicemailsChanged;
  if (!onVoicemailsChanged)
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007100;
    v9[3] = &unk_100089858;
    objc_copyWeak(&v10, &location);
    v4 = objc_retainBlock(v9);
    v5 = objc_retainBlock(v4);
    v6 = self->_onVoicemailsChanged;
    self->_onVoicemailsChanged = v5;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    onVoicemailsChanged = self->_onVoicemailsChanged;
  }

  v7 = objc_retainBlock(onVoicemailsChanged);

  return v7;
}

- (MPVoicemailManagerProtocol)voicemailManager
{
  voicemailManager = self->_voicemailManager;
  if (!voicemailManager)
  {
    v4 = +[NotificationApplicationServices shared];
    v5 = [v4 voicemailManager];
    v6 = self->_voicemailManager;
    self->_voicemailManager = v5;

    voicemailManager = self->_voicemailManager;
  }

  return voicemailManager;
}

- (MPVoicemailAccountManagerProtocol)accountManager
{
  accountManager = self->_accountManager;
  if (!accountManager)
  {
    v4 = +[NotificationApplicationServices shared];
    v5 = [v4 accountManager];
    v6 = self->_accountManager;
    self->_accountManager = v5;

    accountManager = self->_accountManager;
  }

  return accountManager;
}

- (void)setVoicemailMessage:(id)a3
{
  v5 = a3;
  if (self->_voicemailMessage != v5)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting voicemail message (%@).", buf, 0xCu);
    }

    [(VMMessageViewController *)self setShouldHandleVoicemailChanges:0];
    objc_storeStrong(&self->_voicemailMessage, a3);
    if (v5)
    {
      [(VMMessageViewController *)self setShouldHandleVoicemailChanges:1];
      v7 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
      v8 = [(VMMessageViewController *)self contactStore];
      v15[0] = v7;
      v15[1] = CNContactPhoneNumbersKey;
      v9 = [NSArray arrayWithObjects:v15 count:2];
      v10 = [(MPMessage *)v5 contactUsingContactStore:v8 withKeysToFetch:v9];

      v11 = [(MPMessage *)v5 dataURL];
      v12 = [(VMMessageViewController *)self playerControlsViewController];
      [v12 setURL:v11];

      v14 = v5;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      [(VMMessageViewController *)self fetchMetadataForMessages:v13];
    }

    else
    {
      v7 = [(VMMessageViewController *)self playerControlsViewController];
      [v7 setURL:0];
      v10 = 0;
    }

    [(VMMessageViewController *)self setContact:v10];
  }
}

- (CNContactFormatter)contactFormatter
{
  contactFormatter = self->_contactFormatter;
  if (!contactFormatter)
  {
    v4 = objc_alloc_init(CNContactFormatter);
    [(CNContactFormatter *)v4 setStyle:0];
    v5 = self->_contactFormatter;
    self->_contactFormatter = v4;

    contactFormatter = self->_contactFormatter;
  }

  return contactFormatter;
}

- (NSDateFormatter)dateFormatter
{
  dateFormatter = self->_dateFormatter;
  if (!dateFormatter)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    v5 = self->_dateFormatter;
    self->_dateFormatter = v4;

    [(NSDateFormatter *)self->_dateFormatter setDateStyle:3];
    [(NSDateFormatter *)self->_dateFormatter setDoesRelativeDateFormatting:1];
    [(NSDateFormatter *)self->_dateFormatter setTimeStyle:0];
    dateFormatter = self->_dateFormatter;
  }

  return dateFormatter;
}

- (VMPlayerControlsViewController)playerControlsViewController
{
  playerControlsViewController = self->_playerControlsViewController;
  if (!playerControlsViewController)
  {
    v4 = [VMPlayerControlsViewController alloc];
    v5 = [(VMViewController *)self manager];
    v6 = [(VMViewController *)v4 initWithManager:v5];
    v7 = self->_playerControlsViewController;
    self->_playerControlsViewController = v6;

    playerControlsViewController = self->_playerControlsViewController;
  }

  return playerControlsViewController;
}

- (void)fetchMetadataForMessages:(id)a3
{
  v4 = a3;
  v5 = [(VMMessageViewController *)self metadataCache];

  if (v5)
  {
    v6 = [TUMetadataDestinationID metadataDestinationIDsForVMVoicemails:v4];
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = [v4 count];
      v11 = 2048;
      v12 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu voicemail messages using %lu handles", &v9, 0x16u);
    }

    v8 = [(VMMessageViewController *)self metadataCache];
    [v8 updateCacheWithDestinationIDs:v6];
  }
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007770;
  block[3] = &unk_100089880;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)localizedSubtitleForMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 senderDestinationID];
  if ([v5 length])
  {
    v6 = [v4 senderISOCountryCode];
    v7 = [(VMMessageViewController *)self contact];
    v8 = [TUHandle normalizedHandleWithDestinationID:v5];
    v9 = v8;
    if (v7 && [v8 type] == 2)
    {
      v10 = [CNPhoneNumber phoneNumberWithDigits:v5 countryCode:v6];
      if (v10)
      {
        v11 = [v7 labeledValueForPhoneNumber:v10];
      }

      else
      {
        v11 = 0;
      }

      v13 = [v11 label];
      v12 = [CNLabeledValue localizedDisplayStringForLabel:v13 propertyName:CNContactPhoneNumbersKey];
    }

    else
    {
      v12 = 0;
    }

    if (![v12 length])
    {
      v14 = [[TUMetadataDestinationID alloc] initWithHandle:v9];
      if (v14)
      {
        v15 = [(VMMessageViewController *)self metadataCache];
        v16 = [v15 metadataForDestinationID:v14];

        v17 = [v16 metadataForProvider:objc_opt_class()];

        if (![v17 length])
        {
          v18 = [v16 metadataForProvider:objc_opt_class()];

          v17 = v18;
        }

        if (![v17 length])
        {
          v19 = [v16 metadataForProvider:objc_opt_class()];

          v17 = v19;
        }

        v12 = v17;
      }
    }

    v20 = [v4 provider];
    v21 = [v20 isEqual:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

    if (v21)
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_TITLE_FaceTime_Audio" value:&stru_10008C168 table:@"MPVoicemail"];

      v12 = v23;
    }

    if (![v12 length])
    {
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"MPVOICEMAIL_TABLE_VIEW_CELL_SUBTITLE_UNKNOWN" value:&stru_10008C168 table:@"MPVoicemail"];

      v12 = v25;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)handleContactStoreDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v6 = [(VMMessageViewController *)self voicemailMessage];
  if (v6)
  {
    v7 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v8 = [(VMMessageViewController *)self contactStore];
    v11[0] = v7;
    v11[1] = CNContactPhoneNumbersKey;
    v9 = [NSArray arrayWithObjects:v11 count:2];
    v10 = [v6 contactUsingContactStore:v8 withKeysToFetch:v9];
    [(VMMessageViewController *)self setContact:v10];
  }

  [(VMMessageViewController *)self reloadData];
}

- (void)handleContentSizeCategoryDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", &v6, 0xCu);
  }

  [(VMMessageViewController *)self reloadData];
}

- (void)handleCurrentLocaleDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", &v7, 0xCu);
  }

  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = 0;

  [(VMMessageViewController *)self reloadData];
}

- (void)handleSystemTimeZoneDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", &v8, 0xCu);
  }

  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = 0;

  contactFormatter = self->_contactFormatter;
  self->_contactFormatter = 0;

  [(VMMessageViewController *)self reloadData];
}

- (void)handleVoicemailManagerVoicemailsDidChange
{
  v3 = PHDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "handleVoicemailManagerVoicemailsDidChange", buf, 2u);
  }

  v4 = [(VMMessageViewController *)self voicemailMessage];

  if (v4)
  {
    objc_initWeak(buf, self);
    v5 = [(VMMessageViewController *)self voicemailManager];
    v6 = [(VMMessageViewController *)self voicemailMessage];
    v7 = [v6 identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008078;
    v8[3] = &unk_1000898A8;
    objc_copyWeak(&v9, buf);
    [v5 voicemailWithIdentifier:v7 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)reloadData
{
  v3 = [(VMMessageViewController *)self contactStore];
  v4 = [(VMMessageViewController *)self messageView];
  v5 = [(VMMessageViewController *)self voicemailMessage];
  [(VMMessageViewController *)self setMarkedVoicemailAsRead:0];
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Reloading view (%@) with data store (%@).", &v16, 0x16u);
  }

  v7 = [(VMMessageViewController *)self dateFormatter];
  v8 = [v5 date];
  v9 = [v7 stringFromDate:v8];

  v10 = [v5 displayNameUsingContactStore:v3];
  v11 = [(VMMessageViewController *)self localizedSubtitleForMessage:v5];
  [v4 setLocalizedHeadline:v10];
  [v4 setLocalizedSubheadline:v11];
  [v4 setLocalizedDate:v9];
  v12 = [v5 transcript];
  if (v12)
  {
    v13 = [v4 transcriptView];
    [v13 setHideAccessoryViews:1];

    v14 = [[VMMessageTranscriptViewModel alloc] initWithMPMessage:v5];
    v15 = [v4 transcriptView];
    [v15 setViewModel:v14];
  }

  [v4 setShouldDisplayTranscript:v12 != 0];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
}

+ (id)getFTVoiceMailOnVoicemailsChanged:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_10005F83C(sub_1000374E8, v4);

  return v5;
}

@end