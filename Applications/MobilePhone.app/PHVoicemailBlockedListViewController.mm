@interface PHVoicemailBlockedListViewController
- (BOOL)hasContentToDisplay;
- (NSString)folderName;
- (NSString)messageCountText;
- (id)cellDetailDestructiveActionText;
- (id)navigationBarText;
- (void)deleteAllTapped:(id)tapped;
- (void)performTableViewDestructiveActionAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)willShowVoicemails:(id)voicemails;
@end

@implementation PHVoicemailBlockedListViewController

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = PHVoicemailBlockedListViewController;
  [(MPVoicemailTableViewController *)&v11 viewDidLoad];
  navigationBarText = [(PHVoicemailBlockedListViewController *)self navigationBarText];
  navigationItem = [(PHVoicemailBlockedListViewController *)self navigationItem];
  [navigationItem setTitle:navigationBarText];

  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"DELETE_ALL" value:&stru_10028F310 table:@"Voicemail"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"deleteAllTapped:"];

  navigationItem2 = [(PHVoicemailBlockedListViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  navigationItem3 = [(PHVoicemailBlockedListViewController *)self navigationItem];
  [navigationItem3 setLargeTitleDisplayMode:2];
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
  v3 = [v2 localizedStringForKey:@"BLOCKED" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (NSString)messageCountText
{
  voicemails = [(MPVoicemailTableViewController *)self voicemails];
  v3 = [voicemails count];

  if (v3 < 1)
  {
    v6 = &stru_10028F310;
  }

  else
  {
    v4 = SharedNumberFormatter();
    v5 = [NSNumber numberWithInteger:v3];
    v6 = [v4 stringFromNumber:v5];
  }

  return v6;
}

- (NSString)folderName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"BLOCKED_MESSAGES" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

BOOL __58__PHVoicemailBlockedListViewController_voicemailPredicate__block_invoke(id a1, MPMessage *a2)
{
  v2 = a2;
  v3 = [(MPMessage *)v2 folder]== 4 || [(MPMessage *)v2 folder]== 3;

  return v3;
}

- (void)performTableViewDestructiveActionAtIndexPath:(id)path
{
  pathCopy = path;
  pathCopy2 = path;
  v5 = [NSArray arrayWithObjects:&pathCopy count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __85__PHVoicemailBlockedListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke;
  v6[3] = &unk_1002854D0;
  v6[4] = self;
  [(MPVoicemailTableViewController *)self performDeleteAtIndexPaths:v5 dataSourceActions:v6 completionBlock:0];
}

void __85__PHVoicemailBlockedListViewController_performTableViewDestructiveActionAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 trashMessages:v3];
}

- (id)cellDetailDestructiveActionText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"DELETE" value:&stru_10028F310 table:@"Voicemail"];

  return v3;
}

- (void)willShowVoicemails:(id)voicemails
{
  v4 = [voicemails count] != 0;
  navigationItem = [(PHVoicemailBlockedListViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v4];
}

- (void)deleteAllTapped:(id)tapped
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"DELETE_ALL_ALERT_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v6 = [UIAlertController alertControllerWithTitle:0 message:v5 preferredStyle:0];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"DELETE_ALL" value:&stru_10028F310 table:@"Voicemail"];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __56__PHVoicemailBlockedListViewController_deleteAllTapped___block_invoke;
  v13[3] = &unk_100285468;
  v13[4] = self;
  v9 = [UIAlertAction actionWithTitle:v8 style:2 handler:v13];

  [v6 addAction:v9];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"CLEAR_ALL_CANCEL_BUTTON_TITLE" value:&stru_10028F310 table:@"Voicemail"];
  v12 = [UIAlertAction actionWithTitle:v11 style:1 handler:0];

  [v6 addAction:v12];
  [(PHVoicemailBlockedListViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __56__PHVoicemailBlockedListViewController_deleteAllTapped___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 voicemails];
  v4 = [v2 indexPathsForMessages:v3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __56__PHVoicemailBlockedListViewController_deleteAllTapped___block_invoke_2;
  v5[3] = &unk_1002854D0;
  v5[4] = *(a1 + 32);
  [v2 performDeleteAtIndexPaths:v4 dataSourceActions:v5 completionBlock:0];
}

void __56__PHVoicemailBlockedListViewController_deleteAllTapped___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 voicemailController];
  [v4 trashMessages:v3];
}

@end