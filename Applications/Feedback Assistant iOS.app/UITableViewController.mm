@interface UITableViewController
- (void)closeFeedbackWithItem:(id)item;
- (void)didTapCloseFeedbackWithItem:(id)item atIndexPath:(id)path;
@end

@implementation UITableViewController

- (void)didTapCloseFeedbackWithItem:(id)item atIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  v6 = +[FBALog appHandle];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "User tapped close feedback cell", buf, 2u);
  }

  v7 = +[NSBundle mainBundle];
  v8 = FBKCommonStrings;
  v9 = [v7 localizedStringForKey:@"CLOSE_FEEDBACK_ALERT_TITLE(ID)" value:&stru_1000E2210 table:FBKCommonStrings];
  feedbackIDString = [itemCopy feedbackIDString];
  v11 = [NSString stringWithFormat:v9, feedbackIDString];

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
  v17 = itemCopy;
  v37 = v17;
  selfCopy = self;
  v18 = [UIAlertAction actionWithTitle:v16 style:2 handler:v36];
  [v14 addAction:v18];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"CLOSE_FEEDBACK_NEGATIVE" value:&stru_1000E2210 table:v8];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100004F44;
  v33[3] = &unk_1000DE4A8;
  v34 = v17;
  selfCopy2 = self;
  v21 = v17;
  v22 = [UIAlertAction actionWithTitle:v20 style:1 handler:v33];
  [v14 addAction:v22];

  selfCopy3 = self;
  presentedViewController = [(UITableViewController *)selfCopy3 presentedViewController];

  presentedViewController2 = selfCopy3;
  if (presentedViewController)
  {
    presentedViewController2 = [(UITableViewController *)selfCopy3 presentedViewController];
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100005034;
  v30[3] = &unk_1000DE4D0;
  v31 = pathCopy;
  v32 = selfCopy3;
  v26 = pathCopy;
  [presentedViewController2 presentViewController:v14 animated:1 completion:v30];
}

- (void)closeFeedbackWithItem:(id)item
{
  itemCopy = item;
  v5 = +[FBKData sharedInstance];
  v10 = itemCopy;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000051A4;
  v8[3] = &unk_1000DE4F8;
  v8[4] = self;
  v9 = itemCopy;
  v7 = itemCopy;
  [v5 closeFeedbackItems:v6 completion:v8];
}

@end