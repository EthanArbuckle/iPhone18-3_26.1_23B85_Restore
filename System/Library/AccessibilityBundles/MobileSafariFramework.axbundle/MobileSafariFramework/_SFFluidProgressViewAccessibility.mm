@interface _SFFluidProgressViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)_progressBarBoundsForValue:(double)a3;
- (void)_axCheckProgress;
- (void)_axHandleProgressComplete;
- (void)_axHandleProgressStart:(id)a3;
- (void)_finishProgressBarWithDuration:(double)a3;
- (void)fluidProgressController:(id)a3 setProgressToCurrentPosition:(id)a4;
- (void)fluidProgressController:(id)a3 updateFluidProgressBar:(id)a4 completion:(id)a5;
@end

@implementation _SFFluidProgressViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressController:setProgressToCurrentPosition:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressControllerFinishProgressBar:animateFillFade:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressController:startFluidProgressBar:animateFillFade:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"_finishProgressBarWithDuration:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"fluidProgressController:updateFluidProgressBar:completion:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"WBSFluidProgressState"];
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceVariable:@"_clippingView" withType:"UIView"];
  [v3 validateClass:@"WBSFluidProgressState" hasInstanceMethod:@"fluidProgressValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"WBSFluidProgressState" hasInstanceMethod:@"hasCompletedLoad" withFullSignature:{"B", 0}];
  [v3 validateClass:@"_SFFluidProgressView" hasInstanceMethod:@"_progressBarBoundsForValue:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "d", 0}];
}

- (CGRect)_progressBarBoundsForValue:(double)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v21.receiver = self;
  v21.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v21 _progressBarBoundsForValue:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible]&& vabdd_f64(*&_progressBarBoundsForValue__LastProgressValue, a3) > 0.05)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v23 = a3;
      _os_log_impl(&dword_29BFCD000, v13, OS_LOG_TYPE_INFO, "Sending fluid progress notification in progressBar: %f", buf, 0xCu);
    }

    v14 = *MEMORY[0x29EDC75E8];
    v15 = [MEMORY[0x29EDBA070] numberWithDouble:a3];
    UIAccessibilityPostNotification(v14, v15);

    _progressBarBoundsForValue__LastProgressValue = *&a3;
  }

  v16 = *MEMORY[0x29EDCA608];
  v17 = v6;
  v18 = v8;
  v19 = v10;
  v20 = v12;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)_finishProgressBarWithDuration:(double)a3
{
  v13 = *MEMORY[0x29EDCA608];
  v8.receiver = self;
  v8.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v8 _finishProgressBarWithDuration:?];
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x29EDBA070] numberWithDouble:a3];
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&dword_29BFCD000, v5, OS_LOG_TYPE_INFO, "Progress bar done after: %@ %@", buf, 0x16u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)fluidProgressController:(id)a3 updateFluidProgressBar:(id)a4 completion:(id)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _SFFluidProgressViewAccessibility;
  [(_SFFluidProgressViewAccessibility *)&v13 fluidProgressController:a3 updateFluidProgressBar:v8 completion:a5];
  [v8 fluidProgressValue];
  if (v9 > 0.0 && [(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    [(_SFFluidProgressViewAccessibility *)self _axHandleProgressStart:v8];
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BFCD000, v10, OS_LOG_TYPE_INFO, "Fluid progress notification posted", buf, 2u);
    }
  }

  else if ([v8 safeBoolForKey:@"hasCompletedLoad"])
  {
    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v11 = AXLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29BFCD000, v11, OS_LOG_TYPE_INFO, "Completed load, marking started", buf, 2u);
    }

    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)_axCheckProgress
{
  v20 = *MEMORY[0x29EDCA608];
  buf[0] = 0;
  v3 = [(_SFFluidProgressViewAccessibility *)self safeValueForKey:@"_state"];
  v4 = __UIAccessibilitySafeClass();

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    [v4 fluidProgressValue];
    *buf = 134217984;
    v19 = v6;
    _os_log_impl(&dword_29BFCD000, v5, OS_LOG_TYPE_INFO, "Check progress in axtimer: %f", buf, 0xCu);
  }

  [v4 fluidProgressValue];
  if (!v4)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = [(_SFFluidProgressViewAccessibility *)self safeUIViewForKey:@"_clippingView"];
  if (![v9 _accessibilityViewIsVisible] || (objc_msgSend(v4, "fluidProgressValue"), v10 == 1.0) || objc_msgSend(v4, "hasCompletedLoad"))
  {

LABEL_8:
    [(_SFFluidProgressViewAccessibility *)self _axHandleProgressComplete];
    goto LABEL_9;
  }

  v12 = [v4 hasCanceledLoad];

  if (v12)
  {
    goto LABEL_8;
  }

  if (v8 > 0.0)
  {
    v13 = AXLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v19 = v8;
      _os_log_impl(&dword_29BFCD000, v13, OS_LOG_TYPE_INFO, "Sending fluid progress notification in setProgress: %f", buf, 0xCu);
    }

    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v14 = *MEMORY[0x29EDC75E8];
    v15 = [MEMORY[0x29EDBA070] numberWithDouble:v8];
    UIAccessibilityPostNotification(v14, v15);

    v16 = [(_SFFluidProgressViewAccessibility *)self _axProgressTimer];
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __53___SFFluidProgressViewAccessibility__axCheckProgress__block_invoke;
    v17[3] = &unk_29F2D6938;
    v17[4] = self;
    [v16 afterDelay:v17 processBlock:0.1];
  }

