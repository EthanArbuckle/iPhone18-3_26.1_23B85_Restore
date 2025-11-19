@interface APUIActionCardUtilsAccessibility
+ (id)_generateCardSectionWithInfo:(id)a3 config:(id)a4;
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation APUIActionCardUtilsAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"APUIActionCardUtils" hasClassMethod:@"_generateCardSectionWithInfo:config:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"APUIActionCardViewConfig" hasInstanceMethod:@"bundleId" withFullSignature:{"@", 0}];
}

+ (id)_generateCardSectionWithInfo:(id)a3 config:(id)a4
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___APUIActionCardUtilsAccessibility;
  v5 = a4;
  v6 = objc_msgSendSuper2(&v9, sel__generateCardSectionWithInfo_config_, a3, v5);
  v7 = [v5 safeValueForKey:{@"bundleId", v9.receiver, v9.super_class}];

  [v6 _accessibilitySetRetainedValue:v7 forKey:*MEMORY[0x29EDB8F10]];

  return v6;
}

@end