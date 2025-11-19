@interface AXCFXElementUtilities
+ (id)sharedInstance;
- (id)axElementForJTEffect:(id)a3 vc:(id)a4;
- (void)_axRemoveEffect:(id)a3;
- (void)_axRotateClockwise:(id)a3;
- (void)_axRotateCounterClockwise:(id)a3;
- (void)_axScaleDown:(id)a3;
- (void)_axScaleUp:(id)a3;
@end

@implementation AXCFXElementUtilities

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXCFXElementUtilities sharedInstance];
  }

  v3 = _SharedInstance;

  return v3;
}

uint64_t __39__AXCFXElementUtilities_sharedInstance__block_invoke()
{
  _SharedInstance = objc_alloc_init(AXCFXElementUtilities);

  return MEMORY[0x2A1C71028]();
}

- (id)axElementForJTEffect:(id)a3 vc:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x29C2CEA90](@"JFXEffectEditingUtilities");
  v8 = objc_initWeak(location, v5);
  v9 = [v5 safeIntForKey:@"type"];

  if (v9 == 2)
  {
    v10 = [v6 safeUIViewForKey:@"view"];
    v11 = [[UIAccessibilityFunCamElement alloc] initWithAccessibilityContainer:v10];
    objc_initWeak(&from, v6);
    v74[0] = MEMORY[0x29EDCA5F8];
    v74[1] = 3221225472;
    v74[2] = __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke;
    v74[3] = &unk_29F2ABDA0;
    objc_copyWeak(&v76, &from);
    v12 = v5;
    v75 = v12;
    [(UIAccessibilityFunCamElement *)v11 _setAccessibilityFrameBlock:v74];
    v72[0] = MEMORY[0x29EDCA5F8];
    v72[1] = 3221225472;
    v72[2] = __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_3;
    v72[3] = &unk_29F2ABDC8;
    objc_copyWeak(&v73, location);
    [(UIAccessibilityFunCamElement *)v11 _setAccessibilityLabelBlock:v72];
    objc_initWeak(&v71, v11);
    v67[0] = MEMORY[0x29EDCA5F8];
    v67[1] = 3221225472;
    v67[2] = __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_4;
    v67[3] = &unk_29F2ABDF0;
    objc_copyWeak(&v69, location);
    objc_copyWeak(&v70, &v71);
    v13 = v12;
    v68 = v13;
    [(UIAccessibilityFunCamElement *)v11 _setAccessibilityValueBlock:v67];
    v14 = [v13 safeValueForKey:@"trackingProps"];
    if ([v14 safeIntForKey:@"trackingType"])
    {
      [(UIAccessibilityFunCamElement *)v11 setTracked:1];
    }

    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v65[1] = MEMORY[0x29EDCA5F8];
    v65[2] = 3221225472;
    v65[3] = __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_5;
    v65[4] = &unk_29F2ABE18;
    v65[5] = &v59;
    v66[1] = v7;
    objc_copyWeak(v66, location);
    AXPerformSafeBlock();
    v15 = *(v60 + 24);
    objc_destroyWeak(v66);
    _Block_object_dispose(&v59, 8);
    if (v15 == 1)
    {
      objc_initWeak(&v59, v6);
      v63[0] = MEMORY[0x29EDCA5F8];
      v63[1] = 3221225472;
      v63[2] = __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_6;
      v63[3] = &unk_29F2ABE40;
      objc_copyWeak(&v64, &v59);
      objc_copyWeak(v65, location);
      [(UIAccessibilityFunCamElement *)v11 _setAccessibilityActivateBlock:v63];
      v16 = accessibilityLocalizedString(@"text.effect.hint");
      v17 = accessibilityLocalizedString(@"effect.hint");
      v18 = __UIAXStringForVariables();
      [(UIAccessibilityFunCamElement *)v11 setAccessibilityHint:v18, v17, @"__AXStringForVariablesSentinel"];

      objc_destroyWeak(v65);
      objc_destroyWeak(&v64);
      objc_destroyWeak(&v59);
    }

    else
    {
      [(UIAccessibilityFunCamElement *)v11 _setAccessibilityActivateBlock:&__block_literal_global_404];
      v19 = accessibilityLocalizedString(@"effect.hint");
      [(UIAccessibilityFunCamElement *)v11 setAccessibilityHint:v19];
    }

    v58 = v14;
    v20 = [MEMORY[0x29EDB8DE8] array];
    v21 = [UIAccessibilityFunCamCustomAction alloc];
    v22 = accessibilityLocalizedString(@"increase.size.action");
    v23 = +[AXCFXElementUtilities sharedInstance];
    WeakRetained = objc_loadWeakRetained(location);
    v25 = [(UIAccessibilityFunCamCustomAction *)v21 initWithName:v22 target:v23 selector:sel__axScaleUp_ effect:WeakRetained axElement:v11 vc:v6];

    [v20 addObject:v25];
    v57 = v25;
    v26 = [UIAccessibilityFunCamCustomAction alloc];
    v27 = accessibilityLocalizedString(@"decrease.size.action");
    v28 = +[AXCFXElementUtilities sharedInstance];
    v29 = objc_loadWeakRetained(location);
    v30 = [(UIAccessibilityFunCamCustomAction *)v26 initWithName:v27 target:v28 selector:sel__axScaleDown_ effect:v29 axElement:v11 vc:v6];

    [v20 addObject:v30];
    v55 = v30;
    v56 = v10;
    v31 = [UIAccessibilityFunCamCustomAction alloc];
    v32 = accessibilityLocalizedString(@"rotate.clockwise.action");
    v33 = +[AXCFXElementUtilities sharedInstance];
    v34 = objc_loadWeakRetained(location);
    v35 = [(UIAccessibilityFunCamCustomAction *)v31 initWithName:v32 target:v33 selector:sel__axRotateClockwise_ effect:v34 axElement:v11 vc:v6];

    [v20 addObject:v35];
    v54 = v35;
    v36 = [UIAccessibilityFunCamCustomAction alloc];
    v37 = accessibilityLocalizedString(@"rotate.counterclockwise.action");
    v38 = +[AXCFXElementUtilities sharedInstance];
    v39 = objc_loadWeakRetained(location);
    v40 = [(UIAccessibilityFunCamCustomAction *)v36 initWithName:v37 target:v38 selector:sel__axRotateCounterClockwise_ effect:v39 axElement:v11 vc:v6];

    [v20 addObject:v40];
    v41 = [UIAccessibilityFunCamCustomAction alloc];
    v42 = accessibilityLocalizedString(@"remove.effect.action");
    v43 = +[AXCFXElementUtilities sharedInstance];
    v44 = objc_loadWeakRetained(location);
    v45 = [(UIAccessibilityFunCamCustomAction *)v41 initWithName:v42 target:v43 selector:sel__axRemoveEffect_ effect:v44 axElement:v11 vc:v6];

    [v20 addObject:v45];
    [(UIAccessibilityFunCamElement *)v11 setAccessibilityCustomActions:v20];
    LOBYTE(v59) = 0;
    objc_opt_class();
    v46 = objc_loadWeakRetained(location);
    v47 = [v46 safeValueForKeyPath:@"effectParameters"];
    v48 = __UIAccessibilityCastAsClass();

    if (v59 == 1)
    {
      abort();
    }

    v49 = [v48 objectForKeyedSubscript:*MEMORY[0x29EDC6368]];
    v50 = v49;
    if (v49)
    {
      [v49 SIMDDouble4x4];
      v51 = v59;
    }

    else
    {
      v51 = *MEMORY[0x29EDB90A0];
    }

    v52 = [MEMORY[0x29EDBA070] numberWithDouble:*&v51];
    [(UIAccessibilityFunCamElement *)v11 _accessibilitySetValue:v52 forKey:@"AXOriginalScale" storageMode:0];

    objc_destroyWeak(&v70);
    objc_destroyWeak(&v69);
    objc_destroyWeak(&v71);
    objc_destroyWeak(&v73);

    objc_destroyWeak(&v76);
    objc_destroyWeak(&from);
  }

  else
  {
    v11 = 0;
  }

  objc_destroyWeak(location);

  return v11;
}

