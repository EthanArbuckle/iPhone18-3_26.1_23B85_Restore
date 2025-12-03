@interface AnalyticsReportOutlet
- (BOOL)publishReportForCase:(id)case options:(id)options;
@end

@implementation AnalyticsReportOutlet

- (BOOL)publishReportForCase:(id)case options:(id)options
{
  caseCopy = case;
  v5 = +[AnalyticsAgent sharedInstance];
  [v5 postDiagnosticIncidentReportForCase:caseCopy];

  return 1;
}

@end