@interface SFStartPageSectionHeaderTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (SFStartPageSectionHeaderTitleViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SFStartPageSectionHeaderTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFStartPageSectionHeaderTitleView" hasInstanceVariable:@"_button" withType:"UIButton"];
  [validationsCopy validateClass:@"SFStartPageSectionHeaderTitleView" hasInstanceVariable:@"_label" withType:"UILabel"];
  [validationsCopy validateClass:@"SFStartPageSectionHeaderTitleView" hasInstanceVariable:@"_title" withType:"NSString"];
  [validationsCopy validateClass:@"SFStartPageSectionHeaderTitleView" hasInstanceVariable:@"_image" withType:"UIImage"];
}

- (SFStartPageSectionHeaderTitleViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SFStartPageSectionHeaderTitleViewAccessibility;
  v3 = [(SFStartPageSectionHeaderTitleViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SFStartPageSectionHeaderTitleViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = SFStartPageSectionHeaderTitleViewAccessibility;
  [(SFStartPageSectionHeaderTitleViewAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(SFStartPageSectionHeaderTitleViewAccessibility *)self safeUIViewForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
  menu = [v4 menu];

  if (menu)
  {
    [v4 setAccessibilityTraits:{*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7550] | objc_msgSend(v4, "accessibilityTraits")}];
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v6 = [(SFStartPageSectionHeaderTitleViewAccessibility *)self safeUIViewForKey:@"_label"];
  v7 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __92__SFStartPageSectionHeaderTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v8[3] = &unk_29F2D6910;
  objc_copyWeak(&v9, &location);
  [v7 setAccessibilityLabelBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

id __92__SFStartPageSectionHeaderTitleViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x29EDCA608];
  v35 = 0;
  v1 = [*MEMORY[0x29EDC8008] safeValueForKey:@"_browserWindowController"];
  v2 = __UIAccessibilitySafeClass();

  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [v2 safeArrayForKey:@"browserControllers"];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v29 = v2;
    v6 = *v32;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v35 = 0;
        objc_opt_class();
        v9 = [v8 safeValueForKey:@"rootViewController"];
        v10 = __UIAccessibilityCastAsClass();

        if (v35 == 1)
        {
          abort();
        }

        v11 = [v10 view];
        v12 = [v11 window];
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v14 = [WeakRetained window];

        if (v12 == v14)
        {
          v15 = v8;
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    v15 = 0;
LABEL_13:
    v2 = v29;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 safeStringForKey:@"_profileTitleInScene"];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = [v15 safeValueForKey:@"activeProfileIdentifier"];
  if ([v17 isEqualToString:@"DefaultProfile"])
  {
  }

  else
  {
    v18 = objc_loadWeakRetained((a1 + 32));
    [v18 safeStringForKey:@"_title"];
    v20 = v19 = v2;
    v21 = [v20 containsString:v16];

    v2 = v19;
    if (v21)
    {
      goto LABEL_21;
    }
  }

  v22 = objc_loadWeakRetained((a1 + 32));
  v23 = [v22 safeValueForKey:@"_image"];

  if (v23)
  {
    v24 = objc_loadWeakRetained((a1 + 32));
    v28 = [v24 safeStringForKey:@"_title"];
    v25 = __UIAXStringForVariables();

    goto LABEL_22;
  }

LABEL_21:
  v24 = objc_loadWeakRetained((a1 + 32));
  v25 = [v24 safeStringForKey:@"_title"];
LABEL_22:

  v26 = *MEMORY[0x29EDCA608];

  return v25;
}

@end