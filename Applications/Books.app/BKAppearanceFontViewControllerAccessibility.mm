@interface BKAppearanceFontViewControllerAccessibility
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 setSelectionState:(BOOL)a4 cell:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation BKAppearanceFontViewControllerAccessibility

- (void)viewDidAppear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = BKAppearanceFontViewControllerAccessibility;
  [(BKAppearanceFontViewControllerAccessibility *)&v3 viewDidAppear:a3];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = BKAppearanceFontViewControllerAccessibility;
  v4 = [(BKAppearanceFontViewControllerAccessibility *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v5 = [v4 accessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 accessoryView];
    v8 = sub_1000765EC(@"download.font.button");
    [v7 setAccessibilityLabel:v8];
  }

  return v4;
}

- (void)tableView:(id)a3 setSelectionState:(BOOL)a4 cell:(id)a5
{
  v5 = a4;
  v10.receiver = self;
  v10.super_class = BKAppearanceFontViewControllerAccessibility;
  v7 = a5;
  [(BKAppearanceFontViewControllerAccessibility *)&v10 tableView:a3 setSelectionState:v5 cell:v7];
  v8 = [v7 accessibilityTraits];
  if (v5)
  {
    v9 = UIAccessibilityTraitSelected | v8;
  }

  else
  {
    v9 = v8 & ~UIAccessibilityTraitSelected;
  }

  [v7 setAccessibilityTraits:v9];
}

@end