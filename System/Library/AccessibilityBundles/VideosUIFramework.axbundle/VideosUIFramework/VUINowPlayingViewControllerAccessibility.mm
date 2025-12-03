@interface VUINowPlayingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VUINowPlayingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VUINowPlayingViewController" hasInstanceMethod:@"promoMetadataView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUINowPlayingViewController" hasInstanceMethod:@"mediaController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VUIMediaController" hasInstanceMethod:@"avPlayerViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AVPlayerViewController" hasInstanceMethod:@"nowPlayingPlaybackControlsViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"AVPlaybackControlsProtocol" hasRequiredInstanceMethod:@"contextualBarViewController"];
  [validationsCopy validateClass:@"AVUnifiedPlayerActionBarViewController" hasInstanceMethod:@"_actionButtonForIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"VUINowPlayingViewController" hasInstanceMethod:@"showSkipAndPromoView:animated:skipInfo:" withFullSignature:{"v", "B", "B", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = VUINowPlayingViewControllerAccessibility;
  [(VUINowPlayingViewControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  v3 = [(VUINowPlayingViewControllerAccessibility *)self safeValueForKey:@"promoMetadataView"];
  v4 = [v3 safeValueForKey:@"_axMetadataLabel"];
  v5 = [v3 safeValueForKey:@"_axCanonicalId"];
  v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"UpNext%@", v5];
  v7 = [(VUINowPlayingViewControllerAccessibility *)self safeValueForKey:@"mediaController"];
  v8 = [v7 safeValueForKey:@"avPlayerViewController"];
  v9 = [v8 safeValueForKey:@"nowPlayingPlaybackControlsViewController"];
  v10 = [v9 safeValueForKey:@"contextualBarViewController"];
  v11 = [v10 _actionButtonForIdentifier:v6];
  v12 = v11;
  if (v11)
  {
    [v11 setAccessibilityValue:v4];
  }
}

@end