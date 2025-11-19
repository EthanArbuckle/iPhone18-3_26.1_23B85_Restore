@interface _UIKeyShortcutHUDToolbarCategoryCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIKeyShortcutHUDToolbarCategoryCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIKeyShortcutHUDToolbarCategoryCellAccessibility;
  return [(_UIKeyShortcutHUDToolbarCategoryCellAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F70];
}

@end