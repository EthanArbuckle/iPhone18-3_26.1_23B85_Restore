@interface RetailDiagnosticsController
- (BOOL)controllerNeedsToRun;
- (RetailDiagnosticsController)init;
- (void)_skipDiagnostics;
- (void)_startDiagnostics;
- (void)didTerminateWithError:(id)a3;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)startOver;
- (void)viewDidLoad;
@end

@implementation RetailDiagnosticsController

- (RetailDiagnosticsController)init
{
  v11 = self;
  location[1] = a2;
  location[0] = [UIImage imageNamed:@"Retail Diagnostics"];
  v2 = v11;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"RETAIL_DIAGNOSTICS" value:&stru_10032F900 table:@"RetailDiagnostics"];
  v5 = +[NSBundle mainBundle];
  v6 = [(NSBundle *)v5 localizedStringForKey:@"RETAIL_DIAGNOSTICS_DESCRIPTION" value:&stru_10032F900 table:@"RetailDiagnostics"];
  v11 = 0;
  v9.receiver = v2;
  v9.super_class = RetailDiagnosticsController;
  v11 = [(RetailDiagnosticsController *)&v9 initWithTitle:v4 detailText:v6 icon:location[0]];
  v7 = v11;

  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)viewDidLoad
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = RetailDiagnosticsController;
  [(RetailDiagnosticsController *)&v8 viewDidLoad];
  v2 = v10;
  v3 = +[NSBundle mainBundle];
  v4 = [(NSBundle *)v3 localizedStringForKey:@"START_DIAGNOSTICS" value:&stru_10032F900 table:@"RetailDiagnostics"];
  [(BuddyWelcomeController *)v2 addBoldButton:v4 action:"_startDiagnostics"];

  v5 = v10;
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"SKIP_DIAGNOSTICS" value:&stru_10032F900 table:@"RetailDiagnostics"];
  [(BuddyWelcomeController *)v5 addLinkButton:v7 action:"_skipDiagnostics"];
}

- (void)_startDiagnostics
{
  v9 = self;
  v8[1] = a2;
  v2 = sub_100184178();
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_10018428C;
  v7 = &unk_10032DEF0;
  v8[0] = v9;
  [v2 requestDiagnosticsRemoteViewControllerWithConnectionHandler:&v3];
  objc_storeStrong(v8, 0);
}

- (void)_skipDiagnostics
{
  v2 = [(BuddyWelcomeController *)self delegate];
  [(BFFFlowItemDelegate *)v2 flowItemDone:self];
}

- (BOOL)controllerNeedsToRun
{
  oslog[2] = self;
  oslog[1] = a2;
  v2 = [(RetailDiagnosticsController *)self buttonMonitor];
  v3 = ![(BuddyButtonMonitor *)v2 isAnyButtonPressed];

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  oslog[0] = _BYLoggingFacility();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = oslog[0];
    v5 = v8;
    sub_10006AA68(v7);
    _os_log_impl(&_mh_execute_header, v4, v5, "Skipping retail diagnostics; no buttons pressed", v7, 2u);
  }

  objc_storeStrong(oslog, 0);
  return 0;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = dispatch_get_global_queue(25, 0);
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100184748;
  v8 = &unk_10032B120;
  v9 = location[0];
  dispatch_async(v3, &v4);

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)startOver
{
  v2 = [(RetailDiagnosticsController *)self diagnosticsRemoteController:a2];
  [(DADiagnosticsRemoteHostViewController *)v2 disconnect];
}

- (void)didTerminateWithError:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v27 = _BYLoggingFacility();
    v26 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v24 = 0;
      v22 = 0;
      if (_BYIsInternalInstall())
      {
        v3 = location[0];
      }

      else if (location[0])
      {
        v25 = [location[0] domain];
        v24 = 1;
        v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v25, [location[0] code]);
        v23 = v3;
        v22 = 1;
      }

      else
      {
        v3 = 0;
      }

      sub_100071CBC(buf, v3);
      _os_log_error_impl(&_mh_execute_header, v27, v26, "Diagnostics finished with error: %{public}@", buf, 0xCu);
      if (v22)
      {
      }

      if (v24)
      {
      }
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    oslog = _BYLoggingFacility();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog;
      v5 = v20;
      sub_10006AA68(v19);
      _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostics finished successfully", v19, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v6 = [(RetailDiagnosticsController *)v29 diagnosticsRemoteController];
  v17 = 0;
  v15 = 0;
  v7 = 0;
  if (v6)
  {
    v18 = [(RetailDiagnosticsController *)v29 diagnosticsRemoteController];
    v17 = 1;
    v16 = [v18 presentingViewController];
    v15 = 1;
    v7 = v16 != 0;
  }

  if (v15)
  {
  }

  if (v17)
  {
  }

  if (v7)
  {
    v8 = [(RetailDiagnosticsController *)v29 diagnosticsRemoteController];
    v9 = _NSConcreteStackBlock;
    v10 = -1073741824;
    v11 = 0;
    v12 = sub_100185330;
    v13 = &unk_10032B0D0;
    v14 = v29;
    [(DADiagnosticsRemoteHostViewController *)v8 dismissViewControllerAnimated:1 completion:&v9];

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(location, 0);
}

@end