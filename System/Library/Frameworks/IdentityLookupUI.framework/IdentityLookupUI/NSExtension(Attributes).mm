@interface NSExtension(Attributes)
- (id)SMSReportDestination;
- (id)networkReportDestination;
@end

@implementation NSExtension(Attributes)

- (id)SMSReportDestination
{
  attributes = [self attributes];
  v2 = [attributes objectForKeyedSubscript:@"ILClassificationExtensionSMSReportDestination"];

  return v2;
}

- (id)networkReportDestination
{
  attributes = [self attributes];
  v2 = [attributes objectForKeyedSubscript:@"ILClassificationExtensionNetworkReportDestination"];

  return v2;
}

@end