@interface MediaControlsRoundButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MediaControlsRoundButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsRoundButton" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"MediaControlsRoundButton" hasInstanceMethod:@"assetView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MRUAssetView" hasInstanceMethod:@"packageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MediaControlsRoundButtonAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame
{
  v2 = [(MediaControlsRoundButtonAccessibility *)self safeValueForKey:@"assetView"];
  v3 = [v2 safeUIViewForKey:@"packageView"];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MediaControlsRoundButtonAccessibility;
  return (*MEMORY[0x29EDC7F70] | [(MediaControlsRoundButtonAccessibility *)&v3 accessibilityTraits]) & ~*MEMORY[0x29EDC7FA8];
}

@end