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
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  accessibilityTraits = [_axPageControl accessibilityTraits];

  return accessibilityTraits;
}

- (int64_t)_accessibilityPageCount
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  _accessibilityPageCount = [_axPageControl _accessibilityPageCount];

  return _accessibilityPageCount;
}

- (int64_t)_accessibilityPageIndex
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  _accessibilityPageIndex = [_axPageControl _accessibilityPageIndex];

  return _accessibilityPageIndex;
}

- (BOOL)isAccessibilityElement
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  isAccessibilityElement = [_axPageControl isAccessibilityElement];

  return isAccessibilityElement;
}

- (id)accessibilityLabel
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  accessibilityLabel = [_axPageControl accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  accessibilityValue = [_axPageControl accessibilityValue];

  return accessibilityValue;
}

- (void)accessibilityIncrement
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  [_axPageControl accessibilityIncrement];
}

- (void)accessibilityDecrement
{
  _axPageControl = [(PXGPageControlAccessibility *)self _axPageControl];
  [_axPageControl accessibilityDecrement];
}

@end