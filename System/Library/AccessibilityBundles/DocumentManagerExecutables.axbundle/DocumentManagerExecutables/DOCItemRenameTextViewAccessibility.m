@interface DOCItemRenameTextViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsClearButtonInstalled;
- (int64_t)_accessibilitySortPriority;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupClearButton;
- (void)didMoveToSuperview;
- (void)installClearButton;
@end

@implementation DOCItemRenameTextViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemRenameTextView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemRenameTextView" hasInstanceMethod:@"accessibilityClearButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemRenameTextView" hasInstanceMethod:@"installClearButton" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = DOCItemRenameTextViewAccessibility;
  [(DOCItemRenameTextViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(DOCItemRenameTextViewAccessibility *)self _axMarkupClearButton];
}

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = DOCItemRenameTextViewAccessibility;
  [(DOCItemRenameTextViewAccessibility *)&v2 didMoveToSuperview];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)installClearButton
{
  v3.receiver = self;
  v3.super_class = DOCItemRenameTextViewAccessibility;
  [(DOCItemRenameTextViewAccessibility *)&v3 installClearButton];
  [(DOCItemRenameTextViewAccessibility *)self _axMarkupClearButton];
}

- (void)_axMarkupClearButton
{
  v3 = [(DOCItemRenameTextViewAccessibility *)self safeValueForKey:@"accessibilityClearButton"];
  v2 = accessibilityLocalizedString(@"text.view.clear");
  [v3 setAccessibilityLabel:v2];
}

- (int64_t)_accessibilitySortPriority
{
  if ([(DOCItemRenameTextViewAccessibility *)self _axIsClearButtonInstalled])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = DOCItemRenameTextViewAccessibility;
  return [(DOCItemRenameTextViewAccessibility *)&v4 _accessibilitySortPriority];
}

- (BOOL)_axIsClearButtonInstalled
{
  v3 = [(DOCItemRenameTextViewAccessibility *)self safeUIViewForKey:@"superview"];
  v4 = [v3 subviews];
  v5 = [(DOCItemRenameTextViewAccessibility *)self safeValueForKey:@"accessibilityClearButton"];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end