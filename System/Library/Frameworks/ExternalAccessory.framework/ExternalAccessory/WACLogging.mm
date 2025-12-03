@interface WACLogging
+ (BOOL)isEnabled;
@end

@implementation WACLogging

+ (BOOL)isEnabled
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults addSuiteNamed:@"com.apple.logging"];
  v3 = [standardUserDefaults BOOLForKey:@"DebugWACLogging"];

  return v3;
}

@end