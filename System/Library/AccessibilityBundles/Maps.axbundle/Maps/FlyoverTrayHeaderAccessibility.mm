@interface FlyoverTrayHeaderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_setupViews;
@end

@implementation FlyoverTrayHeaderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FlyoverTrayHeader" hasInstanceMethod:@"_setupViews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"FlyoverTrayHeader" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = FlyoverTrayHeaderAccessibility;
  [(FlyoverTrayHeaderAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = AXMapsLocString(@"CLOSE_BUTTON");
  v4 = [(FlyoverTrayHeaderAccessibility *)self safeUIViewForKey:@"button"];
  [v4 setAccessibilityLabel:v3];
}

- (void)_setupViews
{
  v3.receiver = self;
  v3.super_class = FlyoverTrayHeaderAccessibility;
  [(FlyoverTrayHeaderAccessibility *)&v3 _setupViews];
  [(FlyoverTrayHeaderAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end