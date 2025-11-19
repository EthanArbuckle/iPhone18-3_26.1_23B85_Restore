@interface CSCoverSheetViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityShowWallpaperCollections;
- (BOOL)_axDismissTodayView;
- (BOOL)_axIsCapabilityRestricted:(unint64_t)a3;
- (BOOL)_axShowTodayView;
- (id)accessibilityCustomActions;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateChargingSubtitleWithString:(id)a3 timeout:(double)a4;
- (void)viewDidLoad;
@end

@implementation CSCoverSheetViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"dateViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"dateView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_presentModalViewController:shouldDismissOverlays:animated:completion:" withFullSignature:{"v", "@", "B", "B", "@?", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"isPasscodeLockVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceVariable:@"_posterSwitcherGestureRecognizer" withType:"UILongPressGestureRecognizer"];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_isPresentingPosterSwitcher" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_handlePosterSwitcherActivation:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasProperty:@"activeBehavior" withType:"@"];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"activateTodayViewWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"deactivateTodayViewWithCompletion:" withFullSignature:{"v", "@?", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"activateCameraViewAnimated:sendingActions:completion:" withFullSignature:{"v", "B", "@", "@?", 0}];
  [v3 validateClass:@"CSBehavior" hasInstanceMethod:@"areRestrictedCapabilities:" withFullSignature:{"B", "Q", 0}];
  [v3 validateClass:@"CSCoverSheetViewController" hasInstanceMethod:@"_updateChargingSubtitleWithString:timeout:" withFullSignature:{"v", "@", "d", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CSCoverSheetViewControllerAccessibility;
  [(CSCoverSheetViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CSCoverSheetViewControllerAccessibility *)self safeValueForKeyPath:@"dateViewController.dateView"];
  [v3 _accessibilitySetAssignedValue:self forKey:@"AXSBFDateViewDashboardController"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CSCoverSheetViewControllerAccessibility;
  [(CSCoverSheetViewControllerAccessibility *)&v3 viewDidLoad];
  [(CSCoverSheetViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityCustomActions
{
  if (!_AXSAssistiveTouchScannerEnabled())
  {
    v17.receiver = self;
    v17.super_class = CSCoverSheetViewControllerAccessibility;
    v3 = [(CSCoverSheetViewControllerAccessibility *)&v17 accessibilityCustomActions];
    goto LABEL_5;
  }

  if ([(CSCoverSheetViewControllerAccessibility *)self safeBoolForKey:@"isPasscodeLockVisible"])
  {
    v3 = objc_opt_new();
LABEL_5:
    v4 = v3;
    goto LABEL_16;
  }

  v5 = [MEMORY[0x29EDB8DE8] array];
  v6 = [(CSCoverSheetViewControllerAccessibility *)self safeValueForKey:@"_posterSwitcherGestureRecognizer"];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x29EDC78E0]);
    v8 = accessibilityLocalizedString(@"wallpaper.collections");
    v9 = [v7 initWithName:v8 target:self selector:sel__accessibilityShowWallpaperCollections];

    [v9 setIgnoreWhenVoiceOverTouches:1];
    [v9 setShouldSuppressActionHint:1];
    [v5 addObject:v9];
  }

  if (![(CSCoverSheetViewControllerAccessibility *)self _axIsCapabilityRestricted:64])
  {
    v10 = objc_alloc(MEMORY[0x29EDC78E0]);
    v11 = accessibilityLocalizedString(@"today.visible.key");
    v12 = [v10 initWithName:v11 target:self selector:sel__axShowTodayView];

    [v12 setIgnoreWhenVoiceOverTouches:1];
    [v5 addObject:v12];
  }

  if (![(CSCoverSheetViewControllerAccessibility *)self _axIsCapabilityRestricted:4])
  {
    v13 = objc_alloc(MEMORY[0x29EDC78E0]);
    v14 = accessibilityLocalizedString(@"camera.visible");
    v15 = [v13 initWithName:v14 target:self selector:sel__axShowCameraView];

    [v15 setIgnoreWhenVoiceOverTouches:1];
    [v5 addObject:v15];
  }

  if ([v5 count])
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

LABEL_16:

  return v4;
}

- (BOOL)_axShowTodayView
{
  if ([(CSCoverSheetViewControllerAccessibility *)self _axIsTodayViewShowing])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    AXPerformSafeBlock();
    v3 = [(CSCoverSheetViewControllerAccessibility *)self _axIsTodayViewShowing];
    if (v3)
    {
      v4 = accessibilityLocalizedString(@"did.show.today.view.announcement");
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }

  return v3;
}

- (BOOL)_axDismissTodayView
{
  v3 = [(CSCoverSheetViewControllerAccessibility *)self _axIsTodayViewShowing];
  if (v3)
  {
    AXPerformSafeBlock();
    LOBYTE(v3) = ![(CSCoverSheetViewControllerAccessibility *)self _axIsTodayViewShowing];
  }

  return v3;
}

- (BOOL)_accessibilityShowWallpaperCollections
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = objc_alloc_init(AXUILongPressGestureRecognizer);
  AXPerformSafeBlock();
  if (*(v7 + 24) == 1)
  {
    v3 = accessibilityLocalizedString(@"wallpaper.collections");
    UIAccessibilitySpeakAndDoNotBeInterrupted();

    v4 = *(v7 + 24);
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v4 & 1;
}

uint64_t __81__CSCoverSheetViewControllerAccessibility__accessibilityShowWallpaperCollections__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _handlePosterSwitcherActivation:*(a1 + 40)];
  result = [*(a1 + 32) _isPresentingPosterSwitcher];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_axIsCapabilityRestricted:(unint64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v5 = [(CSCoverSheetViewControllerAccessibility *)self safeValueForKey:@"activeBehavior"];
  AXPerformSafeBlock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __69__CSCoverSheetViewControllerAccessibility__axIsCapabilityRestricted___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) areRestrictedCapabilities:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_updateChargingSubtitleWithString:(id)a3 timeout:(double)a4
{
  v9.receiver = self;
  v9.super_class = CSCoverSheetViewControllerAccessibility;
  v5 = a3;
  [(CSCoverSheetViewControllerAccessibility *)&v9 _updateChargingSubtitleWithString:v5 timeout:a4];
  v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v5];

  [v6 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
  [v6 setAttribute:&unk_2A2188FA8 forKey:*MEMORY[0x29EDBD860]];
  v8 = v6;
  v7 = v6;
  AXPerformBlockOnMainThreadAfterDelay();
}

@end