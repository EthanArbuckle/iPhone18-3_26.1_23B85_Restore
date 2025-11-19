@interface VUILibraryLockupViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation VUILibraryLockupViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUILibraryLockupViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryLockupViewCell" hasInstanceMethod:@"expirationLabel" withFullSignature:{"@", 0}];
}

@end