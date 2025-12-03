@interface VideosRentalCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation VideosRentalCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosArtworkView" hasInstanceMethod:@"placeholderTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosRentalCollectionViewCell" hasProperty:@"titleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosRentalCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(VideosRentalCollectionViewCellAccessibility *)self safeValueForKey:@"artworkView"];
  v6 = [v5 safeValueForKey:@"placeholderTitle"];
  accessibilityLabel = [v4 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end