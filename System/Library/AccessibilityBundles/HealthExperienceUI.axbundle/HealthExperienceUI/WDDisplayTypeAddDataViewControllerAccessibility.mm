@interface WDDisplayTypeAddDataViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)valueFieldManualEntryItem;
@end

@implementation WDDisplayTypeAddDataViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WDDisplayTypeAddDataViewController" hasInstanceVariable:@"_unitController" withType:"HKUnitPreferenceController"];
  [validationsCopy validateClass:@"WDDisplayTypeAddDataViewController" hasInstanceMethod:@"valueFieldManualEntryItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"WDUnitPreferenceViewController" hasInstanceVariable:@"_unitController" withType:"HKUnitPreferenceController"];
  [validationsCopy validateClass:@"WDDisplayTypeAddDataViewController" hasInstanceVariable:@"_displayType" withType:"HKDisplayType"];
  [validationsCopy validateClass:@"HKDisplayType" hasInstanceMethod:@"objectType" withFullSignature:{"@", 0}];
}

- (id)valueFieldManualEntryItem
{
  v23.receiver = self;
  v23.super_class = WDDisplayTypeAddDataViewControllerAccessibility;
  valueFieldManualEntryItem = [(WDDisplayTypeAddDataViewControllerAccessibility *)&v23 valueFieldManualEntryItem];
  LOBYTE(v16) = 0;
  v4 = [(WDDisplayTypeAddDataViewControllerAccessibility *)self safeValueForKey:@"_displayType"];
  v5 = __UIAccessibilitySafeClass();

  LOBYTE(v16) = 0;
  v6 = [v5 safeValueForKey:@"_objectType"];
  v7 = __UIAccessibilitySafeClass();

  LOBYTE(v16) = 0;
  v8 = [(WDDisplayTypeAddDataViewControllerAccessibility *)self safeValueForKey:@"_unitController"];
  v9 = __UIAccessibilitySafeClass();

  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15 = MEMORY[0x29EDCA5F8];
  v10 = v9;
  v11 = v7;
  AXPerformSafeBlock();
  v12 = v17[5];

  _Block_object_dispose(&v16, 8);
  v13 = __UIAccessibilitySafeClass();

  if (v22 == 1)
  {
    abort();
  }

  [valueFieldManualEntryItem setAccessibilityLabel:{v13, v15, 3221225472, __76__WDDisplayTypeAddDataViewControllerAccessibility_valueFieldManualEntryItem__block_invoke, &unk_29F2C2E78}];

  return valueFieldManualEntryItem;
}

uint64_t __76__WDDisplayTypeAddDataViewControllerAccessibility_valueFieldManualEntryItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityNameForObjectType:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

@end