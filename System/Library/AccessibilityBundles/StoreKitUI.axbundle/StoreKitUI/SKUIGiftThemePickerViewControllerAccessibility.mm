@interface SKUIGiftThemePickerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation SKUIGiftThemePickerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIGiftThemePickerViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SKUIGiftThemePickerViewController" hasInstanceMethod:@"collectionView: cellForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"SKUIGiftThemePickerViewController" hasInstanceVariable:@"_pageControl" withType:"UIPageControl"];
  [validationsCopy validateClass:@"SKUIGiftThemePickerViewController" hasInstanceVariable:@"_themes" withType:"NSArray"];
  [validationsCopy validateClass:@"SKUIGiftTheme" hasInstanceMethod:@"themeName" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SKUIGiftThemePickerViewControllerAccessibility;
  [(SKUIGiftThemePickerViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SKUIGiftThemePickerViewControllerAccessibility *)self safeValueForKey:@"_pageControl"];
  [v3 setAccessibilityIdentifier:@"GiftThemePageControl"];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = SKUIGiftThemePickerViewControllerAccessibility;
  [(SKUIGiftThemePickerViewControllerAccessibility *)&v3 loadView];
  [(SKUIGiftThemePickerViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = SKUIGiftThemePickerViewControllerAccessibility;
  v8 = [(SKUIGiftThemePickerViewControllerAccessibility *)&v18 collectionView:viewCopy cellForItemAtIndexPath:pathCopy];
  objc_opt_class();
  v9 = [(SKUIGiftThemePickerViewControllerAccessibility *)self safeValueForKey:@"_themes"];
  v10 = __UIAccessibilityCastAsClass();

  item = [pathCopy item];
  if (item < [v10 count])
  {
    v12 = [v10 objectAtIndex:{objc_msgSend(pathCopy, "item")}];
    v13 = [v12 safeValueForKey:@"themeName"];
    v14 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_2A2323958];

    v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"gift.theme.%@", v14];
    v16 = accessibilitySKUILocalizedString(v15);
    [v8 setAccessibilityLabel:v16];
  }

  return v8;
}

@end