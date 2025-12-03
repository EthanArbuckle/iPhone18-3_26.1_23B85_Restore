@interface SymbolButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsCircularProgressView;
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
  [validationsCopy validateClass:@"MusicApplication.CircularProgressView"];
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
  if (_axCustomView && (MEMORY[0x29C2E2DD0](@"MusicApplication.CircularProgressView"), (objc_opt_isKindOfClass() & 1) != 0))
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

    else if ([v9 isEqualToString:@"classical"])
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

    else
    {
      if (![v9 isEqualToString:@"person.fill.badge.plus"])
      {
        if ([v9 isEqualToString:@"dolby.audio"])
        {
          v19 = @"dolby.audio";
        }

        else if ([v9 isEqualToString:@"dolby.atmos"])
        {
          v19 = @"dolby.atmos";
        }

        else if ([v9 isEqualToString:@"apple.digital.master"])
        {
          v19 = @"apple.digital.master";
        }

        else if ([v9 isEqualToString:@"dolby"])
        {
          v19 = @"dolby";
        }

        else
        {
          if (![v9 isEqualToString:@"lossless"])
          {
            accessibilityLabel2 = [v4 accessibilityLabel];
            goto LABEL_14;
          }

          v19 = @"lossless";
        }

        accessibilityLabel2 = accessibilityOasisMusicLocalizedString(v19);
LABEL_14:
        v12 = accessibilityLabel2;

        v5 = v12;
LABEL_15:
        if (![v5 length])
        {
          v13 = [(SymbolButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_4];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 safeSwiftValueForKey:@"definition"];
            v16 = [v15 safeSwiftStringForKey:@"name"];
            if ([v16 isEqualToString:@"Favorite"])
            {
              v17 = accessibilityMusicLocalizedString(@"favorite");

              v5 = v17;
            }
          }
        }

        goto LABEL_21;
      }

      v10 = @"collaboration.button";
    }

    accessibilityLabel2 = accessibilityMusicLocalizedString(v10);
    goto LABEL_14;
  }

LABEL_21:

  return v5;
}

uint64_t __54__SymbolButtonAccessibility__accessibilityLabelHelper__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"MusicCoreUI.CoreAnimationPackageView");
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
  v7.receiver = self;
  v7.super_class = SymbolButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SymbolButtonAccessibility *)&v7 accessibilityTraits];
  if ([(SymbolButtonAccessibility *)self _axIsCircularProgressView])
  {
    _axCustomView = [(SymbolButtonAccessibility *)self _axCustomView];
    v3 |= [_axCustomView accessibilityTraits];
  }

  v5 = [(SymbolButtonAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_446];
  if (v5 && [(SymbolButtonAccessibility *)self safeBoolForKey:@"isSelected"])
  {
    v3 |= *MEMORY[0x29EDC7FC0];
  }

  return v3;
}

uint64_t __48__SymbolButtonAccessibility_accessibilityTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E2DD0](@"MusicCoreUI.CoreAnimationPackageView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)accessibilityUpdateSymbolButton
{
  v2.receiver = self;
  v2.super_class = SymbolButtonAccessibility;
  [(SymbolButtonAccessibility *)&v2 accessibilityUpdateSymbolButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end