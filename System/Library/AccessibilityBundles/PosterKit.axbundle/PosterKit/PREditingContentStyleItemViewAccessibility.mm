@interface PREditingContentStyleItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PREditingContentStyleItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PREditingContentStyleItemView" hasInstanceMethod:@"localizedName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditingContentStyleItemView" hasInstanceMethod:@"contentStyleCoordinator" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PREditingPosterContentStyleCoordinator" hasInstanceMethod:@"style" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRPosterContentDiscreteColorsStyle" hasInstanceMethod:@"colors" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRPosterContentVibrantMaterialStyle"];
}

- (id)accessibilityValue
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __64__PREditingContentStyleItemViewAccessibility_accessibilityValue__block_invoke;
  v21 = &unk_29F2EBED0;
  selfCopy = self;
  v23 = &v24;
  AXPerformSafeBlock();
  v3 = v25[5];
  _Block_object_dispose(&v24, 8);

  v4 = [(PREditingContentStyleItemViewAccessibility *)self safeValueForKey:@"contentStyleCoordinator"];
  v5 = [v4 safeValueForKey:@"style"];

  v6 = [v5 safeArrayForKey:@"colors"];
  LOBYTE(v24) = 0;
  objc_opt_class();
  firstObject = [v6 firstObject];
  v8 = __UIAccessibilityCastAsClass();

  if (v24 == 1)
  {
    goto LABEL_19;
  }

  v9 = AXColorStringForColor();
  if (!v3)
  {
    NSClassFromString(&cfstr_Prposterconten_0.isa);
    if (objc_opt_isKindOfClass())
    {
      accessibilityValue = accessibilityLocalizedString(@"editing.item.view.vibrant.color");
      goto LABEL_15;
    }

    if ([v6 count] < 2)
    {
      if (v9)
      {
        accessibilityValue = v9;
      }

      else
      {
        v17.receiver = self;
        v17.super_class = PREditingContentStyleItemViewAccessibility;
        accessibilityValue = [(PREditingContentStyleItemViewAccessibility *)&v17 accessibilityValue];
      }

      goto LABEL_15;
    }

    LOBYTE(v24) = 0;
    objc_opt_class();
    lastObject = [v6 lastObject];
    v12 = __UIAccessibilityCastAsClass();

    if (v24 != 1)
    {
      v13 = AXColorStringForColor();
      if ([v9 isEqualToString:v13])
      {
        accessibilityLocalizedString(@"editing.item.view.multi.color.gradient");
      }

      else
      {
        accessibilityLocalizedString(@"editing.item.view.multi.color.gradient.between.colors");
      }
      v14 = ;
      v15 = AXCFormattedString();

      goto LABEL_16;
    }

LABEL_19:
    abort();
  }

  accessibilityValue = v3;
LABEL_15:
  v15 = accessibilityValue;
LABEL_16:

  return v15;
}

uint64_t __64__PREditingContentStyleItemViewAccessibility_accessibilityValue__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) localizedName];

  return MEMORY[0x2A1C71028]();
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PREditingContentStyleItemViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PREditingContentStyleItemViewAccessibility *)&v3 accessibilityTraits];
}

@end