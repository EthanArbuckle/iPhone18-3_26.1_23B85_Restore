@interface UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UICollectionViewController";
  v3 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v6 = @"UIViewController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v5 = @"UIActivityGroupViewController";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:v5 isKindOfClass:v6];
  objc_storeStrong(v8, v7);
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet;
  [(UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet *)&v2 viewDidLoad];
  [(UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet *)v4 _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet;
  [(UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet *)&v5 _accessibilityLoadAccessibilityInformation];
  v4 = [(UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet *)v7 safeValueForKey:@"collectionView"];
  [v4 setAccessibilityShouldSpeakItemReorderEvents:1];
  v2 = v4;
  v3 = [(UIActivityGroupViewControllerAccessibility__UIKit__ShareSheet *)v7 safeValueForKey:@"title"];
  [v2 setAccessibilityIdentifier:?];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&v4, 0);
}

@end