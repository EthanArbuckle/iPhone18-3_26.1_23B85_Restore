@interface SymbolButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsCircularProgressView;
- (BOOL)_axIsInToolbar;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityLabelHelper;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)accessibilityUpdateSymbolButton;
@end

@implementation SymbolButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicCoreUI.SymbolButton" hasInstanceMethod:@"accessibilityCustomView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.SymbolButton" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.SymbolButton" hasInstanceMethod:@"accessibilityImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.CircularProgressView"];
  [validationsCopy validateClass:@"UIImageView" hasInstanceMethod:@"image" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.SymbolButton" hasInstanceMethod:@"accessibilityUpdateSymbolButton" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MusicCoreUI.CoreAnimationPackageView"];
  [validationsCopy validateClass:@"MusicCoreUI.CoreAnimationPackageView" hasSwiftField:@"definition" withSwiftType:"CAPackageDefinition"];
  [validationsCopy validateSwiftStruct:@"MusicCoreUI.CAPackageDefinition"];
  [validationsCopy validateSwiftStruct:@"MusicCoreUI.CAPackageDefinition" hasSwiftField:@"name" withSwiftType:"String"];
  [validationsCopy validateClass:@"MusicCoreUI.SymbolButton" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIControl" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  _accessibilityLabelHelper = [(SymbolButtonAccessibility *)self _accessibilityLabelHelper];
  v3 = _accessibilityLabelHelper;
  if (_accessibilityLabelHelper)
  {
    v4 = [_accessibilityLabelHelper length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_axIsCircularProgressView
{
  _axCustomView = [(SymbolButtonAccessibility *)self _axCustomView];
  if (_axCustomView && (MEMORY[0x29C2E2910](@"MusicCoreUI.CircularProgressView"), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _accessibilityViewIsVisible = [_axCustomView _accessibilityViewIsVisible];
  }

  else
  {
    _accessibilityViewIsVisible = 0;
  }

  return _accessibilityViewIsVisible;
}

- (id)_accessibilityLabelHelper
{
  v3 = [(SymbolButtonAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = [(SymbolButtonAccessibility *)self safeValueForKey:@"accessibilityImageView"];
  if ([(SymbolButtonAccessibility *)self _axIsCircularProgressView])
  {
    v5 = accessibilityMusicLocalizedString(@"downloading");
  }

  else
  {
    v5 = 0;
  }

  if (![v5 length] && v3 && objc_msgSend(v3, "_accessibilityViewIsVisible"))
  {
    accessibilityLabel = [v3 accessibilityLabel];

    v5 = accessibilityLabel;
  }

  if (![v5 length])
  {
    if (!v4)
    {
      goto LABEL_15;
    }

    v7 = [v4 safeValueForKey:@"image"];
    v8 = [v7 safeValueForKey:@"_imageAsset"];
    v9 = [v8 safeStringForKey:@"assetName"];

    if (([v9 isEqualToString:@"icloud.and.arrow.down"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"arrow.down"))
    {
      v10 = @"download.button";
    }

    else if ([v9 isEqualToString:@"checkmark"])
    {
      if ([(SymbolButtonAccessibility *)self accessibilityIsInCell])
      {
        v10 = @"remove.download";
      }

      else
      {
        v10 = @"downloaded";
      }
    }

    else if ([v9 isEqualToString:@"exclamationmark.icloud"])
    {
      v10 = @"download.error";
    }

    else if (([v9 isEqualToString:@"classical"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"apple.classical"))
    {
      v10 = @"classical.app";
    }

    else if ([v9 isEqualToString:@"stop.fill"])
    {
      v10 = @"cancel.download";
    }

    else if ([v9 isEqualToString:@"calendar"])
    {
      v10 = @"schedule.calendar";
    }

    else if ([v9 isEqualToString:@"ellipsis"])
    {
      v10 = @"more.button";
    }

    else if ([v9 isEqualToString:@"songcredits_toolbar_button_lyrics"])
    {
      v10 = @"share.lyrics.button";
    }

    else if ([v9 isEqualToString:@"songcredits_close_nav"])
    {
      v10 = @"close.button";
    }

    else if ([v9 isEqualToString:@"person.2.fill"])
    {
      v10 = @"manage.collaboration.button";
    }

    else if ([v9 isEqualToString:@"person.fill.badge.plus"])
    {
      v10 = @"collaboration.button";
    }

    else
    {
      if (![v9 isEqualToString:@"plus"] || (-[SymbolButtonAccessibility accessibilityIdentifier](self, "accessibilityIdentifier"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", @"Music.ContainerDetail.AddButton"), v19, !v20))
      {
        if ([v9 isEqualToString:@"dolby.audio"])
        {
          v21 = @"dolby.audio";
        }

        else if ([v9 isEqualToString:@"dolby.atmos"])
        {
          v21 = @"dolby.atmos";
        }

        else if ([v9 isEqualToString:@"apple.digital.master"])
        {
          v21 = @"apple.digital.master";
        }

        else if ([v9 isEqualToString:@"dolby"])
        {
          v21 = @"dolby";
        }

        else
        {
          if (![v9 isEqualToString:@"lossless"])
          {
            accessibilityLabel2 = [v4 accessibilityLabel];
            goto LABEL_14;
          }

          v21 = @"lossless";
        }

        accessibilityLabel2 = accessibilityOasisMusicLocalizedString(v21);
LABEL_14:
        v12 = accessibilityLabel2;

        v5 = v12;
LABEL_15:
        if (![v5 length])
        {
          v13 = [(SymbolButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_6];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 safeSwiftValueForKey:@"definition"];
            v16 = [v15 safeSwiftStringForKey:@"name"];
            if (([v16 isEqualToString:@"Favorite"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"FavoriteDark") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"FavoriteHighContrastDark") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"FavoriteHighContrastLight"))
            {
              v17 = accessibilityMusicLocalizedString(@"favorite");

              v5 = v17;
            }
          }
        }

        goto LABEL_24;
      }

      v10 = @"add.to.library";
    }

    accessibilityLabel2 = accessibilityMusicLocalizedString(v10);
    goto LABEL_14;
  }

LABEL_24:

  return v5;
}

uint64_t __54__SymbolButtonAccessibility__accessibilityLabelHelper__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"MusicCoreUI.CoreAnimationPackageView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = SymbolButtonAccessibility;
  accessibilityLabel = [(SymbolButtonAccessibility *)&v6 accessibilityLabel];
  if (![accessibilityLabel length])
  {
    _accessibilityLabelHelper = [(SymbolButtonAccessibility *)self _accessibilityLabelHelper];

    accessibilityLabel = _accessibilityLabelHelper;
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v7.receiver = self;
  v7.super_class = SymbolButtonAccessibility;
  accessibilityValue = [(SymbolButtonAccessibility *)&v7 accessibilityValue];
  if ([(SymbolButtonAccessibility *)self _axIsCircularProgressView])
  {
    _axCustomView = [(SymbolButtonAccessibility *)self _axCustomView];
    accessibilityValue2 = [_axCustomView accessibilityValue];
  }

  else
  {
    accessibilityValue2 = accessibilityValue;
  }

  return accessibilityValue2;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = SymbolButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SymbolButtonAccessibility *)&v8 accessibilityTraits];
  if ([(SymbolButtonAccessibility *)self _axIsCircularProgressView])
  {
    _axCustomView = [(SymbolButtonAccessibility *)self _axCustomView];
    v3 |= [_axCustomView accessibilityTraits];
  }

  v5 = [(SymbolButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_470];
  if (v5 && [(SymbolButtonAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  if ([(SymbolButtonAccessibility *)self safeBoolForKey:@"isEnabled"])
  {
    v6 = 0;
  }

  else
  {
    v6 = *MEMORY[0x29EDC7FA8];
  }

  return v6 | v3;
}

uint64_t __48__SymbolButtonAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"MusicCoreUI.CoreAnimationPackageView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_axIsInToolbar
{
  v2 = [(SymbolButtonAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_473 startWithSelf:0];
  v3 = v2 != 0;

  return v3;
}

uint64_t __43__SymbolButtonAccessibility__axIsInToolbar__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2910](@"UIToolbar");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)accessibilityUpdateSymbolButton
{
  v6.receiver = self;
  v6.super_class = SymbolButtonAccessibility;
  [(SymbolButtonAccessibility *)&v6 accessibilityUpdateSymbolButton];
  _axIsInToolbar = [(SymbolButtonAccessibility *)self _axIsInToolbar];
  v4 = *MEMORY[0x29EDC7ED8];
  if (_axIsInToolbar)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], selfCopy);
}

@end