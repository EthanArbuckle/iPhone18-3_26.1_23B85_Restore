@interface PXLivePhotoTrimScrubberAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilityTimeForCMTime:(id *)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (void)_PXLivePhotoTrimScrubber_commonInit;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_loadEndTrimAX;
- (void)_loadKeyFrameAX;
- (void)_loadStartTrimAX;
@end

@implementation PXLivePhotoTrimScrubberAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"_PXLivePhotoTrimScrubber_commonInit" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"keyTime" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"trimStartTime" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"trimEndTime" withFullSignature:{"{?=qiIq}", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"setKeyTime:" withFullSignature:{"v", "{?=qiIq}", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"setTrimStartTime:" withFullSignature:{"v", "{?=qiIq}", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"setTrimEndTime:" withFullSignature:{"v", "{?=qiIq}", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"handleEndTracking:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceVariable:@"_trimEndHandle" withType:"UIImageView"];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceVariable:@"_trimStartHandle" withType:"UIImageView"];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceVariable:@"_photoLoupe" withType:"PXLivePhotoTrimScrubberLoupeView"];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceVariable:@"_trimControlHiddenHelper" withType:"PXLivePhotoTrimScrubberHiddenAnimationHelper"];
  [v3 validateClass:@"PXLivePhotoTrimScrubberHiddenAnimationHelper" hasInstanceMethod:@"hidden" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PXLivePhotoTrimScrubber" hasInstanceMethod:@"_trackingElement" withFullSignature:{"q", 0}];
}

- (id)_accessibilityTimeForCMTime:(id *)a3
{
  v5 = *a3;
  CMTimeGetSeconds(&v5);
  v3 = UIAXTimeStringForDuration();

  return v3;
}

- (void)_loadStartTrimAX
{
  v3 = [(PXLivePhotoTrimScrubberAccessibility *)self safeUIViewForKey:@"_trimStartHandle"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityPULocalizedString(@"start.trim.handle");
  [v3 setAccessibilityLabel:v4];

  v5 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F60] | v5];
  [v3 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A2288ED0];
  objc_initWeak(&location, v3);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke;
  v17[3] = &unk_29F2E6430;
  objc_copyWeak(&v18, &location);
  [v3 _setAccessibilityActivationPointBlock:v17];
  objc_initWeak(&from, self);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_2;
  v14[3] = &unk_29F2E6480;
  objc_copyWeak(&v15, &from);
  [v3 _setAccessibilityValueBlock:v14];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_4;
  v11[3] = &unk_29F2E64D0;
  objc_copyWeak(&v13, &from);
  v11[4] = self;
  v6 = v3;
  v12 = v6;
  [v6 _accessibilitySetActionBlock:v11 withValue:0 forKey:*MEMORY[0x29EDC7450]];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_8;
  v8[3] = &unk_29F2E64D0;
  objc_copyWeak(&v10, &from);
  v8[4] = self;
  v7 = v6;
  v9 = v7;
  [v7 _accessibilitySetActionBlock:v8 withValue:0 forKey:*MEMORY[0x29EDC7410]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

double __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained frame];
  v4 = v3;
  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 center];

  return v4;
}

id __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_2(uint64_t a1)
{
  *&v7 = 0;
  *(&v7 + 1) = &v7;
  v8 = 0x3810000000;
  v9 = "";
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = MEMORY[0x29EDCA5F8];
  objc_copyWeak(&v6, (a1 + 32));
  AXPerformSafeBlock();
  v13 = *(*(&v7 + 1) + 32);
  v14 = *(*(&v7 + 1) + 48);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v13;
  v8 = v14;
  v3 = [WeakRetained _accessibilityTimeForCMTime:{&v7, v5, 3221225472, __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_3, &unk_29F2E6458, &v7}];

  return v3;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimStartTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

uint64_t __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_4(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = a2;
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v23 = "";
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v20[1] = MEMORY[0x29EDCA5F8];
  v20[2] = 3221225472;
  v20[3] = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_5;
  v20[4] = &unk_29F2E6458;
  v20[5] = &time;
  objc_copyWeak(&v21, (a1 + 48));
  AXPerformSafeBlock();
  v27 = *(*&time.timescale + 32);
  objc_destroyWeak(&v21);
  _Block_object_dispose(&time, 8);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v23 = "";
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v15 = MEMORY[0x29EDCA5F8];
  v16 = 3221225472;
  v17 = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_6;
  v18 = &unk_29F2E6458;
  p_time = &time;
  objc_copyWeak(v20, (a1 + 48));
  AXPerformSafeBlock();
  v4 = *(*&time.timescale + 32);
  v5 = *(*&time.timescale + 40);
  v28 = *(*&time.timescale + 44);
  v29 = *(*&time.timescale + 52);
  objc_destroyWeak(v20);
  _Block_object_dispose(&time, 8);
  time.value = v4;
  *&time.flags = v28;
  time.timescale = v5;
  HIDWORD(time.epoch) = v29;
  if (CMTimeGetSeconds(&time) <= 60.0)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  memset(&time, 0, sizeof(time));
  v14 = v27;
  Seconds = CMTimeGetSeconds(&v14);
  CMTimeMakeWithSeconds(&time, v6 + Seconds, v5);
  objc_copyWeak(&v12, (a1 + 48));
  v13 = time;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  AXPerformSafeBlock();

  objc_destroyWeak(&v12);
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimStartTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [WeakRetained setTrimStartTime:&v8];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 safeValueForKey:@"delegate"];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v4 trimScrubber:v5 didEndInteractivelyEditingElement:1 successful:1];

  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v7 = [v6 _accessibilityTimeForCMTime:&v8];
  UIAccessibilitySpeak();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 40));
}

