@interface APUIActionCardUtilsAccessibility
+ (id)_generateCardSectionWithInfo:(id)info config:(id)config;
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation APUIActionCardUtilsAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"APUIActionCardUtils" hasClassMethod:@"_generateCardSectionWithInfo:config:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"APUIActionCardViewConfig" hasInstanceMethod:@"bundleId" withFullSignature:{"@", 0}];
}

+ (id)_generateCardSectionWithInfo:(id)info config:(id)config
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___APUIActionCardUtilsAccessibility;
  configCopy = config;
  v6 = objc_msgSendSuper2(&v9, sel__generateCardSectionWithInfo_config_, info, configCopy);
  v7 = [configCopy safeValueForKey:{@"bundleId", v9.receiver, v9.super_class}];

  [v6 _accessibilitySetRetainedValue:v7 forKey:*MEMORY[0x29EDB8F10]];

  return v6;
}

@end