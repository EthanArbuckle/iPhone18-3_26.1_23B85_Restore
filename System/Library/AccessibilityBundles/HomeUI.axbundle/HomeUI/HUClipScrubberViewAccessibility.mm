@interface HUClipScrubberViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (HUClipScrubberViewAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUClipScrubberViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUClipScrubberView" hasInstanceMethod:@"isPlayingMedia" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"HUClipScrubberView" hasInstanceMethod:@"playPauseButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUClipScrubberView" hasInstanceMethod:@"rightActionButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUClipScrubberView" hasInstanceMethod:@"clipCollectionView" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(HUClipScrubberViewAccessibility *)self safeValueForKey:@"playPauseButton"];
  v5 = [(HUClipScrubberViewAccessibility *)self safeValueForKey:@"rightActionButton"];
  v6 = [(HUClipScrubberViewAccessibility *)self safeValueForKey:@"clipCollectionView"];
  v7 = [v3 axArrayByIgnoringNilElementsWithCount:{3, v4, v5, v6}];

  return v7;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = HUClipScrubberViewAccessibility;
  [(HUClipScrubberViewAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  _axPlayPauseButton = [(HUClipScrubberViewAccessibility *)self _axPlayPauseButton];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __77__HUClipScrubberViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2C6B48;
  objc_copyWeak(&v5, &location);
  [_axPlayPauseButton _setAccessibilityLabelBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

id __77__HUClipScrubberViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained safeBoolForKey:@"isPlayingMedia"])
  {
    v2 = @"camera.clip.pause.button";
  }

  else
  {
    v2 = @"camera.clip.play.button";
  }

  v3 = accessibilityHomeUILocalizedString(v2);

  return v3;
}

- (HUClipScrubberViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = HUClipScrubberViewAccessibility;
  v3 = [(HUClipScrubberViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HUClipScrubberViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end