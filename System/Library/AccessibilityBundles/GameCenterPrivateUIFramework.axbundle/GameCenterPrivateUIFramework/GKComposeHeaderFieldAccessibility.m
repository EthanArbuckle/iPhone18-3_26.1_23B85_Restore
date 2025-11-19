@interface GKComposeHeaderFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (GKComposeHeaderFieldAccessibility)initWithFrame:(CGRect)a3;
@end

@implementation GKComposeHeaderFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GKComposeHeaderField" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"GKComposeHeaderField" hasInstanceMethod:@"valueLabel" withFullSignature:{"@", 0}];
}

- (GKComposeHeaderFieldAccessibility)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = GKComposeHeaderFieldAccessibility;
  v3 = [(GKComposeHeaderFieldAccessibility *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(GKComposeHeaderFieldAccessibility *)v3 safeValueForKey:@"nameLabel"];
  v5 = [(GKComposeHeaderFieldAccessibility *)v3 safeValueForKey:@"valueLabel"];
  [v4 setAccessibilityIdentifier:@"ComposeHeaderFieldNameLabel"];
  [v5 setAccessibilityIdentifier:@"ComposeHeaderFieldValueLabel"];

  return v3;
}

@end