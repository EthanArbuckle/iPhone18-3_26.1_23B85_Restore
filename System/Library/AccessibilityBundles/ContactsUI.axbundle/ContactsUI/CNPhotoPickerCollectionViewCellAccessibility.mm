@interface CNPhotoPickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation CNPhotoPickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNPhotoPickerProviderItem" hasInstanceVariable:@"_localizedVariantDisplayName" withType:"NSString"];
  [v3 validateClass:@"CNPhotoPickerAnimojiProviderItem"];
  [v3 validateClass:@"CNPhotoPickerEmojiProviderItem"];
  [v3 validateClass:@"CNPhotoPickerMonogramProviderItem"];
  [v3 validateClass:@"CNPhotoPickerAnimojiProviderItem" hasInstanceMethod:@"avatarRecord" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerAnimojiProviderItem" hasInstanceMethod:@"poseConfiguration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerCollectionViewCell" hasInstanceMethod:@"captionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerMonogramProviderItem" hasInstanceMethod:@"monogramText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerMonogramProviderItem" hasInstanceMethod:@"renderingScope" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PRMonogramColor"];
  [v3 validateClass:@"PRMonogramColor" hasInstanceMethod:@"colorName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNPhotoPickerProviderGroup"];
  [v3 validateClass:@"CNPhotoPickerProviderGroup" hasProperty:@"groupType" withType:"q"];
}

- (id)accessibilityUserInputLabels
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(CNPhotoPickerCollectionViewCellAccessibility *)self _axProviderItem];
  MEMORY[0x29C2D1D40](@"CNPhotoPickerAnimojiProviderItem");
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 safeValueForKey:@"avatarRecord"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeBoolForKey:", @"isEditable"), v4, v5))
  {
    v6 = accessibilityLocalizedString(@"contact.image.type.memoji");
    v10[0] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNPhotoPickerCollectionViewCellAccessibility;
    v7 = [(CNPhotoPickerCollectionViewCellAccessibility *)&v9 accessibilityUserInputLabels];
  }

  return v7;
}

- (id)accessibilityLabel
{
  if (![(CNPhotoPickerCollectionViewCellAccessibility *)self _axIsAddItem])
  {
    v4 = [(CNPhotoPickerCollectionViewCellAccessibility *)self _axProviderItem];
    v6 = [(CNPhotoPickerCollectionViewCellAccessibility *)self safeValueForKey:@"captionLabel"];
    v7 = [v6 accessibilityLabel];

    MEMORY[0x29C2D1D40](@"CNPhotoPickerMonogramProviderItem");
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v8 = __UIAccessibilityCastAsSafeCategory();
      v9 = [v8 _axColorVariantName];
      v10 = [v4 safeStringForKey:@"monogramText"];
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"monogram.description.button");
      [v11 stringWithFormat:v12, v10, v9];
    }

    else
    {
      MEMORY[0x29C2D1D40](@"CNPhotoPickerGlyphProviderItem");
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v8 = __UIAccessibilityCastAsSafeCategory();
        v14 = [v8 _axSymbolName];
        v13 = v14;
        if (v14)
        {
          v15 = v14;
        }

        goto LABEL_28;
      }

      MEMORY[0x29C2D1D40](@"CNPhotoPickerEmojiProviderItem");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        MEMORY[0x29C2D1D40](@"CNPhotoPickerAnimojiProviderItem");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v7)
          {
            v13 = 0;
          }

          else
          {
            v13 = accessibilityLocalizedString(@"contact.image.type.photo");
          }

          goto LABEL_29;
        }

        if ([(CNPhotoPickerCollectionViewCellAccessibility *)self _axIsVariant])
        {
          objc_opt_class();
          v21 = __UIAccessibilityCastAsSafeCategory();
          v22 = [v21 _axColorVariantName];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }
        }

        else
        {
          v23 = 0;
        }

        v8 = [v4 safeValueForKey:@"avatarRecord"];
        v25 = [v4 safeValueForKey:@"poseConfiguration"];
        v26 = [v25 safeStringForKey:@"localizedName"];

        v27 = __UIAXStringForVariables();

        v31 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v8 includeVideoPrefix:{0, v23, @"__AXStringForVariablesSentinel"}];
        v32 = @"__AXStringForVariablesSentinel";
        v13 = __UIAXStringForVariables();

LABEL_28:
LABEL_29:
        v28 = [v4 safeStringForKey:{@"_localizedVariantDisplayName", v31, v32}];
        v29 = __UIAXStringForVariables();

        v5 = __UIAXStringForVariables();

        goto LABEL_30;
      }

      objc_opt_class();
      v8 = __UIAccessibilityCastAsSafeCategory();
      v9 = [v8 _axStringRepresentation];
      v10 = [v8 _axColorVariantName];
      v20 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"emoji.description.button");
      [v20 stringWithFormat:v12, v9, v10];
    }
    v13 = ;

    goto LABEL_28;
  }

  v3 = [(CNPhotoPickerCollectionViewCellAccessibility *)self accessibilityUserDefinedLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v16 = [(CNPhotoPickerCollectionViewCellAccessibility *)self _axProviderGroup];
    v17 = [v16 safeIntegerForKey:@"groupType"];
    v18 = @"contact.image.add.button.label";
    if (v17 == 3)
    {
      v18 = @"new.emoji.button";
    }

    if (v17 == 2)
    {
      v19 = @"new.memoji.button";
    }

    else
    {
      v19 = v18;
    }

    v5 = accessibilityLocalizedString(v19);
  }

LABEL_30:

  return v5;
}

@end