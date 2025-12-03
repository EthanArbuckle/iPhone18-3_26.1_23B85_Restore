@interface PXGSingleViewContainerViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axContentViewLabel;
- (id)accessibilityCustomRotors;
- (id)accessibilityValue;
- (id)automationElements;
@end

@implementation PXGSingleViewContainerViewAccessibility

- (id)_axContentViewLabel
{
  _axContentView = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  accessibilityLabel = [_axContentView accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axContentView = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  accessibilityValue = [_axContentView accessibilityValue];

  return accessibilityValue;
}

- (BOOL)isAccessibilityElement
{
  _axContentViewLabel = [(PXGSingleViewContainerViewAccessibility *)self _axContentViewLabel];
  v3 = _axContentViewLabel;
  if (_axContentViewLabel)
  {
    v4 = [_axContentViewLabel length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axContentView = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  _accessibilitySupplementaryFooterViews = [_axContentView _accessibilitySupplementaryFooterViews];

  return _accessibilitySupplementaryFooterViews;
}

- (id)accessibilityCustomRotors
{
  _axContentView = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  accessibilityCustomRotors = [_axContentView accessibilityCustomRotors];

  return accessibilityCustomRotors;
}

- (id)automationElements
{
  _axContentView = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  automationElements = [_axContentView automationElements];

  return automationElements;
}

@end