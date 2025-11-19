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
  v2 = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v2 = [(PXGSingleViewContainerViewAccessibility *)self _axContentViewLabel];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v2 = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  v3 = [v2 _accessibilitySupplementaryFooterViews];

  return v3;
}

- (id)accessibilityCustomRotors
{
  v2 = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  v3 = [v2 accessibilityCustomRotors];

  return v3;
}

- (id)automationElements
{
  v2 = [(PXGSingleViewContainerViewAccessibility *)self _axContentView];
  v3 = [v2 automationElements];

  return v3;
}

@end