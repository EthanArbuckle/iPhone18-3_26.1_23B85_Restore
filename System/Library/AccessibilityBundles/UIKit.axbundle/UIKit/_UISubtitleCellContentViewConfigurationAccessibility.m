@interface _UISubtitleCellContentViewConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UISubtitleCellContentViewConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UISubtitleCellContentViewConfiguration";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"subtitleLabel" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  v12 = self;
  v11[1] = a2;
  v10.receiver = self;
  v10.super_class = _UISubtitleCellContentViewConfigurationAccessibility;
  v11[0] = [(_UISubtitleCellContentViewConfigurationAccessibility *)&v10 accessibilityLabel];
  if (![v11[0] length])
  {
    v9 = [(_UISubtitleCellContentViewConfigurationAccessibility *)v12 safeValueForKey:@"textLabel"];
    v8 = [v9 accessibilityLabel];
    v7 = [(_UISubtitleCellContentViewConfigurationAccessibility *)v12 safeValueForKey:@"subtitleLabel"];
    v5 = [v7 accessibilityLabel];
    v2 = __UIAXStringForVariables();
    v3 = v11[0];
    v11[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
  }

  v6 = MEMORY[0x29EDC9748](v11[0]);
  objc_storeStrong(v11, 0);

  return v6;
}

@end