@interface ICSortQueryActivity
- (ICSortQueryActivity)initWithPresentingViewController:(id)controller noteContainerViewMode:(int64_t)mode eventReporter:(id)reporter;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (id)menuWithCompletion:(id)completion;
- (void)activityDidFinish:(BOOL)finish;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICSortQueryActivity

- (ICSortQueryActivity)initWithPresentingViewController:(id)controller noteContainerViewMode:(int64_t)mode eventReporter:(id)reporter
{
  controllerCopy = controller;
  reporterCopy = reporter;
  v13.receiver = self;
  v13.super_class = ICSortQueryActivity;
  v10 = [(ICSortQueryActivity *)&v13 init];
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
  v3 = [v2 localizedStringForKey:@"Sort By" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  presentingViewController = [(ICSortQueryActivity *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    presentingViewController2 = [(ICSortQueryActivity *)self presentingViewController];
    presentedViewController2 = [presentingViewController2 presentedViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008F254;
    v10[3] = &unk_100645E80;
    v10[4] = self;
    v11 = completionCopy;
    [presentedViewController2 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    [(ICSortQueryActivity *)self activityDidFinish:0];
    if (completionCopy)
    {
      activityType = [(ICSortQueryActivity *)self activityType];
      (*(completionCopy + 2))(completionCopy, 0, activityType);
    }
  }
}

- (void)activityDidFinish:(BOOL)finish
{
  v7.receiver = self;
  v7.super_class = ICSortQueryActivity;
  [(ICSortQueryActivity *)&v7 activityDidFinish:finish];
  eventReporter = [(ICSortQueryActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICSortQueryActivity *)self noteContainerViewMode]);
  activityType = [(ICSortQueryActivity *)self activityType];
  [eventReporter submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:activityType isTimelineView:{+[ICDateHeadersUtilities showsQueryDateHeaders](ICDateHeadersUtilities, "showsQueryDateHeaders")}];
}

- (id)menuWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[ICFolderCustomNoteSortType querySortType];
  v6 = [ICSortMenu alloc];
  activityTitle = [(ICSortQueryActivity *)self activityTitle];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008F4B0;
  v13[3] = &unk_1006474F8;
  v14 = v5;
  selfCopy = self;
  v16 = completionCopy;
  v8 = completionCopy;
  v9 = v5;
  v10 = [(ICSortMenu *)v6 initWithTitle:activityTitle sortType:v9 selectedSortTypeHandler:v13];

  createMenu = [(ICSortMenu *)v10 createMenu];

  return createMenu;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end