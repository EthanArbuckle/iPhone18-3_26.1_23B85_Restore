@interface ICPagesHandoffManager
+ (BOOL)canLaunchPages;
+ (BOOL)canLaunchPagesForNote:(id)a3;
+ (void)updatePagesInstallationStatus;
- (void)launchPagesWithArchiveFromNote:(id)a3 viewController:(id)a4;
@end

@implementation ICPagesHandoffManager

+ (void)updatePagesInstallationStatus
{
  if (+[NSThread isMainThread])
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "![NSThread isMainThread]", "+[ICPagesHandoffManager updatePagesInstallationStatus]", 1, 0, @"Unexpected call from main thread");
  }

  v3 = [LSApplicationRecord alloc];
  v4 = [a1 bundleIdentifierForPages];
  v10 = [v3 initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  if (!v10)
  {
    v5 = [LSApplicationRecord alloc];
    v6 = [a1 deprecatedBundleIdentifierForPages];
    v10 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
  }

  v7 = [v10 userActivityTypes];
  v8 = [v7 containsObject:@"appleiwork:com.apple.Pages.NoteImport"];
  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 setBool:v8 forKey:@"canLaunchPages"];
}

+ (BOOL)canLaunchPages
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"canLaunchPages"];

  return v3;
}

+ (BOOL)canLaunchPagesForNote:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    +[ICAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](ICAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "((note) != nil)", "+[ICPagesHandoffManager canLaunchPagesForNote:]", 1, 0, @"Expected non-nil value for '%s'", "note");
  }

  if ([a1 canLaunchPages])
  {
    if ([v4 isPasswordProtected])
    {
      v5 = [v4 isAuthenticated];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)launchPagesWithArchiveFromNote:(id)a3 viewController:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  [(ICLongRunningTaskController *)self->_taskController setViewControllerToPresentFrom:v7];
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
  v13 = [(ICPagesHandoffManager *)self taskController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100106ADC;
  v17[3] = &unk_100649F70;
  v20 = v24;
  v14 = v12;
  v18 = v14;
  v15 = v6;
  v19 = v15;
  v21 = v22;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100106BC4;
  v16[3] = &unk_10064A0E0;
  v16[4] = v24;
  v16[5] = v22;
  [v13 startTask:v17 completionBlock:v16];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

@end