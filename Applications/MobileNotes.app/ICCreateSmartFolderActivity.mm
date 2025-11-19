@interface ICCreateSmartFolderActivity
- (ICCreateSmartFolderActivity)initWithTagSelection:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5;
- (NSAttributedString)footerAttributedString;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICCreateSmartFolderActivity

- (ICCreateSmartFolderActivity)initWithTagSelection:(id)a3 presentingViewController:(id)a4 eventReporter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICCreateSmartFolderActivity;
  v12 = [(ICCreateSmartFolderActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tagSelection, a3);
    objc_storeWeak(&v13->_presentingViewController, v10);
    objc_storeStrong(&v13->_eventReporter, a5);
  }

  return v13;
}

- (NSAttributedString)footerAttributedString
{
  v2 = [NSMutableAttributedString alloc];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"Use Smart Folders to automatically organize notes by tags. " value:&stru_100661CF0 table:0];
  v18 = NSForegroundColorAttributeName;
  v5 = +[UIColor secondaryLabelColor];
  v19 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v7 = [v2 initWithString:v4 attributes:v6];

  v8 = [NSAttributedString alloc];
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Learn More…" value:&stru_100661CF0 table:0];
  v16 = NSLinkAttributeName;
  v11 = +[ICAppURLUtilities appURLForShowSmartFoldersHelp];
  v17 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = [v8 initWithString:v10 attributes:v12];

  [v7 appendAttributedString:v13];
  v14 = [v7 copy];

  return v14;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Create Smart Folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICCreateSmartFolderActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [(ICCreateSmartFolderActivity *)self tagSelection];
    v7 = [ICQuery queryForNotesMatchingTagSelection:v6];

    v8 = [(ICCreateSmartFolderActivity *)self tagSelection];
    v9 = [v8 smartFolderTitle];
    v10 = +[ICNoteContext sharedContext];
    v11 = [v10 managedObjectContext];
    v12 = [ICAccount defaultAccountInContext:v11];
    v13 = [ICFolder deduplicatingTitle:v9 account:v12];

    v14 = [ICFolderCreationController alloc];
    v15 = [(ICCreateSmartFolderActivity *)self presentingViewController];
    v16 = [(ICFolderCreationController *)v14 initWithViewController:v15 noteContainer:0 smartFolderQuery:v7 folderTitle:v13 creationApproach:2];
    [(ICCreateSmartFolderActivity *)self setFolderCreationController:v16];

    v17 = [ICFilterSelection alloc];
    v18 = [(ICCreateSmartFolderActivity *)self tagSelection];
    v19 = [v17 initWithFilterTypeSelection:v18];
    v20 = [(ICCreateSmartFolderActivity *)self folderCreationController];
    [v20 setFilterSelection:v19];

    v21 = [(ICCreateSmartFolderActivity *)self folderCreationController];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10010057C;
    v23[3] = &unk_100649E90;
    v23[4] = self;
    v24 = v4;
    [v21 promptToAddFolderAllowingSmartFolder:1 withCompletionHandler:v23];
  }

  else
  {
    [(ICCreateSmartFolderActivity *)self activityDidFinish:0];
    if (v4)
    {
      v22 = [(ICCreateSmartFolderActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v22);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end