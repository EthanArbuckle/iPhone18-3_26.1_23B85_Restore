@interface SBHAddWidgetDetailSheetTitleViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBHAddWidgetDetailSheetTitleViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)self accessibilityLabel];
  v3 = v2 != 0;

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)self safeValueForKey:@"textLabel"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBHAddWidgetDetailSheetTitleViewAccessibility;
    v5 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)&v8 accessibilityLabel];
  }

  v6 = v5;

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)self accessibilityLabel];
  if (v3)
  {
    v7.receiver = self;
    v7.super_class = SBHAddWidgetDetailSheetTitleViewAccessibility;
    v4 = *MEMORY[0x29EDC7F80] | [(SBHAddWidgetDetailSheetTitleViewAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = SBHAddWidgetDetailSheetTitleViewAccessibility;
    v4 = [(SBHAddWidgetDetailSheetTitleViewAccessibility *)&v6 accessibilityTraits];
  }

  return v4;
}

@end