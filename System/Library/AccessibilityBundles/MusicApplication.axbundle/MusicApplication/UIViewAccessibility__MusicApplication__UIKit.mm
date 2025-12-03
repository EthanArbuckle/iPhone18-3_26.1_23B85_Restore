@interface UIViewAccessibility__MusicApplication__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axViewContainsSwitch;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIViewAccessibility__MusicApplication__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController"];
  [validationsCopy validateClass:@"MusicApplication.LibraryRecommendationBannerViewController" hasInstanceMethod:@"accessibilityCloseButton" withFullSignature:{"@", 0}];
}

- (id)_axViewContainsSwitch
{
  v19 = *MEMORY[0x29EDCA608];
  accessibilityIdentification = [(UIViewAccessibility__MusicApplication__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXPublicPlaylistSwitchContainerView"];

  if (v4)
  {
    [(UIViewAccessibility__MusicApplication__UIKit *)self subviews];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          MEMORY[0x29C2E2DD0](@"UISwitch");
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(UIViewAccessibility__MusicApplication__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"AXPublicPlaylistSwitchContainerView"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIViewAccessibility__MusicApplication__UIKit;
  return [(UIViewAccessibility__MusicApplication__UIKit *)&v6 isAccessibilityElement];
}

- (id)accessibilityValue
{
  _axViewContainsSwitch = [(UIViewAccessibility__MusicApplication__UIKit *)self _axViewContainsSwitch];

  if (_axViewContainsSwitch)
  {
    _axViewContainsSwitch2 = [(UIViewAccessibility__MusicApplication__UIKit *)self _axViewContainsSwitch];
    accessibilityValue = [_axViewContainsSwitch2 accessibilityValue];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIViewAccessibility__MusicApplication__UIKit;
    accessibilityValue = [(UIViewAccessibility__MusicApplication__UIKit *)&v7 accessibilityValue];
  }

  return accessibilityValue;
}

- (CGPoint)accessibilityActivationPoint
{
  _axViewContainsSwitch = [(UIViewAccessibility__MusicApplication__UIKit *)self _axViewContainsSwitch];

  if (_axViewContainsSwitch)
  {
    _axViewContainsSwitch2 = [(UIViewAccessibility__MusicApplication__UIKit *)self _axViewContainsSwitch];
    [_axViewContainsSwitch2 accessibilityActivationPoint];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = UIViewAccessibility__MusicApplication__UIKit;
    [(UIViewAccessibility__MusicApplication__UIKit *)&v11 accessibilityActivationPoint];
  }

  result.y = v10;
  result.x = v9;
  return result;
}

- (unint64_t)accessibilityTraits
{
  _axViewContainsSwitch = [(UIViewAccessibility__MusicApplication__UIKit *)self _axViewContainsSwitch];

  if (_axViewContainsSwitch)
  {
    _axViewContainsSwitch2 = [(UIViewAccessibility__MusicApplication__UIKit *)self _axViewContainsSwitch];
    accessibilityTraits = [_axViewContainsSwitch2 accessibilityTraits];

    return accessibilityTraits;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIViewAccessibility__MusicApplication__UIKit;
    return [(UIViewAccessibility__MusicApplication__UIKit *)&v7 accessibilityTraits];
  }
}

- (id)_accessibilitySupplementaryFooterViews
{
  array = [MEMORY[0x29EDB8DE8] array];
  accessibilityIdentifier = [(UIViewAccessibility__MusicApplication__UIKit *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"AXRecommendationBannerView"];

  if (v5)
  {
    v6 = [(UIViewAccessibility__MusicApplication__UIKit *)self _accessibilityFindViewAncestor:&__block_literal_global_10 startWithSelf:1];
    _accessibilityViewController = [v6 _accessibilityViewController];

    v8 = [_accessibilityViewController safeValueForKey:@"accessibilityCloseButton"];
    v9 = accessibilityMusicLocalizedString(@"close.recommendation.button");
    [v8 setAccessibilityLabel:v9];

    if (v8)
    {
      [array axSafelyAddObject:v8];
    }
  }

  return array;
}

@end