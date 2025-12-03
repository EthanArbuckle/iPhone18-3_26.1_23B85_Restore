@interface ICNoteContainerViewModeActivity
- (ICNoteContainerViewModeActivity)initWithPresentingViewController:(id)controller viewControllerManager:(id)manager;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICNoteContainerViewModeActivity

- (ICNoteContainerViewModeActivity)initWithPresentingViewController:(id)controller viewControllerManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = ICNoteContainerViewModeActivity;
  v8 = [(ICNoteContainerViewModeActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, controllerCopy);
    objc_storeStrong(&v9->_viewControllerManager, manager);
    v9->_targetNoteViewMode = [managerCopy noteContainerViewMode] != 1;
  }

  return v9;
}

- (id)activityImage
{
  targetNoteViewMode = [(ICNoteContainerViewModeActivity *)self targetNoteViewMode];
  switch(targetNoteViewMode)
  {
    case -1:
      v4 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_1004D9E24(v4);
      }

      goto LABEL_8;
    case 0:
LABEL_8:
      v3 = @"list.bullet";
      goto LABEL_9;
    case 1:
      v3 = @"square.grid.2x2";
LABEL_9:
      v5 = [UIImage systemImageNamed:v3];
      goto LABEL_11;
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (id)activityTitle
{
  targetNoteViewMode = [(ICNoteContainerViewModeActivity *)self targetNoteViewMode];
  if (targetNoteViewMode == -1)
  {
    v7 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1004D9E24(v7);
    }

LABEL_9:
    v4 = +[NSBundle mainBundle];
    v5 = v4;
    v6 = @"View as List";
    goto LABEL_10;
  }

  if (targetNoteViewMode != 1)
  {
    if (targetNoteViewMode)
    {
      v3 = 0;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v4 = +[NSBundle mainBundle];
  v5 = v4;
  v6 = @"View as Gallery";
LABEL_10:
  v3 = [v4 localizedStringForKey:v6 value:&stru_100661CF0 table:0];

LABEL_11:

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICNoteContainerViewModeActivity *)self presentingViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000827D0;
  v7[3] = &unk_100645E80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [presentingViewController dismissViewControllerAnimated:1 completion:v7];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end