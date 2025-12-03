@interface VUILibraryLockupViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation VUILibraryLockupViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUILibraryLockupViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUILibraryLockupViewCell" hasInstanceMethod:@"expirationLabel" withFullSignature:{"@", 0}];
}

@end