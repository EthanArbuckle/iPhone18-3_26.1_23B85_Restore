@interface ICSortQueryActivity
- (ICSortQueryActivity)initWithPresentingViewController:(id)a3 noteContainerViewMode:(int64_t)a4 eventReporter:(id)a5;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (id)menuWithCompletion:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICSortQueryActivity

- (ICSortQueryActivity)initWithPresentingViewController:(id)a3 noteContainerViewMode:(int64_t)a4 eventReporter:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ICSortQueryActivity;
  v10 = [(ICSortQueryActivity *)&v13 init];
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
  v3 = [v2 localizedStringForKey:@"Sort By" value:&stru_100661CF0 table:0];

  return v3;
}

- (void)performActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICSortQueryActivity *)self presentingViewController];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = [(ICSortQueryActivity *)self presentingViewController];
    v8 = [v7 presentedViewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10008F254;
    v10[3] = &unk_100645E80;
    v10[4] = self;
    v11 = v4;
    [v8 dismissViewControllerAnimated:1 completion:v10];
  }

  else
  {
    [(ICSortQueryActivity *)self activityDidFinish:0];
    if (v4)
    {
      v9 = [(ICSortQueryActivity *)self activityType];
      (*(v4 + 2))(v4, 0, v9);
    }
  }
}

- (void)activityDidFinish:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICSortQueryActivity;
  [(ICSortQueryActivity *)&v7 activityDidFinish:a3];
  v4 = [(ICSortQueryActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICSortQueryActivity *)self noteContainerViewMode]);
  v6 = [(ICSortQueryActivity *)self activityType];
  [v4 submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:v6 isTimelineView:{+[ICDateHeadersUtilities showsQueryDateHeaders](ICDateHeadersUtilities, "showsQueryDateHeaders")}];
}

- (id)menuWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[ICFolderCustomNoteSortType querySortType];
  v6 = [ICSortMenu alloc];
  v7 = [(ICSortQueryActivity *)self activityTitle];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008F4B0;
  v13[3] = &unk_1006474F8;
  v14 = v5;
  v15 = self;
  v16 = v4;
  v8 = v4;
  v9 = v5;
  v10 = [(ICSortMenu *)v6 initWithTitle:v7 sortType:v9 selectedSortTypeHandler:v13];

  v11 = [(ICSortMenu *)v10 createMenu];

  return v11;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end