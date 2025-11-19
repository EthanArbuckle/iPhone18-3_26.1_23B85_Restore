@interface _UIBasicCellContentViewConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIBasicCellContentViewConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIBasicCellContentViewConfiguration" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityLabel
{
  v9 = self;
  v8[1] = a2;
  v7.receiver = self;
  v7.super_class = _UIBasicCellContentViewConfigurationAccessibility;
  v8[0] = [(_UIBasicCellContentViewConfigurationAccessibility *)&v7 accessibilityLabel];
  if (![v8[0] length])
  {
    v6 = [(_UIBasicCellContentViewConfigurationAccessibility *)v9 safeValueForKey:@"textLabel"];
    v2 = [v6 accessibilityLabel];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v6);
  }

  v5 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v5;
}

@end