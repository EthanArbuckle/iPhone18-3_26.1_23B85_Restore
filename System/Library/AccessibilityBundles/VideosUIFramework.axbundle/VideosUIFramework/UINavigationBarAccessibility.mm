@interface UINavigationBarAccessibility
@end

@implementation UINavigationBarAccessibility

uint64_t __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke()
{
  result = MEMORY[0x29ED3FF70](@"VUIAccountSettingsButton");
  accessibilityElements_accountButtonClass = result;
  return result;
}

uint64_t __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke_2()
{
  result = objc_opt_class();
  accessibilityElements_targetClass = result;
  return result;
}

BOOL __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if ([v5 containsString:@"UIKitBarItemHost"])
  {
    v6 = [v3 _accessibilityDescendantOfType:MEMORY[0x29ED3FF70](@"SwiftUI.AccessibilityNode")];
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__0;
    v16 = __Block_byref_object_dispose__0;
    v17 = 0;
    v11 = MEMORY[0x29EDCA5F8];
    v7 = v6;
    AXPerformSafeBlock();
    v8 = v13[5];

    _Block_object_dispose(&v12, 8);
    if ([v8 isEqualToString:{*(a1 + 32), v11, 3221225472, __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke_308, &unk_29F31BE78}])
    {
      v9 = *(a1 + 40) == v3;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke_308(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityLabel];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end