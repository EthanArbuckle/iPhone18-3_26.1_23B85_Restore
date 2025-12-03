@interface SFDefaultBrowserAppCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SFDefaultBrowserAppCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFDefaultBrowserAppCollectionViewCell" hasInstanceVariable:@"_lockupView" withType:"ASCLockupView"];
  [validationsCopy validateClass:@"ASCLockupView" hasInstanceMethod:@"lockup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASCLockup" hasInstanceVariable:@"_title" withType:"NSString"];
  [validationsCopy validateClass:@"ASCLockup" hasInstanceVariable:@"_subtitle" withType:"NSString"];
  [validationsCopy validateClass:@"ASCLockup" hasInstanceVariable:@"_heading" withType:"NSString"];
}

- (id)accessibilityLabel
{
  v2 = [(SFDefaultBrowserAppCollectionViewCellAccessibility *)self safeUIViewForKey:@"_lockupView"];
  v3 = [v2 safeValueForKey:@"lockup"];

  v4 = [v3 safeStringForKey:@"_title"];
  v5 = [v3 safeStringForKey:@"_subtitle"];
  v8 = [v3 safeStringForKey:@"_heading"];
  v6 = __AXStringForVariables();

  return v6;
}

@end