@interface ExpandableTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation ExpandableTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SeymourUI.ExpandableTextView" hasSwiftField:@"moreTextLabel" withSwiftType:"GradientBackedLabelView"];
  [v3 validateClass:@"SeymourUI.ExpandableTextView" hasInstanceMethod:@"handleTapGesture:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = ExpandableTextViewAccessibility;
  [(ExpandableTextViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(ExpandableTextViewAccessibility *)self safeSwiftValueForKey:@"moreTextLabel"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __77__ExpandableTextViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2F6758;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityActivateBlock:v4];
  objc_destroyWeak(&v5);

  objc_destroyWeak(&location);
}

uint64_t __77__ExpandableTextViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v2, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v2);
  return 1;
}

void __77__ExpandableTextViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTapGesture:0];
}

@end