@interface MessageWithActionTileViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MessageWithActionTileViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthExperienceUI.MessageWithActionTileView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthExperienceUI.MessageWithActionTileView" hasInstanceMethod:@"bodyLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HealthExperienceUI.MessageWithActionTileView" hasInstanceMethod:@"actionButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(MessageWithActionTileViewAccessibility *)self safeUIViewForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(MessageWithActionTileViewAccessibility *)self safeUIViewForKey:@"bodyLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = [(MessageWithActionTileViewAccessibility *)self safeUIViewForKey:@"actionButton"];
  accessibilityLabel3 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end