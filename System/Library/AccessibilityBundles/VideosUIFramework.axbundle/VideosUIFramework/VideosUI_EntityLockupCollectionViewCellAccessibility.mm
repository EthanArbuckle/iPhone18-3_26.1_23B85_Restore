@interface VideosUI_EntityLockupCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VideosUI_EntityLockupCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.EntityLockupCollectionViewCell" hasSwiftField:@"titleLabel" withSwiftType:"Optional<VUILabel>"];
  [validationsCopy validateClass:@"VideosUI.EntityLockupCollectionViewCell" hasSwiftField:@"subtitleLabel" withSwiftType:"Optional<VUILabel>"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosUI_EntityLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  objc_opt_class();
  v6 = [(VideosUI_EntityLockupCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v7 = __UIAccessibilityCastAsClass();

  accessibilityLabel2 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end