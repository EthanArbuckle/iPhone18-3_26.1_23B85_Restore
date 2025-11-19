@interface MRUNowPlayingTimeControlsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsTrackInfoEmpty;
- (id)accessibilityValue;
- (void)_accessibilityAdjustElapsedTime:(BOOL)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MRUNowPlayingTimeControlsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MRUNowPlayingTimeControlsView" hasInstanceMethod:@"slider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUSlider" isKindOfClass:@"UISlider"];
  [v3 validateClass:@"MRUNowPlayingTimeControlsView" hasInstanceMethod:@"liveLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUNowPlayingTimeControlsView" hasInstanceMethod:@"accessibilityTotalDuration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MRUNowPlayingTimeControlsView" hasInstanceMethod:@"accessibilityElapsedDuration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MRUNowPlayingTimeControlsView" hasInstanceMethod:@"timeControls" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MRUTimeControls" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (id)accessibilityValue
{
  v3 = [(MRUNowPlayingTimeControlsViewAccessibility *)self safeUIViewForKey:@"liveLabel"];
  if ([v3 isHidden])
  {
    [(MRUNowPlayingTimeControlsViewAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
    v4 = AXDurationStringForDuration();
    [(MRUNowPlayingTimeControlsViewAccessibility *)self safeDoubleForKey:@"accessibilityElapsedDuration"];
    v5 = AXDurationStringForDuration();
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"track.position.value");
    v8 = [v6 stringWithFormat:v7, v5, v4];
  }

  else
  {
    v8 = [v3 accessibilityLabel];
  }

  return v8;
}

- (void)_accessibilityAdjustElapsedTime:(BOOL)a3
{
  v4 = [(MRUNowPlayingTimeControlsViewAccessibility *)self safeValueForKey:@"timeControls"];
  [(MRUNowPlayingTimeControlsViewAccessibility *)self safeDoubleForKey:@"accessibilityElapsedDuration"];
  [(MRUNowPlayingTimeControlsViewAccessibility *)self safeDoubleForKey:@"accessibilityTotalDuration"];
  v5 = v4;
  AXPerformSafeBlock();
}

- (BOOL)_accessibilityIsTrackInfoEmpty
{
  v2 = [(MRUNowPlayingTimeControlsViewAccessibility *)self safeValueForKey:@"timeControls"];
  v3 = [v2 safeBoolForKey:@"isEnabled"];

  return v3 ^ 1;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(MRUNowPlayingTimeControlsViewAccessibility *)self safeValueForKey:@"slider"];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __88__MRUNowPlayingTimeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2CF338;
  objc_copyWeak(&v6, &location);
  [v3 setAccessibilityAttributedValueBlock:v5];
  v4.receiver = self;
  v4.super_class = MRUNowPlayingTimeControlsViewAccessibility;
  [(MRUNowPlayingTimeControlsViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __88__MRUNowPlayingTimeControlsViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained valueForKey:@"slider"];
  [v2 safeCGFloatForKey:@"value"];

  v3 = objc_alloc(MEMORY[0x29EDB9F30]);
  v4 = AXDurationStringForDuration();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_2A21F9058;
  }

  v7 = [v3 initWithString:v6];

  return v7;
}

@end