uint64_t __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_8(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = a2;
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v22[1] = MEMORY[0x29EDCA5F8];
  v22[2] = 3221225472;
  v22[3] = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_9;
  v22[4] = &unk_29F2E6458;
  v22[5] = &time;
  objc_copyWeak(&v23, (a1 + 48));
  AXPerformSafeBlock();
  v29 = *(*&time.timescale + 32);
  objc_destroyWeak(&v23);
  _Block_object_dispose(&time, 8);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v17 = MEMORY[0x29EDCA5F8];
  v18 = 3221225472;
  v19 = __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_10;
  v20 = &unk_29F2E6458;
  p_time = &time;
  objc_copyWeak(v22, (a1 + 48));
  AXPerformSafeBlock();
  v4 = *(*&time.timescale + 32);
  v5 = *(*&time.timescale + 40);
  v30 = *(*&time.timescale + 44);
  v31 = *(*&time.timescale + 52);
  objc_destroyWeak(v22);
  _Block_object_dispose(&time, 8);
  time.value = v4;
  time.timescale = v5;
  *&time.flags = v30;
  HIDWORD(time.epoch) = v31;
  if (CMTimeGetSeconds(&time) <= 60.0)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  memset(&time, 0, sizeof(time));
  v16 = v29;
  Seconds = CMTimeGetSeconds(&v16);
  CMTimeMakeWithSeconds(&time, Seconds - v6, v5);
  memset(&v16, 0, sizeof(v16));
  CMTimeMakeWithSeconds(&v16, 0.0, v5);
  time1 = time;
  time2 = v16;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time = v16;
  }

  objc_copyWeak(&v12, (a1 + 48));
  v13 = time;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  AXPerformSafeBlock();

  objc_destroyWeak(&v12);
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimStartTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __56__PXLivePhotoTrimScrubberAccessibility__loadStartTrimAX__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [WeakRetained setTrimStartTime:&v8];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 safeValueForKey:@"delegate"];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v4 trimScrubber:v5 didEndInteractivelyEditingElement:1 successful:1];

  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v7 = [v6 _accessibilityTimeForCMTime:&v8];
  UIAccessibilitySpeak();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 40));
}

