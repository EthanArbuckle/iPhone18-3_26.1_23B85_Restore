@interface ParticipantGridViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axBannerPresentationManager;
- (id)_axMultiwayConversationViewController;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ParticipantGridViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"bannerPresentationManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"hasParticipantVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"ConversationKit.BannerPresentationManager" hasInstanceMethod:@"inCallControlsVisible" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  _axMultiwayConversationViewController = [(ParticipantGridViewAccessibility *)self _axMultiwayConversationViewController];
  v3 = [_axMultiwayConversationViewController safeBoolForKey:@"hasParticipantVideo"];

  if (v3)
  {
    v4 = @"facetime.video";
  }

  else
  {
    v4 = @"facetime.call";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (id)accessibilityHint
{
  _axBannerPresentationManager = [(ParticipantGridViewAccessibility *)self _axBannerPresentationManager];
  if ([_axBannerPresentationManager safeBoolForKey:@"inCallControlsVisible"])
  {
    v3 = @"facetime.video.hint.hide.controls";
  }

  else
  {
    v3 = @"facetime.video.hint.show.controls";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (id)accessibilityValue
{
  _axBannerPresentationManager = [(ParticipantGridViewAccessibility *)self _axBannerPresentationManager];
  if ([_axBannerPresentationManager safeBoolForKey:@"inCallControlsVisible"])
  {
    v3 = @"facetime.video.controls.shown";
  }

  else
  {
    v3 = @"facetime.video.controls.hidden";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    subviews = [(ParticipantGridViewAccessibility *)self subviews];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ParticipantGridViewAccessibility;
    subviews = [(ParticipantGridViewAccessibility *)&v5 _accessibilitySupplementaryFooterViews];
  }

  return subviews;
}

- (id)_axBannerPresentationManager
{
  v2 = [(ParticipantGridViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];
  v4 = [_accessibilityViewController safeValueForKey:@"bannerPresentationManager"];

  return v4;
}

uint64_t __64__ParticipantGridViewAccessibility__axBannerPresentationManager__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axMultiwayConversationViewController
{
  v2 = [(ParticipantGridViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_328 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  return _accessibilityViewController;
}

uint64_t __73__ParticipantGridViewAccessibility__axMultiwayConversationViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end