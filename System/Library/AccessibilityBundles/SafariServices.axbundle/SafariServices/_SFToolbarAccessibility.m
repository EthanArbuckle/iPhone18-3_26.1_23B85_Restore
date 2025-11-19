@interface _SFToolbarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHitTestShouldFallbackToNearestChild;
- (BOOL)shouldGroupAccessibilityChildren;
- (unint64_t)accessibilityTraits;
- (void)setItems:(id)a3 animated:(BOOL)a4;
@end

@implementation _SFToolbarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFNavigationBar"];
  [v3 validateClass:@"_SFToolbar" hasInstanceMethod:@"setItems:animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v3 = [(_SFToolbarAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2EB320](@"_SFNavigationBar", a2)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = _SFToolbarAccessibility;
  return [(_SFToolbarAccessibility *)&v5 shouldGroupAccessibilityChildren];
}

- (BOOL)_accessibilityHitTestShouldFallbackToNearestChild
{
  v3 = [(_SFToolbarAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2EB320](@"_SFNavigationBar", a2)];

  if (v3)
  {
    return 0;
  }

  v5.receiver = self;
  v5.super_class = _SFToolbarAccessibility;
  return [(_SFToolbarAccessibility *)&v5 _accessibilityHitTestShouldFallbackToNearestChild];
}

- (unint64_t)accessibilityTraits
{
  v3 = [(_SFToolbarAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2EB320](@"_SFNavigationBar", a2)];

  if (v3)
  {
    return *MEMORY[0x29EDC7FA0];
  }

  v5.receiver = self;
  v5.super_class = _SFToolbarAccessibility;
  return [(_SFToolbarAccessibility *)&v5 accessibilityTraits];
}

- (void)setItems:(id)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = _SFToolbarAccessibility;
  [(_SFToolbarAccessibility *)&v5 setItems:a3 animated:a4];
  [(_SFToolbarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end