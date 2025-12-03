@interface GKComposeHeaderFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (GKComposeHeaderFieldAccessibility)initWithFrame:(CGRect)frame;
@end

@implementation GKComposeHeaderFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKComposeHeaderField" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKComposeHeaderField" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
}

- (GKComposeHeaderFieldAccessibility)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = GKComposeHeaderFieldAccessibility;
  v3 = [(GKComposeHeaderFieldAccessibility *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = [(GKComposeHeaderFieldAccessibility *)v3 safeValueForKey:@"nameLabel"];
  v5 = [(GKComposeHeaderFieldAccessibility *)v3 safeValueForKey:@"valueLabel"];
  [v4 setAccessibilityIdentifier:@"ComposeHeaderFieldNameLabel"];
  [v5 setAccessibilityIdentifier:@"ComposeHeaderFieldValueLabel"];

  return v3;
}

@end