@interface ABFeatureStatusDiagnosticManager
- (ABFeatureStatusDiagnosticManager)initWithLoggingDirectoryPath:(id)a3 healthStore:(id)a4;
- (id)_retrievePrettyPrintedFeatureStatusDiagnostics;
- (id)_retrievePrettyPrintedRegionAvailabilityDiagnostics;
- (id)extractDiagnosticContent;
- (void)_addSectionToString:(id)a3 withTitle:(id)a4;
@end

@implementation ABFeatureStatusDiagnosticManager

- (ABFeatureStatusDiagnosticManager)initWithLoggingDirectoryPath:(id)a3 healthStore:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ABFeatureStatusDiagnosticManager;
  v8 = [(ABDiagnosticManager *)&v11 initWithDiagnosticName:@"FeatureStatus" loggingDirectoryPath:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_healthStore, a4);
  }

  return v9;
}

- (id)extractDiagnosticContent
{
  v3 = ab_get_framework_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Starting feature status diagnostics", &v12, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableString);
  [(ABFeatureStatusDiagnosticManager *)self _addSectionToString:v4 withTitle:@"Feature Status"];
  v5 = [(ABFeatureStatusDiagnosticManager *)self _retrievePrettyPrintedFeatureStatusDiagnostics];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"(Unable to Retrieve)";
  }

  [v4 appendString:v7];

  [v4 appendString:@"\n\n"];
  [(ABFeatureStatusDiagnosticManager *)self _addSectionToString:v4 withTitle:@"Region Availability"];
  v8 = [(ABFeatureStatusDiagnosticManager *)self _retrievePrettyPrintedRegionAvailabilityDiagnostics];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(Unable to Retrieve)";
  }

  [v4 appendString:v10];

  return v4;
}

- (void)_addSectionToString:(id)a3 withTitle:(id)a4
{
  v5 = a3;
  [v5 appendFormat:@"%@\n", a4];
  [v5 appendString:@"======================================\n"];
}

- (id)_retrievePrettyPrintedFeatureStatusDiagnostics
{
  v3 = [HKFeatureStatusManager alloc];
  v4 = HKFeatureIdentifierAFibBurden;
  v5 = [v3 initWithFeatureIdentifier:HKFeatureIdentifierAFibBurden healthStore:self->_healthStore];
  v6 = ab_get_framework_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Retrieving feature status", buf, 0xCu);
  }

  v12 = 0;
  v7 = [v5 featureStatusWithError:&v12];
  v8 = v12;
  if (v8)
  {
    v9 = ab_get_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100002CD0();
    }

    v10 = 0;
  }

  else
  {
    v9 = [[HKFeatureAvailabilityRequirementSatisfactionOverrides alloc] initWithFeatureIdentifier:v4];
    v10 = HKPrettyPrintedFeatureStatus();
  }

  return v10;
}

- (id)_retrievePrettyPrintedRegionAvailabilityDiagnostics
{
  v3 = [HKFeatureAvailabilityStore alloc];
  v4 = [v3 initWithFeatureIdentifier:HKFeatureIdentifierAFibBurden healthStore:self->_healthStore];
  v5 = ab_get_framework_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Retrieving region availability", buf, 0xCu);
  }

  v11 = 0;
  v6 = [v4 regionAvailabilityWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8 = [v6 prettyPrintedDescription];
  }

  else
  {
    v9 = ab_get_framework_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100002D38();
    }

    v8 = 0;
  }

  return v8;
}

@end