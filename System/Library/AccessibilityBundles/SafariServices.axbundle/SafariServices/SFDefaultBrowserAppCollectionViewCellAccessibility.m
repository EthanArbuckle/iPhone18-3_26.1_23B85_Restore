@interface SFDefaultBrowserAppCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SFDefaultBrowserAppCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFDefaultBrowserAppCollectionViewCell" hasInstanceVariable:@"_lockupView" withType:"ASCLockupView"];
  [v3 validateClass:@"ASCLockupView" hasInstanceMethod:@"lockup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASCLockup" hasInstanceVariable:@"_title" withType:"NSString"];
  [v3 validateClass:@"ASCLockup" hasInstanceVariable:@"_subtitle" withType:"NSString"];
  [v3 validateClass:@"ASCLockup" hasInstanceVariable:@"_heading" withType:"NSString"];
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