- (void)_loadEndTrimAX
{
  v3 = [(PXLivePhotoTrimScrubberAccessibility *)self safeUIViewForKey:@"_trimEndHandle"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityPULocalizedString(@"end.trim.handle");
  [v3 setAccessibilityLabel:v4];

  v5 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F60] | v5];
  [v3 _accessibilitySetUserDefinedMediaAnalysisOptions:&unk_2A2288ED0];
  objc_initWeak(&location, v3);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke;
  v17[3] = &unk_29F2E6430;
  objc_copyWeak(&v18, &location);
  [v3 _setAccessibilityActivationPointBlock:v17];
  objc_initWeak(&from, self);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_2;
  v14[3] = &unk_29F2E6480;
  objc_copyWeak(&v15, &from);
  [v3 _setAccessibilityValueBlock:v14];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_4;
  v11[3] = &unk_29F2E64D0;
  objc_copyWeak(&v13, &from);
  v11[4] = self;
  v6 = v3;
  v12 = v6;
  [v6 _accessibilitySetActionBlock:v11 withValue:0 forKey:*MEMORY[0x29EDC7450]];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_8;
  v8[3] = &unk_29F2E64D0;
  objc_copyWeak(&v10, &from);
  v8[4] = self;
  v7 = v6;
  v9 = v7;
  [v7 _accessibilitySetActionBlock:v8 withValue:0 forKey:*MEMORY[0x29EDC7410]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

double __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained frame];
  MaxX = CGRectGetMaxX(v6);
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 center];

  return MaxX;
}

id __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_2(uint64_t a1)
{
  *&v7 = 0;
  *(&v7 + 1) = &v7;
  v8 = 0x3810000000;
  v9 = "";
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = MEMORY[0x29EDCA5F8];
  objc_copyWeak(&v6, (a1 + 32));
  AXPerformSafeBlock();
  v13 = *(*(&v7 + 1) + 32);
  v14 = *(*(&v7 + 1) + 48);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v13;
  v8 = v14;
  v3 = [WeakRetained _accessibilityTimeForCMTime:{&v7, v5, 3221225472, __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_3, &unk_29F2E6458, &v7}];

  return v3;
}

void __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

uint64_t __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_4(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v3 = a2;
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v30 = "";
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 3221225472;
  v25 = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_5;
  v26 = &unk_29F2E6458;
  p_time = &time;
  objc_copyWeak(&v28, (a1 + 48));
  AXPerformSafeBlock();
  v4 = *(*&time.timescale + 32);
  v5 = *(*&time.timescale + 40);
  v34 = *(*&time.timescale + 44);
  v35 = *(*&time.timescale + 52);
  objc_destroyWeak(&v28);
  _Block_object_dispose(&time, 8);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v30 = "";
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 3221225472;
  v18 = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_6;
  v19 = &unk_29F2E6458;
  v20 = &time;
  objc_copyWeak(&v21, (a1 + 48));
  AXPerformSafeBlock();
  v22 = *(*&time.timescale + 32);
  objc_destroyWeak(&v21);
  _Block_object_dispose(&time, 8);
  time.value = v4;
  time.timescale = v5;
  *&time.flags = v34;
  HIDWORD(time.epoch) = v35;
  if (CMTimeGetSeconds(&time) <= 60.0)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  memset(&time, 0, sizeof(time));
  time1.value = v4;
  time1.timescale = v5;
  *&time1.flags = v34;
  HIDWORD(time1.epoch) = v35;
  Seconds = CMTimeGetSeconds(&time1);
  CMTimeMakeWithSeconds(&time, v6 + Seconds, v5);
  time1 = time;
  time2 = v22;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    time = v22;
  }

  objc_copyWeak(&v12, (a1 + 48));
  v13 = time;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  AXPerformSafeBlock();

  objc_destroyWeak(&v12);
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

void __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained untrimmedDuration];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [WeakRetained setTrimEndTime:&v8];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 safeValueForKey:@"delegate"];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v4 trimScrubber:v5 didEndInteractivelyEditingElement:2 successful:1];

  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v7 = [v6 _accessibilityTimeForCMTime:&v8];
  UIAccessibilitySpeak();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 40));
}

