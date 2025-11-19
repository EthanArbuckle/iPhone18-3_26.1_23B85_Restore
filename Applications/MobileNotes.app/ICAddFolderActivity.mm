@interface ICAddFolderActivity
- (ICAddFolderActivity)initWithPresentingViewController:(id)a3 presentingBarButtonItem:(id)a4 parentFolder:(id)a5 eventReporter:(id)a6;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICAddFolderActivity

- (ICAddFolderActivity)initWithPresentingViewController:(id)a3 presentingBarButtonItem:(id)a4 parentFolder:(id)a5 eventReporter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ICAddFolderActivity;
  v14 = [(ICAddFolderActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_presentingViewController, v10);
    objc_storeStrong(&v15->_presentingBarButtonItem, a4);
    objc_storeStrong(&v15->_eventReporter, a6);
    objc_storeStrong(&v15->_parentFolder, a5);
  }

  return v15;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Add Folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICAddFolderActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [ICFolderCreationController alloc];
    v7 = [(ICAddFolderActivity *)self presentingViewController];
    v8 = [(ICAddFolderActivity *)self parentFolder];
    v9 = [(ICFolderCreationController *)v6 initWithViewController:v7 noteContainer:v8 creationApproach:1];
    [(ICAddFolderActivity *)self setFolderCreationController:v9];

    v10 = [(ICAddFolderActivity *)self folderCreationController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F9B30;
    v12[3] = &unk_100649E90;
    v12[4] = self;
    v13 = v4;
    [v10 promptToAddFolderAllowingSmartFolder:1 withCompletionHandler:v12];
  }

  else
  {
    [(ICAddFolderActivity *)self activityDidFinish:0];
    if (v4)
    {
      v11 = [(ICAddFolderActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v11);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end