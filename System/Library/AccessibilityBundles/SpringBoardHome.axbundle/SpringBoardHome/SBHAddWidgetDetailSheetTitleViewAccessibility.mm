@interface SBHAddWidgetDetailSheetTitleViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHAddWidgetDetailSheetTitleViewAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityLabel = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)self accessibilityLabel];
  v3 = accessibilityLabel != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)self safeValueForKey:@"textLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    accessibilityLabel2 = accessibilityLabel;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHAddWidgetDetailSheetTitleViewAccessibility;
    accessibilityLabel2 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = accessibilityLabel2;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  accessibilityLabel = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)self accessibilityLabel];
  if (accessibilityLabel)
  {
    v7.receiver = self;
    v7.super_class = SBHAddWidgetDetailSheetTitleViewAccessibility;
    accessibilityTraits = *MEMORY[0x29EDC7F80] | [(SBHAddWidgetDetailSheetTitleViewAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHAddWidgetDetailSheetTitleViewAccessibility;
    accessibilityTraits = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)&v6 accessibilityTraits];
  }

  return accessibilityTraits;
}

@end