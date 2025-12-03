@interface HKUnitPreferenceControllerAccessibility
- (id)_accessibilityNameForUnit:(id)unit;
- (id)accessibilityNameForObjectType:(id)type;
@end

@implementation HKUnitPreferenceControllerAccessibility

- (id)accessibilityNameForObjectType:(id)type
{
  typeCopy = type;
  v17 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v10 = MEMORY[0x29EDCA5F8];
  v5 = typeCopy;
  AXPerformSafeBlock();
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);
  v7 = __UIAccessibilitySafeClass();

  if (v17 == 1)
  {
    abort();
  }

  v8 = [(HKUnitPreferenceControllerAccessibility *)self _accessibilityNameForUnit:v7, v10, 3221225472, __74__HKUnitPreferenceControllerAccessibility_accessibilityNameForObjectType___block_invoke, &unk_29F2C3668, self];

  return v8;
}

uint64_t __74__HKUnitPreferenceControllerAccessibility_accessibilityNameForObjectType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) unitForObjectType:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityNameForUnit:(id)unit
{
  unitCopy = unit;
  unitString = [unitCopy unitString];
  v5 = [unitString isEqualToString:@"mi"];

  if (v5)
  {
    v6 = @"miles";
LABEL_5:
    v9 = accessibilityLocalizedString(v6);
    goto LABEL_7;
  }

  unitString2 = [unitCopy unitString];
  v8 = [unitString2 isEqualToString:@"km"];

  if (v8)
  {
    v6 = @"kilometers";
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

@end