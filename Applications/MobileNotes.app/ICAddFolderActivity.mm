@interface ICAddFolderActivity
- (ICAddFolderActivity)initWithPresentingViewController:(id)controller presentingBarButtonItem:(id)item parentFolder:(id)folder eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICAddFolderActivity

- (ICAddFolderActivity)initWithPresentingViewController:(id)controller presentingBarButtonItem:(id)item parentFolder:(id)folder eventReporter:(id)reporter
{
  controllerCopy = controller;
  itemCopy = item;
  folderCopy = folder;
  reporterCopy = reporter;
  v17.receiver = self;
  v17.super_class = ICAddFolderActivity;
  v14 = [(ICAddFolderActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_presentingViewController, controllerCopy);
    objc_storeStrong(&v15->_presentingBarButtonItem, item);
    objc_storeStrong(&v15->_eventReporter, reporter);
    objc_storeStrong(&v15->_parentFolder, folder);
  }

  return v15;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Add Folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICAddFolderActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [ICFolderCreationController alloc];
    presentingViewController2 = [(ICAddFolderActivity *)self presentingViewController];
    parentFolder = [(ICAddFolderActivity *)self parentFolder];
    v9 = [(ICFolderCreationController *)v6 initWithViewController:presentingViewController2 noteContainer:parentFolder creationApproach:1];
    [(ICAddFolderActivity *)self setFolderCreationController:v9];

    folderCreationController = [(ICAddFolderActivity *)self folderCreationController];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000F9B30;
    v12[3] = &unk_100649E90;
    v12[4] = self;
    v13 = completionCopy;
    [folderCreationController promptToAddFolderAllowingSmartFolder:1 withCompletionHandler:v12];
  }

  else
  {
    [(ICAddFolderActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICAddFolderActivity *)self activityType];
      (*(completionCopy + 2))(completionCopy, 0, activityType);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end