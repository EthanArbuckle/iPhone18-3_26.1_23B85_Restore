@interface AnalyticsReportOutlet
- (BOOL)publishReportForCase:(id)a3 options:(id)a4;
@end

@implementation AnalyticsReportOutlet

- (BOOL)publishReportForCase:(id)a3 options:(id)a4
{
  v4 = a3;
  v5 = +[AnalyticsAgent sharedInstance];
  [v5 postDiagnosticIncidentReportForCase:v4];

  return 1;
}

@end