LABEL_9:

  v11 = *MEMORY[0x29EDCA608];
}

- (void)_axHandleProgressStart:(id)a3
{
  v20[2] = *MEMORY[0x29EDCA608];
  v4 = a3;
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible])
  {
    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v19[0] = @"progress";
    v5 = MEMORY[0x29EDBA070];
    [v4 fluidProgressValue];
    v6 = [v5 numberWithDouble:?];
    v19[1] = @"url";
    v20[0] = v6;
    v7 = [v4 loadURL];
    v8 = v7;
    v9 = &stru_2A2220B98;
    if (v7)
    {
      v9 = v7;
    }

    v20[1] = v9;
    v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    UIAccessibilityPostNotification(0x430u, v10);

    v11 = *MEMORY[0x29EDC75E8];
    v12 = MEMORY[0x29EDBA070];
    [v4 fluidProgressValue];
    v13 = [v12 numberWithDouble:?];
    UIAccessibilityPostNotification(v11, v13);

    v14 = AXLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      [v4 fluidProgressValue];
      v17 = 134217984;
      v18 = v15;
      _os_log_impl(&dword_29BFCD000, v14, OS_LOG_TYPE_INFO, "Marking fluid progress in start: %f", &v17, 0xCu);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

- (void)_axHandleProgressComplete
{
  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityBoolValueForKey:@"StartedFluidProgress"])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC75E8], &unk_2A2228048);
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_29BFCD000, v3, OS_LOG_TYPE_INFO, "Posting finish notification during finish progress", v4, 2u);
    }
  }

  [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"StartedFluidProgress"];
}

- (void)fluidProgressController:(id)a3 setProgressToCurrentPosition:(id)a4
{
  v17 = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = _SFFluidProgressViewAccessibility;
  v6 = a4;
  [(_SFFluidProgressViewAccessibility *)&v14 fluidProgressController:a3 setProgressToCurrentPosition:v6];
  [v6 fluidProgressValue];
  v8 = v7;

  v9 = AXLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_29BFCD000, v9, OS_LOG_TYPE_INFO, "Fluid progress updated position", buf, 2u);
  }

  if ([(_SFFluidProgressViewAccessibility *)self _accessibilityViewIsVisible]&& v8 > 0.0)
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_29BFCD000, v10, OS_LOG_TYPE_INFO, "Sending fluid progress notification in setProgress: %f", buf, 0xCu);
    }

    [(_SFFluidProgressViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"StartedFluidProgress"];
    v11 = *MEMORY[0x29EDC75E8];
    v12 = [MEMORY[0x29EDBA070] numberWithDouble:v8];
    UIAccessibilityPostNotification(v11, v12);
  }

  v13 = *MEMORY[0x29EDCA608];
}

@end