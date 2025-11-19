@interface DiagnosticCaseUsageAnalytics
- (DiagnosticCaseUsageAnalytics)init;
@end

@implementation DiagnosticCaseUsageAnalytics

- (DiagnosticCaseUsageAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v6.receiver = self;
  v6.super_class = DiagnosticCaseUsageAnalytics;
  v4 = [(ObjectAnalytics *)&v6 initWithWorkspace:v3 entityName:@"DiagnosticCaseUsage" withCache:1];

  return v4;
}

@end