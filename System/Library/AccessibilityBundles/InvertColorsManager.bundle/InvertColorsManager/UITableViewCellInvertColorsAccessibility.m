@interface UITableViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation UITableViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_B0C0;
  v8 = sub_B0D0;
  v9 = 0;
  AXPerformSafeBlock();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  [v2 setAccessibilityIgnoresInvertColors:{1, _NSConcreteStackBlock, 3221225472, sub_CD5C, &unk_44728, self, &v4}];
}

@end