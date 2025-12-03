@interface PHVoicemailTrashListViewController
- (BOOL)hasContentToDisplay;
- (NSString)folderName;
- (NSString)messageCountText;
- (id)cellDetailDestructiveActionText;
- (id)navigationBarText;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (void)clearAllTapped;
- (void)performTableViewDestructiveActionAtIndexPath:(id)path;
- (void)performTableViewRestoreActionAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)willShowVoicemails:(id)voicemails;
@end

@implementation PHVoicemailTrashListViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PHVoicemailTrashListViewController;
  [(MPVoicemailTableViewController *)&v11 viewDidLoad];
  navigationBarText = [(PHVoicemailTrashListViewController *)self navigationBarText];
  navigationItem = [(PHVoicemailTrashListViewController *)self navigationItem];
  [navigationItem setTitle:navigationBarText];

  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CLEAR_ALL" value:&stru_10028F310 table:@"Voicemail"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"clearAllTapped"];

  navigationItem2 = [(PHVoicemailTrashListViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  navigationItem3 = [(PHVoicemailTrashListViewController *)self navigationItem];
  [navigationItem3 setLargeTitleDisplayMode:2];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PHVoicemailTrashListViewController;
  [(MPVoicemailTableViewController *)&v4 viewDidAppear:appear];
  [(MPVoicemailTableViewController *)self popViewControllerIfNeeded];
}

- (BOOL)hasContentToDisplay
{
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v3 = [voicemails count] != 0;

  return v3;
}

- (id)navigationBarText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DELETED" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (NSString)folderName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DELETED_MESSAGES" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  v4 = [NSBundle mainBundle:view];
  v5 = [v4 localizedStringForKey:@"CLEAR" value:&stru_10028F310 table:@"Voicemail"];

  return v5;
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)path
{
  pathCopy = path;
  pathCopy2 = path;
  v5 = [NSArray arrayWithObjects:&pathCopy count:1];
  v6[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __83__PHVoicemailTrashListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke;
  v7[3] = &unk_1002854D0;
  v7[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __83__PHVoicemailTrashListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke_2;
  v6[3] = &unk_1002854D0;
  [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v5 dataSourceActions:v7 completionBlock:v6];
}

void __83__PHVoicemailTrashListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 deleteMessages:v3];
}

- (void)performTableViewRestoreActionAtIndexPath:(id)path
{
  pathCopy = path;
  pathCopy2 = path;
  v5 = [NSArray arrayWithObjects:&pathCopy count:1];
  v6[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __79__PHVoicemailTrashListViewController_performTableViewRestoreActionAtIndexPath___block_invoke;
  v7[3] = &unk_1002854D0;
  v7[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __79__PHVoicemailTrashListViewController_performTableViewRestoreActionAtIndexPath___block_invoke_2;
  v6[3] = &unk_1002854D0;
  [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v5 dataSourceActions:v7 completionBlock:v6];
}

void __79__PHVoicemailTrashListViewController_performTableViewRestoreActionAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 moveMessagesToInbox:v3];
}

- (NSString)messageCountText
{
  [(MPVoicemailTableViewController *)self reloadDataIfNeeded];
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v4 = [voicemails count];

  if (v4 < 1)
  {
    v7 = &stru_10028F310;
  }

  else
  {
    v5 = SharedNumberFormatter();
    v6 = [NSNumber numberWithInteger:v4];
    v7 = [v5 stringFromNumber:v6];
  }

  return v7;
}

- (id)cellDetailDestructiveActionText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"UNDELETE" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (void)willShowVoicemails:(id)voicemails
{
  v4 = [voicemails count] != 0;
  navigationItem = [(PHVoicemailTrashListViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (void)clearAllTapped
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CLEAR_ALL_ALERT_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v5 = [UIAlertController alertControllerWithTitle:v4 message:0 preferredStyle:0];

  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"CLEAR_ALL_OK_BUTTON_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __52__PHVoicemailTrashListViewController_clearAllTapped__block_invoke;
  v12[3] = &unk_100285468;
  v12[4] = self;
  v8 = [UIAlertAction actionWithTitle:v7 style:2 handler:v12];
  [v5 addAction:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"CLEAR_ALL_CANCEL_BUTTON_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v5 addAction:v11];

  [(PHVoicemailTrashListViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __52__PHVoicemailTrashListViewController_clearAllTapped__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationItem];
  v3 = [v2 rightBarButtonItem];
  [v3 setEnabled:0];

  v4 = *(a1 + 32);
  v5 = [v4 voicemails];
  v6 = [v4 indexPathsForMessages:v5];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __52__PHVoicemailTrashListViewController_clearAllTapped__block_invoke_2;
  v7[3] = &unk_1002854D0;
  v7[4] = *(a1 + 32);
  [v4 performDeleteAtIndexPaths:v6 dataSourceActions:v7 completionBlock:0];
}

void __52__PHVoicemailTrashListViewController_clearAllTapped__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 deleteMessages:v3];
}

@end