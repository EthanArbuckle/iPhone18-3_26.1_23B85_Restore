@interface VideosUI_EntityLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VideosUI_EntityLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.EntityLockupCollectionViewCell" hasSwiftField:@"titleLabel" withSwiftType:"Optional<VUILabel>"];
  [v3 validateClass:@"VideosUI.EntityLockupCollectionViewCell" hasSwiftField:@"subtitleLabel" withSwiftType:"Optional<VUILabel>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosUI_EntityLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 accessibilityLabel];

  objc_opt_class();
  v6 = [(VideosUI_EntityLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end