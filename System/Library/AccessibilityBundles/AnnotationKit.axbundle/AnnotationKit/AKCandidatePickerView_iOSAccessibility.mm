@interface AKCandidatePickerView_iOSAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_createButtonsWithBlurStyle:(int64_t)a3;
@end

@implementation AKCandidatePickerView_iOSAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"_createButtonsWithBlurStyle:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"_selectBackground: animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"annotations" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKCandidatePickerView_iOS" hasInstanceMethod:@"buttons" withFullSignature:{"@", 0}];
}

- (void)_createButtonsWithBlurStyle:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = AKCandidatePickerView_iOSAccessibility;
  [(AKCandidatePickerView_iOSAccessibility *)&v12 _createButtonsWithBlurStyle:a3];
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