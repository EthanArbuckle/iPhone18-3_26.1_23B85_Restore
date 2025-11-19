@interface SUApplicationAccessibility
- (id)_accessibilityContentLanguage;
@end

@implementation SUApplicationAccessibility

- (id)_accessibilityContentLanguage
{
  v2 = [NSClassFromString(&cfstr_Sustorecontrol.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"storeContentLanguage"];

  return v3;
}

@end