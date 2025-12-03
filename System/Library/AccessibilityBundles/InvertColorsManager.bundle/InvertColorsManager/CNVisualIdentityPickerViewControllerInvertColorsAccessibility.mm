@interface CNVisualIdentityPickerViewControllerInvertColorsAccessibility
- (BOOL)_axIsAddItem:(id)item;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
@end

@implementation CNVisualIdentityPickerViewControllerInvertColorsAccessibility

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  selfCopy = self;
  v9.receiver = self;
  v9.super_class = CNVisualIdentityPickerViewControllerInvertColorsAccessibility;
  pathCopy = path;
  v7 = [(CNVisualIdentityPickerViewControllerInvertColorsAccessibility *)&v9 collectionView:view cellForItemAtIndexPath:pathCopy];
  LODWORD(selfCopy) = [(CNVisualIdentityPickerViewControllerInvertColorsAccessibility *)selfCopy _axIsAddItem:pathCopy, v9.receiver, v9.super_class];

  [v7 setAccessibilityIgnoresInvertColors:selfCopy ^ 1];

  return v7;
}

- (BOOL)_axIsAddItem:(id)item
{
  itemCopy = item;
  [(CNVisualIdentityPickerViewControllerInvertColorsAccessibility *)self safeValueForKey:@"dataSource"];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v7 = v12 = 0;
  v8 = itemCopy;
  AXPerformSafeBlock();
  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v5;
}

@end