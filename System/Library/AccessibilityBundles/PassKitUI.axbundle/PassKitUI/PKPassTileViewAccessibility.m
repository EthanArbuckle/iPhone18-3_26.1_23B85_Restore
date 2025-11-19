@interface PKPassTileViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axHostingViewLabel;
- (id)accessibilityLabel;
@end

@implementation PKPassTileViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPassTileView" hasInstanceVariable:@"_title" withType:"UILabel"];
  [v3 validateClass:@"PKPassTileView" hasInstanceVariable:@"_body" withType:"UILabel"];
  [v3 validateClass:@"PKPassTileView" hasInstanceVariable:@"_footer" withType:"UILabel"];
  [v3 validateClass:@"PKPassTileView" hasInstanceVariable:@"_foreignView" withType:"UIView"];
}

- (id)accessibilityLabel
{
  v3 = [(PKPassTileViewAccessibility *)self _axHostingView];

  if (v3)
  {
    v4 = [(PKPassTileViewAccessibility *)self _axHostingViewLabel];
  }

  else
  {
    v5 = [(PKPassTileViewAccessibility *)self safeUIViewForKey:@"_title"];
    v6 = [v5 accessibilityLabel];

    v7 = [(PKPassTileViewAccessibility *)self safeUIViewForKey:@"_body"];
    v8 = [v7 accessibilityLabel];

    v9 = [(PKPassTileViewAccessibility *)self safeUIViewForKey:@"_footer"];
    v10 = [v9 accessibilityLabel];

    v11 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v6, v8, v10}];
    v4 = AXLabelForElements();
  }

  return v4;
}

- (id)_axHostingViewLabel
{
  v2 = [(PKPassTileViewAccessibility *)self _axHostingView];
  v3 = [v2 _accessibilityFindUnsortedDescendantsPassingTest:&__block_literal_global_1];

  v4 = AXLabelForElements();

  return v4;
}

BOOL __50__PKPassTileViewAccessibility__axHostingViewLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isAccessibilityElement])
  {
    v3 = [v2 accessibilityLabel];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end