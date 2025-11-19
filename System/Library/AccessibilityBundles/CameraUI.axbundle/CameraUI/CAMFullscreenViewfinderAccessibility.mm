@interface CAMFullscreenViewfinderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)_axChangeValue:(double)a3 increment:(BOOL)a4 borderHit:(BOOL *)a5;
- (void)_loadSmartStyleControlsIfNeeded;
- (void)axUpdateSliderValue:(CGPoint)a3 smartSliderType:(int64_t)a4 increment:(BOOL)a5;
- (void)setControlDrawerExpanded:(BOOL)a3 forReason:(int64_t)a4 animated:(BOOL)a5;
- (void)setImageAnalysisButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)setVisiblePreviewSuggestionButton:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation CAMFullscreenViewfinderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"setControlDrawerExpanded:forReason:animated:" withFullSignature:{"v", "B", "q", "B", 0}];
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"controlDrawer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"setImageAnalysisButtonVisible:animated:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"imageAnalysisButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"setVisiblePreviewSuggestionButton:animated:" withFullSignature:{"v", "q", "B", 0}];
  [v3 validateClass:@"CAMViewfinderViewController"];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"handleSmartStylePadValueChanged:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentSmartStyle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMFullscreenViewfinder" hasInstanceMethod:@"_loadSmartStyleControlsIfNeeded" withFullSignature:{"v", 0}];
}

- (void)setControlDrawerExpanded:(BOOL)a3 forReason:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CAMFullscreenViewfinderAccessibility;
  [(CAMFullscreenViewfinderAccessibility *)&v9 setControlDrawerExpanded:a3 forReason:a4 animated:a5];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7F10];
    v8 = [(CAMFullscreenViewfinderAccessibility *)self safeValueForKey:@"controlDrawer"];
    UIAccessibilityPostNotification(v7, v8);
  }
}

- (void)setImageAnalysisButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMFullscreenViewfinderAccessibility;
  [(CAMFullscreenViewfinderAccessibility *)&v12 setImageAnalysisButtonVisible:a3 animated:a4];
  if (v4)
  {
    v6 = [(CAMFullscreenViewfinderAccessibility *)self safeValueForKey:@"imageAnalysisButton"];
    v7 = [v6 safeUnsignedIntegerForKey:@"mode"];
    if (v7 == 2)
    {
      v9 = @"appclip.detected";
    }

    else
    {
      v8 = v7;
      if (v7 == 1)
      {
        v9 = @"qrcode.detected";
      }

      else
      {
        if (v7)
        {
          v11 = AXLogAppAccessibility();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [CAMFullscreenViewfinderAccessibility setImageAnalysisButtonVisible:v8 animated:v11];
          }

          v10 = 0;
          goto LABEL_12;
        }

        v9 = @"text.detected";
      }
    }

    v10 = accessibilityCameraUILocalizedString(v9);
LABEL_12:
    UIAccessibilitySpeakIfNotSpeaking();
  }
}

- (void)setVisiblePreviewSuggestionButton:(int64_t)a3 animated:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = CAMFullscreenViewfinderAccessibility;
  [(CAMFullscreenViewfinderAccessibility *)&v7 setVisiblePreviewSuggestionButton:a3 animated:a4];
  if (a3 == 1)
  {
    if ([(CAMFullscreenViewfinderAccessibility *)self safeBoolForKey:@"shouldShowControls"])
    {
      v6 = accessibilityCameraUILocalizedString(@"auto.macro.mode.detected");
      UIAccessibilitySpeakIfNotSpeaking();
    }
  }
}

- (void)_loadSmartStyleControlsIfNeeded
{
  v3.receiver = self;
  v3.super_class = CAMFullscreenViewfinderAccessibility;
  [(CAMFullscreenViewfinderAccessibility *)&v3 _loadSmartStyleControlsIfNeeded];
  [(CAMFullscreenViewfinderAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)axUpdateSliderValue:(CGPoint)a3 smartSliderType:(int64_t)a4 increment:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = [(CAMFullscreenViewfinderAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_12 startWithSelf:1];
  v11 = [v10 _accessibilityViewController];

  v12 = MEMORY[0x29EDB90B8];
  v17 = 0;
  if (a4)
  {
    if (a4 == 1)
    {
      [(CAMFullscreenViewfinderAccessibility *)self _axChangeValue:v5 increment:&v17 borderHit:y];
    }
  }

  else
  {
    [(CAMFullscreenViewfinderAccessibility *)self _axChangeValue:v5 increment:&v17 borderHit:x];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3010000000;
  v15[3] = &unk_29BC90C32;
  v16 = *v12;
  v13 = v11;
  AXPerformSafeBlock();
  if (v17 == 1)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
  }

  if (a4 <= 1)
  {
    v14 = AXFormatFloatWithPercentage();
    UIAccessibilitySpeak();
  }

  _Block_object_dispose(v15, 8);
}

uint64_t __86__CAMFullscreenViewfinderAccessibility_axUpdateSliderValue_smartSliderType_increment___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __86__CAMFullscreenViewfinderAccessibility_axUpdateSliderValue_smartSliderType_increment___block_invoke_2(uint64_t a1)
{
  [MEMORY[0x29EDC0B30] colorAndToneBiasForSlider2DValue:0 limitRangeForSystemStyles:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  return [v5 handleSmartStylePadValueChanged:{v6, v7}];
}

- (double)_axChangeValue:(double)a3 increment:(BOOL)a4 borderHit:(BOOL *)a5
{
  v5 = -0.1;
  if (a4)
  {
    v5 = 0.1;
  }

  result = v5 + a3;
  v7 = 1.0;
  if (result >= 1.0 || (v7 = -1.0, result <= -1.0))
  {
    *a5 = 1;
    return v7;
  }

  return result;
}

- (void)setImageAnalysisButtonVisible:(uint64_t)a1 animated:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x29EDCA608];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_29BC67000, a2, OS_LOG_TYPE_ERROR, "VKImageAnalysisButtonMode unhandled : %lu", &v2, 0xCu);
}

@end