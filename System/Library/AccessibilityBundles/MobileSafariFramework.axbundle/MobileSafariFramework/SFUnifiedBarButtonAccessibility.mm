@interface SFUnifiedBarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setAccessibilityLabel:(id)label;
@end

@implementation SFUnifiedBarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFUnifiedBarButton" hasInstanceMethod:@"initWithImage:action:" withFullSignature:{"@", "@?", 0}];
  [validationsCopy validateClass:@"SFUnifiedBarButton" hasInstanceVariable:@"_buttonView" withType:"SFUnifiedBarButtonView"];
}

- (void)setAccessibilityLabel:(id)label
{
  v6.receiver = self;
  v6.super_class = SFUnifiedBarButtonAccessibility;
  labelCopy = label;
  [(SFUnifiedBarButtonAccessibility *)&v6 setAccessibilityLabel:labelCopy];
  v5 = [(SFUnifiedBarButtonAccessibility *)self safeValueForKey:@"_buttonView", v6.receiver, v6.super_class];
  [v5 setAccessibilityLabel:labelCopy];
}

@end