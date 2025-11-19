@interface PLVideoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityElementStoredUserLabel;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityURL;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_createScrubberIfNeeded;
- (void)_showVideoOverlay;
- (void)_updateScrubberVisibilityWithDuration:(double)a3;
- (void)_videoOverlayFadeOutDidFinish;
- (void)viewDidDisappear;
@end

@implementation PLVideoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLVideoView" hasInstanceVariable:@"_scrubberBackgroundView" withType:"UIView"];
  [v3 validateClass:@"PLVideoView" hasInstanceVariable:@"_videoCameraImage" withType:"PLManagedAsset"];
  [v3 validateClass:@"PLVideoView" hasInstanceMethod:@"_updateScrubberVisibilityWithDuration:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"PLVideoView" hasInstanceMethod:@"pathForVideoFile" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PLVideoView" hasInstanceVariable:@"_trimMessageView" withType:"PLVideoEditingOverlayView"];
}

- (void)_showVideoOverlay
{
  v3 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoOverlayPlayButton"];
  v7.receiver = self;
  v7.super_class = PLVideoViewAccessibility;
  [(PLVideoViewAccessibility *)&v7 _showVideoOverlay];
  v4 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoOverlayPlayButton"];
  if (v3 != v4)
  {
    v5 = accessibilityLocalizedString(@"play.video.button.txt");
    [v4 setAccessibilityLabel:v5];
  }

  [v4 alpha];
  [v4 setIsAccessibilityElement:v6 > 0.0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_videoOverlayFadeOutDidFinish
{
  v5.receiver = self;
  v5.super_class = PLVideoViewAccessibility;
  [(PLVideoViewAccessibility *)&v5 _videoOverlayFadeOutDidFinish];
  v3 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoOverlayPlayButton"];
  [v3 alpha];
  [v3 setIsAccessibilityElement:v4 > 0.0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(PLVideoViewAccessibility *)self _accessibilityClearChildren];
}

- (void)viewDidDisappear
{
  v3 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_scrubber"];
  v5.receiver = self;
  v5.super_class = PLVideoViewAccessibility;
  [(PLVideoViewAccessibility *)&v5 viewDidDisappear];
  v4 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_scrubber"];

  if (v3 != v4)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  [(PLVideoViewAccessibility *)self _accessibilityClearChildren];
}

- (void)_createScrubberIfNeeded
{
  v3 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_scrubber"];
  v5.receiver = self;
  v5.super_class = PLVideoViewAccessibility;
  [(PLVideoViewAccessibility *)&v5 _createScrubberIfNeeded];
  v4 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_scrubber"];

  if (v3 != v4)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  [(PLVideoViewAccessibility *)self _accessibilityClearChildren];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(PLVideoViewAccessibility *)self accessibilityElements];
  if ([(PLVideoViewAccessibility *)self accessibilityElementCount])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 firstObject];
      v5 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoOverlayPlayButton"];
      v6 = v4 == v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)accessibilityLabel
{
  v2 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoCameraImage"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(PLVideoViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x29EDB8DE8]) init];
    [(PLVideoViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:*v3];
    v7 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_scrubber"];
    v8 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_scrubberBackgroundView"];
    if ([v8 _accessibilityViewIsVisible])
    {
      [v6 addObject:v7];
    }

    v9 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoOverlayPlayButton"];
    if ([v9 _accessibilityViewIsVisible])
    {
      [v6 addObject:v9];
    }

    v10 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_trimMessageView"];
    if ([v10 _accessibilityViewIsVisible])
    {
      [v6 addObject:v10];
    }

    v11 = [(PLVideoViewAccessibility *)self valueForKey:@"_moviePlayer"];
    v12 = [v11 safeValueForKey:@"view"];
    v13 = [v12 safeValueForKey:@"_accessibleSubviews"];

    if ([v13 count])
    {
      [v6 addObjectsFromArray:v13];
    }

    v5 = v6;
  }

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PLVideoViewAccessibility;
  [(PLVideoViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLVideoViewAccessibility *)self safeValueForKey:@"_videoOverlayPlayButton"];
  v4 = accessibilityLocalizedString(@"play.video.button.txt");
  [v3 setAccessibilityLabel:v4];
}

- (void)_updateScrubberVisibilityWithDuration:(double)a3
{
  v4.receiver = self;
  v4.super_class = PLVideoViewAccessibility;
  [(PLVideoViewAccessibility *)&v4 _updateScrubberVisibilityWithDuration:a3];
  [(PLVideoViewAccessibility *)self _accessibilityClearChildren];
}

- (id)accessibilityURL
{
  objc_opt_class();
  v3 = [(PLVideoViewAccessibility *)self safeValueForKey:@"pathForVideoFile"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8E70] fileURLWithPath:v4 isDirectory:0];

  return v5;
}

- (id)_accessibilityElementStoredUserLabel
{
  v2 = [(PLVideoViewAccessibility *)self accessibilityURL];
  v3 = UIAccessibilityMetadataDescriptionForVideo();

  return v3;
}

@end