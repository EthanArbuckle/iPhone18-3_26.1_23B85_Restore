@interface _UIContextMenuCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation _UIContextMenuCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end