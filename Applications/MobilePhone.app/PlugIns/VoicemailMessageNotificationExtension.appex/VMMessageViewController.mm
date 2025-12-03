@interface VMMessageViewController
+ (id)getFTVoiceMailOnVoicemailsChanged:(id)changed;
- (CNContactFormatter)contactFormatter;
- (MPVoicemailAccountManagerProtocol)accountManager;
- (MPVoicemailManagerProtocol)voicemailManager;
- (NSDateFormatter)dateFormatter;
- (VMMessageViewController)initWithContactStore:(id)store;
- (VMMessageViewController)initWithManager:(id)manager;
- (VMPlayerControlsViewController)playerControlsViewController;
- (id)localizedSubtitleForMessage:(id)message;
- (id)onVoicemailsChanged;
- (void)dealloc;
- (void)fetchMetadataForMessages:(id)messages;
- (void)handleContactStoreDidChangeNotification:(id)notification;
- (void)handleContentSizeCategoryDidChangeNotification:(id)notification;
- (void)handleCurrentLocaleDidChangeNotification:(id)notification;
- (void)handleSystemTimeZoneDidChangeNotification:(id)notification;
- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification;
- (void)handleVoicemailManagerVoicemailsDidChange;
- (void)loadView;
- (void)reloadData;
- (void)setVoicemailMessage:(id)message;
- (void)viewDidLoad;
@end

@implementation VMMessageViewController

- (VMMessageViewController)initWithManager:(id)manager
{
  [(VMMessageViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMMessageViewController)initWithContactStore:(id)store
{
  storeCopy = store;
  v6 = [MPVoicemailAccountManagerDecorator alloc];
  v7 = objc_alloc_init(VMVoicemailManager);
  v8 = [(MPVoicemailAccountManagerDecorator *)v6 initWithVMD:v7];
  v19.receiver = self;
  v19.super_class = VMMessageViewController;
  v9 = [(VMViewController *)&v19 initWithManager:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
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
  view = [(VMMessageViewController *)self view];
  v4 = +[UIColor dynamicBackgroundColor];
  [view setBackgroundColor:v4];

  v5 = objc_alloc_init(VMMessageView);
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  playerControlsView = [playerControlsViewController playerControlsView];
  [(VMMessageView *)v5 setPlayerControlsView:playerControlsView];

  [(VMMessageViewController *)self setMessageView:v5];
  [view addSubview:v5];
  [(VMMessageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  topAnchor = [(VMMessageView *)v5 topAnchor];
  view2 = [(VMMessageViewController *)self view];
  topAnchor2 = [view2 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v11 setActive:1];

  leadingAnchor = [(VMMessageView *)v5 leadingAnchor];
  view3 = [(VMMessageViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v15 setActive:1];

  heightAnchor = [(VMMessageView *)v5 heightAnchor];
  view4 = [(VMMessageViewController *)self view];
  heightAnchor2 = [view4 heightAnchor];
  v19 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [v19 setActive:1];

  widthAnchor = [(VMMessageView *)v5 widthAnchor];
  view5 = [(VMMessageViewController *)self view];
  widthAnchor2 = [view5 widthAnchor];
  v23 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v23 setActive:1];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VMMessageViewController;
  [(VMMessageViewController *)&v4 viewDidLoad];
  voicemailMessage = [(VMMessageViewController *)self voicemailMessage];

  if (voicemailMessage)
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
    voicemailManager = [v4 voicemailManager];
    v6 = self->_voicemailManager;
    self->_voicemailManager = voicemailManager;

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
    accountManager = [v4 accountManager];
    v6 = self->_accountManager;
    self->_accountManager = accountManager;

    accountManager = self->_accountManager;
  }

  return accountManager;
}

- (void)setVoicemailMessage:(id)message
{
  messageCopy = message;
  if (self->_voicemailMessage != messageCopy)
  {
    v6 = PHDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = messageCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting voicemail message (%@).", buf, 0xCu);
    }

    [(VMMessageViewController *)self setShouldHandleVoicemailChanges:0];
    objc_storeStrong(&self->_voicemailMessage, message);
    if (messageCopy)
    {
      [(VMMessageViewController *)self setShouldHandleVoicemailChanges:1];
      playerControlsViewController2 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
      contactStore = [(VMMessageViewController *)self contactStore];
      v15[0] = playerControlsViewController2;
      v15[1] = CNContactPhoneNumbersKey;
      v9 = [NSArray arrayWithObjects:v15 count:2];
      v10 = [(MPMessage *)messageCopy contactUsingContactStore:contactStore withKeysToFetch:v9];

      dataURL = [(MPMessage *)messageCopy dataURL];
      playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
      [playerControlsViewController setURL:dataURL];

      v14 = messageCopy;
      v13 = [NSArray arrayWithObjects:&v14 count:1];
      [(VMMessageViewController *)self fetchMetadataForMessages:v13];
    }

    else
    {
      playerControlsViewController2 = [(VMMessageViewController *)self playerControlsViewController];
      [playerControlsViewController2 setURL:0];
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
    manager = [(VMViewController *)self manager];
    v6 = [(VMViewController *)v4 initWithManager:manager];
    v7 = self->_playerControlsViewController;
    self->_playerControlsViewController = v6;

    playerControlsViewController = self->_playerControlsViewController;
  }

  return playerControlsViewController;
}

- (void)fetchMetadataForMessages:(id)messages
{
  messagesCopy = messages;
  metadataCache = [(VMMessageViewController *)self metadataCache];

  if (metadataCache)
  {
    v6 = [TUMetadataDestinationID metadataDestinationIDsForVMVoicemails:messagesCopy];
    v7 = PHDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = [messagesCopy count];
      v11 = 2048;
      v12 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetching metadata for %lu voicemail messages using %lu handles", &v9, 0x16u);
    }

    metadataCache2 = [(VMMessageViewController *)self metadataCache];
    [metadataCache2 updateCacheWithDestinationIDs:v6];
  }
}

- (void)handleTUMetadataCacheDidFinishUpdatingNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007770;
  block[3] = &unk_100089880;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)localizedSubtitleForMessage:(id)message
{
  messageCopy = message;
  senderDestinationID = [messageCopy senderDestinationID];
  if ([senderDestinationID length])
  {
    senderISOCountryCode = [messageCopy senderISOCountryCode];
    contact = [(VMMessageViewController *)self contact];
    v8 = [TUHandle normalizedHandleWithDestinationID:senderDestinationID];
    v9 = v8;
    if (contact && [v8 type] == 2)
    {
      v10 = [CNPhoneNumber phoneNumberWithDigits:senderDestinationID countryCode:senderISOCountryCode];
      if (v10)
      {
        v11 = [contact labeledValueForPhoneNumber:v10];
      }

      else
      {
        v11 = 0;
      }

      label = [v11 label];
      v12 = [CNLabeledValue localizedDisplayStringForLabel:label propertyName:CNContactPhoneNumbersKey];
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
        metadataCache = [(VMMessageViewController *)self metadataCache];
        v16 = [metadataCache metadataForDestinationID:v14];

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

    provider = [messageCopy provider];
    v21 = [provider isEqual:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];

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

- (void)handleContactStoreDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  voicemailMessage = [(VMMessageViewController *)self voicemailMessage];
  if (voicemailMessage)
  {
    v7 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    contactStore = [(VMMessageViewController *)self contactStore];
    v11[0] = v7;
    v11[1] = CNContactPhoneNumbersKey;
    v9 = [NSArray arrayWithObjects:v11 count:2];
    v10 = [voicemailMessage contactUsingContactStore:contactStore withKeysToFetch:v9];
    [(VMMessageViewController *)self setContact:v10];
  }

  [(VMMessageViewController *)self reloadData];
}

- (void)handleContentSizeCategoryDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", &v6, 0xCu);
  }

  [(VMMessageViewController *)self reloadData];
}

- (void)handleCurrentLocaleDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@", &v7, 0xCu);
  }

  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = 0;

  [(VMMessageViewController *)self reloadData];
}

