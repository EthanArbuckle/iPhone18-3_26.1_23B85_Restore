@interface ICDeleteTagActivity
- (ICDeleteTagActivity)initWithPresentingViewController:(id)controller tagSelection:(id)selection eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)actionWithCompletion:(id)completion;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICDeleteTagActivity

- (ICDeleteTagActivity)initWithPresentingViewController:(id)controller tagSelection:(id)selection eventReporter:(id)reporter
{
  controllerCopy = controller;
  selectionCopy = selection;
  reporterCopy = reporter;
  v14.receiver = self;
  v14.super_class = ICDeleteTagActivity;
  v11 = [(ICDeleteTagActivity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_presentingViewController, controllerCopy);
    objc_storeStrong(&v12->_tagSelection, selection);
    objc_storeStrong(&v12->_eventReporter, reporter);
  }

  return v12;
}

- (id)activityTitle
{
  tagSelection = [(ICDeleteTagActivity *)self tagSelection];
  objectIDs = [tagSelection objectIDs];
  v4 = [objectIDs count];

  if (v4)
  {
    v5 = +[NSBundle mainBundle];
    if (v4 == 1)
    {
      v4 = [v5 localizedStringForKey:@"Delete Tag" value:&stru_100661CF0 table:0];
    }

    else
    {
      v6 = [v5 localizedStringForKey:@"DELETE_%lu_TAGS" value:&stru_100661CF0 table:0];
      v4 = [NSString localizedStringWithFormat:v6, v4];
    }
  }

  return v4;
}

- (id)actionWithCompletion:(id)completion
{
  v5.receiver = self;
  v5.super_class = ICDeleteTagActivity;
  v3 = [(ICDeleteTagActivity *)&v5 actionWithCompletion:completion];
  [v3 setIc_destructive:1];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICDeleteTagActivity *)self presentingViewController];

  if (presentingViewController)
  {
    v24 = completionCopy;
    tagSelection = [(ICDeleteTagActivity *)self tagSelection];
    objectIDs = [tagSelection objectIDs];
    allObjects = [objectIDs allObjects];

    v25 = allObjects;
    v9 = [allObjects ic_compactMap:&stru_100647AE0];
    v10 = [_TtC11MobileNotes26TagDeletionAlertController alloc];
    activityViewController = [(ICDeleteTagActivity *)self activityViewController];
    view = [activityViewController view];
    ic_viewControllerManager = [view ic_viewControllerManager];
    presentingViewController2 = [(ICDeleteTagActivity *)self presentingViewController];
    view2 = [presentingViewController2 view];
    window = [view2 window];
    eventReporter = [(ICDeleteTagActivity *)self eventReporter];
    v18 = [(TagDeletionAlertController *)v10 initWithViewControllerManager:ic_viewControllerManager window:window eventReporter:eventReporter deletionMethod:2];

    v19 = v9;
    v20 = [(TagDeletionAlertController *)v18 makeDeleteTagAlertControllerWithTags:v9 sendNotification:1];
    if (v20)
    {
      presentingViewController3 = [(ICDeleteTagActivity *)self presentingViewController];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100099E70;
      v26[3] = &unk_100645E80;
      v26[4] = self;
      completionCopy = v24;
      v27 = v24;
      [presentingViewController3 presentViewController:v20 animated:1 completion:v26];
    }

    else
    {
      [(ICDeleteTagActivity *)self activityDidFinish:0];
      completionCopy = v24;
      if (v24)
      {
        activityType = [(ICDeleteTagActivity *)self activityType];
        (v24)[2](v24, 0, activityType);
      }
    }
  }

  else
  {
    [(ICDeleteTagActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType2 = [(ICDeleteTagActivity *)self activityType];
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