double __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  MEMORY[0x29C2CEA90](@"CFXCaptureViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (isKindOfClass)
  {
    v6 = @"liveCaptureContainer";
  }

  else
  {
    MEMORY[0x29C2CEA90](@"CFXPreviewViewController");
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
LABEL_7:
      v9 = [MEMORY[0x29EDC7C40] mainScreen];
      [v9 bounds];

      v8 = 0;
      goto LABEL_8;
    }

    v4 = objc_loadWeakRetained((a1 + 40));
    v5 = v4;
    v6 = @"playerContainerView";
  }

  v8 = [v4 safeUIViewForKey:v6];

  if (!v8)
  {
    goto LABEL_7;
  }

  [(UIView *)v8 frame];
LABEL_8:
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = &unk_29BC5FD8B;
  v21 = 0u;
  v22 = 0u;
  v16 = *(a1 + 32);
  AXPerformSafeBlock();
  v10 = v18[4];
  v11 = v18[5];
  v12 = v18[6];
  v13 = v18[7];

  _Block_object_dispose(&v17, 8);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  *&v14 = UIAccessibilityConvertFrameToScreenCoordinates(v23, v8);

  return v14;
}

uint64_t __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = *MEMORY[0x29EDB93A0];
  v10 = *(MEMORY[0x29EDB93A0] + 16);
  result = [v2 imageFrameAtTime:&v9 forcePosterFrame:1 includeDropShadow:1 relativeTo:1 basisOrigin:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

id __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKey:@"accessibilityName"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = objc_loadWeakRetained((a1 + 32));
  MEMORY[0x29C2CEA90](@"JFXTextEffect");
  LOBYTE(v3) = objc_opt_isKindOfClass();

  if (v3)
  {
    v24 = 0;
    objc_opt_class();
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 safeValueForKey:@"strings"];
    v8 = __UIAccessibilityCastAsClass();

    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v21;
      do
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v19 = *(*(&v20 + 1) + 8 * v14);
          v12 = __UIAXStringForVariables();

          ++v14;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:{16, v19, @"__AXStringForVariablesSentinel"}];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = __UIAXStringForVariables();

  v17 = *MEMORY[0x29EDCA608];

  return v16;
}

