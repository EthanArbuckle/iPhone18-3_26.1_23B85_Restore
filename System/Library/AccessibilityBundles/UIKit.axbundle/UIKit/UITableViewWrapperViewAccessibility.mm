@interface UITableViewWrapperViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityScrollingEnabled;
- (CGRect)_accessibilityContentFrame;
- (UIEdgeInsets)_accessibilityVisibleContentInset;
@end

@implementation UITableViewWrapperViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (UIEdgeInsets)_accessibilityVisibleContentInset
{
  v3 = *(MEMORY[0x29EDC80C8] + 8);
  v2 = *MEMORY[0x29EDC80C8];
  v5 = *(MEMORY[0x29EDC80C8] + 24);
  v4 = *(MEMORY[0x29EDC80C8] + 16);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGRect)_accessibilityContentFrame
{
  v12 = self;
  location[1] = a2;
  location[0] = [(UITableViewWrapperViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (location[0])
  {
    [location[0] _accessibilityContentFrame];
  }

  else
  {
    v10.receiver = v12;
    v10.super_class = UITableViewWrapperViewAccessibility;
    [(UITableViewWrapperViewAccessibility *)&v10 _accessibilityContentFrame];
  }

  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  objc_storeStrong(location, 0);
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (BOOL)_accessibilityScrollingEnabled
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITableViewWrapperViewAccessibility *)self _accessibilityUserDefinedScrollingEnabled];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

@end