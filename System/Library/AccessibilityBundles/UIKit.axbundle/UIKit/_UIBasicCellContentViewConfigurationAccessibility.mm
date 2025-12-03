@interface _UIBasicCellContentViewConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UIBasicCellContentViewConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIBasicCellContentViewConfiguration" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UIBasicCellContentViewConfigurationAccessibility;
  v8[0] = [(_UIBasicCellContentViewConfigurationAccessibility *)&v7 accessibilityLabel];
  if (![v8[0] length])
  {
    v6 = [(_UIBasicCellContentViewConfigurationAccessibility *)selfCopy safeValueForKey:@"textLabel"];
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

@end