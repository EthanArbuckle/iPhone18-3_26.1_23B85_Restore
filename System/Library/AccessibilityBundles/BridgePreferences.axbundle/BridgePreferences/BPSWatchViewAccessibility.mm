@interface BPSWatchViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation BPSWatchViewAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(BPSWatchViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (!v3)
  {
    return 1;
  }

  v4 = [(BPSWatchViewAccessibility *)self isAccessibilityUserDefinedElement];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)accessibilityLabel
{
  v3 = [(BPSWatchViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
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