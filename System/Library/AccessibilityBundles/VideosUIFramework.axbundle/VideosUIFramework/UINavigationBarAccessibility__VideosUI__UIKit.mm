@interface UINavigationBarAccessibility__VideosUI__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation UINavigationBarAccessibility__VideosUI__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUIAccountSettingsButton"];
  [validationsCopy validateClass:@"UINavigationController"];
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
    accessibilityElements = [(UINavigationBarAccessibility__VideosUI__UIKit *)&v22 accessibilityElements];
    v5 = [v3 orderedSetWithArray:accessibilityElements];

    v21 = 0;
    objc_opt_class();
    v6 = [(UINavigationBarAccessibility__VideosUI__UIKit *)self _accessibilityFindViewControllerAncestorOfType:accessibilityElements_targetClass];
    v7 = __UIAccessibilityCastAsClass();

    view = [v7 view];

    if (view)
    {
      v9 = [view _accessibilityFindSubviewDescendant:&__block_literal_global_301];
      if (v9)
      {
        [v5 addObject:v9];
      }
    }

    else
    {
      v9 = 0;
    }

    accessibilityLabel = [v9 accessibilityLabel];
    v12 = accessibilityLabel;
    if (accessibilityLabel && [accessibilityLabel length])
    {
      array = [v5 array];
    }

    array2 = [v5 array];
    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = __70__UINavigationBarAccessibility__VideosUI__UIKit_accessibilityElements__block_invoke_4;
    v18[3] = &unk_29F31C568;
    v19 = v12;
    v20 = v9;
    v15 = v9;
    v16 = v12;
    accessibilityElements2 = [array2 ax_filteredArrayUsingBlock:v18];
  }

  else
  {
    v23.receiver = self;
    v23.super_class = UINavigationBarAccessibility__VideosUI__UIKit;
    accessibilityElements2 = [(UINavigationBarAccessibility__VideosUI__UIKit *)&v23 accessibilityElements];
  }

  return accessibilityElements2;
}

@end