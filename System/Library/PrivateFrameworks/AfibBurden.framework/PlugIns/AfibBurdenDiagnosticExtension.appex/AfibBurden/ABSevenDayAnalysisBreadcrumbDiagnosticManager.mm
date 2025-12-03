@interface ABSevenDayAnalysisBreadcrumbDiagnosticManager
- (ABSevenDayAnalysisBreadcrumbDiagnosticManager)initWithLoggingDirectoryPath:(id)path control:(id)control;
- (id)extractDiagnosticContent;
@end

@implementation ABSevenDayAnalysisBreadcrumbDiagnosticManager

- (ABSevenDayAnalysisBreadcrumbDiagnosticManager)initWithLoggingDirectoryPath:(id)path control:(id)control
{
  controlCopy = control;
  v11.receiver = self;
  v11.super_class = ABSevenDayAnalysisBreadcrumbDiagnosticManager;
  v8 = [(ABDiagnosticManager *)&v11 initWithDiagnosticName:@"SevenDayAnalysisBreadcrumb" loggingDirectoryPath:path];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_control, control);
  }

  return v9;
}

- (id)extractDiagnosticContent
{
  v3 = ab_get_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Starting seven day analysis breadcrumb extraction", buf, 0xCu);
  }

  control = self->_control;
  v10 = 0;
  v5 = [(HKHRAFibBurdenControl *)control fetchSevenDayAnalysisBreadcrumbsWithError:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = HKHRPrettyPrintedAFibBurdenSevenDayAnalysisBreadcrumbs();
  }

  else
  {
    v8 = ab_get_framework_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Seven day analysis breadcrumb extraction failed with error %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

@end