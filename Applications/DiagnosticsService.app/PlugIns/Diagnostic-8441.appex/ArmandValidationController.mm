@interface ArmandValidationController
- (void)cancel;
- (void)start;
@end

@implementation ArmandValidationController

- (void)start
{
  v3 = ODIServiceProviderIdAppleCare;
  v4 = +[NSBundle mainBundle];
  bundleIdentifier = [v4 bundleIdentifier];

  v6 = [[ODISession alloc] initWithServiceIdentifier:v3 forDSIDType:2 andLocationBundleIdentifier:bundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100000D84;
    v9[3] = &unk_1000040D8;
    v9[4] = self;
    v10 = v6;
    [v10 getAssessment:v9];
  }

  else
  {
    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Diagnostic-8441 CoreODI session failed.", buf, 2u);
    }

    [(ArmandValidationController *)self setFinished:1];
  }
}

- (void)cancel
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100000FF0(self, v3);
  }

  [(ArmandValidationController *)self setFinished:1];
}

@end