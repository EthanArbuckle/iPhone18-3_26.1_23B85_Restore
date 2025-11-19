@interface UIToolbarAccessibility__PassKitUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsCheckmarkButton:(id)a3;
- (id)accessibilityElements;
@end

@implementation UIToolbarAccessibility__PassKitUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [v3 validateClass:@"UIImageAsset" hasProperty:@"assetName" withType:"@"];
}

- (id)accessibilityElements
{
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __65__UIToolbarAccessibility__PassKitUI__UIKit_accessibilityElements__block_invoke;
  v4[3] = &unk_29F2E1CC8;
  v4[4] = self;
  v2 = [(UIToolbarAccessibility__PassKitUI__UIKit *)self _accessibilityFindSubviewDescendantsPassingTest:v4];

  return v2;
}

- (BOOL)_axIsCheckmarkButton:(id)a3
{
  v3 = a3;
  if ([v3 isAccessibilityElement] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [v4 configuration];
    v6 = [v5 image];
    v7 = [v6 safeValueForKey:@"_imageAsset"];
    v8 = [v7 safeStringForKey:@"assetName"];

    v9 = [v8 isEqualToString:@"checkmark"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end