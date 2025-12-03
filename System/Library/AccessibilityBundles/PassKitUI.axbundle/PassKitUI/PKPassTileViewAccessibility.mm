@interface PKPassTileViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axHostingViewLabel;
- (id)accessibilityLabel;
@end

@implementation PKPassTileViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPassTileView" hasInstanceVariable:@"_title" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassTileView" hasInstanceVariable:@"_body" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassTileView" hasInstanceVariable:@"_footer" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassTileView" hasInstanceVariable:@"_foreignView" withType:"UIView"];
}

- (id)accessibilityLabel
{
  _axHostingView = [(PKPassTileViewAccessibility *)self _axHostingView];

  if (_axHostingView)
  {
    _axHostingViewLabel = [(PKPassTileViewAccessibility *)self _axHostingViewLabel];
  }

  else
  {
    v5 = [(PKPassTileViewAccessibility *)self safeUIViewForKey:@"_title"];
    accessibilityLabel = [v5 accessibilityLabel];

    v7 = [(PKPassTileViewAccessibility *)self safeUIViewForKey:@"_body"];
    accessibilityLabel2 = [v7 accessibilityLabel];

    v9 = [(PKPassTileViewAccessibility *)self safeUIViewForKey:@"_footer"];
    accessibilityLabel3 = [v9 accessibilityLabel];

    v11 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, accessibilityLabel, accessibilityLabel2, accessibilityLabel3}];
    _axHostingViewLabel = AXLabelForElements();
  }

  return _axHostingViewLabel;
}

- (id)_axHostingViewLabel
{
  _axHostingView = [(PKPassTileViewAccessibility *)self _axHostingView];
  v3 = [_axHostingView _accessibilityFindUnsortedDescendantsPassingTest:&__block_literal_global_1];

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