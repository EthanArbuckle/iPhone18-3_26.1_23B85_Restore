@interface RoomBannerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation RoomBannerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.RoomBannerCollectionViewCell" hasSwiftField:@"bannerImage" withSwiftType:"Optional<VUIImageView>"];
  [validationsCopy validateClass:@"VUIImageView" hasInstanceVariable:@"_imageView" withType:"UIImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = RoomBannerCollectionViewCellAccessibility;
  [(RoomBannerCollectionViewCellAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(RoomBannerCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"bannerImage"];
  v4 = [v3 safeValueForKey:@"_imageView"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F88]];
  [v4 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A23AB1D0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RoomBannerCollectionViewCellAccessibility;
  [(RoomBannerCollectionViewCellAccessibility *)&v3 layoutSubviews];
  [(RoomBannerCollectionViewCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end