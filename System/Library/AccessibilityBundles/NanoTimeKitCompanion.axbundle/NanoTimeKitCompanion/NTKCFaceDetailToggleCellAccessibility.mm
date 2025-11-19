@interface NTKCFaceDetailToggleCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_accessibilityCellSwitch;
- (id)accessibilityValue;
@end

@implementation NTKCFaceDetailToggleCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCFaceDetailToggleCell" hasInstanceMethod:@"toggle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NTKCFaceDetailToggleCell" hasInstanceMethod:@"_switchToggled" withFullSignature:{"v", 0}];
}

- (id)accessibilityValue
{
  v2 = [(NTKCFaceDetailToggleCellAccessibility *)self _accessibilityCellSwitch];
  if ([v2 isOn])
  {
    v3 = @"toggle.cell.on";
  }

  else
  {
    v3 = @"toggle.cell.off";
  }

  v4 = accessibilityCompanionLocalizedString(v3);

  return v4;
}

- (BOOL)accessibilityActivate
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __62__NTKCFaceDetailToggleCellAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityCellSwitch];
  [v2 setOn:objc_msgSend(v2 animated:{"isOn") ^ 1, 0}];
  [*(a1 + 32) _switchToggled];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (id)_accessibilityCellSwitch
{
  objc_opt_class();
  v3 = [(NTKCFaceDetailToggleCellAccessibility *)self safeValueForKey:@"toggle"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

@end