@interface _UIValueCellContentViewConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation _UIValueCellContentViewConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIValueCellContentViewConfiguration";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"valueLabel" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UIValueCellContentViewConfigurationAccessibility;
  v8[0] = [(_UIValueCellContentViewConfigurationAccessibility *)&v7 accessibilityLabel];
  if (![v8[0] length])
  {
    v6 = [(_UIValueCellContentViewConfigurationAccessibility *)selfCopy safeValueForKey:@"textLabel"];
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

- (id)accessibilityValue
{
  selfCopy = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UIValueCellContentViewConfigurationAccessibility;
  v8[0] = [(_UIValueCellContentViewConfigurationAccessibility *)&v7 accessibilityValue];
  if (![v8[0] length])
  {
    v6 = [(_UIValueCellContentViewConfigurationAccessibility *)selfCopy safeValueForKey:@"valueLabel"];
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