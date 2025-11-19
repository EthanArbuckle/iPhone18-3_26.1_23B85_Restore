@interface MessageWithActionTileViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MessageWithActionTileViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HealthExperienceUI.MessageWithActionTileView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HealthExperienceUI.MessageWithActionTileView" hasInstanceMethod:@"bodyLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HealthExperienceUI.MessageWithActionTileView" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MessageWithActionTileViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(MessageWithActionTileViewAccessibility *)self safeUIViewForKey:@"bodyLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [(MessageWithActionTileViewAccessibility *)self safeUIViewForKey:@"actionButton"];
  v8 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end