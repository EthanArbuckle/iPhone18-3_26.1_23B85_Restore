@interface CAMFilterButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation CAMFilterButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMFilterButton" isKindOfClass:@"UIButton"];
  [v3 validateClass:@"CAMViewfinderView"];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_effectFilterTypeForMode:" withFullSignature:{"q", "q", 0}];
  [v3 validateClass:@"CAMEffectFilterManager" hasClassMethod:@"displayNameForType:" withFullSignature:{"@", "q", 0}];
}

- (id)accessibilityValue
{
  v2 = [(CAMFilterButtonAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMViewfinderView", a2)];
  v3 = [MEMORY[0x29EDC7DA8] viewControllerForView:v2];
  v4 = __UIAccessibilitySafeClass();

  v5 = [v4 safeIntegerForKey:@"_currentMode"];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 3221225472;
  v18 = __50__CAMFilterButtonAccessibility_accessibilityValue__block_invoke;
  v19 = &unk_29F2AD398;
  v21 = &v10;
  v6 = v4;
  v20 = v6;
  v22 = v5;
  AXPerformSafeBlock();
  v7 = v11[3];

  _Block_object_dispose(&v10, 8);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || !v6)
  {
    v8 = accessibilityCameraKitLocalizedString(@"no.selected.filter");
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__7;
    v14 = __Block_byref_object_dispose__7;
    v15 = 0;
    AXPerformSafeBlock();
    v8 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  return v8;
}

uint64_t __50__CAMFilterButtonAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _effectFilterTypeForMode:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __50__CAMFilterButtonAccessibility_accessibilityValue__block_invoke_509(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x29C2CF1C0](@"CAMEffectFilterManager") displayNameForType:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

@end