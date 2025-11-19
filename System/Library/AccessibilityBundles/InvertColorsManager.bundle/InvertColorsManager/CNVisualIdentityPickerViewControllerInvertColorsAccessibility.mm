@interface CNVisualIdentityPickerViewControllerInvertColorsAccessibility
- (BOOL)_axIsAddItem:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
@end

@implementation CNVisualIdentityPickerViewControllerInvertColorsAccessibility

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v5 = self;
  v9.receiver = self;
  v9.super_class = CNVisualIdentityPickerViewControllerInvertColorsAccessibility;
  v6 = a4;
  v7 = [(CNVisualIdentityPickerViewControllerInvertColorsAccessibility *)&v9 collectionView:a3 cellForItemAtIndexPath:v6];
  LODWORD(v5) = [(CNVisualIdentityPickerViewControllerInvertColorsAccessibility *)v5 _axIsAddItem:v6, v9.receiver, v9.super_class];

  [v7 setAccessibilityIgnoresInvertColors:v5 ^ 1];

  return v7;
}

- (BOOL)_axIsAddItem:(id)a3
{
  v4 = a3;
  [(CNVisualIdentityPickerViewControllerInvertColorsAccessibility *)self safeValueForKey:@"dataSource"];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v7 = v12 = 0;
  v8 = v4;
  AXPerformSafeBlock();
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

@end