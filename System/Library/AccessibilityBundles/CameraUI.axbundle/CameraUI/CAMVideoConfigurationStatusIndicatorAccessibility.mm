@interface CAMVideoConfigurationStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_togglesFramerateForTouchAtLocation:(CGPoint)location;
- (BOOL)_togglesResolutionForTouchAtLocation:(CGPoint)location;
- (id)_axVC;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handleTouchAtLocation:(CGPoint)location;
- (void)layoutSubviews;
@end

@implementation CAMVideoConfigurationStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_togglesResolutionForTouchAtLocation:" withFullSignature:{"B", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_togglesFramerateForTouchAtLocation:" withFullSignature:{"B", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_handleTouchAtLocation:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_resolutionString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_framerateString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_resolutionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_framerateLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMVideoConfigurationStatusIndicator" hasInstanceMethod:@"_separatorLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController"];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentDevicePosition" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = CAMVideoConfigurationStatusIndicatorAccessibility;
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  _axSeparatorLabel = [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axSeparatorLabel];
  [_axSeparatorLabel _setIsAccessibilityElementBlock:&__block_literal_global_17];
  _axResolutionLabel = [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axResolutionLabel];
  [_axResolutionLabel _setAccessibilityLabelBlock:&__block_literal_global_523];
  _axFramerateLabel = [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axFramerateLabel];
  [_axFramerateLabel _setAccessibilityLabelBlock:&__block_literal_global_528];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __95__CAMVideoConfigurationStatusIndicatorAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4;
  v8[3] = &unk_29F2AD1D0;
  objc_copyWeak(&v9, &location);
  [_axResolutionLabel _setAccessibilityValueBlock:v8];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __95__CAMVideoConfigurationStatusIndicatorAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5;
  v6[3] = &unk_29F2AD1D0;
  objc_copyWeak(&v7, &location);
  [_axFramerateLabel _setAccessibilityValueBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

id __95__CAMVideoConfigurationStatusIndicatorAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"_resolutionString"];

  return v2;
}

id __95__CAMVideoConfigurationStatusIndicatorAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityCameraUILocalizedString(@"framerate.value");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeValueForKey:@"_framerateString"];
  v6 = [v2 stringWithFormat:v3, v5];

  return v6;
}

- (id)_axVC
{
  v2 = [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_538 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  return _accessibilityViewController;
}

uint64_t __58__CAMVideoConfigurationStatusIndicatorAccessibility__axVC__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMVideoConfigurationStatusIndicatorAccessibility;
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)&v3 layoutSubviews];
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (BOOL)_togglesResolutionForTouchAtLocation:(CGPoint)location
{
  v6.receiver = self;
  v6.super_class = CAMVideoConfigurationStatusIndicatorAccessibility;
  v4 = [(CAMVideoConfigurationStatusIndicatorAccessibility *)&v6 _togglesResolutionForTouchAtLocation:location.x, location.y];
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axSetResolutionTapped:v4];
  return v4;
}

- (BOOL)_togglesFramerateForTouchAtLocation:(CGPoint)location
{
  v6.receiver = self;
  v6.super_class = CAMVideoConfigurationStatusIndicatorAccessibility;
  v4 = [(CAMVideoConfigurationStatusIndicatorAccessibility *)&v6 _togglesFramerateForTouchAtLocation:location.x, location.y];
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axSetFramerateTapped:v4];
  return v4;
}

- (void)_handleTouchAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axSetResolutionTapped:0];
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axSetFramerateTapped:0];
  v15.receiver = self;
  v15.super_class = CAMVideoConfigurationStatusIndicatorAccessibility;
  [(CAMVideoConfigurationStatusIndicatorAccessibility *)&v15 _handleTouchAtLocation:x, y];
  if ([(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axResolutionTapped])
  {
    v6 = MEMORY[0x29EDBD7E8];
    v7 = [(CAMVideoConfigurationStatusIndicatorAccessibility *)self safeValueForKey:@"_resolutionString"];
    v8 = [v6 axAttributedStringWithString:v7];
  }

  else
  {
    if (![(CAMVideoConfigurationStatusIndicatorAccessibility *)self _axFramerateTapped])
    {
      return;
    }

    v9 = MEMORY[0x29EDBD7E8];
    v10 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityCameraUILocalizedString(@"framerate.value");
    v11 = [(CAMVideoConfigurationStatusIndicatorAccessibility *)self safeValueForKey:@"_framerateString"];
    v12 = [v10 stringWithFormat:v7, v11];
    v8 = [v9 axAttributedStringWithString:v12];
  }

  if (v8)
  {
    [v8 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
    v14 = v8;
    v13 = v8;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end