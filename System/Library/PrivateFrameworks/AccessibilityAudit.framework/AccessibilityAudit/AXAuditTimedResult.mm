@interface AXAuditTimedResult
- (NSString)executionTimeString;
@end

@implementation AXAuditTimedResult

- (NSString)executionTimeString
{
  endTime = [(AXAuditTimedResult *)self endTime];
  startTime = [(AXAuditTimedResult *)self startTime];
  v5 = [endTime axAuditLogStringForDifferenceFromDate:startTime];

  return v5;
}

@end