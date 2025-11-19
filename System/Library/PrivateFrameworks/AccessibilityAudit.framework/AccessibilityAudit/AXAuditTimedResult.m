@interface AXAuditTimedResult
- (NSString)executionTimeString;
@end

@implementation AXAuditTimedResult

- (NSString)executionTimeString
{
  v3 = [(AXAuditTimedResult *)self endTime];
  v4 = [(AXAuditTimedResult *)self startTime];
  v5 = [v3 axAuditLogStringForDifferenceFromDate:v4];

  return v5;
}

@end