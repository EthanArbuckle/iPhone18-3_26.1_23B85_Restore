@interface ICDeleteTagActivity
- (ICDeleteTagActivity)initWithPresentingViewController:(id)a3 tagSelection:(id)a4 eventReporter:(id)a5;
- (UIViewController)presentingViewController;
- (id)actionWithCompletion:(id)a3;
- (id)activityTitle;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICDeleteTagActivity

- (ICDeleteTagActivity)initWithPresentingViewController:(id)a3 tagSelection:(id)a4 eventReporter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ICDeleteTagActivity;
  v11 = [(ICDeleteTagActivity *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_presentingViewController, v8);
    objc_storeStrong(&v12->_tagSelection, a4);
    objc_storeStrong(&v12->_eventReporter, a5);
  }

  return v12;
}

- (id)activityTitle
{
  v2 = [(ICDeleteTagActivity *)self tagSelection];
  v3 = [v2 objectIDs];
  v4 = [v3 count];

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

- (id)actionWithCompletion:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICDeleteTagActivity;
  v3 = [(ICDeleteTagActivity *)&v5 actionWithCompletion:a3];
  [v3 setIc_destructive:1];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICDeleteTagActivity *)self presentingViewController];

  if (v5)
  {
    v24 = v4;
    v6 = [(ICDeleteTagActivity *)self tagSelection];
    v7 = [v6 objectIDs];
    v8 = [v7 allObjects];

    v25 = v8;
    v9 = [v8 ic_compactMap:&stru_100647AE0];
    v10 = [_TtC11MobileNotes26TagDeletionAlertController alloc];
    v11 = [(ICDeleteTagActivity *)self activityViewController];
    v12 = [v11 view];
    v13 = [v12 ic_viewControllerManager];
    v14 = [(ICDeleteTagActivity *)self presentingViewController];
    v15 = [v14 view];
    v16 = [v15 window];
    v17 = [(ICDeleteTagActivity *)self eventReporter];
    v18 = [(TagDeletionAlertController *)v10 initWithViewControllerManager:v13 window:v16 eventReporter:v17 deletionMethod:2];

    v19 = v9;
    v20 = [(TagDeletionAlertController *)v18 makeDeleteTagAlertControllerWithTags:v9 sendNotification:1];
    if (v20)
    {
      v21 = [(ICDeleteTagActivity *)self presentingViewController];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100099E70;
      v26[3] = &unk_100645E80;
      v26[4] = self;
      v4 = v24;
      v27 = v24;
      [v21 presentViewController:v20 animated:1 completion:v26];
    }

    else
    {
      [(ICDeleteTagActivity *)self activityDidFinish:0];
      v4 = v24;
      if (v24)
      {
        v23 = [(ICDeleteTagActivity *)self activityType];
        (v24)[2](v24, 0, v23);
      }
    }
  }

  else
  {
    [(ICDeleteTagActivity *)self activityDidFinish:0];
    if (v4)
    {
      v22 = [(ICDeleteTagActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v22);
    }
  }
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end