@interface PXGPageControlAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityPageCount;
- (int64_t)_accessibilityPageIndex;
- (unint64_t)accessibilityTraits;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
@end

@implementation PXGPageControlAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (int64_t)_accessibilityPageCount
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  v3 = [v2 _accessibilityPageCount];

  return v3;
}

- (int64_t)_accessibilityPageIndex
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  v3 = [v2 _accessibilityPageIndex];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  v3 = [v2 isAccessibilityElement];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (void)accessibilityIncrement
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  [v2 accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  v2 = [(PXGPageControlAccessibility *)self _axPageControl];
  [v2 accessibilityDecrement];
}

@end