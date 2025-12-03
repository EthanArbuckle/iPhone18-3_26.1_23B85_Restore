@interface PBA_SBUICallToActionLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PBA_SBUICallToActionLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBADeviceUnlockViewController" hasInstanceMethod:@"_homeButtonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"_pushPasscodeView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUICallToActionLabel" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PBA_SBUICallToActionLabelAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PBA_SBUICallToActionLabelAccessibility *)&v3 accessibilityTraits];
}

- (BOOL)accessibilityActivate
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __63__PBA_SBUICallToActionLabelAccessibility_accessibilityActivate__block_invoke;
  v8[3] = &unk_29F2ECB28;
  v8[4] = &v13;
  v8[5] = &v9;
  v2 = [(PBA_SBUICallToActionLabelAccessibility *)self _accessibilityFindAncestor:v8 startWithSelf:0];
  v3 = v2;
  if (*(v14 + 24) == 1)
  {
    v4 = v7;
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __63__PBA_SBUICallToActionLabelAccessibility_accessibilityActivate__block_invoke_2;
    v7[3] = &unk_29F2ECB50;
    v7[4] = v2;
    AXPerformSafeBlock();
LABEL_5:

    goto LABEL_6;
  }

  if (*(v10 + 24) == 1)
  {
    v4 = v6;
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 3221225472;
    v6[2] = __63__PBA_SBUICallToActionLabelAccessibility_accessibilityActivate__block_invoke_3;
    v6[3] = &unk_29F2ECB50;
    v6[4] = v2;
    AXPerformSafeBlock();
    goto LABEL_5;
  }

LABEL_6:

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  return 1;
}

- (id)accessibilityLabel
{
  v2 = [(PBA_SBUICallToActionLabelAccessibility *)self safeValueForKey:@"label"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end