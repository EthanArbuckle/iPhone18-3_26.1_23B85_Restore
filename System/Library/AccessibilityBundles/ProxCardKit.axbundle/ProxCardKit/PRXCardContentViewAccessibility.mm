@interface PRXCardContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PRXCardContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PRXCardContentView" hasInstanceMethod:@"dismissButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRXCardContentView" hasInstanceMethod:@"titleView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRXCardContentView" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = PRXCardContentViewAccessibility;
  [(PRXCardContentViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(PRXCardContentViewAccessibility *)self safeUIViewForKey:@"titleView"];
  [v3 _accessibilitySetSortPriority:20];

  v4 = [(PRXCardContentViewAccessibility *)self safeUIViewForKey:@"dismissButton"];
  [v4 _accessibilitySetSortPriority:10];

  v5 = accessibilityLocalizedString(@"close.button");
  v6 = [(PRXCardContentViewAccessibility *)self safeUIViewForKey:@"dismissButton"];
  [v6 setAccessibilityLabel:v5];

  v7 = *MEMORY[0x29EDC7F80];
  v8 = [(PRXCardContentViewAccessibility *)self safeUIViewForKey:@"titleView"];
  [v8 setAccessibilityTraits:v7];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PRXCardContentViewAccessibility;
  [(PRXCardContentViewAccessibility *)&v3 layoutSubviews];
  [(PRXCardContentViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end