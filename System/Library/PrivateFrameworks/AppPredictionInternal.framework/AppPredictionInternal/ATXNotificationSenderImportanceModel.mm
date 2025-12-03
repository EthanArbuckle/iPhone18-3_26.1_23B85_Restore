@interface ATXNotificationSenderImportanceModel
- (id)calculateSenderImportanceForNotificationWithContextRequest:(id)request;
@end

@implementation ATXNotificationSenderImportanceModel

- (id)calculateSenderImportanceForNotificationWithContextRequest:(id)request
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [[ATXSenderImportance alloc] initWithSenderImportanceScore:v3 featureDictionary:0.0];

  return v4;
}

@end