@interface ICConvertToSmartFolderActivity
- (ICConvertToSmartFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item sender:(id)sender;
- (NSAttributedString)footerAttributedString;
- (UICollectionViewCell)folderCell;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICConvertToSmartFolderActivity

- (ICConvertToSmartFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item sender:(id)sender
{
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  senderCopy = sender;
  v18.receiver = self;
  v18.super_class = ICConvertToSmartFolderActivity;
  v15 = [(ICConvertToSmartFolderActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_folder, folder);
    objc_storeStrong(&v16->_presentingViewController, controller);
    objc_storeStrong(&v16->_presentingBarButtonItem, item);
    objc_storeStrong(&v16->_sender, sender);
  }

  return v16;
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
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"CONVERT_TO_SMART_FOLDER_ACTIVITY" value:@"Convert to Smart Folder" table:@"Localizable"];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICConvertToSmartFolderActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [ICConvertToSmartFolderDecisionController alloc];
    folder = [(ICConvertToSmartFolderActivity *)self folder];
    presentingViewController2 = [(ICConvertToSmartFolderActivity *)self presentingViewController];
    v9 = [(ICConvertToSmartFolderDecisionController *)v6 initWithSourceFolder:folder presentingViewController:presentingViewController2];

    presentingViewController3 = [(ICConvertToSmartFolderActivity *)self presentingViewController];
    ic_viewControllerManager = [presentingViewController3 ic_viewControllerManager];

    folderListViewController = [ic_viewControllerManager folderListViewController];
    folderCell = [(ICConvertToSmartFolderActivity *)self folderCell];
    [(ICConvertToSmartFolderDecisionController *)v9 setFolderSourceView:folderCell];

    presentingBarButtonItem = [(ICConvertToSmartFolderActivity *)self presentingBarButtonItem];
    [(ICConvertToSmartFolderDecisionController *)v9 setPresentingBarButtonItem:presentingBarButtonItem];

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000F9518;
    v20 = &unk_100649E68;
    v21 = folderListViewController;
    v22 = ic_viewControllerManager;
    selfCopy = self;
    v24 = completionCopy;
    v15 = ic_viewControllerManager;
    v16 = folderListViewController;
    [(ICConvertToSmartFolderDecisionController *)v9 performDecisionWithCompletion:&v17];
  }

  [(ICConvertToSmartFolderActivity *)self activityDidFinish:1, v17, v18, v19, v20];
}

- (UICollectionViewCell)folderCell
{
  presentingViewController = [(ICConvertToSmartFolderActivity *)self presentingViewController];
  ic_viewControllerManager = [presentingViewController ic_viewControllerManager];

  if ([ic_viewControllerManager isPrimaryContentVisible])
  {
    folderListViewController = [ic_viewControllerManager folderListViewController];
    dataSource = [folderListViewController dataSource];
    collectionViewDiffableDataSource = [dataSource collectionViewDiffableDataSource];

    folder = [(ICConvertToSmartFolderActivity *)self folder];
    objectID = [folder objectID];

    v10 = [collectionViewDiffableDataSource indexPathForItemIdentifier:objectID];
    collectionView = [folderListViewController collectionView];
    v12 = [collectionView cellForItemAtIndexPath:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end