@interface InCallControlsIgnoreLMIRequestsCellAccessibility
- (BOOL)accessibilityActivate;
- (id)_axCellSwitch;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation InCallControlsIgnoreLMIRequestsCellAccessibility

- (id)accessibilityLabel
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  objc_opt_class();
  v3 = [v2 contentConfiguration];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];

  return v5;
}

- (id)accessibilityValue
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = [(InCallControlsIgnoreLMIRequestsCellAccessibility *)self _axCellSwitch];
  v4 = [v2 stringWithFormat:@"%d", objc_msgSend(v3, "isOn")];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = InCallControlsIgnoreLMIRequestsCellAccessibility;
  return *MEMORY[0x29EDC75A8] | [(InCallControlsIgnoreLMIRequestsCellAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  v2 = [(InCallControlsIgnoreLMIRequestsCellAccessibility *)self _axCellSwitch];
  [v2 setOn:objc_msgSend(v2 animated:{"isOn") ^ 1, 1}];

  return v2 != 0;
}

- (id)_axCellSwitch
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 accessories];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __65__InCallControlsIgnoreLMIRequestsCellAccessibility__axCellSwitch__block_invoke;
  v6[3] = &unk_29F2B7CD8;
  v6[4] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__InCallControlsIgnoreLMIRequestsCellAccessibility__axCellSwitch__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v8 = [v7 customView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v7 customView];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a4 = 1;
  }
}

@end