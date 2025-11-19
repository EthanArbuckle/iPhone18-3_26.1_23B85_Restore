@interface UIButtonAccessibility__AnnotationKit__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__AnnotationKit__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKToolbarViewController_iOS" hasInstanceMethod:@"lineStyleButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AKToolbarViewController_iOS" hasInstanceMethod:@"textStyleButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v35.receiver = self;
  v35.super_class = UIButtonAccessibility__AnnotationKit__UIKit;
  v3 = [(UIButtonAccessibility__AnnotationKit__UIKit *)&v35 accessibilityLabel];
  LOBYTE(v31) = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 tag];

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = v5;
  v30 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v7 = [v6 superview];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v30 = 0;
    objc_opt_class();
    v29 = 0;
    objc_opt_class();
    v9 = __UIAccessibilityCastAsClass();
    v10 = [v9 superview];
    v11 = __UIAccessibilityCastAsClass();

    v12 = [v11 items];
    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 3221225472;
    v28[2] = __65__UIButtonAccessibility__AnnotationKit__UIKit_accessibilityLabel__block_invoke;
    v28[3] = &unk_29F29D5D8;
    v28[4] = self;
    v28[5] = &v31;
    [v12 enumerateObjectsUsingBlock:v28];
  }

  if (v5 == 764015 || (v13 = v32[3], v13 == 764015))
  {
    v14 = @"tool.intel.sketch.label";
LABEL_7:
    v15 = accessibilityLocalizedString(v14);

    v3 = v15;
    goto LABEL_8;
  }

  v14 = @"tool.var.sketch.label";
  if (v5 == 764016)
  {
    goto LABEL_7;
  }

  if (v13 == 764016)
  {
    goto LABEL_7;
  }

  v14 = @"tool.signature.label";
  if (v5 == 764019 || v13 == 764019)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ([v3 length])
  {
    goto LABEL_19;
  }

  v30 = 0;
  objc_opt_class();
  v16 = [(UIButtonAccessibility__AnnotationKit__UIKit *)self safeValueForKey:@"allTargets"];
  v17 = __UIAccessibilityCastAsClass();

  if (v30 == 1)
  {
    goto LABEL_27;
  }

  v18 = [v17 anyObject];
  MEMORY[0x29C2C8260](@"AKToolbarViewController_iOS");
  if (objc_opt_isKindOfClass())
  {
    v30 = 0;
    objc_opt_class();
    v19 = [v18 safeValueForKey:@"lineStyleButton"];
    v20 = __UIAccessibilityCastAsClass();

    if (v30 != 1)
    {
      v21 = [v20 customView];

      v30 = 0;
      objc_opt_class();
      v22 = [v18 safeValueForKey:@"textStyleButton"];
      v23 = __UIAccessibilityCastAsClass();

      if (v30 != 1)
      {
        v24 = [v23 customView];

        if ([v21 isEqual:self])
        {
          v25 = accessibilityLocalizedString(@"stroke.thickness.button");

          v3 = v25;
        }

        if ([v24 isEqual:self])
        {
          v26 = accessibilityLocalizedString(@"text.attributes.button");

          v3 = v26;
        }

        goto LABEL_18;
      }
    }

LABEL_27:
    abort();
  }

LABEL_18:

LABEL_19:
  _Block_object_dispose(&v31, 8);

  return v3;
}

@end