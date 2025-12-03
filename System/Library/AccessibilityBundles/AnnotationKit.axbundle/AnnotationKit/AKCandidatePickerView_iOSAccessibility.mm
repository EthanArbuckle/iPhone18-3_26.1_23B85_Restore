@interface AKCandidatePickerView_iOSAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_createButtonsWithBlurStyle:(int64_t)style;
@end

@implementation AKCandidatePickerView_iOSAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"_createButtonsWithBlurStyle:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"_selectBackground: animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"annotations" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"buttons" withFullSignature:{"@", 0}];
}

- (void)_createButtonsWithBlurStyle:(int64_t)style
{
  v12.receiver = self;
  v12.super_class = AKCandidatePickerView_iOSAccessibility;
  [(AKCandidatePickerView_iOSAccessibility *)&v12 _createButtonsWithBlurStyle:style];
  objc_opt_class();
  v4 = [(AKCandidatePickerView_iOSAccessibility *)self safeValueForKey:@"annotations"];
  v5 = __UIAccessibilityCastAsClass();

  v11 = 0;
  objc_opt_class();
  v6 = [(AKCandidatePickerView_iOSAccessibility *)self safeValueForKey:@"buttons"];
  v7 = __UIAccessibilityCastAsClass();

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __70__AKCandidatePickerView_iOSAccessibility__createButtonsWithBlurStyle___block_invoke;
  v9[3] = &unk_29F29D408;
  v10 = v5;
  v8 = v5;
  [v7 enumerateObjectsUsingBlock:v9];
}

@end