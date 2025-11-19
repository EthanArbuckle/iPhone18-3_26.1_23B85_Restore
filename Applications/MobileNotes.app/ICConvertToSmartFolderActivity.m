@interface ICConvertToSmartFolderActivity
- (ICConvertToSmartFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 sender:(id)a6;
- (NSAttributedString)footerAttributedString;
- (UICollectionViewCell)folderCell;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICConvertToSmartFolderActivity

- (ICConvertToSmartFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 sender:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICConvertToSmartFolderActivity;
  v15 = [(ICConvertToSmartFolderActivity *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_folder, a3);
    objc_storeStrong(&v16->_presentingViewController, a4);
    objc_storeStrong(&v16->_presentingBarButtonItem, a5);
    objc_storeStrong(&v16->_sender, a6);
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

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICConvertToSmartFolderActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [ICConvertToSmartFolderDecisionController alloc];
    v7 = [(ICConvertToSmartFolderActivity *)self folder];
    v8 = [(ICConvertToSmartFolderActivity *)self presentingViewController];
    v9 = [(ICConvertToSmartFolderDecisionController *)v6 initWithSourceFolder:v7 presentingViewController:v8];

    v10 = [(ICConvertToSmartFolderActivity *)self presentingViewController];
    v11 = [v10 ic_viewControllerManager];

    v12 = [v11 folderListViewController];
    v13 = [(ICConvertToSmartFolderActivity *)self folderCell];
    [(ICConvertToSmartFolderDecisionController *)v9 setFolderSourceView:v13];

    v14 = [(ICConvertToSmartFolderActivity *)self presentingBarButtonItem];
    [(ICConvertToSmartFolderDecisionController *)v9 setPresentingBarButtonItem:v14];

    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_1000F9518;
    v20 = &unk_100649E68;
    v21 = v12;
    v22 = v11;
    v23 = self;
    v24 = v4;
    v15 = v11;
    v16 = v12;
    [(ICConvertToSmartFolderDecisionController *)v9 performDecisionWithCompletion:&v17];
  }

  [(ICConvertToSmartFolderActivity *)self activityDidFinish:1, v17, v18, v19, v20];
}

- (UICollectionViewCell)folderCell
{
  v3 = [(ICConvertToSmartFolderActivity *)self presentingViewController];
  v4 = [v3 ic_viewControllerManager];

  if ([v4 isPrimaryContentVisible])
  {
    v5 = [v4 folderListViewController];
    v6 = [v5 dataSource];
    v7 = [v6 collectionViewDiffableDataSource];

    v8 = [(ICConvertToSmartFolderActivity *)self folder];
    v9 = [v8 objectID];

    v10 = [v7 indexPathForItemIdentifier:v9];
    v11 = [v5 collectionView];
    v12 = [v11 cellForItemAtIndexPath:v10];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end