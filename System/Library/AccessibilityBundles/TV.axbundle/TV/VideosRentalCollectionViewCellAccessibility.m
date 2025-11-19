@interface VideosRentalCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation VideosRentalCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosPosterCollectionViewCell" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosArtworkView" hasInstanceMethod:@"placeholderTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VideosRentalCollectionViewCell" hasProperty:@"titleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  objc_opt_class();
  v3 = [(VideosRentalCollectionViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(VideosRentalCollectionViewCellAccessibility *)self safeValueForKey:@"artworkView"];
  v6 = [v5 safeValueForKey:@"placeholderTitle"];
  v9 = [v4 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end