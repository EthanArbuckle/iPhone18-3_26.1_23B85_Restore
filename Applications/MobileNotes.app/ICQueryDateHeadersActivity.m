@interface ICQueryDateHeadersActivity
- (ICQueryDateHeadersActivity)initWithPresentingViewController:(id)a3 noteContainerViewMode:(int64_t)a4 eventReporter:(id)a5;
- (UIViewController)presentingViewController;
- (id)actionForDateHeadersType:(int64_t)a3 completion:(id)a4;
- (id)activityTitle;
- (id)menuWithCompletion:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICQueryDateHeadersActivity

- (ICQueryDateHeadersActivity)initWithPresentingViewController:(id)a3 noteContainerViewMode:(int64_t)a4 eventReporter:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ICQueryDateHeadersActivity;
  v10 = [(ICQueryDateHeadersActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_presentingViewController, v8);
    v11->_noteContainerViewMode = a4;
    objc_storeStrong(&v11->_eventReporter, a5);
  }

  return v11;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Group By Date" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICQueryDateHeadersActivity *)self presentingViewController];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = [(ICQueryDateHeadersActivity *)self presentingViewController];
    v8 = [v7 presentedViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DC234;
    v10[3] = &unk_100645E80;
    v10[4] = self;
    v11 = v4;
    [v8 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    [(ICQueryDateHeadersActivity *)self activityDidFinish:0];
    if (v4)
    {
      v9 = [(ICQueryDateHeadersActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v9);
    }
  }
}

- (void)activityDidFinish:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICQueryDateHeadersActivity;
  [(ICQueryDateHeadersActivity *)&v7 activityDidFinish:a3];
  v4 = [(ICQueryDateHeadersActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICQueryDateHeadersActivity *)self noteContainerViewMode]);
  v6 = [(ICQueryDateHeadersActivity *)self activityType];
  [v4 submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:v6 isTimelineView:{+[ICDateHeadersUtilities showsQueryDateHeaders](ICDateHeadersUtilities, "showsQueryDateHeaders")}];
}

- (id)menuWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICQueryDateHeadersActivity *)self activityTitle];
  v6 = [(ICQueryDateHeadersActivity *)self activityImage];
  v7 = [(ICQueryDateHeadersActivity *)self actionForDateHeadersType:0 completion:v4];
  v8 = [(ICQueryDateHeadersActivity *)self actionForDateHeadersType:2 completion:v4, v7];
  v14[1] = v8;
  v9 = [(ICQueryDateHeadersActivity *)self actionForDateHeadersType:1 completion:v4];

  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];
  v11 = [UIMenu menuWithTitle:v5 image:v6 identifier:0 options:0 children:v10];

  v12 = +[ICDateHeadersUtilities actionItemTitleWithDateHeadersType:](ICDateHeadersUtilities, "actionItemTitleWithDateHeadersType:", +[ICDateHeadersUtilities queryDateHeadersType]);
  [v11 setSubtitle:v12];

  return v11;
}

- (id)actionForDateHeadersType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [ICDateHeadersUtilities actionItemTitleWithDateHeadersType:a3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DC60C;
  v11[3] = &unk_100649410;
  v12 = v6;
  v13 = a3;
  v11[4] = self;
  v8 = v6;
  v9 = [UIAction ic_actionWithTitle:v7 handler:v11];
  [v9 setState:{+[ICDateHeadersUtilities queryDateHeadersType](ICDateHeadersUtilities, "queryDateHeadersType") == a3}];

  return v9;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end