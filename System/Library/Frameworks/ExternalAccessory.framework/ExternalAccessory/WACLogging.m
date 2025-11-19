@interface WACLogging
+ (BOOL)isEnabled;
@end

@implementation WACLogging

+ (BOOL)isEnabled
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v2 addSuiteNamed:@"com.apple.logging"];
  v3 = [v2 BOOLForKey:@"DebugWACLogging"];

  return v3;
}

@end