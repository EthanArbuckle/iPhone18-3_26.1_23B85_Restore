@interface ICQueryDateHeadersActivity
- (ICQueryDateHeadersActivity)initWithPresentingViewController:(id)controller noteContainerViewMode:(int64_t)mode eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)actionForDateHeadersType:(int64_t)type completion:(id)completion;
- (id)activityTitle;
- (id)menuWithCompletion:(id)completion;
- (void)activityDidFinish:(BOOL)finish;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICQueryDateHeadersActivity

- (ICQueryDateHeadersActivity)initWithPresentingViewController:(id)controller noteContainerViewMode:(int64_t)mode eventReporter:(id)reporter
{
  controllerCopy = controller;
  reporterCopy = reporter;
  v13.receiver = self;
  v13.super_class = ICQueryDateHeadersActivity;
  v10 = [(ICQueryDateHeadersActivity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_presentingViewController, controllerCopy);
    v11->_noteContainerViewMode = mode;
    objc_storeStrong(&v11->_eventReporter, reporter);
  }

  return v11;
}

- (id)activityTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Group By Date" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICQueryDateHeadersActivity *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    presentingViewController2 = [(ICQueryDateHeadersActivity *)self presentingViewController];
    presentedViewController2 = [presentingViewController2 presentedViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DC234;
    v10[3] = &unk_100645E80;
    v10[4] = self;
    v11 = completionCopy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    [(ICQueryDateHeadersActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICQueryDateHeadersActivity *)self activityType];
      (*(completionCopy + 2))(completionCopy, 0, activityType);
    }
  }
}

- (void)activityDidFinish:(BOOL)finish
{
  v7.receiver = self;
  v7.super_class = ICQueryDateHeadersActivity;
  [(ICQueryDateHeadersActivity *)&v7 activityDidFinish:finish];
  eventReporter = [(ICQueryDateHeadersActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICQueryDateHeadersActivity *)self noteContainerViewMode]);
  activityType = [(ICQueryDateHeadersActivity *)self activityType];
  [eventReporter submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:activityType isTimelineView:{+[ICDateHeadersUtilities showsQueryDateHeaders](ICDateHeadersUtilities, "showsQueryDateHeaders")}];
}

- (id)menuWithCompletion:(id)completion
{
  completionCopy = completion;
  activityTitle = [(ICQueryDateHeadersActivity *)self activityTitle];
  activityImage = [(ICQueryDateHeadersActivity *)self activityImage];
  v7 = [(ICQueryDateHeadersActivity *)self actionForDateHeadersType:0 completion:completionCopy];
  v8 = [(ICQueryDateHeadersActivity *)self actionForDateHeadersType:2 completion:completionCopy, v7];
  v14[1] = v8;
  v9 = [(ICQueryDateHeadersActivity *)self actionForDateHeadersType:1 completion:completionCopy];

  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];
  v11 = [UIMenu menuWithTitle:activityTitle image:activityImage identifier:0 options:0 children:v10];

  v12 = +[ICDateHeadersUtilities actionItemTitleWithDateHeadersType:](ICDateHeadersUtilities, "actionItemTitleWithDateHeadersType:", +[ICDateHeadersUtilities queryDateHeadersType]);
  [v11 setSubtitle:v12];

  return v11;
}

- (id)actionForDateHeadersType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = [ICDateHeadersUtilities actionItemTitleWithDateHeadersType:type];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000DC60C;
  v11[3] = &unk_100649410;
  v12 = completionCopy;
  typeCopy = type;
  v11[4] = self;
  v8 = completionCopy;
  v9 = [UIAction ic_actionWithTitle:v7 handler:v11];
  [v9 setState:{+[ICDateHeadersUtilities queryDateHeadersType](ICDateHeadersUtilities, "queryDateHeadersType") == type}];

  return v9;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end