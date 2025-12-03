@interface ICDeleteFolderActivity
- (ICDeleteFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller sender:(id)sender;
- (UIViewController)presentingViewController;
- (id)actionWithCompletion:(id)completion;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICDeleteFolderActivity

- (ICDeleteFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller sender:(id)sender
{
  folderCopy = folder;
  controllerCopy = controller;
  senderCopy = sender;
  v15.receiver = self;
  v15.super_class = ICDeleteFolderActivity;
  v12 = [(ICDeleteFolderActivity *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_folder, folder);
    objc_storeWeak(&v13->_presentingViewController, controllerCopy);
    objc_storeStrong(&v13->_sender, sender);
  }

  return v13;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Delete" value:&stru_100661CF0 table:0];

  return v3;
}

- (id)actionWithCompletion:(id)completion
{
  v5.receiver = self;
  v5.super_class = ICDeleteFolderActivity;
  v3 = [(ICDeleteFolderActivity *)&v5 actionWithCompletion:completion];
  [v3 setIc_destructive:1];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICDeleteFolderActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [ICDeleteDecisionController alloc];
    folder = [(ICDeleteFolderActivity *)self folder];
    v20 = folder;
    v8 = [NSArray arrayWithObjects:&v20 count:1];
    presentingViewController2 = [(ICDeleteFolderActivity *)self presentingViewController];
    view = [presentingViewController2 view];
    window = [view window];
    sender = [(ICDeleteFolderActivity *)self sender];
    v13 = [(ICDeleteDecisionController *)v6 initWithSourceObjects:v8 window:window sender:sender eventReporter:0];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000F01C8;
    v17 = &unk_100649A80;
    selfCopy = self;
    v19 = completionCopy;
    [(ICDeleteDecisionController *)v13 performDecisionWithCompletion:&v14];
  }

  [(ICDeleteFolderActivity *)self activityDidFinish:1, v14, v15, v16, v17];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end