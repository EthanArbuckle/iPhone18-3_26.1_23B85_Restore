@interface _SFAutomationController
+ (BOOL)isSystemRemoteAutomationEnabled;
- (void)setAllowsRemoteAutomation:(BOOL)a3;
@end

@implementation _SFAutomationController

+ (BOOL)isSystemRemoteAutomationEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.webinspectord"];
  v3 = [v2 BOOLForKey:@"RemoteAutomationEnabled"];

  return v3;
}

- (void)setAllowsRemoteAutomation:(BOOL)a3
{
  v3 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.webinspectord"];
  [v5 setBool:v3 forKey:@"RemoteAutomationEnabled"];
  [v5 synchronize];
  v4 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v4 postNotificationName:@"_SFDeveloperPreferencesDidChangeNotification" object:0];
}

@end