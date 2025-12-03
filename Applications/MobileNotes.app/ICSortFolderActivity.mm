@interface ICSortFolderActivity
- (ICSortFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode;
- (ICSortFolderActivity)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode;
- (UIViewController)presentingViewController;
- (id)activityTitle;
- (id)menuWithCompletion:(id)completion;
- (void)activityDidFinish:(BOOL)finish;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICSortFolderActivity

- (ICSortFolderActivity)initWithFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode
{
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  reporterCopy = reporter;
  v20.receiver = self;
  v20.super_class = ICSortFolderActivity;
  v17 = [(ICSortFolderActivity *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_folder, folder);
    objc_storeWeak(&v18->_presentingViewController, controllerCopy);
    objc_storeStrong(&v18->_presentingBarButtonItem, item);
    objc_storeStrong(&v18->_eventReporter, reporter);
    v18->_noteContainerViewMode = mode;
  }

  return v18;
}

- (ICSortFolderActivity)initWithVirtualSmartFolder:(id)folder presentingViewController:(id)controller presentingBarButtonItem:(id)item eventReporter:(id)reporter noteContainerViewMode:(int64_t)mode
{
  folderCopy = folder;
  controllerCopy = controller;
  itemCopy = item;
  reporterCopy = reporter;
  v20.receiver = self;
  v20.super_class = ICSortFolderActivity;
  v17 = [(ICSortFolderActivity *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_virtualSmartFolder, folder);
    objc_storeWeak(&v18->_presentingViewController, controllerCopy);
    objc_storeStrong(&v18->_presentingBarButtonItem, item);
    objc_storeStrong(&v18->_eventReporter, reporter);
    v18->_noteContainerViewMode = mode;
  }

  return v18;
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
  presentingViewController = [(ICSortFolderActivity *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];

  if (presentedViewController)
  {
    presentingViewController2 = [(ICSortFolderActivity *)self presentingViewController];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1000A8C40;
    v12 = &unk_100647900;
    selfCopy = self;
    v14 = completionCopy;
    [presentingViewController2 dismissViewControllerAnimated:1 completion:&v9];
  }

  else if (completionCopy)
  {
    activityType = [(ICSortFolderActivity *)self activityType];
    (*(completionCopy + 2))(completionCopy, 1, activityType);
  }

  [(ICSortFolderActivity *)self activityDidFinish:1, v9, v10, v11, v12];
}

- (void)activityDidFinish:(BOOL)finish
{
  v8.receiver = self;
  v8.super_class = ICSortFolderActivity;
  [(ICSortFolderActivity *)&v8 activityDidFinish:finish];
  eventReporter = [(ICSortFolderActivity *)self eventReporter];
  v5 = sub_1000A0D2C([(ICSortFolderActivity *)self noteContainerViewMode]);
  activityType = [(ICSortFolderActivity *)self activityType];
  folder = [(ICSortFolderActivity *)self folder];
  [eventReporter submitNoteActionMenuEventForNoteBrowserWithUsageType:3 layout:v5 activityType:activityType isTimelineView:{objc_msgSend(folder, "isShowingDateHeaders")}];
}

- (id)menuWithCompletion:(id)completion
{
  completionCopy = completion;
  folder = [(ICSortFolderActivity *)self folder];
  if (folder)
  {
    folder2 = [(ICSortFolderActivity *)self folder];
    [folder2 customNoteSortType];
  }

  else
  {
    folder2 = [(ICSortFolderActivity *)self virtualSmartFolder];
    [folder2 noteSortType];
  }
  v7 = ;

  v8 = [ICSortMenu alloc];
  activityTitle = [(ICSortFolderActivity *)self activityTitle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A8ED8;
  v15[3] = &unk_1006474F8;
  v16 = v7;
  selfCopy = self;
  v18 = completionCopy;
  v10 = completionCopy;
  v11 = v7;
  v12 = [(ICSortMenu *)v8 initWithTitle:activityTitle sortType:v11 selectedSortTypeHandler:v15];

  createMenu = [(ICSortMenu *)v12 createMenu];

  return createMenu;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end