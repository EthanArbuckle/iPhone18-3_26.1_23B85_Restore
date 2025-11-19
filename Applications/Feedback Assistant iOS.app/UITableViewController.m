@interface UITableViewController
- (void)closeFeedbackWithItem:(id)a3;
- (void)didTapCloseFeedbackWithItem:(id)a3 atIndexPath:(id)a4;
@end

@implementation UITableViewController

- (void)didTapCloseFeedbackWithItem:(id)a3 atIndexPath:(id)a4
{
  v5 = a3;
  v29 = a4;
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User tapped close feedback cell", buf, 2u);
  }

  v7 = +[NSBundle mainBundle];
  v8 = FBKCommonStrings;
  v9 = [v7 localizedStringForKey:@"CLOSE_FEEDBACK_ALERT_TITLE(ID)" value:&stru_1000E2210 table:FBKCommonStrings];
  v10 = [v5 feedbackIDString];
  v11 = [NSString stringWithFormat:v9, v10];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"CLOSE_FEEDBACK_ALERT_INFORMATIVE_TEXT" value:&stru_1000E2210 table:v8];

  v28 = v11;
  v14 = [UIAlertController alertControllerWithTitle:v11 message:v13 preferredStyle:1];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CLOSE_FEEDBACK_AFFIRMATIVE" value:&stru_1000E2210 table:v8];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100004E4C;
  v36[3] = &unk_1000DE4A8;
  v17 = v5;
  v37 = v17;
  v38 = self;
  v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:v36];
  [v14 addAction:v18];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"CLOSE_FEEDBACK_NEGATIVE" value:&stru_1000E2210 table:v8];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100004F44;
  v33[3] = &unk_1000DE4A8;
  v34 = v17;
  v35 = self;
  v21 = v17;
  v22 = [UIAlertAction actionWithTitle:v20 style:1 handler:v33];
  [v14 addAction:v22];

  v23 = self;
  v24 = [(UITableViewController *)v23 presentedViewController];

  v25 = v23;
  if (v24)
  {
    v25 = [(UITableViewController *)v23 presentedViewController];
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100005034;
  v30[3] = &unk_1000DE4D0;
  v31 = v29;
  v32 = v23;
  v26 = v29;
  [v25 presentViewController:v14 animated:1 completion:v30];
}

- (void)closeFeedbackWithItem:(id)a3
{
  v4 = a3;
  v5 = +[FBKData sharedInstance];
  v10 = v4;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000051A4;
  v8[3] = &unk_1000DE4F8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 closeFeedbackItems:v6 completion:v8];
}

@end