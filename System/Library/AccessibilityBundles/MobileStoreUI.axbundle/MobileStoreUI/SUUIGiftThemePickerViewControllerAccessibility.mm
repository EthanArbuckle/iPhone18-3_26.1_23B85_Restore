@interface SUUIGiftThemePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation SUUIGiftThemePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIGiftThemePickerViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SUUIGiftThemePickerViewController" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"SUUIGiftThemePickerViewController" hasInstanceVariable:@"_pageControl" withType:"UIPageControl"];
  [v3 validateClass:@"SUUIGiftThemePickerViewController" hasInstanceVariable:@"_themes" withType:"NSArray"];
  [v3 validateClass:@"SUUIGiftTheme" hasInstanceMethod:@"themeName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SUUIGiftThemePickerViewControllerAccessibility;
  [(SUUIGiftThemePickerViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIGiftThemePickerViewControllerAccessibility *)self safeValueForKey:@"_pageControl"];
  [v3 setAccessibilityIdentifier:@"GiftThemePageControl"];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SUUIGiftThemePickerViewControllerAccessibility;
  [(SUUIGiftThemePickerViewControllerAccessibility *)&v3 loadView];
  [(SUUIGiftThemePickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SUUIGiftThemePickerViewControllerAccessibility;
  v8 = [(SUUIGiftThemePickerViewControllerAccessibility *)&v18 collectionView:v6 cellForItemAtIndexPath:v7];
  objc_opt_class();
  v9 = [(SUUIGiftThemePickerViewControllerAccessibility *)self safeValueForKey:@"_themes"];
  v10 = __UIAccessibilityCastAsClass();

  v11 = [v7 item];
  if (v11 < [v10 count])
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(v7, "item")}];
    v13 = [v12 safeValueForKey:@"themeName"];
    v14 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_2A2230BA8];

    v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"gift.theme.%@", v14];
    v16 = accessibilityLocalizedString(v15);
    [v8 setAccessibilityLabel:v16];
  }

  return v8;
}

@end