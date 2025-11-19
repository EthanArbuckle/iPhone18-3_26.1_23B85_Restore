@interface SFUnifiedBarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
@end

@implementation SFUnifiedBarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFUnifiedBarButton" hasInstanceMethod:@"initWithImage:action:" withFullSignature:{"@", "@?", 0}];
  [v3 validateClass:@"SFUnifiedBarButton" hasInstanceVariable:@"_buttonView" withType:"SFUnifiedBarButtonView"];
}

- (void)setAccessibilityLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = SFUnifiedBarButtonAccessibility;
  v4 = a3;
  [(SFUnifiedBarButtonAccessibility *)&v6 setAccessibilityLabel:v4];
  v5 = [(SFUnifiedBarButtonAccessibility *)self safeValueForKey:@"_buttonView", v6.receiver, v6.super_class];
  [v5 setAccessibilityLabel:v4];
}

@end