- (void)handleSystemTimeZoneDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = notificationCopy;
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

  voicemailMessage = [(VMMessageViewController *)self voicemailMessage];

  if (voicemailMessage)
  {
    objc_initWeak(buf, self);
    voicemailManager = [(VMMessageViewController *)self voicemailManager];
    voicemailMessage2 = [(VMMessageViewController *)self voicemailMessage];
    identifier = [voicemailMessage2 identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100008078;
    v8[3] = &unk_1000898A8;
    objc_copyWeak(&v9, buf);
    [voicemailManager voicemailWithIdentifier:identifier completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)reloadData
{
  contactStore = [(VMMessageViewController *)self contactStore];
  messageView = [(VMMessageViewController *)self messageView];
  voicemailMessage = [(VMMessageViewController *)self voicemailMessage];
  [(VMMessageViewController *)self setMarkedVoicemailAsRead:0];
  v6 = PHDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v16 = 138412546;
    v17 = messageView;
    v18 = 2112;
    v19 = voicemailMessage;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Reloading view (%@) with data store (%@).", &v16, 0x16u);
  }

  dateFormatter = [(VMMessageViewController *)self dateFormatter];
  date = [voicemailMessage date];
  v9 = [dateFormatter stringFromDate:date];

  v10 = [voicemailMessage displayNameUsingContactStore:contactStore];
  v11 = [(VMMessageViewController *)self localizedSubtitleForMessage:voicemailMessage];
  [messageView setLocalizedHeadline:v10];
  [messageView setLocalizedSubheadline:v11];
  [messageView setLocalizedDate:v9];
  transcript = [voicemailMessage transcript];
  if (transcript)
  {
    transcriptView = [messageView transcriptView];
    [transcriptView setHideAccessoryViews:1];

    v14 = [[VMMessageTranscriptViewModel alloc] initWithMPMessage:voicemailMessage];
    transcriptView2 = [messageView transcriptView];
    [transcriptView2 setViewModel:v14];
  }

  [messageView setShouldDisplayTranscript:transcript != 0];
  [messageView setNeedsLayout];
  [messageView layoutIfNeeded];
}

+ (id)getFTVoiceMailOnVoicemailsChanged:(id)changed
{
  v3 = _Block_copy(changed);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_10005F83C(sub_1000374E8, v4);

  return v5;
}

@end