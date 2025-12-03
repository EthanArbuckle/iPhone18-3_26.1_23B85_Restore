@interface UIBarButtonItem(AMSUIWebAppViewModel)
+ (id)barButtonItemWithWebAppViewModel:()AMSUIWebAppViewModel;
@end

@implementation UIBarButtonItem(AMSUIWebAppViewModel)

+ (id)barButtonItemWithWebAppViewModel:()AMSUIWebAppViewModel
{
  if (a3)
  {
    v3 = MEMORY[0x1E69DC708];
    v4 = a3;
    v5 = [v3 alloc];
    _makeBarButtonItemView = [v4 _makeBarButtonItemView];
    v7 = [v5 initWithCustomView:_makeBarButtonItemView];

    accessibilityLabel = [v4 accessibilityLabel];

    [v7 setAccessibilityLabel:accessibilityLabel];
    [v7 setIsAccessibilityElement:1];
    [v7 _setPrefersNoPlatter:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end