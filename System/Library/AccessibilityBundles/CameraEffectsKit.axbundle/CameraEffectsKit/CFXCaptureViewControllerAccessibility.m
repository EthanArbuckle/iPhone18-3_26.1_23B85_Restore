@interface CFXCaptureViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axFaceTimeLocalViewExpanded;
- (BOOL)_axIsFaceTime;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axRemoveEffectFromView:(id)a3;
- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4;
- (void)viewDidLoad;
@end

@implementation CFXCaptureViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"CFX_addEffect:allowImmediateTextEditing:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"displayEffectEditorForEffect:forMode:" withFullSignature:{"v", "@", "Q", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"removeEffectEditorAnimated:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"effectEditorView:didRemoveEffect:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"fullScreenTextEditViewController:didFinishEditingByRemovingEffect:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"effectEditor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"presentFullScreenTextEditorForEffect:insertingEffect:" withFullSignature:{"B", "@", "B", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"liveCaptureContainer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXCaptureViewController" hasInstanceMethod:@"composition" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXEffectComposition" hasInstanceMethod:@"jtEffects" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXEffect" hasInstanceMethod:@"jtEffect" withFullSignature:{"@", 0}];
  [v3 validateClass:@"JFXEffect" hasInstanceMethod:@"type" withFullSignature:{"i", 0}];
  [v3 validateClass:@"JFXOverlayEffect" hasInstanceMethod:@"trackingProps" withFullSignature:{"@", 0}];
  [v3 validateClass:@"JFXEffect" hasInstanceMethod:@"accessibilityName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"JFXEffect" hasInstanceMethod:@"effectParameters" withFullSignature:{"@", 0}];
  [v3 validateClass:@"JFXTextEffect" hasInstanceMethod:@"strings" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"CFX_scaleEffect:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"CFX_rotateEffect:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"CFX_removeEffect" withFullSignature:{"v", 0}];
  [v3 validateClass:@"JFXOverlayEffect" hasInstanceMethod:@"imageFrameAtTime:forcePosterFrame:includeDropShadow:relativeTo:basisOrigin:" withFullSignature:{"{?=qiIq}", "B", "B", "{CGRect={CGPoint=dd}{CGSize=dd}}", "i", 0}];
  [v3 validateClass:@"JFXEffectEditingUtilities" hasClassMethod:@"canEditTextForEffect:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"JFXTrackedEffectProperties" hasInstanceMethod:@"trackingType" withFullSignature:{"q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v12.receiver = self;
  v12.super_class = CFXCaptureViewControllerAccessibility;
  [(CFXCaptureViewControllerAccessibility *)&v12 _accessibilityLoadAccessibilityInformation];
  v3 = [(CFXCaptureViewControllerAccessibility *)self safeValueForKey:@"liveCaptureContainer"];
  [v3 setAccessibilityIdentifier:@"AXCFXViewFinder"];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __83__CFXCaptureViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9[3] = &unk_29F2ABF18;
  objc_copyWeak(&v10, &location);
  [v3 _setIsAccessibilityElementBlock:v9];
  v4 = accessibilityLocalizedString(@"viewfinder.label");
  [v3 setAccessibilityLabel:v4];

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __83__CFXCaptureViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v7[3] = &unk_29F2ABDC8;
  objc_copyWeak(&v8, &location);
  [v3 _setAccessibilityValueBlock:v7];
  v5 = [(CFXCaptureViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __83__CFXCaptureViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v6[3] = &unk_29F2ABF60;
  v6[4] = self;
  [v5 _setAccessibilityElementsHiddenBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

uint64_t __83__CFXCaptureViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axIsFaceTime];

  return v2 ^ 1u;
}

id __83__CFXCaptureViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v47 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained safeValueForKeyPath:@"composition.jtEffects"];
  v4 = __UIAccessibilityCastAsClass();

  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
  v38 = v5;
  if (!v6)
  {
    v27 = v5;
    v26 = 0;
    v9 = 0;
    v28 = 0;
    v25 = 0;
    v29 = 0;
    goto LABEL_40;
  }

  v37 = 0;
  v39 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = *v44;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v44 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v43 + 1) + 8 * i);
      v13 = [v12 safeIntForKey:@"type"];
      if (v13 <= 6)
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            continue;
          }

          v8 = (v8 + 1);
          v14 = [v12 safeValueForKey:@"trackingProps"];
          if ([v14 safeIntForKey:@"trackingType"])
          {
            v7 = (v7 + 1);
          }

          else
          {
            v7 = v7;
          }

          goto LABEL_24;
        }

        goto LABEL_14;
      }

      if (v13 == 7)
      {
        v40 = v8;
        v41 = v7;
        v42 = v9;
        v14 = [v12 safeValueForKey:@"effectID"];
        v15 = objc_alloc_init(MEMORY[0x29EDBFBB0]);
        v16 = [MEMORY[0x29EDBFBA0] requestForAvatarWithIdentifier:v14];
        v17 = [v15 avatarsForFetchRequest:v16 error:0];
        v18 = [v17 firstObject];
        if (v18)
        {
          v19 = [MEMORY[0x29EDBFBA8] avatarForRecord:v18];
        }

        else
        {
          v19 = 0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [MEMORY[0x29EDBDE08] descriptionForAnimoji:v19];
          goto LABEL_22;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [MEMORY[0x29EDBDE08] descriptionForMemoji:v19];
          v37 = 1;
LABEL_22:

          v39 = v20;
          v5 = v38;
        }

        v7 = v41;
        v9 = v42;
        v8 = v40;
        goto LABEL_24;
      }

      if (v13 != 8)
      {
        continue;
      }