uint64_t __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_8(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = a2;
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v22 = "";
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v15 = MEMORY[0x29EDCA5F8];
  v16 = 3221225472;
  v17 = __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_9;
  v18 = &unk_29F2E6458;
  p_time = &time;
  objc_copyWeak(&v20, (a1 + 48));
  AXPerformSafeBlock();
  v4 = *(*&time.timescale + 32);
  v5 = *(*&time.timescale + 40);
  v26 = *(*&time.timescale + 44);
  v27 = *(*&time.timescale + 52);
  objc_destroyWeak(&v20);
  _Block_object_dispose(&time, 8);
  time.value = v4;
  *&time.flags = v26;
  time.timescale = v5;
  HIDWORD(time.epoch) = v27;
  if (CMTimeGetSeconds(&time) <= 60.0)
  {
    v6 = 0.1;
  }

  else
  {
    v6 = 1.0;
  }

  memset(&time, 0, sizeof(time));
  v14.value = v4;
  v14.timescale = v5;
  *&v14.flags = v26;
  HIDWORD(v14.epoch) = v27;
  Seconds = CMTimeGetSeconds(&v14);
  CMTimeMakeWithSeconds(&time, Seconds - v6, v5);
  objc_copyWeak(&v12, (a1 + 48));
  v13 = time;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  AXPerformSafeBlock();

  objc_destroyWeak(&v12);
  v8 = *MEMORY[0x29EDCA608];
  return 1;
}

void __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __54__PXLivePhotoTrimScrubberAccessibility__loadEndTrimAX__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  [WeakRetained setTrimEndTime:&v8];

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 safeValueForKey:@"delegate"];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v4 trimScrubber:v5 didEndInteractivelyEditingElement:2 successful:1];

  v6 = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v7 = [v6 _accessibilityTimeForCMTime:&v8];
  UIAccessibilitySpeak();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 40));
}

- (void)_loadKeyFrameAX
{
  v3 = [(PXLivePhotoTrimScrubberAccessibility *)self safeUIViewForKey:@"_photoLoupe"];
  [v3 setIsAccessibilityElement:1];
  v4 = accessibilityPULocalizedString(@"live.photo.keytime");
  [v3 setAccessibilityLabel:v4];

  v5 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F60] | v5];
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke;
  v14[3] = &unk_29F2E6480;
  objc_copyWeak(&v15, &location);
  [v3 _setAccessibilityValueBlock:v14];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_3;
  v11[3] = &unk_29F2E64D0;
  objc_copyWeak(&v13, &location);
  v11[4] = self;
  v6 = v3;
  v12 = v6;
  [v6 _accessibilitySetActionBlock:v11 withValue:0 forKey:*MEMORY[0x29EDC7450]];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_7;
  v8[3] = &unk_29F2E64D0;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v7 = v6;
  v9 = v7;
  [v7 _accessibilitySetActionBlock:v8 withValue:0 forKey:*MEMORY[0x29EDC7410]];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

id __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke(uint64_t a1)
{
  *&v7 = 0;
  *(&v7 + 1) = &v7;
  v8 = 0x3810000000;
  v9 = "";
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = MEMORY[0x29EDCA5F8];
  objc_copyWeak(&v6, (a1 + 32));
  AXPerformSafeBlock();
  v13 = *(*(&v7 + 1) + 32);
  v14 = *(*(&v7 + 1) + 48);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = v13;
  v8 = v14;
  v3 = [WeakRetained _accessibilityTimeForCMTime:{&v7, v5, 3221225472, __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_2, &unk_29F2E6458, &v7}];

  return v3;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained keyTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

BOOL __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v28 = "";
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v21 = MEMORY[0x29EDCA5F8];
  v22 = 3221225472;
  v23 = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_4;
  v24 = &unk_29F2E6458;
  p_time = &time;
  objc_copyWeak(&v26, (a1 + 48));
  AXPerformSafeBlock();
  v32 = *(*&time.timescale + 32);
  objc_destroyWeak(&v26);
  _Block_object_dispose(&time, 8);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v28 = "";
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = 3221225472;
  v16 = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_5;
  v17 = &unk_29F2E6458;
  v18 = &time;
  objc_copyWeak(&v19, (a1 + 48));
  AXPerformSafeBlock();
  v20 = *(*&time.timescale + 32);
  objc_destroyWeak(&v19);
  _Block_object_dispose(&time, 8);
  time = v20;
  if (CMTimeGetSeconds(&time) <= 60.0)
  {
    v4 = 0.1;
  }

  else
  {
    v4 = 1.0;
  }

  memset(&time, 0, sizeof(time));
  time1 = v32;
  Seconds = CMTimeGetSeconds(&time1);
  CMTimeMake(&time, ((v4 + Seconds) * 1000.0), 1000);
  time1 = time;
  time2 = v20;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    time = v20;
  }

  time1 = time;
  time2 = v20;
  v6 = CMTimeCompare(&time1, &time2);
  if (v6 <= 0)
  {
    objc_copyWeak(&v10, (a1 + 48));
    v11 = time;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    AXPerformSafeBlock();

    objc_destroyWeak(&v10);
  }

  return v6 < 1;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained keyTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained safeValueForKey:@"delegate"];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v3 trimScrubber:v4 didBeginInteractivelyEditingElement:3];

  v5 = objc_loadWeakRetained((a1 + 48));
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  [v5 setKeyTime:&v9];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 handleEndTracking:1];

  v7 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v8 = [v7 _accessibilityTimeForCMTime:&v9];
  UIAccessibilitySpeakIfNotSpeaking();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 40));
}

