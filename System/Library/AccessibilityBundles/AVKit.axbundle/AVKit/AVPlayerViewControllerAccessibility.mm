@interface AVPlayerViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axObservePIPStateNotifications;
- (void)_axPIPStop:(id)stop;
- (void)_axSetupVideoLayerView;
- (void)_togglePictureInPicture;
- (void)dealloc;
@end

@implementation AVPlayerViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVPlayerViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVPictureInPictureController" hasInstanceMethod:@"isPictureInPictureActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVPlayerViewController" hasInstanceMethod:@"_togglePictureInPicture" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"AVPlayerViewController" hasInstanceVariable:@"_playerLayerView" withType:"__AVPlayerLayerView"];
}

- (void)_axObservePIPStateNotifications
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__axPIPStop_ name:AXPIPStoppedNotification object:0];
}

- (void)_axPIPStop:(id)stop
{
  v3 = [(AVPlayerViewControllerAccessibility *)self safeValueForKey:@"_playerLayerView"];
  [v3 setIsAccessibilityElement:1];
}

- (void)_axSetupVideoLayerView
{
  v4 = [(AVPlayerViewControllerAccessibility *)self safeValueForKey:@"_playerLayerView"];
  v3 = [(AVPlayerViewControllerAccessibility *)self safeValueForKey:@"_pictureInPictureController"];
  [v4 setIsAccessibilityElement:{objc_msgSend(v3, "safeBoolForKey:", @"isPictureInPictureActive"}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = AVPlayerViewControllerAccessibility;
  [(AVPlayerViewControllerAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  [(AVPlayerViewControllerAccessibility *)self _axSetupVideoLayerView];
  [(AVPlayerViewControllerAccessibility *)self _axObservePIPStateNotifications];
  v3 = [(AVPlayerViewControllerAccessibility *)self safeValueForKey:@"_pictureInPictureController"];
  [v3 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  v4 = __UIAccessibilitySafeClass();
  contentOverlayView = [v4 contentOverlayView];
  objc_initWeak(&location, contentOverlayView);

  v6 = objc_loadWeakRetained(&location);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __81__AVPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F298FF8;
  objc_copyWeak(&v8, &location);
  [v6 _setAccessibilityElementsHiddenBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

BOOL __81__AVPlayerViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  if (!_AXSAutomationEnabled())
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained subviews];
  v4 = [v3 count] == 0;

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:AXPIPStoppedNotification];

  v4.receiver = self;
  v4.super_class = AVPlayerViewControllerAccessibility;
  [(AVPlayerViewControllerAccessibility *)&v4 dealloc];
}

- (void)_togglePictureInPicture
{
  v5.receiver = self;
  v5.super_class = AVPlayerViewControllerAccessibility;
  [(AVPlayerViewControllerAccessibility *)&v5 _togglePictureInPicture];
  v3 = [(AVPlayerViewControllerAccessibility *)self safeValueForKey:@"_playerLayerView"];
  v4 = [(AVPlayerViewControllerAccessibility *)self safeValueForKey:@"_pictureInPictureController"];
  [v3 setIsAccessibilityElement:{objc_msgSend(v4, "safeBoolForKey:", @"isPictureInPictureActive"}];
}

@end