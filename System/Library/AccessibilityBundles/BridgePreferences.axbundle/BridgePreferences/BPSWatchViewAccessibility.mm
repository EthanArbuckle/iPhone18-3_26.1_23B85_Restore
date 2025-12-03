@interface BPSWatchViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation BPSWatchViewAccessibility

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(BPSWatchViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(BPSWatchViewAccessibility *)self isAccessibilityUserDefinedElement];
  bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

  return bOOLValue;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(BPSWatchViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    [(BPSWatchViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    accessibilityLocalizedString(@"generic.watch.view");
  }
  v4 = ;

  return v4;
}

@end