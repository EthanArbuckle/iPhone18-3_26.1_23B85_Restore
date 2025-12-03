@interface UITableViewCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityClearTableCellChildren;
- (void)_didRemoveSubview:(id)subview;
- (void)didAddSubview:(id)subview;
@end

@implementation UITableViewCellContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIView";
  [location[0] validateClass:@"UITableViewCellContentView" isKindOfClass:?];
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"_didRemoveSubview:" withFullSignature:{"v", "@", 0}];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilityClearTableCellChildren
{
  v27 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  if (self)
  {
    v23 = 0;
    objc_opt_class();
    v10 = [selfCopy _accessibilityAncestorIsKindOf:objc_opt_class()];
    v22 = __UIAccessibilityCastAsSafeCategory();
    MEMORY[0x29EDC9740](v10);
    v21 = MEMORY[0x29EDC9748](v22);
    objc_storeStrong(&v22, 0);
    v24 = v21;
    v20 = 0;
    memset(__b, 0, sizeof(__b));
    obj = _UIAccessibilityFocusedElements();
    v9 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v9)
    {
      v5 = *__b[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*__b[2] != v5)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v6);
        v3 = v19;
        v12 = MEMORY[0x29EDCA5F8];
        v13 = -1073741824;
        v14 = 0;
        v15 = __79__UITableViewCellContentViewAccessibility__accessibilityClearTableCellChildren__block_invoke;
        v16 = &unk_29F30C818;
        v17 = MEMORY[0x29EDC9748](v24);
        v1 = [v3 _accessibilityFindAncestor:&v12 startWithSelf:0];
        v20 = v1 != 0;
        MEMORY[0x29EDC9740](v1);
        if (v20)
        {
          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        objc_storeStrong(&v17, 0);
        if (v11)
        {
          break;
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
    if (!v20)
    {
      [v24 _accessibilityClearChildren];
    }

    objc_storeStrong(&v24, 0);
  }
}

BOOL __79__UITableViewCellContentViewAccessibility__accessibilityClearTableCellChildren__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0] == a1[4];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)_didRemoveSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellContentViewAccessibility;
  [(UITableViewCellContentViewAccessibility *)&v3 _didRemoveSubview:location[0]];
  [(UITableViewCellContentViewAccessibility *)selfCopy _accessibilityClearTableCellChildren];
  objc_storeStrong(location, 0);
}

- (void)didAddSubview:(id)subview
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subview);
  v3.receiver = selfCopy;
  v3.super_class = UITableViewCellContentViewAccessibility;
  [(UITableViewCellContentViewAccessibility *)&v3 didAddSubview:location[0]];
  [(UITableViewCellContentViewAccessibility *)selfCopy _accessibilityClearTableCellChildren];
  objc_storeStrong(location, 0);
}

@end