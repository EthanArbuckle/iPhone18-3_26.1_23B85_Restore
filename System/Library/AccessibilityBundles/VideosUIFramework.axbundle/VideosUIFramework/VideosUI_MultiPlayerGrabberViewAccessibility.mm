@interface VideosUI_MultiPlayerGrabberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_axMultiviewController;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setAlpha:(double)a3;
@end

@implementation VideosUI_MultiPlayerGrabberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VideosUI.MultiPlayerViewController" hasSwiftField:@"isDetailsViewControllerVisible" withSwiftType:"Bool"];
  [v3 validateClass:@"VideosUI.MultiPlayerViewController" hasInstanceMethod:@"setDetailsViewControllerVisible:animated:completion:" withFullSignature:{"v", "B", "B", "@?", 0}];
}

- (id)_axMultiviewController
{
  v2 = [(VideosUI_MultiPlayerGrabberViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_19 startWithSelf:0];
  v3 = [v2 _accessibilityViewController];

  return v3;
}

- (id)accessibilityLabel
{
  v2 = [(VideosUI_MultiPlayerGrabberViewAccessibility *)self _axMultiviewController];
  v3 = [v2 safeSwiftBoolForKey:@"isDetailsViewControllerVisible"];

  if (v3)
  {
    v4 = @"multiview.addMoreGames.grabber.hide";
  }

  else
  {
    v4 = @"multiview.addMoreGames.grabber.show";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VideosUI_MultiPlayerGrabberViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VideosUI_MultiPlayerGrabberViewAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  v2 = [(VideosUI_MultiPlayerGrabberViewAccessibility *)self _axMultiviewController];
  [v2 safeSwiftBoolForKey:@"isDetailsViewControllerVisible"];
  v5 = v2;
  v3 = v2;
  AXPerformSafeBlock();

  return 1;
}

- (void)setAlpha:(double)a3
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || (_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = VideosUI_MultiPlayerGrabberViewAccessibility;
    [(VideosUI_MultiPlayerGrabberViewAccessibility *)&v6 setAlpha:1.0];
  }

  v5.receiver = self;
  v5.super_class = VideosUI_MultiPlayerGrabberViewAccessibility;
  [(VideosUI_MultiPlayerGrabberViewAccessibility *)&v5 setAlpha:a3];
}

@end