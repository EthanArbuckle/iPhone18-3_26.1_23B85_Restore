@interface ICSortFolderActivity
- (ICSortFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 eventReporter:(id)a6 noteContainerViewMode:(int64_t)a7;
- (ICSortFolderActivity)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 eventReporter:(id)a6 noteContainerViewMode:(int64_t)a7;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (id)menuWithCompletion:(id)a3;
- (void)activityDidFinish:(BOOL)a3;
- (void)performActivityWithCompletion:(id)a3;
@end

@implementation ICSortFolderActivity

- (ICSortFolderActivity)initWithFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 eventReporter:(id)a6 noteContainerViewMode:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = ICSortFolderActivity;
  v17 = [(ICSortFolderActivity *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_folder, a3);
    objc_storeWeak(&v18->_presentingViewController, v14);
    objc_storeStrong(&v18->_presentingBarButtonItem, a5);
    objc_storeStrong(&v18->_eventReporter, a6);
    v18->_noteContainerViewMode = a7;
  }

  return v18;
}

- (ICSortFolderActivity)initWithVirtualSmartFolder:(id)a3 presentingViewController:(id)a4 presentingBarButtonItem:(id)a5 eventReporter:(id)a6 noteContainerViewMode:(int64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = ICSortFolderActivity;
  v17 = [(ICSortFolderActivity *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_virtualSmartFolder, a3);
    objc_storeWeak(&v18->_presentingViewController, v14);
    objc_storeStrong(&v18->_presentingBarButtonItem, a5);
    objc_storeStrong(&v18->_eventReporter, a6);
    v18->_noteContainerViewMode = a7;
  }

  return v18;
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
  v5 = [(ICSortFolderActivity *)self presentingViewController];
  v6 = [v5 presentedViewController];

  if (v6)
  {
    v7 = [(ICSortFolderActivity *)self presentingViewController];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1000A8C40;
    v12 = &unk_100647900;
    v13 = self;
    v14 = v4;
    [v7 dismissViewControllerAnimated:1 completion:&v9];
  }

  else if (v4)
  {
    v8 = [(ICSortFolderActivity *)self activityType];
    (*(v4 + 2))(v4, 1, v8);
  }

  [(ICSortFolderActivity *)self activityDidFinish:1, v9, v10, v11, v12];
}

- (void)activityDidFinish:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ICSortFolderActivity;
  [(ICSortFolderActivity *)&v8 activityDidFinish:a3];
  v4 = [(ICSortFolderActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICSortFolderActivity *)self noteContainerViewMode]);
  v6 = [(ICSortFolderActivity *)self activityType];
  v7 = [(ICSortFolderActivity *)self folder];
  [v4 submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:v6 isTimelineView:{objc_msgSend(v7, "isShowingDateHeaders")}];
}

- (id)menuWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICSortFolderActivity *)self folder];
  if (v5)
  {
    v6 = [(ICSortFolderActivity *)self folder];
    [v6 customNoteSortType];
  }

  else
  {
    v6 = [(ICSortFolderActivity *)self virtualSmartFolder];
    [v6 noteSortType];
  }
  v7 = ;

  v8 = [ICSortMenu alloc];
  v9 = [(ICSortFolderActivity *)self activityTitle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A8ED8;
  v15[3] = &unk_1006474F8;
  v16 = v7;
  v17 = self;
  v18 = v4;
  v10 = v4;
  v11 = v7;
  v12 = [(ICSortMenu *)v8 initWithTitle:v9 sortType:v11 selectedSortTypeHandler:v15];

  v13 = [(ICSortMenu *)v12 createMenu];

  return v13;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end