BOOL __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v35 = "";
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v30 = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_8;
  v31 = &unk_29F2E6458;
  p_time = &time;
  objc_copyWeak(&v33, (a1 + 48));
  AXPerformSafeBlock();
  v39 = *(*&time.timescale + 32);
  objc_destroyWeak(&v33);
  _Block_object_dispose(&time, 8);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v35 = "";
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v21 = MEMORY[0x29EDCA5F8];
  v22 = 3221225472;
  v23 = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_9;
  v24 = &unk_29F2E6458;
  v25 = &time;
  objc_copyWeak(&v26, (a1 + 48));
  AXPerformSafeBlock();
  v27 = *(*&time.timescale + 32);
  objc_destroyWeak(&v26);
  _Block_object_dispose(&time, 8);
  time = v27;
  if (CMTimeGetSeconds(&time) <= 60.0)
  {
    v4 = 0.1;
  }

  else
  {
    v4 = 1.0;
  }

  memset(&v20, 0, sizeof(v20));
  time = v39;
  Seconds = CMTimeGetSeconds(&time);
  CMTimeMake(&v20, ((Seconds - v4) * 1000.0), 1000);
  time.value = 0;
  *&time.timescale = &time;
  time.epoch = 0x3810000000;
  v35 = "";
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_10;
  v16 = &unk_29F2E6458;
  v17 = &time;
  objc_copyWeak(&v18, (a1 + 48));
  AXPerformSafeBlock();
  v19 = *(*&time.timescale + 32);
  objc_destroyWeak(&v18);
  _Block_object_dispose(&time, 8);
  time = v20;
  time2 = v19;
  if (CMTimeCompare(&time, &time2) < 0)
  {
    v20 = v19;
  }

  time = v20;
  time2 = v19;
  v6 = CMTimeCompare(&time, &time2);
  if ((v6 & 0x80000000) == 0)
  {
    objc_copyWeak(&v10, (a1 + 48));
    v11 = v20;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    AXPerformSafeBlock();

    objc_destroyWeak(&v10);
  }

  return v6 >= 0;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained keyTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimEndTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained trimStartTime];
  v3 = *(*(a1 + 32) + 8);
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
}

void __55__PXLivePhotoTrimScrubberAccessibility__loadKeyFrameAX__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained safeValueForKey:@"delegate"];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v3 trimScrubber:v4 didBeginInteractivelyEditingElement:3];

  v5 = objc_loadWeakRetained((a1 + 48));
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  [v5 setKeyTime:&v9];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 handleEndTracking:1];

  v7 = *(a1 + 32);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v8 = [v7 _accessibilityTimeForCMTime:&v9];
  UIAccessibilitySpeakIfNotSpeaking();

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 40));
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = PXLivePhotoTrimScrubberAccessibility;
  [(PXLivePhotoTrimScrubberAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(PXLivePhotoTrimScrubberAccessibility *)self _loadStartTrimAX];
  [(PXLivePhotoTrimScrubberAccessibility *)self _loadEndTrimAX];
  [(PXLivePhotoTrimScrubberAccessibility *)self _loadKeyFrameAX];
}

