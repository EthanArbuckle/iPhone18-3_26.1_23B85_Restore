@interface NSExtension(Attributes)
- (id)SMSReportDestination;
- (id)networkReportDestination;
@end

@implementation NSExtension(Attributes)

- (id)SMSReportDestination
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKeyedSubscript:@"ILClassificationExtensionSMSReportDestination"];

  return v2;
}

- (id)networkReportDestination
{
  v1 = [a1 attributes];
  v2 = [v1 objectForKeyedSubscript:@"ILClassificationExtensionNetworkReportDestination"];

  return v2;
}

@end