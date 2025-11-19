@interface CFXPreviewViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)CFX_addEffect:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axRemoveEffectFromView:(id)a3;
- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4;
- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation CFXPreviewViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"CFX_addEffect:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"displayEffectEditorForEffect:forMode:" withFullSignature:{"v", "@", "Q", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"removeEffectEditor" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"effectEditorView:didRemoveEffect:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"fullScreenTextEditViewController:didFinishEditingByRemovingEffect:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"effectEditor" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"previewClip" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"presentFullScreenTextEditorForEffect:insertingEffect:" withFullSignature:{"B", "@", "B", 0}];
  [v3 validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"playerContainerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXClip" hasInstanceMethod:@"effectStack" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXClip" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v35 = *MEMORY[0x29EDCA608];
  v33.receiver = self;
  v33.super_class = CFXPreviewViewControllerAccessibility;
  [(CFXPreviewViewControllerAccessibility *)&v33 _accessibilityLoadAccessibilityInformation];
  v3 = [(CFXPreviewViewControllerAccessibility *)self safeValueForKey:@"playerContainerView"];
  [v3 setIsAccessibilityElement:1];
  v4 = [(CFXPreviewViewControllerAccessibility *)self safeValueForKey:@"previewClip"];
  v5 = [v4 safeBoolForKey:@"isVideo"];

  if (v5)
  {
    v6 = @"preview.clip.video";
  }

  else
  {
    v6 = @"preview.clip.image";
  }

  v7 = accessibilityLocalizedString(v6);
  [v3 setAccessibilityLabel:v7];

  v32 = 0;
  objc_opt_class();
  v8 = [(CFXPreviewViewControllerAccessibility *)self safeValueForKeyPath:@"previewClip.effectStack"];
  v9 = __UIAccessibilityCastAsClass();

  v10 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];

  if (!v10)
  {
    v11 = [MEMORY[0x29EDB8E00] dictionary];
    [(CFXPreviewViewControllerAccessibility *)self _axSetEffectToElement:v11];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = +[AXCFXElementUtilities sharedInstance];
        v32 = 0;
        objc_opt_class();
        v18 = __UIAccessibilityCastAsClass();
        if (v32 == 1)
        {
          abort();
        }

        v19 = v18;
        v20 = [v17 axElementForJTEffect:v16 vc:v18];

        if (v20)
        {
          v21 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:v16];
          v22 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
          [v22 setObject:v20 forKey:v21];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = [(CFXPreviewViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v24 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
  v25 = [v24 allValues];
  [v23 _accessibilitySetAdditionalElements:v25];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  v26 = *MEMORY[0x29EDCA608];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CFXPreviewViewControllerAccessibility;
  [(CFXPreviewViewControllerAccessibility *)&v3 viewDidLayoutSubviews];
  [(CFXPreviewViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)CFX_addEffect:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CFXPreviewViewControllerAccessibility;
  [(CFXPreviewViewControllerAccessibility *)&v16 CFX_addEffect:v4];
  v5 = [(CFXPreviewViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v6 = [v4 safeValueForKey:@"jtEffect"];
  v7 = +[AXCFXElementUtilities sharedInstance];
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v7 axElementForJTEffect:v6 vc:v8];

  v10 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];

  if (!v10)
  {
    v11 = [MEMORY[0x29EDB8E00] dictionary];
    [(CFXPreviewViewControllerAccessibility *)self _axSetEffectToElement:v11];
  }

  if (v9)
  {
    v12 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:v6];
    v13 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
    [v13 setObject:v9 forKey:v12];
  }

  v14 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
  v15 = [v14 allValues];
  [v5 _accessibilitySetAdditionalElements:v15];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_axRemoveEffectFromView:(id)a3
{
  v11 = [a3 safeValueForKey:@"jtEffect"];
  v4 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:?];
  v5 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
    [v7 removeObjectForKey:v4];

    v8 = [(CFXPreviewViewControllerAccessibility *)self safeValueForKey:@"view"];
    v9 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
    v10 = [v9 allValues];
    [v8 _accessibilitySetAdditionalElements:v10];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)effectEditorView:(id)a3 didRemoveEffect:(id)a4
{
  v7.receiver = self;
  v7.super_class = CFXPreviewViewControllerAccessibility;
  v6 = a4;
  [(CFXPreviewViewControllerAccessibility *)&v7 effectEditorView:a3 didRemoveEffect:v6];
  [(CFXPreviewViewControllerAccessibility *)self _axRemoveEffectFromView:v6, v7.receiver, v7.super_class];
}

- (void)fullScreenTextEditViewController:(id)a3 didFinishEditingByRemovingEffect:(id)a4
{
  v7.receiver = self;
  v7.super_class = CFXPreviewViewControllerAccessibility;
  v6 = a4;
  [(CFXPreviewViewControllerAccessibility *)&v7 fullScreenTextEditViewController:a3 didFinishEditingByRemovingEffect:v6];
  [(CFXPreviewViewControllerAccessibility *)self _axRemoveEffectFromView:v6, v7.receiver, v7.super_class];
}

@end