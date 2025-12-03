@interface AASetupAssistantUpgradeStatusResponse
- (NSNumber)upgradeStatus;
@end

@implementation AASetupAssistantUpgradeStatusResponse

- (NSNumber)upgradeStatus
{
  responseDictionary = [(AAResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:AASetupAssistantUpgradeStatusKey];

  return v3;
}

@end