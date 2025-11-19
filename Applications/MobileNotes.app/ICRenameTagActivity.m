@interface ICRenameTagActivity
- (ICRenameTagActivity)initWithPresentingViewController:(id)a3 viewControllerManager:(id)a4 tagObjectID:(id)a5 eventReporter:(id)a6;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICRenameTagActivity

- (ICRenameTagActivity)initWithPresentingViewController:(id)a3 viewControllerManager:(id)a4 tagObjectID:(id)a5 eventReporter:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = ICRenameTagActivity;
  v14 = [(ICRenameTagActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_presentingViewController, v10);
    objc_storeStrong(&v15->_viewControllerManager, a4);
    objc_storeStrong(&v15->_tagObjectID, a5);
    objc_storeStrong(&v15->_eventReporter, a6);
  }

  return v15;
}

- (id)activityTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RENAME_TAG_MENU" value:@"Rename Tag" table:@"Localizable"];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICRenameTagActivity *)self presentingViewController];

  if (v5)
  {
    v6 = [_TtC11MobileNotes32TagCreateOrRenameAlertController alloc];
    v7 = [(ICRenameTagActivity *)self tagObjectID];
    v8 = [(ICRenameTagActivity *)self presentingViewController];
    v9 = [(ICRenameTagActivity *)self eventReporter];
    v10 = [(TagCreateOrRenameAlertController *)v6 initWithTagObjectID:v7 presentingViewController:v8 eventReporter:v9 renameMethod:2];

    v11 = [(TagCreateOrRenameAlertController *)v10 makeAlertController];
    if (v11)
    {
      v12 = [(ICRenameTagActivity *)self presentingViewController];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10012A500;
      v15[3] = &unk_100645BC8;
      v16 = v10;
      v17 = self;
      v18 = v4;
      [v12 presentViewController:v11 animated:1 completion:v15];
    }

    else
    {
      [(ICRenameTagActivity *)self activityDidFinish:0];
      if (v4)
      {
        v14 = [(ICRenameTagActivity *)self activityType];
        (*(v4 + 2))(v4, 0, v14);
      }
    }
  }

  else
  {
    [(ICRenameTagActivity *)self activityDidFinish:0];
    if (v4)
    {
      v13 = [(ICRenameTagActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v13);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end