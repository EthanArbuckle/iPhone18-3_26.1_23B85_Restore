@interface CaseReportOutlet
- (BOOL)publishReportForCase:(id)a3 options:(id)a4;
- (CaseReportOutlet)init;
@end

@implementation CaseReportOutlet

- (CaseReportOutlet)init
{
  v3.receiver = self;
  v3.super_class = CaseReportOutlet;
  return [(CaseReportOutlet *)&v3 init];
}

- (BOOL)publishReportForCase:(id)a3 options:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"DiagnosticReportOutlets.m" lineNumber:102 description:{@"Subclasses must provide an impl for %s", "-[CaseReportOutlet publishReportForCase:options:]"}];

  return 0;
}

@end