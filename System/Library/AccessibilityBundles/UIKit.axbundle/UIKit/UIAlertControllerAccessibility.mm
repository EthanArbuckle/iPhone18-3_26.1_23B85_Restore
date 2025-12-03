@interface UIAlertControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation UIAlertControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIAlertController" isKindOfClass:@"UIViewController"];
  [location[0] validateClass:?];
  [location[0] validateClass:@"_UIAlertControllerView" hasProperty:@"_contentView" withType:"@"];
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIAlertControllerPhoneTVMacView" hasInstanceVariable:@"_actionViews" withType:"NSMutableArray"];
  objc_storeStrong(location, 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v11 = a2;
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = UIAlertControllerAccessibility;
  [(UIAlertControllerAccessibility *)&v9 viewDidAppear:appear];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7380], 0);
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __48__UIAlertControllerAccessibility_viewDidAppear___block_invoke;
  v7 = &unk_29F30C7C8;
  v8 = MEMORY[0x29EDC9748](selfCopy);
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v8, 0);
}

void __48__UIAlertControllerAccessibility_viewDidAppear___block_invoke(id *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = [a1[4] safeValueForKey:@"view"];
  v16 = [v17[0] safeValueForKey:@"_contentView"];
  location = [*MEMORY[0x29EDC8008] _accessibilityResponderElement];
  v11 = [v17[0] accessibilityIdentifier];
  v12 = [v11 isEqualToString:@"VO_USAGE_CONFIRMED_ALERT"];
  v1 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (v12)
  {
    memset(__b, 0, sizeof(__b));
    obj = [v17[0] safeValueForKey:@"_actionViews"];
    v10 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        argument = *(__b[1] + 8 * v7);
        v3 = [argument accessibilityIdentifier];
        v4 = [v3 isEqualToString:@"VO_USAGE_CONFIRMED_TUTORIAL_BUTTON"];
        *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
        if (v4)
        {
          break;
        }

        ++v7;
        if (v5 + 1 >= v8)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v18 count:{16, v2}];
          if (!v8)
          {
            goto LABEL_10;
          }
        }
      }

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], argument);
    }

LABEL_10:
    v1 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  }

  if (([location _accessibilityIsDescendantOfElement:{v17[0], *&v1}] & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7488], v16);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(v17, 0);
}

@end