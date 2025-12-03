@interface COSDiagnosticLogsController
- (COSDiagnosticLogsController)init;
- (NSString)transferredFilesPath;
- (id)diagFileSpecifier:(id)specifier isScreenshot:(BOOL)screenshot;
- (id)specifiers;
- (void)cancelDownload:(id)download;
- (void)cancelLogTransfer:(id)transfer;
- (void)cancelTransferProgress:(id)progress;
- (void)checkIfFileInTransit:(id)transit;
- (void)dealloc;
- (void)deleteLog:(id)log withCompletion:(id)completion;
- (void)dismissLogPreviewForDeletedSpecifier:(id)specifier;
- (void)displayProgressDetails:(id)details;
- (void)downloadFileAction:(id)action;
- (void)downloadFileFromNotification:(id)notification;
- (void)presentCancelLogDownloadAlert:(id)alert;
- (void)recheckFileDownload:(id)download;
- (void)recheckFileDownloadForCompletetransfer:(id)completetransfer;
- (void)setSpecifier:(id)specifier;
- (void)showDeleteOrShareAlert:(id)alert;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)updateSpecifier:(id)specifier withDownloadPath:(id)path;
- (void)updateTransferedLogFilesCache;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation COSDiagnosticLogsController

- (COSDiagnosticLogsController)init
{
  v6.receiver = self;
  v6.super_class = COSDiagnosticLogsController;
  v2 = [(COSDiagnosticLogsController *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.DiagnosticLogRetrieval", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v2->_pathsLoaded = 0;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"DiagnosticLogTransferComplete" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"DiagnosticLogTransferTapped" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"DiagnosticLogSpinnerTapped" object:0];

  v6.receiver = self;
  v6.super_class = COSDiagnosticLogsController;
  [(COSDiagnosticLogsController *)&v6 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = COSDiagnosticLogsController;
  [(COSDiagnosticLogsController *)&v11 viewWillAppear:1];
  if (self->_pathsLoaded)
  {
    [(COSDiagnosticLogsController *)self setSpecifier:*&self->BPSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
  }

  if (!self->_nssManager)
  {
    v4 = [NSSManager alloc];
    queue = [(COSDiagnosticLogsController *)self queue];
    v6 = [v4 initWithQueue:queue];
    nssManager = self->_nssManager;
    self->_nssManager = v6;
  }

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"recheckFileDownloadForCompletetransfer:" name:@"DiagnosticLogTransferComplete" object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"downloadFileFromNotification:" name:@"DiagnosticLogTransferTapped" object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"cancelDownload:" name:@"DiagnosticLogSpinnerTapped" object:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = COSDiagnosticLogsController;
  [(COSDiagnosticLogsController *)&v4 viewDidLoad];
  table = [(COSDiagnosticLogsController *)self table];
  [table _setDisplaysCellContentStringsOnTapAndHold:1];
}

- (void)downloadFileFromNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"Specifier"];

  [(COSDiagnosticLogsController *)self downloadFileAction:v5];
}

- (void)cancelDownload:(id)download
{
  userInfo = [download userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"Specifier"];

  [(COSDiagnosticLogsController *)self presentCancelLogDownloadAlert:v5];
}

- (NSString)transferredFilesPath
{
  v2 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v3 = [v2 valueForProperty:NRDevicePropertyPairingID];
  uUIDString = [v3 UUIDString];

  v5 = [@"/var/mobile/tmp/BridgeDiagnosticLogs/" stringByAppendingPathComponent:uUIDString];

  return v5;
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v18.receiver = self;
  v18.super_class = COSDiagnosticLogsController;
  [(COSDiagnosticLogsController *)&v18 setSpecifier:specifierCopy];
  [(COSDiagnosticLogsController *)self setPathsLoaded:0];
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Gathering diagnostic log list from Gizmo", buf, 2u);
  }

  if (!self->_nssManager)
  {
    v6 = [NSSManager alloc];
    queue = [(COSDiagnosticLogsController *)self queue];
    v8 = [v6 initWithQueue:queue];
    nssManager = self->_nssManager;
    self->_nssManager = v8;
  }

  objc_initWeak(buf, self);
  v10 = self->_nssManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000223AC;
  v11[3] = &unk_100268700;
  objc_copyWeak(&v16, buf);
  v12 = @"screenshot-";
  v13 = @"screencapture_";
  v14 = @"sysdiagnose_";
  v15 = @"App_Privacy_Report_v";
  [(NSSManager *)v10 getDiagnosticLogsInfoByCateogry:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (id)specifiers
{
  if (!self->_pathsLoaded)
  {
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"LOADING" value:&stru_10026E598 table:@"DiagnosticLogs"];
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v29 = [NSArray arrayWithObject:v28];
    v30 = OBJC_IVAR___PSListController__specifiers;
    v31 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
    *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v29;

    v32 = *&self->BPSListController_opaque[v30];
    goto LABEL_26;
  }

  [(COSDiagnosticLogsController *)self updateTransferedLogFilesCache];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v45 = objc_opt_new();
  v47 = objc_opt_new();
  v44 = objc_opt_new();
  v48 = objc_opt_new();
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DIAGNOSTIC_LOGS" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v52 = [PSSpecifier groupSpecifierWithID:@"FilePaths" name:v6];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"APP_PRIVACY_REPORTS" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v46 = [PSSpecifier groupSpecifierWithID:@"AppPrivacyReports" name:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"SYSDIAGNOSES" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v51 = [PSSpecifier groupSpecifierWithID:@"SysdiagnosePaths" name:v10];

  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"SCREENSHOTS" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v50 = [PSSpecifier groupSpecifierWithID:@"WatchScreenshots" name:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"SCREENCAPTURES" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v49 = [PSSpecifier groupSpecifierWithID:@"WatchScreencaptures" name:v14];

  filePaths = self->_filePaths;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_100023080;
  v62[3] = &unk_100268728;
  v62[4] = self;
  v16 = v4;
  v63 = v16;
  [(NSArray *)filePaths enumerateObjectsUsingBlock:v62];
  sysdiagnosePaths = self->_sysdiagnosePaths;
  v60[0] = _NSConcreteStackBlock;
  v60[1] = 3221225472;
  v60[2] = sub_1000230EC;
  v60[3] = &unk_100268728;
  v60[4] = self;
  v18 = v44;
  v61 = v18;
  [(NSArray *)sysdiagnosePaths enumerateObjectsUsingBlock:v60];
  screenshotPaths = self->_screenshotPaths;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_100023158;
  v58[3] = &unk_100268728;
  v58[4] = self;
  v20 = v45;
  v59 = v20;
  [(NSArray *)screenshotPaths enumerateObjectsUsingBlock:v58];
  screencapturePaths = self->_screencapturePaths;
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_1000231C4;
  v56[3] = &unk_100268728;
  v56[4] = self;
  v22 = v47;
  v57 = v22;
  [(NSArray *)screencapturePaths enumerateObjectsUsingBlock:v56];
  appPrivacyReportsPaths = self->_appPrivacyReportsPaths;
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_100023230;
  v54[3] = &unk_100268728;
  v54[4] = self;
  v24 = v48;
  v55 = v24;
  [(NSArray *)appPrivacyReportsPaths enumerateObjectsUsingBlock:v54];
  if ([v24 count])
  {
    v25 = v46;
    [v3 addObject:v46];
    [v3 addObjectsFromArray:v24];
  }

  else
  {

    v24 = 0;
    v25 = v46;
  }

  if ([v18 count])
  {
    [v3 addObject:v51];
    [v3 addObjectsFromArray:v18];
  }

  else
  {

    v18 = 0;
  }

  if ([v20 count])
  {
    [v3 addObject:v50];
    [v3 addObjectsFromArray:v20];
  }

  else
  {

    v20 = 0;
  }

  if ([v22 count])
  {
    [v3 addObject:v49];
    [v3 addObjectsFromArray:v22];
  }

  else
  {

    v22 = 0;
  }

  if (![v16 count])
  {

    v16 = 0;
    goto LABEL_19;
  }

  [v3 addObject:v52];
  [v3 addObjectsFromArray:v16];
  if (!v16)
  {
LABEL_19:
    if (!v20 && !v18 && !v24)
    {
      v33 = +[PSSpecifier emptyGroupSpecifier];
      v34 = +[NSBundle mainBundle];
      [v34 localizedStringForKey:@"FILES_NOT_FOUND" value:&stru_10026E598 table:@"DiagnosticLogs"];
      v35 = v22;
      v36 = v16;
      v38 = v37 = v25;
      [v33 setProperty:v38 forKey:PSFooterTextGroupKey];

      v25 = v37;
      v16 = v36;
      v22 = v35;
      v18 = 0;
      v20 = 0;
      v24 = 0;

      [v3 addObject:v33];
    }
  }

  v39 = pbb_bridge_log();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "done assigning logs to specifiers", buf, 2u);
  }

  v40 = OBJC_IVAR___PSListController__specifiers;
  v41 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v42 = v3;

  v32 = *&self->BPSListController_opaque[v40];
LABEL_26:

  return v32;
}

- (void)downloadFileAction:(id)action
{
  actionCopy = action;
  v5 = [actionCopy propertyForKey:@"DiagnosticLogDownloadingKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    [(COSDiagnosticLogsController *)self presentCancelLogDownloadAlert:actionCopy];
  }

  else
  {
    v7 = [actionCopy propertyForKey:@"DiagnosticLogOriginalPathKey"];
    [(COSDiagnosticLogsController *)self displayProgressDetails:actionCopy];
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "downloading file %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    nssManager = self->_nssManager;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002346C;
    v10[3] = &unk_100268750;
    objc_copyWeak(&v12, buf);
    v11 = actionCopy;
    [(NSSManager *)nssManager getDiagnosticLogFileFromGizmo:v7 withResults:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }
}

- (void)presentCancelLogDownloadAlert:(id)alert
{
  alertCopy = alert;
  v21 = objc_alloc_init(PSConfirmationSpecifier);
  v3 = [alertCopy propertyForKey:@"DiagnosticLogOriginalPathKey"];
  lastPathComponent = [v3 lastPathComponent];

  v17 = +[NSBundle mainBundle];
  v16 = [v17 localizedStringForKey:@"CANCEL_LOG_TRANSFER_TITLE" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v15 = PSConfirmationOKKey;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"CANCEL" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v6 = PSConfirmationCancelKey;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"CANCEL_LOG_TRANSFER_DESCRIPTION_%@" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v9 = [NSString stringWithFormat:v8, lastPathComponent];
  v10 = PSConfirmationPromptKey;
  v11 = +[NSBundle mainBundle];
  v12 = [v11 localizedStringForKey:@"CANCEL_LOG_TRANSFER_TITLE" value:&stru_10026E598 table:@"DiagnosticLogs"];
  v13 = [NSDictionary dictionaryWithObjectsAndKeys:v16, v15, v5, v6, v9, v10, v12, PSConfirmationTitleKey, 0];
  [v21 setupWithDictionary:v13];

  v14 = [NSNumber numberWithBool:1];
  [v21 setProperty:v14 forKey:PSConfirmationDestructiveKey];

  objc_storeWeak(&v21[OBJC_IVAR___PSSpecifier_target], self);
  [v21 setConfirmationAction:"cancelLogTransfer:"];
  [v21 setProperty:alertCopy forKey:@"ParentSpecifier"];

  [(COSDiagnosticLogsController *)self showConfirmationViewForSpecifier:v21];
}

- (void)cancelLogTransfer:(id)transfer
{
  transferCopy = transfer;
  v5 = [transferCopy propertyForKey:@"ParentSpecifier"];
  v6 = [v5 propertyForKey:@"DiagnosticLogOriginalPathKey"];
  lastPathComponent = [v6 lastPathComponent];

  objc_initWeak(&location, self);
  nssManager = self->_nssManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000239A0;
  v11[3] = &unk_100268778;
  v9 = lastPathComponent;
  v12 = v9;
  objc_copyWeak(&v14, &location);
  v10 = v5;
  v13 = v10;
  [(NSSManager *)nssManager cancelDiagnosticLogTranfer:v9 withCompletion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (id)diagFileSpecifier:(id)specifier isScreenshot:(BOOL)screenshot
{
  screenshotCopy = screenshot;
  specifierCopy = specifier;
  lastPathComponent = [specifierCopy lastPathComponent];
  v8 = [NSString stringWithFormat:@"%@", lastPathComponent];

  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:0 cell:3 edit:0];
  [v9 setButtonAction:"downloadFileAction:"];
  [v9 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
  if (!self->_containsAbsolutePath)
  {
    v10 = @"/var/mobile/Library/Logs/CrashReporter";
    if (screenshotCopy)
    {
      v10 = @"/tmp/com.apple.Carousel";
    }

    specifierCopy = [NSString stringWithFormat:@"%@/%@", v10, specifierCopy];

    specifierCopy = specifierCopy;
  }

  [v9 setProperty:specifierCopy forKey:@"DiagnosticLogOriginalPathKey"];

  [v9 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v9 setProperty:v8 forKey:PSIDKey];
  [v9 setProperty:&__kCFBooleanFalse forKey:@"FileDownloadedKey"];
  if (screenshotCopy)
  {
    v12 = &__kCFBooleanFalse;
  }

  else
  {
    v12 = &__kCFBooleanTrue;
  }

  [v9 setProperty:v12 forKey:@"IsFileKey"];

  return v9;
}

- (void)recheckFileDownloadForCompletetransfer:(id)completetransfer
{
  userInfo = [completetransfer userInfo];
  v8 = [userInfo objectForKey:@"DiagnosticLogTransferComplete"];

  v5 = [(COSDiagnosticLogsController *)self specifierForID:v8];
  [(COSDiagnosticLogsController *)self updateTransferedLogFilesCache];
  v6 = [v5 propertyForKey:@"FileDownloadedKey"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(COSDiagnosticLogsController *)self recheckFileDownload:v5];
  }
}

- (void)recheckFileDownload:(id)download
{
  downloadCopy = download;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  queue = [(COSDiagnosticLogsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023E08;
  block[3] = &unk_1002687A0;
  v8 = downloadCopy;
  selfCopy = self;
  v10 = v11;
  v6 = downloadCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v11, 8);
}

- (void)checkIfFileInTransit:(id)transit
{
  transitCopy = transit;
  v5 = [transitCopy propertyForKey:PSIDKey];
  objc_initWeak(&location, self);
  nssManager = self->_nssManager;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000240C8;
  v8[3] = &unk_1002687C8;
  v7 = transitCopy;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [(NSSManager *)nssManager retrieveDiagnosticLogTransferProgress:v5 withProgress:v8];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

- (void)updateSpecifier:(id)specifier withDownloadPath:(id)path
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000242AC;
  block[3] = &unk_100268638;
  specifierCopy = specifier;
  pathCopy = path;
  selfCopy = self;
  v6 = pathCopy;
  v7 = specifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateTransferedLogFilesCache
{
  transferredFilesPath = [(COSDiagnosticLogsController *)self transferredFilesPath];
  v4 = +[NSFileManager defaultManager];
  v10 = 0;
  v5 = [v4 subpathsOfDirectoryAtPath:transferredFilesPath error:&v10];
  v6 = v10;
  [(COSDiagnosticLogsController *)self setDownloadedDiagnosticLogs:v5];

  if (v6)
  {
    userInfo = [v6 userInfo];
    v8 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    if ([v8 code] != 2)
    {
      v9 = pbb_bridge_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error while caching transferred diagnostic logs error: %@", buf, 0xCu);
      }
    }
  }
}

- (void)cancelTransferProgress:(id)progress
{
  progressCopy = progress;
  [progressCopy setProperty:&__kCFBooleanFalse forKey:@"DiagnosticLogDownloadingKey"];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002452C;
  v6[3] = &unk_100268358;
  v6[4] = self;
  v7 = progressCopy;
  v5 = progressCopy;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)showDeleteOrShareAlert:(id)alert
{
  alertCopy = alert;
  v10 = [alertCopy propertyForKey:@"DiagnosticLogSharePathKey"];
  v5 = [COSDiagnosticLogPreviewViewController alloc];
  queue = [(COSDiagnosticLogsController *)self queue];
  v7 = [(COSDiagnosticLogPreviewViewController *)v5 initWithFilePath:v10 andQueue:queue];

  v8 = [alertCopy propertyForKey:@"DiagnosticLogOriginalPathKey"];
  [(COSDiagnosticLogPreviewViewController *)v7 setPathOnWatch:v8];

  [(COSDiagnosticLogPreviewViewController *)v7 setParentSpecifier:alertCopy];
  [(COSDiagnosticLogPreviewViewController *)v7 setLogPreviewDelegate:self];
  v9 = [[UINavigationController alloc] initWithRootViewController:v7];
  [(COSDiagnosticLogsController *)self presentViewController:v9 withTransition:3 completion:&stru_1002687E8];
}

- (void)displayProgressDetails:(id)details
{
  detailsCopy = details;
  [detailsCopy setProperty:&__kCFBooleanTrue forKey:@"DiagnosticLogDownloadingKey"];
  [(COSDiagnosticLogsController *)self reloadSpecifier:detailsCopy];
}

- (void)dismissLogPreviewForDeletedSpecifier:(id)specifier
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024750;
  v4[3] = &unk_100268358;
  v4[4] = self;
  specifierCopy = specifier;
  v3 = specifierCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)deleteLog:(id)log withCompletion:(id)completion
{
  logCopy = log;
  completionCopy = completion;
  v8 = pbb_bridge_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = logCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "request to delete %@", buf, 0xCu);
  }

  nssManager = self->_nssManager;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024930;
  v11[3] = &unk_100268810;
  v12 = completionCopy;
  v10 = completionCopy;
  [(NSSManager *)nssManager deleteDiagnosticLogFile:logCopy withResult:v11];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (style == 1)
  {
    v10 = [(COSDiagnosticLogsController *)self specifierAtIndexPath:pathCopy];
    v11 = [v10 propertyForKey:@"DiagnosticLogOriginalPathKey"];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100024A98;
    v14[3] = &unk_100268778;
    v12 = v11;
    v15 = v12;
    objc_copyWeak(&v17, &location);
    v13 = v10;
    v16 = v13;
    [(COSDiagnosticLogsController *)self deleteLog:v12 withCompletion:v14];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

@end