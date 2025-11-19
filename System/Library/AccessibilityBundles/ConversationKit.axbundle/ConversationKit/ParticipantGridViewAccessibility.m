@interface ParticipantGridViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axBannerPresentationManager;
- (id)_axMultiwayConversationViewController;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation ParticipantGridViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"bannerPresentationManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.MultiwayViewController" hasInstanceMethod:@"hasParticipantVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ConversationKit.BannerPresentationManager" hasInstanceMethod:@"inCallControlsVisible" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(ParticipantGridViewAccessibility *)self _axMultiwayConversationViewController];
  v3 = [v2 safeBoolForKey:@"hasParticipantVideo"];

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
  v2 = [(ParticipantGridViewAccessibility *)self _axBannerPresentationManager];
  if ([v2 safeBoolForKey:@"inCallControlsVisible"])
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
  v2 = [(ParticipantGridViewAccessibility *)self _axBannerPresentationManager];
  if ([v2 safeBoolForKey:@"inCallControlsVisible"])
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
    v3 = [(ParticipantGridViewAccessibility *)self subviews];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = ParticipantGridViewAccessibility;
    v3 = [(ParticipantGridViewAccessibility *)&v5 _accessibilitySupplementaryFooterViews];
  }

  return v3;
}

- (id)_axBannerPresentationManager
{
  v2 = [(ParticipantGridViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:1];
  v3 = [v2 _accessibilityViewController];
  v4 = [v3 safeValueForKey:@"bannerPresentationManager"];

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
  v3 = [v2 _accessibilityViewController];

  return v3;
}

uint64_t __73__ParticipantGridViewAccessibility__axMultiwayConversationViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2D28F0](@"ConversationKit.MultiwayViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end