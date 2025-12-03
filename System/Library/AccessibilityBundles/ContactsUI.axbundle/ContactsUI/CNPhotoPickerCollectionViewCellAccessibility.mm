@interface CNPhotoPickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation CNPhotoPickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNPhotoPickerProviderItem" hasInstanceVariable:@"_localizedVariantDisplayName" withType:"NSString"];
  [validationsCopy validateClass:@"CNPhotoPickerAnimojiProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerEmojiProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerMonogramProviderItem"];
  [validationsCopy validateClass:@"CNPhotoPickerAnimojiProviderItem" hasInstanceMethod:@"avatarRecord" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerAnimojiProviderItem" hasInstanceMethod:@"poseConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerCollectionViewCell" hasInstanceMethod:@"captionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerMonogramProviderItem" hasInstanceMethod:@"monogramText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerMonogramProviderItem" hasInstanceMethod:@"renderingScope" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PRMonogramColor"];
  [validationsCopy validateClass:@"PRMonogramColor" hasInstanceMethod:@"colorName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNPhotoPickerProviderGroup"];
  [validationsCopy validateClass:@"CNPhotoPickerProviderGroup" hasProperty:@"groupType" withType:"q"];
}

- (id)accessibilityUserInputLabels
{
  v10[1] = *MEMORY[0x29EDCA608];
  _axProviderItem = [(CNPhotoPickerCollectionViewCellAccessibility *)self _axProviderItem];
  MEMORY[0x29C2D1D40](@"CNPhotoPickerAnimojiProviderItem");
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([_axProviderItem safeValueForKey:@"avatarRecord"], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "safeBoolForKey:", @"isEditable"), v4, v5))
  {
    v6 = accessibilityLocalizedString(@"contact.image.type.memoji");
    v10[0] = v6;
    accessibilityUserInputLabels = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CNPhotoPickerCollectionViewCellAccessibility;
    accessibilityUserInputLabels = [(CNPhotoPickerCollectionViewCellAccessibility *)&v9 accessibilityUserInputLabels];
  }

  return accessibilityUserInputLabels;
}

- (id)accessibilityLabel
{
  if (![(CNPhotoPickerCollectionViewCellAccessibility *)self _axIsAddItem])
  {
    _axProviderItem = [(CNPhotoPickerCollectionViewCellAccessibility *)self _axProviderItem];
    v6 = [(CNPhotoPickerCollectionViewCellAccessibility *)self safeValueForKey:@"captionLabel"];
    accessibilityLabel = [v6 accessibilityLabel];

    MEMORY[0x29C2D1D40](@"CNPhotoPickerMonogramProviderItem");
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v8 = __UIAccessibilityCastAsSafeCategory();
      _axColorVariantName = [v8 _axColorVariantName];
      _axColorVariantName3 = [_axProviderItem safeStringForKey:@"monogramText"];
      v11 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"monogram.description.button");
      [v11 stringWithFormat:v12, _axColorVariantName3, _axColorVariantName];
    }

    else
    {
      MEMORY[0x29C2D1D40](@"CNPhotoPickerGlyphProviderItem");
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        v8 = __UIAccessibilityCastAsSafeCategory();
        _axSymbolName = [v8 _axSymbolName];
        v13 = _axSymbolName;
        if (_axSymbolName)
        {
          v15 = _axSymbolName;
        }

        goto LABEL_28;
      }

      MEMORY[0x29C2D1D40](@"CNPhotoPickerEmojiProviderItem");
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        MEMORY[0x29C2D1D40](@"CNPhotoPickerAnimojiProviderItem");
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (accessibilityLabel)
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
          _axColorVariantName2 = [v21 _axColorVariantName];
          v23 = _axColorVariantName2;
          if (_axColorVariantName2)
          {
            v24 = _axColorVariantName2;
          }
        }

        else
        {
          v23 = 0;
        }

        v8 = [_axProviderItem safeValueForKey:@"avatarRecord"];
        v25 = [_axProviderItem safeValueForKey:@"poseConfiguration"];
        v26 = [v25 safeStringForKey:@"localizedName"];

        v27 = __UIAXStringForVariables();

        v31 = [MEMORY[0x29EDBDE08] descriptionForAvatarWithRecord:v8 includeVideoPrefix:{0, v23, @"__AXStringForVariablesSentinel"}];
        v32 = @"__AXStringForVariablesSentinel";
        v13 = __UIAXStringForVariables();

LABEL_28:
LABEL_29:
        v28 = [_axProviderItem safeStringForKey:{@"_localizedVariantDisplayName", v31, v32}];
        v29 = __UIAXStringForVariables();

        v5 = __UIAXStringForVariables();

        goto LABEL_30;
      }

      objc_opt_class();
      v8 = __UIAccessibilityCastAsSafeCategory();
      _axColorVariantName = [v8 _axStringRepresentation];
      _axColorVariantName3 = [v8 _axColorVariantName];
      v20 = MEMORY[0x29EDBA0F8];
      v12 = accessibilityLocalizedString(@"emoji.description.button");
      [v20 stringWithFormat:v12, _axColorVariantName, _axColorVariantName3];
    }
    v13 = ;

    goto LABEL_28;
  }

  accessibilityUserDefinedLabel = [(CNPhotoPickerCollectionViewCellAccessibility *)self accessibilityUserDefinedLabel];
  _axProviderItem = accessibilityUserDefinedLabel;
  if (accessibilityUserDefinedLabel)
  {
    v5 = accessibilityUserDefinedLabel;
  }

  else
  {
    _axProviderGroup = [(CNPhotoPickerCollectionViewCellAccessibility *)self _axProviderGroup];
    v17 = [_axProviderGroup safeIntegerForKey:@"groupType"];
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