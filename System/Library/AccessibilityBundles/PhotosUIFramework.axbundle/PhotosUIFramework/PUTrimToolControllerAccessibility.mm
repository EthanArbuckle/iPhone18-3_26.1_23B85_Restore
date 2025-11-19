@interface PUTrimToolControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handlePlayPauseButton:(id)a3;
- (void)_handleScrubberTimelineOverlayButton:(id)a3;
- (void)focusTimeline:(id)a3 presentAction:(id)a4 locationInTimeline:(CGPoint)a5;
- (void)viewDidLoad;
@end

@implementation PUTrimToolControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"_handlePlayPauseButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"playerWrapper" withFullSignature:{"@", 0}];
  [v3 validateProtocol:@"PXTrimToolPlayerWrapper" hasMethod:@"isPlaying" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"focusTimeline:presentAction:locationInTimeline:" withFullSignature:{"v", "@", "@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"_handleScrubberTimelineOverlayButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"keyTime" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"trimScrubberTimelineOverlayView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"trimScrubberTimelineOverlayButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceMethod:@"focusTimelineAction" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXFocusTimelineAction" hasInstanceMethod:@"kind" withFullSignature:{"q", 0}];
  [v3 validateClass:@"PUTrimToolController" hasInstanceVariable:@"_trimScrubber" withType:"PXLivePhotoTrimScrubber"];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUTrimToolControllerAccessibility;
  [(PUTrimToolControllerAccessibility *)&v3 viewDidLoad];
  [(PUTrimToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_handlePlayPauseButton:(id)a3
{
  v8.receiver = self;
  v8.super_class = PUTrimToolControllerAccessibility;
  [(PUTrimToolControllerAccessibility *)&v8 _handlePlayPauseButton:a3];
  v4 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"_trimScrubber"];
  v5 = [v4 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FA8] & v5) != 0)
  {
    v6 = ~*MEMORY[0x29EDC7FA8];
  }

  else
  {
    v6 = -1;
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __60__PUTrimToolControllerAccessibility__handlePlayPauseButton___block_invoke;
  v7[3] = &__block_descriptor_40_e5_Q8__0l;
  v7[4] = v6 & v5;
  [v4 _setAccessibilityTraitsBlock:v7];
  [(PUTrimToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v13.receiver = self;
  v13.super_class = PUTrimToolControllerAccessibility;
  [(PUTrimToolControllerAccessibility *)&v13 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"playPauseButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, self);
  v7 = MEMORY[0x29EDCA5F8];
  v8 = 3221225472;
  v9 = __79__PUTrimToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v10 = &unk_29F2E8158;
  objc_copyWeak(&v11, &location);
  [v4 _setAccessibilityLabelBlock:&v7];
  v5 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"trimScrubberTimelineOverlayView", v7, v8, v9, v10];
  v6 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"trimScrubberTimelineOverlayButton"];
  [v6 setIsAccessibilityElement:{objc_msgSend(v5, "_accessibilityViewIsVisible")}];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

id __79__PUTrimToolControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"playerWrapper"];

  if ([v2 safeBoolForKey:@"isPlaying"])
  {
    v3 = @"pause.button";
  }

  else
  {
    v3 = @"play.button";
  }

  v4 = accessibilityPULocalizedString(v3);

  return v4;
}

- (void)focusTimeline:(id)a3 presentAction:(id)a4 locationInTimeline:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v34.receiver = self;
  v34.super_class = PUTrimToolControllerAccessibility;
  [(PUTrimToolControllerAccessibility *)&v34 focusTimeline:v9 presentAction:v10 locationInTimeline:x, y];
  [(PUTrimToolControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v11 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"_trimScrubber"];
  v12 = [v11 accessibilityTraits];
  v13 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"trimScrubberTimelineOverlayButton"];
  v14 = [v10 safeIntegerForKey:@"kind"];
  v15 = *MEMORY[0x29EDC7FA8];
  if (v14)
  {
    v16 = v12 & ~v15;
  }

  else
  {
    time.value = 0;
    *&time.timescale = &time;
    time.epoch = 0x3810000000;
    v29 = &unk_29C15DAFD;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v22 = MEMORY[0x29EDCA5F8];
    v23 = 3221225472;
    v24 = __84__PUTrimToolControllerAccessibility_focusTimeline_presentAction_locationInTimeline___block_invoke;
    v25 = &unk_29F2E80F0;
    p_time = &time;
    v26 = v11;
    AXPerformSafeBlock();
    v16 = v15 | v12;
    v33 = *(*&time.timescale + 32);

    _Block_object_dispose(&time, 8);
    time = v33;
    CMTimeGetSeconds(&time);
    v17 = UIAXTimeStringForDuration();
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3221225472;
    v20[2] = __84__PUTrimToolControllerAccessibility_focusTimeline_presentAction_locationInTimeline___block_invoke_2;
    v20[3] = &unk_29F2E8308;
    v21 = v17;
    v18 = v17;
    [v13 _setAccessibilityLabelBlock:v20];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v13);
  }

  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __84__PUTrimToolControllerAccessibility_focusTimeline_presentAction_locationInTimeline___block_invoke_3;
  v19[3] = &__block_descriptor_40_e5_Q8__0l;
  v19[4] = v16;
  [v11 _setAccessibilityTraitsBlock:v19];
}

double __84__PUTrimToolControllerAccessibility_focusTimeline_presentAction_locationInTimeline___block_invoke(uint64_t a1)
{
  [*(a1 + 32) keyTime];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

id __84__PUTrimToolControllerAccessibility_focusTimeline_presentAction_locationInTimeline___block_invoke_2(uint64_t a1)
{
  v2 = accessibilityPULocalizedString(@"delete.focus");
  v5 = *(a1 + 32);
  v3 = __UIAXStringForVariables();

  return v3;
}

- (void)_handleScrubberTimelineOverlayButton:(id)a3
{
  v10.receiver = self;
  v10.super_class = PUTrimToolControllerAccessibility;
  [(PUTrimToolControllerAccessibility *)&v10 _handleScrubberTimelineOverlayButton:a3];
  v4 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"focusTimelineAction"];
  v5 = [v4 safeUnsignedIntegerForKey:@"kind"];

  v6 = [(PUTrimToolControllerAccessibility *)self safeValueForKey:@"_trimScrubber"];
  v7 = [v6 accessibilityTraits];
  if (!v5)
  {
    v8 = accessibilityPULocalizedString(@"deleted.focus");
    UIAccessibilitySpeakAndDoNotBeInterrupted();

    v7 &= ~*MEMORY[0x29EDC7FA8];
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __74__PUTrimToolControllerAccessibility__handleScrubberTimelineOverlayButton___block_invoke;
  v9[3] = &__block_descriptor_40_e5_Q8__0l;
  v9[4] = v7;
  [v6 _setAccessibilityTraitsBlock:v9];
}

@end