id __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_4(id *a1)
{
  LOBYTE(v44) = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = [WeakRetained safeValueForKeyPath:@"effectParameters"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x29EDC6368]];
  v6 = v5;
  if (v5)
  {
    [v5 SIMDDouble4x4];
    v7 = v44;
  }

  else
  {
    v7 = *MEMORY[0x29EDB90A0];
  }

  __x = v7;
  v8 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v8 setRoundingMode:6];
  v9 = atan2(*(&__x + 1), *&__x) * 180.0 / 3.14159265;
  if (fabs(v9) >= 0.001)
  {
    *&v9 = v9;
    v11 = [MEMORY[0x29EDBA070] numberWithFloat:v9];
    v12 = [v8 stringFromNumber:v11];
    v13 = [v8 numberFromString:v12];

    v14 = MEMORY[0x29EDBA070];
    [v13 doubleValue];
    v16 = [v14 numberWithDouble:fabs(v15)];
    v17 = [MEMORY[0x29EDBA070] numberWithInteger:180];
    v18 = [v16 isEqualToNumber:v17];

    if (v18)
    {
      v19 = @"rotation.value.degrees";
    }

    else
    {
      [v13 floatValue];
      if (v20 <= 0.0)
      {
        v19 = @"rotation.value.counterclockwise";
      }

      else
      {
        v19 = @"rotation.value.clockwise";
      }
    }

    v21 = MEMORY[0x29EDBA0F8];
    v22 = accessibilityLocalizedString(v19);
    v10 = [v21 localizedStringWithFormat:v22, v16];
  }

  else
  {
    v10 = 0;
  }

  v23 = objc_loadWeakRetained(a1 + 6);
  v24 = [v23 _accessibilityValueForKey:@"AXOriginalScale"];
  [v24 floatValue];
  v26 = v25;

  if (v26 > 0.0)
  {
    v27 = *&__x / v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = objc_alloc_init(MEMORY[0x29EDBA078]);
  [v28 setMaximumFractionDigits:2];
  [v28 setNumberStyle:1];
  [v28 setRoundingMode:6];
  v29 = 0;
  v30 = fabs(v27 + -1.0);
  if (v30 >= 0.001 && v27 > 0.0)
  {
    *&v30 = v27;
    v31 = [MEMORY[0x29EDBA070] numberWithFloat:v30];
    v32 = [v28 stringFromNumber:v31];
    v33 = [v28 numberFromString:v32];

    v34 = MEMORY[0x29EDBA0F8];
    v35 = accessibilityLocalizedString(@"scale.value");
    v29 = [v34 localizedStringWithFormat:v35, v33];
  }

  v36 = [a1[4] safeValueForKey:@"trackingProps"];
  v37 = [v36 safeIntForKey:@"trackingType"] != 0;
  v38 = objc_loadWeakRetained(a1 + 6);
  [v38 setTracked:v37];

  v39 = objc_loadWeakRetained(a1 + 6);
  if ([v39 tracked])
  {
    v40 = accessibilityLocalizedString(@"following.face");
  }

  else
  {
    v40 = 0;
  }

  v41 = __UIAXStringForVariables();

  return v41;
}

