@interface CFXEffectEditorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (void)CFX_beginTextEditing;
- (void)CFX_removeEffect;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation CFXEffectEditorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"removeButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"isTextEditing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"CFX_endTextEditing:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"CFX_beginTextEditing" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"CFX_removeEffect" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"endEditingAnimated:withCompletionBlock:" withFullSignature:{"v", "B", "@?", 0}];
  [v3 validateClass:@"CFXEffectEditorView" hasInstanceMethod:@"tapRemoveButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CFXFullScreenTextEditViewController"];
  [v3 validateClass:@"CFXCameraViewController"];
  [v3 validateClass:@"CFXCameraViewController" hasInstanceMethod:@"captureViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CFXCameraViewController" hasInstanceMethod:@"effectBrowserViewController" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = CFXEffectEditorViewAccessibility;
  [(CFXEffectEditorViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(CFXEffectEditorViewAccessibility *)self safeValueForKey:@"removeButton"];
  [v3 setIsAccessibilityElement:0];

  v4 = [(CFXEffectEditorViewAccessibility *)self safeValueForKey:@"removeButton"];
  v5 = accessibilityLocalizedString(@"close.button");
  [v4 setAccessibilityLabel:v5];
}

- (BOOL)accessibilityPerformEscape
{
  if ([(CFXEffectEditorViewAccessibility *)self safeBoolForKey:@"isTextEditing"])
  {
    v3 = *MEMORY[0x29EDC7EA8];
    v4 = accessibilityLocalizedString(@"text.inserted");
    UIAccessibilityPostNotification(v3, v4);

    v7 = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = __62__CFXEffectEditorViewAccessibility_accessibilityPerformEscape__block_invoke;
    v10 = &unk_29F2ABE88;
    v11 = self;
    AXPerformSafeBlock();
    return 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CFXEffectEditorViewAccessibility;
    return [(CFXEffectEditorViewAccessibility *)&v6 accessibilityPerformEscape];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CFXEffectEditorViewAccessibility;
  [(CFXEffectEditorViewAccessibility *)&v3 viewDidLoad];
  [(CFXEffectEditorViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)CFX_beginTextEditing
{
  v20[1] = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = CFXEffectEditorViewAccessibility;
  [(CFXEffectEditorViewAccessibility *)&v17 CFX_beginTextEditing];
  if ([(CFXEffectEditorViewAccessibility *)self safeBoolForKey:@"isTextEditing"])
  {
    v3 = objc_alloc(MEMORY[0x29EDC78E0]);
    v4 = accessibilityLocalizedString(@"close.button");
    v5 = [v3 initWithName:v4 target:self selector:sel_tapRemoveButton_];

    v20[0] = v5;
    v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];
    v7 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [(CFXEffectEditorViewAccessibility *)self accessibilityFrame];
    [v7 setAccessibilityFrame:?];
    [v7 setAccessibilityCustomActions:v6];
    [v7 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v8 = accessibilityLocalizedString(@"done.editing");
    [v7 setAccessibilityLabel:v8];

    v9 = accessibilityLocalizedString(@"done.editing.hint");
    [v7 setAccessibilityHint:v9];

    v10 = [(CFXEffectEditorViewAccessibility *)self safeValueForKey:@"removeButton"];
    [v10 setIsAccessibilityElement:1];

    v19 = v7;
    v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v19 count:1];
    [(CFXEffectEditorViewAccessibility *)self _accessibilitySetAdditionalElements:v11];

    v12 = [(CFXEffectEditorViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 _accessibilityAdditionalElements];
      [(CFXEffectEditorViewAccessibility *)self _axSetParentElements:v14];

      [(CFXEffectEditorViewAccessibility *)self _axSetParentView:v13];
    }

    [v13 _accessibilitySetAdditionalElements:0];
    v18 = self;
    v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v18 count:1];
    [v13 setAccessibilityElements:v15];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t __56__CFXEffectEditorViewAccessibility_CFX_beginTextEditing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 _accessibilityViewController];
  MEMORY[0x29C2CEA90](@"CFXCaptureViewController");
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v5 = [v2 _accessibilityViewController];
    MEMORY[0x29C2CEA90](@"CFXPreviewViewController");
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)CFX_removeEffect
{
  if ([(CFXEffectEditorViewAccessibility *)self safeBoolForKey:@"isTextEditing"])
  {
    v3 = [(CFXEffectEditorViewAccessibility *)self _axParentView];

    if (v3)
    {
      v4 = [(CFXEffectEditorViewAccessibility *)self _axParentView];
      [v4 setAccessibilityElements:0];

      v5 = [(CFXEffectEditorViewAccessibility *)self _axParentView];
      v6 = [(CFXEffectEditorViewAccessibility *)self _axParentElements];
      [v5 _accessibilitySetAdditionalElements:v6];

      [(CFXEffectEditorViewAccessibility *)self _axSetParentView:0];
    }
  }

  v7.receiver = self;
  v7.super_class = CFXEffectEditorViewAccessibility;
  [(CFXEffectEditorViewAccessibility *)&v7 CFX_removeEffect];
}

@end