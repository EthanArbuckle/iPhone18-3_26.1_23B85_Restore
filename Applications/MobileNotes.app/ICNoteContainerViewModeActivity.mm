@interface ICNoteContainerViewModeActivity
- (ICNoteContainerViewModeActivity)initWithPresentingViewController:(id)a3 viewControllerManager:(id)a4;
- (UIViewController)presentingViewController;
- (id)activityImage;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICNoteContainerViewModeActivity

- (ICNoteContainerViewModeActivity)initWithPresentingViewController:(id)a3 viewControllerManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ICNoteContainerViewModeActivity;
  v8 = [(ICNoteContainerViewModeActivity *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presentingViewController, v6);
    objc_storeStrong(&v9->_viewControllerManager, a4);
    v9->_targetNoteViewMode = [v7 noteContainerViewMode] != 1;
  }

  return v9;
}

- (id)activityImage
{
  v2 = [(ICNoteContainerViewModeActivity *)self targetNoteViewMode];
  switch(v2)
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
  v2 = [(ICNoteContainerViewModeActivity *)self targetNoteViewMode];
  if (v2 == -1)
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

  if (v2 != 1)
  {
    if (v2)
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

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICNoteContainerViewModeActivity *)self presentingViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000827D0;
  v7[3] = &unk_100645E80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 dismissViewControllerAnimated:1 completion:v7];
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end