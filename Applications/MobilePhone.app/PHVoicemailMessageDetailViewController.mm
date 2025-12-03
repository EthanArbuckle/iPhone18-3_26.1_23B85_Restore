@interface PHVoicemailMessageDetailViewController
+ (id)voicemailPredicate;
- (BOOL)hasContentToDisplay;
- (NSString)folderName;
- (PHVoicemailMessageDetailViewController)initWithMessage:(id)message navigationController:(id)controller voicemailController:(id)voicemailController;
- (PHVoicemailMessageDetailViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)handleUIApplicationDidEnterBackgroundNotification:(id)notification;
- (void)performTableViewDestructiveActionAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)voicemailMessageTableViewCell:(id)cell suggestionsDidReceiveTapGesture:(id)gesture;
@end

@implementation PHVoicemailMessageDetailViewController

- (PHVoicemailMessageDetailViewController)initWithMessage:(id)message navigationController:(id)controller voicemailController:(id)voicemailController
{
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = PHVoicemailMessageDetailViewController;
  v10 = [(MPVoicemailTableViewController *)&v17 initWithNavigationController:controller voicemailController:voicemailController];
  if (v10)
  {
    v11 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    v10->_smartVoicemailActionsEnabled = [(TUFeatureFlags *)v10->_featureFlags smartVoicemailActionsEnabled];
    objc_storeStrong(&v10->_message, message);
    v18 = messageCopy;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    [(MPVoicemailTableViewController *)v10 setAllVoicemails:v13];
    v14 = [v13 mutableCopy];
    [(MPVoicemailTableViewController *)v10 setVoicemails:v14];

    v15 = v10;
  }

  return v10;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = PHVoicemailMessageDetailViewController;
  [(MPVoicemailTableViewController *)&v8 viewDidLoad];
  tableView = [(PHVoicemailMessageDetailViewController *)self tableView];
  [tableView setAllowsSelection:0];

  tableView2 = [(PHVoicemailMessageDetailViewController *)self tableView];
  [tableView2 setSeparatorStyle:0];

  if ([(PHVoicemailMessageDetailViewController *)self isSmartVMActionsEnabled])
  {
    identifier = [(MPMessage *)self->_message identifier];
    messageUUID = [identifier messageUUID];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __53__PHVoicemailMessageDetailViewController_viewDidLoad__block_invoke;
    v7[3] = &unk_1002854D0;
    v7[4] = self;
    [(MPVoicemailTableViewController *)self getAppActionRecommendationsWithVoicemailId:messageUUID completionHandler:v7];
  }
}

void __53__PHVoicemailMessageDetailViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * v9) getAppActionTitle];
          [v4 addObject:v10];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    [*(a1 + 32) setQuickActionSuggestions:v11];

    v12 = [*(a1 + 32) tableView];
    [v12 reloadData];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  identifier = [(MPMessage *)self->_message identifier];
  v6 = [(MPVoicemailTableViewController *)self indexPathForMessageID:identifier];

  if (v6)
  {
    tableView = [(PHVoicemailMessageDetailViewController *)self tableView];
    [(MPVoicemailTableViewController *)self tableView:tableView expandRowAtIndexPath:v6 animated:0];
  }
}

