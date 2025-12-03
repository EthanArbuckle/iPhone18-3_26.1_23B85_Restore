@interface ICRenameTagActivity
- (ICRenameTagActivity)initWithPresentingViewController:(id)controller viewControllerManager:(id)manager tagObjectID:(id)d eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICRenameTagActivity

- (ICRenameTagActivity)initWithPresentingViewController:(id)controller viewControllerManager:(id)manager tagObjectID:(id)d eventReporter:(id)reporter
{
  controllerCopy = controller;
  managerCopy = manager;
  dCopy = d;
  reporterCopy = reporter;
  v17.receiver = self;
  v17.super_class = ICRenameTagActivity;
  v14 = [(ICRenameTagActivity *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_presentingViewController, controllerCopy);
    objc_storeStrong(&v15->_viewControllerManager, manager);
    objc_storeStrong(&v15->_tagObjectID, d);
    objc_storeStrong(&v15->_eventReporter, reporter);
  }

  return v15;
}

- (id)activityTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RENAME_TAG_MENU" value:@"Rename Tag" table:@"Localizable"];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICRenameTagActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v6 = [_TtC11MobileNotes32TagCreateOrRenameAlertController alloc];
    tagObjectID = [(ICRenameTagActivity *)self tagObjectID];
    presentingViewController2 = [(ICRenameTagActivity *)self presentingViewController];
    eventReporter = [(ICRenameTagActivity *)self eventReporter];
    v10 = [(TagCreateOrRenameAlertController *)v6 initWithTagObjectID:tagObjectID presentingViewController:presentingViewController2 eventReporter:eventReporter renameMethod:2];

    makeAlertController = [(TagCreateOrRenameAlertController *)v10 makeAlertController];
    if (makeAlertController)
    {
      presentingViewController3 = [(ICRenameTagActivity *)self presentingViewController];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10012A500;
      v15[3] = &unk_100645BC8;
      v16 = v10;
      selfCopy = self;
      v18 = completionCopy;
      [presentingViewController3 presentViewController:makeAlertController animated:1 completion:v15];
    }

    else
    {
      [(ICRenameTagActivity *)self activityDidFinish:0];
      if (completionCopy)
      {
        activityType = [(ICRenameTagActivity *)self activityType];
        (*(completionCopy + 2))(completionCopy, 0, activityType);
      }
    }
  }

  else
  {
    [(ICRenameTagActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType2 = [(ICRenameTagActivity *)self activityType];
      (*(completionCopy + 2))(completionCopy, 0, activityType2);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end