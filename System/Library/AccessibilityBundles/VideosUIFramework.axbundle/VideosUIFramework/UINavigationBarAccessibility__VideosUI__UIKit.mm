@interface UINavigationBarAccessibility__VideosUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation UINavigationBarAccessibility__VideosUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUIAccountSettingsButton"];
  [v3 validateClass:@"UINavigationController"];
}

- (id)accessibilityElements
{
  if (accessibilityElements_onceToken_accountButtonClass != -1)
  {
    [UINavigationBarAccessibility__VideosUI__UIKit accessibilityElements];
  }

  if (accessibilityElements_onceToken_targetClass != -1)
  {
    [UINavigationBarAccessibility__VideosUI__UIKit accessibilityElements];
  }

  if (accessibilityElements_accountButtonClass)
  {
    v3 = MEMORY[0x29EDB8E10];
    v22.receiver = self;
    v22.super_class = UINavigationBarAccessibility__VideosUI__UIKit;
    v4 = [(UINavigationBarAccessibility__VideosUI__UIKit *)&v22 accessibilityElements];
    v5 = [v3 orderedSetWithArray:v4];

    v21 = 0;
    objc_opt_class();
    v6 = [(UINavigationBarAccessibility__VideosUI__UIKit *)self _accessibilityFindViewControllerAncestorOfType:accessibilityElements_targetClass];
    v7 = __UIAccessibilityCastAsClass();

    v8 = [v7 view];

    if (v8)
    {
      v9 = [v8 _accessibilityFindSubviewDescendant:&__block_literal_global_301];
      if (v9)
      {
        [v5 addObject:v9];
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = [v9 accessibilityLabel];
    v12 = v11;
    if (v11 && [v11 length])
    {
      v13 = [v5 array];
    }

    v14 = [v5 array];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke_4;
    v18[3] = &unk_29F31C568;
    v19 = v12;
    v20 = v9;
    v15 = v9;
    v16 = v12;
    v10 = [v14 ax_filteredArrayUsingBlock:v18];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = UINavigationBarAccessibility__VideosUI__UIKit;
    v10 = [(UINavigationBarAccessibility__VideosUI__UIKit *)&v23 accessibilityElements];
  }

  return v10;
}

@end