- (void)handleUIApplicationDidEnterBackgroundNotification:(id)notification
{
  identifier = [(MPMessage *)self->_message identifier];
  v7 = [(MPVoicemailTableViewController *)self indexPathForMessageID:identifier];

  tableView = [(PHVoicemailMessageDetailViewController *)self tableView];
  v6 = [tableView cellForRowAtIndexPath:v7];

  [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v6 didRequestPlayState:2];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithIdentifier:v8 forIndexPath:pathCopy];

  v10 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelForVoicemail:self->_message isExpanded:1];
  if ([(PHVoicemailMessageDetailViewController *)self isSmartVMActionsEnabled])
  {
    quickActionSuggestions = [(PHVoicemailMessageDetailViewController *)self quickActionSuggestions];

    if (quickActionSuggestions)
    {
      quickActionSuggestions2 = [(PHVoicemailMessageDetailViewController *)self quickActionSuggestions];
      transcriptViewModel = [v10 transcriptViewModel];
      [transcriptViewModel setQuickActionSuggestions:quickActionSuggestions2];
    }
  }

  [v9 configureWithVoicemailMessageViewModel:v10 expanded:1 shouldGrayForeground:0];
  tableView = [(PHVoicemailMessageDetailViewController *)self tableView];
  safeAreaLayoutGuide = [tableView safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  [v9 setMaximumAllowedHeight:v16];

  [v9 setDelegate:self];

  return v9;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = cellCopy;
    toolbar = [v6 toolbar];
    [toolbar updateRTTButton];

    [v6 hideUnreadIndicator];
    featureFlags = [(PHVoicemailMessageDetailViewController *)self featureFlags];
    if ([featureFlags phoneLargeFormatUIEnabled])
    {
    }

    else
    {
      featureFlags2 = [(PHVoicemailMessageDetailViewController *)self featureFlags];
      callExperiencePhoneAppEnabled = [featureFlags2 callExperiencePhoneAppEnabled];

      if (!callExperiencePhoneAppEnabled)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    phoneNavigationController = [(MPVoicemailTableViewController *)self phoneNavigationController];
    [phoneNavigationController setDisplayedTableViewCell:v6];

    message = self->_message;
    phoneNavigationController2 = [(MPVoicemailTableViewController *)self phoneNavigationController];
    [phoneNavigationController2 setDisplayedMessage:message];

    goto LABEL_6;
  }

LABEL_7:

  _objc_release_x1();
}

- (NSString)folderName
{
  v4 = [NSString stringWithFormat:@"%s should never be called", "[PHVoicemailMessageDetailViewController folderName]"];
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHVoicemailMessageDetailViewController.m" lineNumber:130 description:{@"%s should never be called", "-[PHVoicemailMessageDetailViewController folderName]"}];
  }

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"VOICE_MAIL" value:&stru_10028F310 table:@"Voicemail"];

  return v7;
}

- (BOOL)hasContentToDisplay
{
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v3 = [voicemails count] != 0;

  return v3;
}

+ (id)voicemailPredicate
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s should never be called", "+[PHVoicemailMessageDetailViewController voicemailPredicate]");
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PHVoicemailMessageDetailViewController.m" lineNumber:139 description:{@"%s should never be called", "+[PHVoicemailMessageDetailViewController voicemailPredicate]"}];
  }

  return &__block_literal_global_25;
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)path
{
  message = [(PHVoicemailMessageDetailViewController *)self message];
  folder = [message folder];
  voicemailController = [(MPVoicemailTableViewController *)self voicemailController];
  if (folder == 2)
  {
    v11 = message;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    [voicemailController moveMessagesToInbox:v7];
  }

  else
  {
    v10 = message;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [voicemailController trashMessages:v7];
  }

  delegate = [(PHVoicemailMessageDetailViewController *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __87__PHVoicemailMessageDetailViewController_performTableViewDestructiveActionAtIndexPath___block_invoke;
  v9[3] = &unk_100284FD0;
  v9[4] = self;
  [delegate voicemailMessageDetailViewController:self destructiveActionPerformedForMessage:message completionBlock:v9];
}

void __87__PHVoicemailMessageDetailViewController_performTableViewDestructiveActionAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)voicemailMessageTableViewCell:(id)cell suggestionsDidReceiveTapGesture:(id)gesture
{
  gestureCopy = gesture;
  detailIndexPath = [(MPVoicemailTableViewController *)self detailIndexPath];
  v9 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [detailIndexPath row]);

  identifier = [v9 identifier];
  messageUUID = [identifier messageUUID];
  [(MPVoicemailTableViewController *)self processAppActionRecommendationWithVoicemailId:messageUUID recommendation:gestureCopy buttonType:0 completionHandler:&__block_literal_global_121];
}

void __104__PHVoicemailMessageDetailViewController_voicemailMessageTableViewCell_suggestionsDidReceiveTapGesture___block_invoke(id a1)
{
  v1 = PHDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __104__PHVoicemailMessageDetailViewController_voicemailMessageTableViewCell_suggestionsDidReceiveTapGesture___block_invoke_cold_1(v1);
  }
}

- (PHVoicemailMessageDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end