void __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = [v2 canEditTextForEffect:WeakRetained];
}

uint64_t __49__AXCFXElementUtilities_axElementForJTEffect_vc___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentFullScreenTextEditorForEffect:v3 insertingEffect:1];

  return 1;
}

- (void)_axScaleUp:(id)a3
{
  v3 = a3;
  v4 = [v3 effect];
  v5 = [v4 safeIntForKey:@"type"];

  if (v5 == 2)
  {
    v13 = v3;
    AXPerformSafeBlock();
    v6 = [v13 vc];
    v7 = [v6 safeValueForKey:@"effectEditor"];

    v12 = v7;
    v8 = v7;
    AXPerformSafeBlock();
    LODWORD(v7) = *MEMORY[0x29EDC7EA8];
    v9 = [v13 axElement];
    v10 = [v9 accessibilityValue];
    UIAccessibilityPostNotification(v7, v10);

    v11 = v13;
    AXPerformSafeBlock();
  }
}

void __36__AXCFXElementUtilities__axScaleUp___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) vc];
  v2 = [*(a1 + 32) effect];
  [v3 displayEffectEditorForEffect:v2 forMode:1];
}

void __36__AXCFXElementUtilities__axScaleUp___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) vc];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) vc];
  v6 = v4;
  if (v3)
  {
    [v4 removeEffectEditor];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) vc];
    [v6 removeEffectEditorAnimated:0];
  }
}

- (void)_axScaleDown:(id)a3
{
  v3 = a3;
  v4 = [v3 effect];
  v5 = [v4 safeIntForKey:@"type"];

  if (v5 == 2)
  {
    v13 = v3;
    AXPerformSafeBlock();
    v6 = [v13 vc];
    v7 = [v6 safeValueForKey:@"effectEditor"];

    v12 = v7;
    v8 = v7;
    AXPerformSafeBlock();
    LODWORD(v7) = *MEMORY[0x29EDC7EA8];
    v9 = [v13 axElement];
    v10 = [v9 accessibilityValue];
    UIAccessibilityPostNotification(v7, v10);

    v11 = v13;
    AXPerformSafeBlock();
  }
}

