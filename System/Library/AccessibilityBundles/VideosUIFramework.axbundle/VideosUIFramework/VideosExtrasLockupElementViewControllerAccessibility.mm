@interface VideosExtrasLockupElementViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityButtonifyArtworkView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VideosExtrasLockupElementViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosExtrasLockupElementViewController" hasInstanceVariable:@"_artworkContainerView" withType:"VideosExtrasConstrainedArtworkContainerView"];
  [validationsCopy validateClass:@"VideosExtrasConstrainedArtworkContainerView" hasInstanceMethod:@"artworkView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VideosExtrasLockupElementViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"VideosExtrasLockupElementViewController" isKindOfClass:@"UIViewController"];
}

- (void)_accessibilityButtonifyArtworkView
{
  v3 = [(VideosExtrasLockupElementViewControllerAccessibility *)self safeValueForKeyPath:@"_artworkContainerView.artworkView"];
  [v3 setIsAccessibilityElement:1];
  objc_opt_class();
  v4 = [(VideosExtrasLockupElementViewControllerAccessibility *)self safeValueForKey:@"_titleLabel"];
  v5 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v5 accessibilityLabel];

  if (accessibilityLabel)
  {
    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"play.extra.format");
    v9 = [v7 stringWithFormat:v8, accessibilityLabel];
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
  v3.super_class = VideosExtrasLockupElementViewControllerAccessibility;
  [(VideosExtrasLockupElementViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VideosExtrasLockupElementViewControllerAccessibility *)self _accessibilityButtonifyArtworkView];
}

@end