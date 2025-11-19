@interface MKMultiPartLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation MKMultiPartLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKMultiPartLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMultiPartLabel" hasInstanceMethod:@"multiPartString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMultiPartAttributedString"];
  [v3 validateClass:@"MKMultiPartAttributedString" hasInstanceMethod:@"components" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v33 = *MEMORY[0x29EDCA608];
  v20 = [(MKMultiPartLabelAccessibility *)self safeValueForKey:@"multiPartString"];
  if (!v20)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  v2 = [v20 safeValueForKey:@"components"];
  v3 = __UIAccessibilityCastAsClass();

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = &stru_2A21DAE00;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v5)
  {
    v6 = *v23;
    v7 = *MEMORY[0x29EDC7628];
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 length];
          v21[0] = MEMORY[0x29EDCA5F8];
          v21[1] = 3221225472;
          v21[2] = __51__MKMultiPartLabelAccessibility_accessibilityLabel__block_invoke;
          v21[3] = &unk_29F2CB190;
          v21[4] = &v26;
          [v9 enumerateAttribute:v7 inRange:0 options:v10 usingBlock:{0, v21}];
          v11 = v27[5];
          v17 = [v9 string];
          v18 = @"__AXStringForVariablesSentinel";
          v12 = __UIAXStringForVariables();
          v13 = v27[5];
          v27[5] = v12;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }

  v14 = [v27[5] length];
  if (v14)
  {
    v5 = v27[5];
  }

  _Block_object_dispose(&v26, 8);

  if (!v14)
  {
LABEL_14:
    v5 = [(MKMultiPartLabelAccessibility *)self safeStringForKey:@"text", v17, v18];
  }

  v15 = *MEMORY[0x29EDCA608];

  return v5;
}

void __51__MKMultiPartLabelAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  NSClassFromString(&cfstr_Nstextattachme.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v8 accessibilityLabel];
    v4 = __UIAXStringForVariables();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

@end