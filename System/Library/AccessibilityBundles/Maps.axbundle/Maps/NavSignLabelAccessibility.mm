@interface NavSignLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedUserInputLabels;
@end

@implementation NavSignLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavSignLabel" hasInstanceMethod:@"textAlternatives" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKServerFormattedString" hasInstanceMethod:@"multiPartAttributedStringWithAttributes:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"MKMultiPartAttributedString" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
}

- (id)accessibilityAttributedLabel
{
  v2 = [(NavSignLabelAccessibility *)self safeArrayForKey:@"textAlternatives"];
  LOBYTE(v9) = 0;
  firstObject = [v2 firstObject];
  v4 = __UIAccessibilitySafeClass();

  v15 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = v4;
  AXPerformSafeBlock();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);
  v7 = __UIAccessibilitySafeClass();

  if (v15 == 1)
  {
    abort();
  }

  return v7;
}

void __57__NavSignLabelAccessibility_accessibilityAttributedLabel__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) multiPartAttributedStringWithAttributes:MEMORY[0x29EDB8EA0]];
  v2 = [v5 attributedString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)accessibilityAttributedUserInputLabels
{
  v27 = *MEMORY[0x29EDCA608];
  v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  [(NavSignLabelAccessibility *)self safeArrayForKey:@"textAlternatives"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v3)
  {
    v4 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        LOBYTE(v15) = 0;
        v7 = __UIAccessibilitySafeClass();
        if (v15 == 1)
        {
          goto LABEL_13;
        }

        v21 = 0;
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy_;
        v19 = __Block_byref_object_dispose_;
        v20 = 0;
        v8 = v7;
        AXPerformSafeBlock();
        v9 = v16[5];

        _Block_object_dispose(&v15, 8);
        v10 = __UIAccessibilitySafeClass();

        if (v21 == 1)
        {
LABEL_13:
          abort();
        }

        [v14 axSafelyAddObject:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return v14;
}

void __67__NavSignLabelAccessibility_accessibilityAttributedUserInputLabels__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) multiPartAttributedStringWithAttributes:MEMORY[0x29EDB8EA0]];
  v2 = [v5 attributedString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end