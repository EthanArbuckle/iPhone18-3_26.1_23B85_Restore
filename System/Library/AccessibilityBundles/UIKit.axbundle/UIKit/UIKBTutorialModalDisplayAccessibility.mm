@interface UIKBTutorialModalDisplayAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation UIKBTutorialModalDisplayAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

@end