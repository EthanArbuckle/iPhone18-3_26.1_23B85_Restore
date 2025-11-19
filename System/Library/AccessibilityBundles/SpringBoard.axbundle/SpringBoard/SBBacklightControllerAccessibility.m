@interface SBBacklightControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)screenIsDim;
- (float)_factorToPublishForBacklightState:(int64_t)a3;
- (void)setBacklightState:(int64_t)a3 source:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation SBBacklightControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBBacklightController" hasInstanceMethod:@"setBacklightState:source:animated:completion:" withFullSignature:{"v", "q", "q", "B", "@?", 0}];
  [v3 validateClass:@"SBBacklightControllerAccessibility" hasInstanceMethod:@"_factorToPublishForBacklightState:" withFullSignature:{"f", "q", 0}];
  [v3 validateClass:@"SBBacklightController" hasInstanceMethod:@"screenIsOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBBacklightController" hasInstanceMethod:@"screenIsOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBBacklightController" hasInstanceMethod:@"screenIsDim" withFullSignature:{"B", 0}];
}

- (float)_factorToPublishForBacklightState:(int64_t)a3
{
  if (a3 == 2)
  {
    return 0.02;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = SBBacklightControllerAccessibility;
  [(SBBacklightControllerAccessibility *)&v6 _factorToPublishForBacklightState:?];
  return result;
}

- (void)setBacklightState:(int64_t)a3 source:(int64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = MEMORY[0x29ED38050]();
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v24 = MEMORY[0x29EDCA5F8];
  v25 = 3221225472;
  v26 = __83__SBBacklightControllerAccessibility_setBacklightState_source_animated_completion___block_invoke;
  v27 = &unk_29F2FBE28;
  v28 = self;
  v29 = &v31;
  v30 = a3;
  AXPerformSafeBlock();
  v12 = v32[6];
  _Block_object_dispose(&v31, 8);
  if (v12 == 1.0)
  {
    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3221225472;
    v21[2] = __83__SBBacklightControllerAccessibility_setBacklightState_source_animated_completion___block_invoke_2;
    v21[3] = &unk_29F2FC678;
    v23 = a4;
    v22 = v10;
    v13 = MEMORY[0x29ED38050](v21);

    v11 = v13;
  }

  if (fabs(v12 + -0.02) >= 0.001 && _SBAXScreenCurtainEnabled != 1 || IsIdling != 1)
  {
    v15 = 0;
    goto LABEL_10;
  }

  if ((setBacklightState_source_animated_completion___AXShouldSpeakNextDimmedMessage & 1) == 0 && UIAccessibilityIsVoiceOverRunning())
  {
    v14 = [MEMORY[0x29EDBDFA8] server];
    [v14 isMediaPlayingForApp:0 completionHandler:&__block_literal_global_23];

    v15 = 1;
LABEL_10:
    setBacklightState_source_animated_completion___AXShouldSpeakNextDimmedMessage = v15;
  }

  IsIdling = 0;
  v16 = setBacklightState_source_animated_completion__wasEnabled;
  v17 = _SBAXScreenCurtainEnabled;
  if (setBacklightState_source_animated_completion__wasEnabled != _SBAXScreenCurtainEnabled)
  {
    setBacklightState_source_animated_completion__wasEnabled = _SBAXScreenCurtainEnabled;
  }

  _SBAXRealBacklightFactor = LODWORD(v12);
  if (UIAccessibilityIsVoiceOverRunning())
  {
    if (_SBAXScreenCurtainEnabled != 1 || v12 == 0.0)
    {
      [(SBBacklightControllerAccessibility *)&v18 setBacklightState:a3 source:a4 animated:v6 completion:v11, self, SBBacklightControllerAccessibility];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = SBBacklightControllerAccessibility;
      [(SBBacklightControllerAccessibility *)&v19 setBacklightState:2 source:a4 animated:v16 != v17 completion:v11];
      BKSHIDServicesSetBacklightFactorPending();
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = SBBacklightControllerAccessibility;
    [(SBBacklightControllerAccessibility *)&v20 setBacklightState:a3 source:a4 animated:v6 completion:v11, v18.receiver, v18.super_class];
  }
}

uint64_t __83__SBBacklightControllerAccessibility_setBacklightState_source_animated_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _factorToPublishForBacklightState:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void __83__SBBacklightControllerAccessibility_setBacklightState_source_animated_completion___block_invoke_2(uint64_t a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2 == 20 || v2 == 9)
  {
    UIAccessibilityPostNotification(0x41Au, 0);
    v2 = *(a1 + 40);
  }

  if (v2 == 14)
  {
    v4 = MEMORY[0x29EDBDB80];
  }

  else
  {
    v4 = MEMORY[0x29EDBDB78];
  }

  v5 = *v4;
  v8 = *MEMORY[0x29EDBDB70];
  v9[0] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74C0], v6);
  if (*(a1 + 40) != 14)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))();
  }
}

void __83__SBBacklightControllerAccessibility_setBacklightState_source_animated_completion___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = MEMORY[0x29EDBD7E8];
    v4 = accessibilityLocalizedString(@"screen.dimmed");
    argument = [v3 axAttributedStringWithString:v4];

    [argument setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9A8]];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
  }
}

- (BOOL)screenIsDim
{
  if (_SBAXScreenCurtainEnabled == 1 && *&_SBAXRealBacklightFactor != 0.0)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBBacklightControllerAccessibility;
  return [(SBBacklightControllerAccessibility *)&v5 screenIsDim];
}

@end