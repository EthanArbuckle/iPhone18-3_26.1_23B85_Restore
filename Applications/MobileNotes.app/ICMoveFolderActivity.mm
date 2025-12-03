@interface ICMoveFolderActivity
+ (BOOL)canShowMoveActionForFolder:(id)folder viewControllerManager:(id)manager;
- (ICMoveFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICMoveFolderActivity

- (ICMoveFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller
{
  folderCopy = folder;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = ICMoveFolderActivity;
  v9 = [(ICMoveFolderActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, folder);
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
  }

  return v10;
}

+ (BOOL)canShowMoveActionForFolder:(id)folder viewControllerManager:(id)manager
{
  folderCopy = folder;
  managerCopy = manager;
  if ([folderCopy isMovable])
  {
    hasMultipleModernAccounts = [managerCopy hasMultipleModernAccounts];
    v8 = [folderCopy isSmartFolder] ^ 1 | hasMultipleModernAccounts;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Move This Folder" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICMoveFolderActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [ICMoveDecisionController alloc];
    folder = [(ICMoveFolderActivity *)self folder];
    v14 = folder;
    v8 = [NSArray arrayWithObjects:&v14 count:1];
    presentingViewController2 = [(ICMoveFolderActivity *)self presentingViewController];
    v10 = [(ICMoveDecisionController *)v6 initWithSourceObjects:v8 presentingViewController:presentingViewController2];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000ACE28;
    v12[3] = &unk_100648068;
    v12[4] = self;
    v13 = completionCopy;
    [(ICMoveDecisionController *)v10 performDecisionWithCompletion:v12];
  }

  else
  {
    [(ICMoveFolderActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICMoveFolderActivity *)self activityType];
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