void __38__AXCFXElementUtilities__axScaleDown___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) vc];
  v2 = [*(a1 + 32) effect];
  [v3 displayEffectEditorForEffect:v2 forMode:1];
}

void __38__AXCFXElementUtilities__axScaleDown___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) vc];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) vc];
  v6 = v4;
  if (v3)
  {
    [v4 removeEffectEditor];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) vc];
    [v6 removeEffectEditorAnimated:0];
  }
}

- (void)_axRotateClockwise:(id)a3
{
  v3 = a3;
  v4 = [v3 effect];
  v5 = [v4 safeIntForKey:@"type"];

  if (v5 == 2)
  {
    v13 = v3;
    AXPerformSafeBlock();
    v6 = [v13 vc];
    v7 = [v6 safeValueForKey:@"effectEditor"];

    v12 = v7;
    v8 = v7;
    AXPerformSafeBlock();
    LODWORD(v7) = *MEMORY[0x29EDC7EA8];
    v9 = [v13 axElement];
    v10 = [v9 accessibilityValue];
    UIAccessibilityPostNotification(v7, v10);

    v11 = v13;
    AXPerformSafeBlock();
  }
}

void __44__AXCFXElementUtilities__axRotateClockwise___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) vc];
  v2 = [*(a1 + 32) effect];
  [v3 displayEffectEditorForEffect:v2 forMode:1];
}

void __44__AXCFXElementUtilities__axRotateClockwise___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) vc];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) vc];
  v6 = v4;
  if (v3)
  {
    [v4 removeEffectEditor];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) vc];
    [v6 removeEffectEditorAnimated:0];
  }
}

- (void)_axRotateCounterClockwise:(id)a3
{
  v3 = a3;
  v4 = [v3 effect];
  v5 = [v4 safeIntForKey:@"type"];

  if (v5 == 2)
  {
    v13 = v3;
    AXPerformSafeBlock();
    v6 = [v13 vc];
    v7 = [v6 safeValueForKey:@"effectEditor"];

    v12 = v7;
    v8 = v7;
    AXPerformSafeBlock();
    LODWORD(v7) = *MEMORY[0x29EDC7EA8];
    v9 = [v13 axElement];
    v10 = [v9 accessibilityValue];
    UIAccessibilityPostNotification(v7, v10);

    v11 = v13;
    AXPerformSafeBlock();
  }
}

void __51__AXCFXElementUtilities__axRotateCounterClockwise___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) vc];
  v2 = [*(a1 + 32) effect];
  [v3 displayEffectEditorForEffect:v2 forMode:1];
}

void __51__AXCFXElementUtilities__axRotateCounterClockwise___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) vc];
  v3 = objc_opt_respondsToSelector();

  v4 = [*(a1 + 32) vc];
  v6 = v4;
  if (v3)
  {
    [v4 removeEffectEditor];
  }

  else
  {
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = [*(a1 + 32) vc];
    [v6 removeEffectEditorAnimated:0];
  }
}

- (void)_axRemoveEffect:(id)a3
{
  v3 = a3;
  v4 = [v3 effect];
  v5 = [v4 safeIntForKey:@"type"];

  if (v5 == 2)
  {
    v9 = v3;
    AXPerformSafeBlock();
    v6 = [v9 vc];
    v7 = [v6 safeValueForKey:@"effectEditor"];

    v8 = v7;
    AXPerformSafeBlock();
  }
}

void __41__AXCFXElementUtilities__axRemoveEffect___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) vc];
  v2 = [*(a1 + 32) effect];
  [v3 displayEffectEditorForEffect:v2 forMode:0];
}

@end