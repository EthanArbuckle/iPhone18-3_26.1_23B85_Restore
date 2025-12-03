@interface _SFAutomationController
+ (BOOL)isSystemRemoteAutomationEnabled;
- (void)setAllowsRemoteAutomation:(BOOL)automation;
@end

@implementation _SFAutomationController

+ (BOOL)isSystemRemoteAutomationEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.webinspectord"];
  v3 = [v2 BOOLForKey:@"RemoteAutomationEnabled"];

  return v3;
}

- (void)setAllowsRemoteAutomation:(BOOL)automation
{
  automationCopy = automation;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.webinspectord"];
  [v5 setBool:automationCopy forKey:@"RemoteAutomationEnabled"];
  [v5 synchronize];
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter postNotificationName:@"_SFDeveloperPreferencesDidChangeNotification" object:0];
}

@end