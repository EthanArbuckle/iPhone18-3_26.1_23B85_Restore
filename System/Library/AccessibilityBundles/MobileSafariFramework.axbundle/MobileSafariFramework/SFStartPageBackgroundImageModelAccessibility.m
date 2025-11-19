@interface SFStartPageBackgroundImageModelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SFStartPageBackgroundImageModelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SFStartPageBackgroundImageModel" hasInstanceMethod:@"isCustomImage" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SFStartPageBackgroundImageModel" hasInstanceMethod:@"itemProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SFStartPageBackgroundImageModel" hasInstanceMethod:@"imageDescription" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WBSStartPageBackgroundImageDescription" hasInstanceMethod:@"url" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SFStartPageBackgroundImageModelAccessibility *)self safeValueForKey:@"imageDescription"];
  if (v3)
  {
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"url"];
    v5 = __UIAccessibilityCastAsClass();

    v6 = [v5 lastPathComponent];

    v7 = accessibilityMobileSafariLocalizedString(v6);

    goto LABEL_16;
  }

  v8 = [(SFStartPageBackgroundImageModelAccessibility *)self safeValueForKey:@"itemProvider"];
  v9 = [(SFStartPageBackgroundImageModelAccessibility *)self safeBoolForKey:@"isCustomImage"];
  v10 = [(SFStartPageBackgroundImageModelAccessibility *)self safeStringForKey:@"mobileAssetFileName"];
  v11 = v10;
  if ((v9 & 1) != 0 || !v10 || (accessibilityMobileSafariLocalizedString(v10), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [(SFStartPageBackgroundImageModelAccessibility *)self safeValueForKey:@"_symbolName"];
    v13 = v12;
    if (v12)
    {
      v14 = profileSymbolAccessibilityLabel(v12);
      v15 = MEMORY[0x29EDBA0F8];
      v16 = accessibilityMobileSafariLocalizedString(@"profile.generated.background");
      v7 = [v15 stringWithFormat:v16, v14];

LABEL_14:
      goto LABEL_15;
    }

    if (((v8 != 0) & v9) == 1)
    {
      v17 = @"image.from.library";
    }

    else
    {
      if (v9)
      {
        v7 = 0;
        goto LABEL_14;
      }

      v17 = @"select.image.from.library";
    }

    v7 = accessibilityMobileSafariLocalizedString(v17);
    goto LABEL_14;
  }

LABEL_15:

LABEL_16:

  return v7;
}

@end