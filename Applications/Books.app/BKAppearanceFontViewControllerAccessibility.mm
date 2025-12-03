@interface BKAppearanceFontViewControllerAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view setSelectionState:(BOOL)state cell:(id)cell;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation BKAppearanceFontViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = BKAppearanceFontViewControllerAccessibility;
  [(BKAppearanceFontViewControllerAccessibility *)&v3 viewDidAppear:appear];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = BKAppearanceFontViewControllerAccessibility;
  v4 = [(BKAppearanceFontViewControllerAccessibility *)&v10 tableView:view cellForRowAtIndexPath:path];
  accessoryView = [v4 accessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    accessoryView2 = [v4 accessoryView];
    v8 = sub_1000765EC(@"download.font.button");
    [accessoryView2 setAccessibilityLabel:v8];
  }

  return v4;
}

- (void)tableView:(id)view setSelectionState:(BOOL)state cell:(id)cell
{
  stateCopy = state;
  v10.receiver = self;
  v10.super_class = BKAppearanceFontViewControllerAccessibility;
  cellCopy = cell;
  [(BKAppearanceFontViewControllerAccessibility *)&v10 tableView:view setSelectionState:stateCopy cell:cellCopy];
  accessibilityTraits = [cellCopy accessibilityTraits];
  if (stateCopy)
  {
    v9 = UIAccessibilityTraitSelected | accessibilityTraits;
  }

  else
  {
    v9 = accessibilityTraits & ~UIAccessibilityTraitSelected;
  }

  [cellCopy setAccessibilityTraits:v9];
}

@end