@interface PHVoicemailMessageDetailViewController
+ (id)voicemailPredicate;
- (BOOL)hasContentToDisplay;
- (NSString)folderName;
- (PHVoicemailMessageDetailViewController)initWithMessage:(id)a3 navigationController:(id)a4 voicemailController:(id)a5;
- (PHVoicemailMessageDetailViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)handleUIApplicationDidEnterBackgroundNotification:(id)a3;
- (void)performTableViewDestructiveActionAtIndexPath:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)voicemailMessageTableViewCell:(id)a3 suggestionsDidReceiveTapGesture:(id)a4;
@end

@implementation PHVoicemailMessageDetailViewController

- (PHVoicemailMessageDetailViewController)initWithMessage:(id)a3 navigationController:(id)a4 voicemailController:(id)a5
{
  v9 = a3;
  v17.receiver = self;
  v17.super_class = PHVoicemailMessageDetailViewController;
  v10 = [(MPVoicemailTableViewController *)&v17 initWithNavigationController:a4 voicemailController:a5];
  if (v10)
  {
    v11 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v10->_featureFlags;
    v10->_featureFlags = v11;

    v10->_smartVoicemailActionsEnabled = [(TUFeatureFlags *)v10->_featureFlags smartVoicemailActionsEnabled];
    objc_storeStrong(&v10->_message, a3);
    v18 = v9;
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
  v3 = [(PHVoicemailMessageDetailViewController *)self tableView];
  [v3 setAllowsSelection:0];

  v4 = [(PHVoicemailMessageDetailViewController *)self tableView];
  [v4 setSeparatorStyle:0];

  if ([(PHVoicemailMessageDetailViewController *)self isSmartVMActionsEnabled])
  {
    v5 = [(MPMessage *)self->_message identifier];
    v6 = [v5 messageUUID];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __53__PHVoicemailMessageDetailViewController_viewDidLoad__block_invoke;
    v7[3] = &unk_1002854D0;
    v7[4] = self;
    [(MPVoicemailTableViewController *)self getAppActionRecommendationsWithVoicemailId:v6 completionHandler:v7];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = [(MPMessage *)self->_message identifier];
  v6 = [(MPVoicemailTableViewController *)self indexPathForMessageID:v4];

  if (v6)
  {
    v5 = [(PHVoicemailMessageDetailViewController *)self tableView];
    [(MPVoicemailTableViewController *)self tableView:v5 expandRowAtIndexPath:v6 animated:0];
  }
}

- (void)handleUIApplicationDidEnterBackgroundNotification:(id)a3
{
  v4 = [(MPMessage *)self->_message identifier];
  v7 = [(MPVoicemailTableViewController *)self indexPathForMessageID:v4];

  v5 = [(PHVoicemailMessageDetailViewController *)self tableView];
  v6 = [v5 cellForRowAtIndexPath:v7];

  [(MPVoicemailTableViewController *)self voicemailMessageTableViewCell:v6 didRequestPlayState:2];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PHVoicemailMessageTableViewCell reuseIdentifier];
  v9 = [v7 dequeueReusableCellWithIdentifier:v8 forIndexPath:v6];

  v10 = [(MPVoicemailTableViewController *)self voicemailMessageViewModelForVoicemail:self->_message isExpanded:1];
  if ([(PHVoicemailMessageDetailViewController *)self isSmartVMActionsEnabled])
  {
    v11 = [(PHVoicemailMessageDetailViewController *)self quickActionSuggestions];

    if (v11)
    {
      v12 = [(PHVoicemailMessageDetailViewController *)self quickActionSuggestions];
      v13 = [v10 transcriptViewModel];
      [v13 setQuickActionSuggestions:v12];
    }
  }

  [v9 configureWithVoicemailMessageViewModel:v10 expanded:1 shouldGrayForeground:0];
  v14 = [(PHVoicemailMessageDetailViewController *)self tableView];
  v15 = [v14 safeAreaLayoutGuide];
  [v15 layoutFrame];
  [v9 setMaximumAllowedHeight:v16];

  [v9 setDelegate:self];

  return v9;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v14;
    v7 = [v6 toolbar];
    [v7 updateRTTButton];

    [v6 hideUnreadIndicator];
    v8 = [(PHVoicemailMessageDetailViewController *)self featureFlags];
    if ([v8 phoneLargeFormatUIEnabled])
    {
    }

    else
    {
      v9 = [(PHVoicemailMessageDetailViewController *)self featureFlags];
      v10 = [v9 callExperiencePhoneAppEnabled];

      if (!v10)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v11 = [(MPVoicemailTableViewController *)self phoneNavigationController];
    [v11 setDisplayedTableViewCell:v6];

    message = self->_message;
    v13 = [(MPVoicemailTableViewController *)self phoneNavigationController];
    [v13 setDisplayedMessage:message];

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
  v2 = [(MPVoicemailTableViewController *)self voicemails];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)voicemailPredicate
{
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s should never be called", "+[PHVoicemailMessageDetailViewController voicemailPredicate]");
  NSLog(@"** TUAssertion failure: %@", v4);

  if (_TUAssertShouldCrashApplication())
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:a1 file:@"PHVoicemailMessageDetailViewController.m" lineNumber:139 description:{@"%s should never be called", "+[PHVoicemailMessageDetailViewController voicemailPredicate]"}];
  }

  return &__block_literal_global_25;
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)a3
{
  v4 = [(PHVoicemailMessageDetailViewController *)self message];
  v5 = [v4 folder];
  v6 = [(MPVoicemailTableViewController *)self voicemailController];
  if (v5 == 2)
  {
    v11 = v4;
    v7 = [NSArray arrayWithObjects:&v11 count:1];
    [v6 moveMessagesToInbox:v7];
  }

  else
  {
    v10 = v4;
    v7 = [NSArray arrayWithObjects:&v10 count:1];
    [v6 trashMessages:v7];
  }

  v8 = [(PHVoicemailMessageDetailViewController *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __87__PHVoicemailMessageDetailViewController_performTableViewDestructiveActionAtIndexPath___block_invoke;
  v9[3] = &unk_100284FD0;
  v9[4] = self;
  [v8 voicemailMessageDetailViewController:self destructiveActionPerformedForMessage:v4 completionBlock:v9];
}

void __87__PHVoicemailMessageDetailViewController_performTableViewDestructiveActionAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)voicemailMessageTableViewCell:(id)a3 suggestionsDidReceiveTapGesture:(id)a4
{
  v5 = a4;
  v6 = [(MPVoicemailTableViewController *)self detailIndexPath];
  v9 = -[MPVoicemailTableViewController messageAtIndex:](self, "messageAtIndex:", [v6 row]);

  v7 = [v9 identifier];
  v8 = [v7 messageUUID];
  [(MPVoicemailTableViewController *)self processAppActionRecommendationWithVoicemailId:v8 recommendation:v5 buttonType:0 completionHandler:&__block_literal_global_121];
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