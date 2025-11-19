@interface VideosExtrasCarouselCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityButtonifyArtworkView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosExtrasCarouselCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosExtrasCarouselCollectionViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"VideosExtrasCarouselCollectionViewCell" hasInstanceVariable:@"_thumbnailImageContainerView" withType:"VideosExtrasConstrainedArtworkContainerView"];
  [v3 validateClass:@"VideosExtrasConstrainedArtworkContainerView" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityButtonifyArtworkView
{
  v3 = [(VideosExtrasCarouselCollectionViewCellAccessibility *)self safeValueForKeyPath:@"_thumbnailImageContainerView.artworkView"];
  [v3 setIsAccessibilityElement:1];
  objc_opt_class();
  v4 = [(VideosExtrasCarouselCollectionViewCellAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 accessibilityLabel];

  if (v6)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"play.extra.format");
    v9 = [v7 stringWithFormat:v8, v6];
  }

  else
  {
    v9 = accessibilityLocalizedString(@"play.extra.fallback");
  }

  [v3 setAccessibilityLabel:v9];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VideosExtrasCarouselCollectionViewCellAccessibility;
  [(VideosExtrasCarouselCollectionViewCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VideosExtrasCarouselCollectionViewCellAccessibility *)self _accessibilityButtonifyArtworkView];
}

@end