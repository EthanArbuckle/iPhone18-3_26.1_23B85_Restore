@interface UIPrintOrientationOptionAccessibility
- (id)createPrintOptionTableViewCell;
@end

@implementation UIPrintOrientationOptionAccessibility

- (id)createPrintOptionTableViewCell
{
  v10.receiver = self;
  v10.super_class = UIPrintOrientationOptionAccessibility;
  v2 = [(UIPrintOrientationOptionAccessibility *)&v10 createPrintOptionTableViewCell];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"accessoryView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 numberOfSegments] == 2)
  {
    v5 = [v4 imageForSegmentAtIndex:0];
    v6 = accessibilityLocalizedString(@"print.portrait.button.label");
    [v5 setAccessibilityLabel:v6];

    v7 = [v4 imageForSegmentAtIndex:1];
    v8 = accessibilityLocalizedString(@"print.landscape.button.label");
    [v7 setAccessibilityLabel:v8];
  }

  return v2;
}

@end