@interface TUIPredictionView_TFExtras
- (TUIPredictionView_TFExtras)initWithFrame:(CGRect)a3;
- (void)_handleAXLongPress:(id)a3;
- (void)_speakLabelAtCell:(id)a3 forCurrentInputMode:(id)a4;
- (void)layoutSubviews;
- (void)speakTypingLoadAccessibilityInformation;
@end

@implementation TUIPredictionView_TFExtras

- (TUIPredictionView_TFExtras)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = TUIPredictionView_TFExtras;
  v3 = [(TUIPredictionView_TFExtras *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3 && _AXSQuickTypePredictionFeedbackEnabled())
  {
    [(TUIPredictionView_TFExtras *)v3 speakTypingLoadAccessibilityInformation];
  }

  return v3;
}

- (void)layoutSubviews
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = TUIPredictionView_TFExtras;
  [(TUIPredictionView_TFExtras *)&v15 layoutSubviews];
  if (_AXSQuickTypePredictionFeedbackEnabled())
  {
    [(TUIPredictionView_TFExtras *)self speakTypingLoadAccessibilityInformation];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(TUIPredictionView_TFExtras *)self gestureRecognizers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 _accessibilityBoolValueForKey:@"SpeakCell"])
        {
          [(TUIPredictionView_TFExtras *)self frame];
          [v8 setAllowableMovement:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x29EDCA608];
}

- (void)speakTypingLoadAccessibilityInformation
{
  if (([(TUIPredictionView_TFExtras *)self _accessibilityBoolValueForKey:@"accessibilityLongPressGestureRecognizerEnabled"]& 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC7B58]) initWithTarget:self action:sel__handleAXLongPress_];
    [v4 _accessibilitySetBoolValue:1 forKey:@"SpeakCell"];
    [(TUIPredictionView_TFExtras *)self frame];
    [v4 setAllowableMovement:v3];
    [(TUIPredictionView_TFExtras *)self addGestureRecognizer:v4];
    [(TUIPredictionView_TFExtras *)self _accessibilitySetBoolValue:1 forKey:@"accessibilityLongPressGestureRecognizerEnabled"];
  }
}

- (void)_handleAXLongPress:(id)a3
{
  v4 = a3;
  v5 = [(TUIPredictionView_TFExtras *)self safeArrayForKey:@"allVisibleCells"];
  v6 = [MEMORY[0x29EDC7B18] sharedInputModeController];
  v7 = [v6 currentInputMode];
  v8 = [v7 primaryLanguage];

  [v4 locationInView:self];
  v10 = v9;
  v12 = v11;
  if ([v4 state] == 1)
  {
    v13 = [(TUIPredictionView_TFExtras *)self _predictionCellIndexAtLocation:v10, v12];
LABEL_3:
    [(TUIPredictionView_TFExtras *)self _accessibilitySetIntegerValue:v13 forKey:@"accessibilityCurrentIndex"];
    if (v13 < [v5 count])
    {
      v14 = [v5 objectAtIndexedSubscript:v13];
      [(TUIPredictionView_TFExtras *)self _speakLabelAtCell:v14 forCurrentInputMode:v8];
    }

    goto LABEL_13;
  }

  if ([v4 state] == 2)
  {
    v13 = [(TUIPredictionView_TFExtras *)self _predictionCellIndexAtLocation:v10, v12];
    if (v13 == [(TUIPredictionView_TFExtras *)self _accessibilityIntegerValueForKey:@"accessibilityCurrentIndex"])
    {
      goto LABEL_13;
    }

    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 3221225472;
    v22[2] = __49__TUIPredictionView_TFExtras__handleAXLongPress___block_invoke;
    v22[3] = &unk_29F29A8F0;
    v22[4] = self;
    v22[5] = v13;
    soft_AXPerformSafeBlock_0(v22);
    goto LABEL_3;
  }

  if ([v4 state] == 3)
  {
    v15 = [(TUIPredictionView_TFExtras *)self safeIntegerForKey:@"selectedIndex"];
    v16 = [v5 count];
    if ((v15 & 0x8000000000000000) == 0 && v15 < v16)
    {
      v18[0] = MEMORY[0x29EDCA5F8];
      v18[1] = 3221225472;
      v18[2] = __49__TUIPredictionView_TFExtras__handleAXLongPress___block_invoke_2;
      v18[3] = &unk_29F29A918;
      v20 = self;
      v21 = v15;
      v19 = v5;
      soft_AXPerformSafeBlock_0(v18);
    }
  }

  else
  {
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __49__TUIPredictionView_TFExtras__handleAXLongPress___block_invoke_3;
    v17[3] = &unk_29F29A700;
    v17[4] = self;
    soft_AXPerformSafeBlock_0(v17);
  }

LABEL_13:
}

- (void)_speakLabelAtCell:(id)a3 forCurrentInputMode:(id)a4
{
  v9 = a3;
  v5 = a4;
  if (_AXSQuickTypePredictionFeedbackEnabled())
  {
    v6 = [v9 safeValueForKey:@"morphingLabel"];
    v7 = [v6 safeStringForKey:@"text"];

    v8 = [getSpeakTypingServicesClass_0() sharedInstance];
    [v8 notifySpeakServicesToFeedbackQuickTypePrediction:v7 forCurrentInputMode:v5];
  }
}

@end