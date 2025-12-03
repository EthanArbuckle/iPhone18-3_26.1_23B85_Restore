@interface CFXPreviewViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)CFX_addEffect:(id)effect;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axRemoveEffectFromView:(id)view;
- (void)effectEditorView:(id)view didRemoveEffect:(id)effect;
- (void)fullScreenTextEditViewController:(id)controller didFinishEditingByRemovingEffect:(id)effect;
- (void)viewDidLayoutSubviews;
@end

@implementation CFXPreviewViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"CFX_addEffect:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"displayEffectEditorForEffect:forMode:" withFullSignature:{"v", "@", "Q", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"removeEffectEditor" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"effectEditorView:didRemoveEffect:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"fullScreenTextEditViewController:didFinishEditingByRemovingEffect:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"effectEditor" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"previewClip" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"presentFullScreenTextEditorForEffect:insertingEffect:" withFullSignature:{"B", "@", "B", 0}];
  [validationsCopy validateClass:@"CFXPreviewViewController" hasInstanceMethod:@"playerContainerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CFXClip" hasInstanceMethod:@"effectStack" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CFXClip" hasInstanceMethod:@"isVideo" withFullSignature:{"B", 0}];
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

  _axEffectToElement = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];

  if (!_axEffectToElement)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    [(CFXPreviewViewControllerAccessibility *)self _axSetEffectToElement:dictionary];
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
          _axEffectToElement2 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
          [_axEffectToElement2 setObject:v20 forKey:v21];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v13);
  }

  v23 = [(CFXPreviewViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  _axEffectToElement3 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
  allValues = [_axEffectToElement3 allValues];
  [v23 _accessibilitySetAdditionalElements:allValues];

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

- (void)CFX_addEffect:(id)effect
{
  effectCopy = effect;
  v16.receiver = self;
  v16.super_class = CFXPreviewViewControllerAccessibility;
  [(CFXPreviewViewControllerAccessibility *)&v16 CFX_addEffect:effectCopy];
  v5 = [(CFXPreviewViewControllerAccessibility *)self safeUIViewForKey:@"view"];
  v6 = [effectCopy safeValueForKey:@"jtEffect"];
  v7 = +[AXCFXElementUtilities sharedInstance];
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v9 = [v7 axElementForJTEffect:v6 vc:v8];

  _axEffectToElement = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];

  if (!_axEffectToElement)
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    [(CFXPreviewViewControllerAccessibility *)self _axSetEffectToElement:dictionary];
  }

  if (v9)
  {
    v12 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:v6];
    _axEffectToElement2 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
    [_axEffectToElement2 setObject:v9 forKey:v12];
  }

  _axEffectToElement3 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
  allValues = [_axEffectToElement3 allValues];
  [v5 _accessibilitySetAdditionalElements:allValues];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_axRemoveEffectFromView:(id)view
{
  v11 = [view safeValueForKey:@"jtEffect"];
  v4 = [MEMORY[0x29EDBA168] valueWithNonretainedObject:?];
  _axEffectToElement = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
  v6 = [_axEffectToElement objectForKey:v4];

  if (v6)
  {
    _axEffectToElement2 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
    [_axEffectToElement2 removeObjectForKey:v4];

    v8 = [(CFXPreviewViewControllerAccessibility *)self safeValueForKey:@"view"];
    _axEffectToElement3 = [(CFXPreviewViewControllerAccessibility *)self _axEffectToElement];
    allValues = [_axEffectToElement3 allValues];
    [v8 _accessibilitySetAdditionalElements:allValues];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)effectEditorView:(id)view didRemoveEffect:(id)effect
{
  v7.receiver = self;
  v7.super_class = CFXPreviewViewControllerAccessibility;
  effectCopy = effect;
  [(CFXPreviewViewControllerAccessibility *)&v7 effectEditorView:view didRemoveEffect:effectCopy];
  [(CFXPreviewViewControllerAccessibility *)self _axRemoveEffectFromView:effectCopy, v7.receiver, v7.super_class];
}

- (void)fullScreenTextEditViewController:(id)controller didFinishEditingByRemovingEffect:(id)effect
{
  v7.receiver = self;
  v7.super_class = CFXPreviewViewControllerAccessibility;
  effectCopy = effect;
  [(CFXPreviewViewControllerAccessibility *)&v7 fullScreenTextEditViewController:controller didFinishEditingByRemovingEffect:effectCopy];
  [(CFXPreviewViewControllerAccessibility *)self _axRemoveEffectFromView:effectCopy, v7.receiver, v7.super_class];
}

@end