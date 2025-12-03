@interface _UIBasicHeaderFooterContentViewConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIBasicHeaderFooterContentViewConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIBasicHeaderFooterContentViewConfiguration";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"_defaultStyle" withType:"q"];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UIBasicHeaderFooterContentViewConfigurationAccessibility;
  v8[0] = [(_UIBasicHeaderFooterContentViewConfigurationAccessibility *)&v7 accessibilityLabel];
  if (![v8[0] length])
  {
    v6 = [(_UIBasicHeaderFooterContentViewConfigurationAccessibility *)selfCopy safeValueForKey:@"textLabel"];
    accessibilityLabel = [v6 accessibilityLabel];
    v3 = v8[0];
    v8[0] = accessibilityLabel;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6 = [(_UIBasicHeaderFooterContentViewConfigurationAccessibility *)self safeIntegerForKey:@"_defaultStyle"];
  v5.receiver = selfCopy;
  v5.super_class = _UIBasicHeaderFooterContentViewConfigurationAccessibility;
  accessibilityTraits = [(_UIBasicHeaderFooterContentViewConfigurationAccessibility *)&v5 accessibilityTraits];
  if (v6 && v6 != 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *MEMORY[0x29EDC7F80];
  }

  return accessibilityTraits | v3;
}

@end