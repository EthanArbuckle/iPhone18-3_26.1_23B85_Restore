@interface _MKLineHeaderModelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)contentAttributedString;
@end

@implementation _MKLineHeaderModelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_MKLineHeaderModel" hasInstanceMethod:@"contentAttributedString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MKLineHeaderModel" hasInstanceVariable:@"_tokens" withType:"NSMutableArray"];
  [v3 validateClass:@"_MKTokenAttributedString" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MKTokenAttributedString" hasInstanceMethod:@"string" withFullSignature:{"@", 0}];
}

- (id)contentAttributedString
{
  v32 = *MEMORY[0x29EDCA608];
  v30.receiver = self;
  v30.super_class = _MKLineHeaderModelAccessibility;
  v4 = [(_MKLineHeaderModelAccessibility *)&v30 contentAttributedString];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  objc_opt_class();
  v5 = [(_MKLineHeaderModelAccessibility *)self safeValueForKey:@"_tokens"];
  v6 = __UIAccessibilityCastAsClass();

  v25 = v4;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v7)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      objc_opt_class();
      v13 = [v12 safeValueForKey:@"attributedString"];
      v14 = __UIAccessibilityCastAsClass();

      if (!v14)
      {
        objc_opt_class();
        v19 = [v12 safeValueForKey:@"string"];
        v15 = __UIAccessibilityCastAsClass();

        v20 = [v15 accessibilityLabel];
        v18 = v20;
        if (v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = v15;
        }

        v24 = v21;
        v17 = __UIAXStringForVariables();

LABEL_15:
        v9 = v17;
        goto LABEL_16;
      }

      v15 = [v14 accessibilityLabel];
      v16 = v15;
      if (!v15)
      {
        v2 = [v14 string];
        v16 = v2;
      }

      v24 = v16;
      v17 = __UIAXStringForVariables();

      v18 = v2;
      v9 = v17;
      if (!v15)
      {
        goto LABEL_15;
      }

LABEL_16:
    }

    v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:{16, v24, @"__AXStringForVariablesSentinel"}];
  }

  while (v8);
LABEL_20:

  [v25 setAccessibilityLabel:v9];
  v22 = *MEMORY[0x29EDCA608];

  return v25;
}

@end