- (id)accessibilityValue
{
  lhs.value = 0;
  *&lhs.timescale = &lhs;
  lhs.epoch = 0x3810000000;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __58__PXLivePhotoTrimScrubberAccessibility_accessibilityValue__block_invoke;
  v21 = &unk_29F2E6080;
  v22 = self;
  p_lhs = &lhs;
  AXPerformSafeBlock();
  v29 = *(*&lhs.timescale + 32);
  _Block_object_dispose(&lhs, 8);
  lhs.value = 0;
  *&lhs.timescale = &lhs;
  lhs.epoch = 0x3810000000;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = 3221225472;
  v13 = __58__PXLivePhotoTrimScrubberAccessibility_accessibilityValue__block_invoke_2;
  v14 = &unk_29F2E6080;
  v15 = self;
  v16 = &lhs;
  AXPerformSafeBlock();
  v17 = *(*&lhs.timescale + 32);
  _Block_object_dispose(&lhs, 8);
  memset(&v10, 0, sizeof(v10));
  lhs = v17;
  rhs = v29;
  CMTimeSubtract(&v10, &lhs, &rhs);
  lhs = v10;
  v3 = [(PXLivePhotoTrimScrubberAccessibility *)self _accessibilityTimeForCMTime:&lhs];
  lhs.value = 0;
  *&lhs.timescale = &lhs;
  lhs.epoch = 0x3810000000;
  v25 = "";
  v26 = 0;
  v27 = 0;
  v28 = 0;
  AXPerformSafeBlock();
  rhs = *(*&lhs.timescale + 32);
  _Block_object_dispose(&lhs, 8);
  lhs = rhs;
  v4 = [(PXLivePhotoTrimScrubberAccessibility *)self _accessibilityTimeForCMTime:&lhs];
  v5 = accessibilityPULocalizedString(@"live.photo.duration");
  v8 = accessibilityPULocalizedString(@"live.photo.keytime");
  v6 = __UIAXStringForVariables();

  return v6;
}

double __58__PXLivePhotoTrimScrubberAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  [*(a1 + 32) trimStartTime];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

double __58__PXLivePhotoTrimScrubberAccessibility_accessibilityValue__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) trimEndTime];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

double __58__PXLivePhotoTrimScrubberAccessibility_accessibilityValue__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) keyTime];
  v2 = *(*(a1 + 40) + 8);
  result = *&v4;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  return result;
}

- (id)accessibilityHint
{
  v2 = [(PXLivePhotoTrimScrubberAccessibility *)self safeValueForKey:@"_trimControlHiddenHelper"];
  v3 = [v2 safeBoolForKey:@"hidden"];

  if (v3)
  {
    v4 = accessibilityPULocalizedString(@"scrubber.hint");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(PXLivePhotoTrimScrubberAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7FA8] & v4) == 0)
  {
    v5 = [(PXLivePhotoTrimScrubberAccessibility *)self safeUIViewForKey:@"_trimStartHandle"];
    [v3 axSafelyAddObject:v5];

    v6 = [(PXLivePhotoTrimScrubberAccessibility *)self safeUIViewForKey:@"_photoLoupe"];
    [v3 axSafelyAddObject:v6];

    v7 = [(PXLivePhotoTrimScrubberAccessibility *)self safeUIViewForKey:@"_trimEndHandle"];
    [v3 axSafelyAddObject:v7];
  }

  return v3;
}

- (void)_PXLivePhotoTrimScrubber_commonInit
{
  v3.receiver = self;
  v3.super_class = PXLivePhotoTrimScrubberAccessibility;
  [(PXLivePhotoTrimScrubberAccessibility *)&v3 _PXLivePhotoTrimScrubber_commonInit];
  [(PXLivePhotoTrimScrubberAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end