LABEL_14:
      [v12 safeValueForKeyPath:@"accessibilityName"];
      v9 = v14 = v9;
LABEL_24:
    }

    v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
  }

  while (v6);

  if (v8 < 1)
  {
    v6 = 0;
  }

  else
  {
    v21 = MEMORY[0x29EDBA0F8];
    v22 = accessibilityLocalizedString(@"stickers.count");
    v6 = [v21 localizedStringWithFormat:v22, v8];

    if (v7 >= 1)
    {
      v23 = MEMORY[0x29EDBA0F8];
      v24 = accessibilityLocalizedString(@"tracked.stickers.count");
      v25 = [v23 localizedStringWithFormat:v24, v7];

      if (!v9)
      {
        goto LABEL_30;
      }

LABEL_34:
      v30 = MEMORY[0x29EDBA0F8];
      v31 = accessibilityLocalizedString(@"filter.name");
      v26 = [v30 localizedStringWithFormat:v31, v9];

      goto LABEL_35;
    }
  }

  v25 = 0;
  if (v9)
  {
    goto LABEL_34;
  }

LABEL_30:
  v26 = 0;
LABEL_35:
  if (v39)
  {
    v32 = MEMORY[0x29EDBA0F8];
    if (v37)
    {
      v33 = @"memoji.name";
    }

    else
    {
      v33 = @"animoji.name";
    }

    v27 = accessibilityLocalizedString(v33);
    v29 = [v32 localizedStringWithFormat:v27, v39];
    v28 = v39;
LABEL_40:
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

  v34 = __UIAXStringForVariables();

  v35 = *MEMORY[0x29EDCA608];

  return v34;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CFXCaptureViewControllerAccessibility;
  [(CFXCaptureViewControllerAccessibility *)&v3 viewDidLoad];
  [(CFXCaptureViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_axRemoveEffectFromView:(id)a3
{
  v11 = [a3 safeValueForKey:@"jtEffect"];
  v4 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:?];
  v5 = [(CFXCaptureViewControllerAccessibility *)self _axEffectToElement];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(CFXCaptureViewControllerAccessibility *)self _axEffectToElement];
    [v7 removeObjectForKey:v4];

    v8 = [(CFXCaptureViewControllerAccessibility *)self safeValueForKey:@"view"];
    v9 = [(CFXCaptureViewControllerAccessibility *)self _axEffectToElement];
    v10 = [v9 allValues];
    [v8 _accessibilitySetAdditionalElements:v10];
  }
}

- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4
{
  v7.receiver = self;
  v7.super_class = CFXCaptureViewControllerAccessibility;
  v6 = a4;
  [(CFXCaptureViewControllerAccessibility *)&v7 effectEditorView:a3 didRemoveEffect:v6];
  [(CFXCaptureViewControllerAccessibility *)self _axRemoveEffectFromView:v6, v7.receiver, v7.super_class];
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4
{
  v7.receiver = self;
  v7.super_class = CFXCaptureViewControllerAccessibility;
  v6 = a4;
  [(CFXCaptureViewControllerAccessibility *)&v7 fullScreenTextEditViewController:a3 didFinishEditingByRemovingEffect:v6];
  [(CFXCaptureViewControllerAccessibility *)self _axRemoveEffectFromView:v6, v7.receiver, v7.super_class];
}

- (BOOL)_axIsFaceTime
{
  v2 = [(CFXCaptureViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v3 = [v2 _accessibilityFindAncestor:&__block_literal_global_3 startWithSelf:1];

  return v3 != 0;
}

uint64_t __54__CFXCaptureViewControllerAccessibility__axIsFaceTime__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2CEA90](@"PHInCallRootView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axFaceTimeLocalViewExpanded
{
  v2 = [(CFXCaptureViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v3 = 1;
  v4 = [v2 _accessibilityFindAncestor:&__block_literal_global_446 startWithSelf:1];
  v5 = [v4 _accessibilityViewController];
  v6 = [v5 safeValueForKey:@"accessibilityConstraintController"];

  if (v6)
  {
    v3 = [v6 safeIntegerForKey:@"localParticipantState"] == 2;
  }

  return v3;
}

uint64_t __69__CFXCaptureViewControllerAccessibility__axFaceTimeLocalViewExpanded__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CEA90](@"CNKFaceTimeMultiwayConversationViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end