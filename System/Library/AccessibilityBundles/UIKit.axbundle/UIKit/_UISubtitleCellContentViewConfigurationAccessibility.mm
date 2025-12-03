@interface _UISubtitleCellContentViewConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UISubtitleCellContentViewConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UISubtitleCellContentViewConfiguration";
  v4 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"subtitleLabel" withFullSignature:{v4, 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v11[1] = a2;
  v10.receiver = self;
  v10.super_class = _UISubtitleCellContentViewConfigurationAccessibility;
  v11[0] = [(_UISubtitleCellContentViewConfigurationAccessibility *)&v10 accessibilityLabel];
  if (![v11[0] length])
  {
    v9 = [(_UISubtitleCellContentViewConfigurationAccessibility *)selfCopy safeValueForKey:@"textLabel"];
    accessibilityLabel = [v9 accessibilityLabel];
    v7 = [(_UISubtitleCellContentViewConfigurationAccessibility *)selfCopy safeValueForKey:@"subtitleLabel"];
    accessibilityLabel2 = [v7 accessibilityLabel];
    v2 = __UIAXStringForVariables();
    v3 = v11[0];
    v11[0] = v2;
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](accessibilityLabel2);
    MEMORY[0x29EDC9740](v7);
    MEMORY[0x29EDC9740](accessibilityLabel);
    MEMORY[0x29EDC9740](v9);
  }

  v6 = MEMORY[0x29EDC9748](v11[0]);
  objc_storeStrong(v11, 0);

  return v6;
}

@end