@interface ARQuickLookOverlayControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)axShouldDisableAutoHidingControls;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSpeakUpdateToStatusPill;
- (void)startAutoHideControlsTimer;
- (void)updateStatusPill;
@end

@implementation ARQuickLookOverlayControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AssetViewer.ARQuickLookOverlayController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ASVButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AssetViewer.ARQuickLookOverlayController" hasInstanceMethod:@"startAutoHideControlsTimer" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AssetViewer.ARQuickLookOverlayController" hasInstanceMethod:@"enableWorldModeControl:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"AssetViewer.ARQuickLookOverlayController" hasInstanceMethod:@"updateStatusPill" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AssetViewer.ARQuickLookOverlayController" hasInstanceMethod:@"statusPill" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ASVTrackingStateStatusLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
}

- (BOOL)axShouldDisableAutoHidingControls
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 1;
  }

  return UIAccessibilityIsSwitchControlRunning();
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = ARQuickLookOverlayControllerAccessibility;
  [(ARQuickLookOverlayControllerAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = accessibilityLocalizedString(@"CLOSE_BUTTON");
  navigationItem = [v2 navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem setAccessibilityLabel:v3];

  v6 = accessibilityLocalizedString(@"SHARE_BUTTON");
  navigationItem2 = [v2 navigationItem];
  rightBarButtonItem = [navigationItem2 rightBarButtonItem];
  [rightBarButtonItem setAccessibilityLabel:v6];
}

- (void)startAutoHideControlsTimer
{
  if ([(ARQuickLookOverlayControllerAccessibility *)self axShouldDisableAutoHidingControls])
  {
    v4 = MEMORY[0x29EDCA5F8];
    v5 = 3221225472;
    v6 = __71__ARQuickLookOverlayControllerAccessibility_startAutoHideControlsTimer__block_invoke;
    v7 = &unk_29F2A1D28;
    selfCopy = self;
    AXPerformSafeBlock();
  }

  else
  {
    v3.receiver = self;
    v3.super_class = ARQuickLookOverlayControllerAccessibility;
    [(ARQuickLookOverlayControllerAccessibility *)&v3 startAutoHideControlsTimer];
  }
}

- (void)_axSpeakUpdateToStatusPill
{
  v5 = [(ARQuickLookOverlayControllerAccessibility *)self safeUIViewForKey:@"statusPill"];
  [v5 alpha];
  v2 = v5;
  if (v3 > 0.0)
  {
    v4 = [v5 safeStringForKey:@"text"];
    if ([v4 length])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v4);
    }

    v2 = v5;
  }
}

- (void)updateStatusPill
{
  [MEMORY[0x29EDC9738] cancelPreviousPerformRequestsWithTarget:self selector:sel__axSpeakUpdateToStatusPill object:0];
  v3.receiver = self;
  v3.super_class = ARQuickLookOverlayControllerAccessibility;
  [(ARQuickLookOverlayControllerAccessibility *)&v3 updateStatusPill];
  [(ARQuickLookOverlayControllerAccessibility *)self performSelector:sel__axSpeakUpdateToStatusPill withObject:0 afterDelay:0.5];
}

@end