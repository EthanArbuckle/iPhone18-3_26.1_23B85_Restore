@interface ICPagesHandoffManager
+ (BOOL)canLaunchPages;
+ (BOOL)canLaunchPagesForNote:(id)note;
+ (void)updatePagesInstallationStatus;
- (void)launchPagesWithArchiveFromNote:(id)note viewController:(id)controller;
@end

@implementation ICPagesHandoffManager

+ (void)updatePagesInstallationStatus
{
  if (+[NSThread isMainThread])
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "![NSThread isMainThread]", "+[ICPagesHandoffManager updatePagesInstallationStatus]", 1, 0, @"Unexpected call from main thread");
  }

  v3 = [LSApplicationRecord alloc];
  bundleIdentifierForPages = [self bundleIdentifierForPages];
  v10 = [v3 initWithBundleIdentifier:bundleIdentifierForPages allowPlaceholder:1 error:0];

  if (!v10)
  {
    v5 = [LSApplicationRecord alloc];
    deprecatedBundleIdentifierForPages = [self deprecatedBundleIdentifierForPages];
    v10 = [v5 initWithBundleIdentifier:deprecatedBundleIdentifierForPages allowPlaceholder:1 error:0];
  }

  userActivityTypes = [v10 userActivityTypes];
  v8 = [userActivityTypes containsObject:@"appleiwork:com.apple.Pages.NoteImport"];
  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setBool:v8 forKey:@"canLaunchPages"];
}

+ (BOOL)canLaunchPages
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"canLaunchPages"];

  return v3;
}

+ (BOOL)canLaunchPagesForNote:(id)note
{
  noteCopy = note;
  if (!noteCopy)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "((note) != nil)", "+[ICPagesHandoffManager canLaunchPagesForNote:]", 1, 0, @"Expected non-nil value for '%s'", "note");
  }

  if ([self canLaunchPages])
  {
    if ([noteCopy isPasswordProtected])
    {
      isAuthenticated = [noteCopy isAuthenticated];
    }

    else
    {
      isAuthenticated = 1;
    }
  }

  else
  {
    isAuthenticated = 0;
  }

  return isAuthenticated;
}

- (void)launchPagesWithArchiveFromNote:(id)note viewController:(id)controller
{
  noteCopy = note;
  controllerCopy = controller;
  v8 = objc_alloc_init(ICLongRunningTaskController);
  taskController = self->_taskController;
  self->_taskController = v8;

  [(ICLongRunningTaskController *)self->_taskController setShouldShowCancelButton:1];
  [(ICLongRunningTaskController *)self->_taskController setAllowSingleUnitProgress:1];
  [(ICLongRunningTaskController *)self->_taskController setIndeterminate:1];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"Preparing…" value:&stru_100661CF0 table:0];
  [(ICLongRunningTaskController *)self->_taskController setProgressString:v11];

  [(ICLongRunningTaskController *)self->_taskController setShouldShowCircularProgress:1];
  [(ICLongRunningTaskController *)self->_taskController setViewControllerToPresentFrom:controllerCopy];
  v12 = +[ICArchiveExporter exporterForHandoffToPages];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_100106AC4;
  v24[4] = sub_100106AD4;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_100106AC4;
  v22[4] = sub_100106AD4;
  v23 = 0;
  taskController = [(ICPagesHandoffManager *)self taskController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100106ADC;
  v17[3] = &unk_100649F70;
  v20 = v24;
  v14 = v12;
  v18 = v14;
  v15 = noteCopy;
  v19 = v15;
  v21 = v22;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100106BC4;
  v16[3] = &unk_10064A0E0;
  v16[4] = v24;
  v16[5] = v22;
  [taskController startTask:v17 completionBlock:v16];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

@end