@interface UIButtonAccessibility__MusicApplication__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__MusicApplication__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIButton" hasInstanceMethod:@"currentImage" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(UIButtonAccessibility__MusicApplication__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AXNowPlayingSubtitleButton"];

  if (v4)
  {
    v5 = [(UIButtonAccessibility__MusicApplication__UIKit *)self safeValueForKey:@"titleLabel"];
    accessibilityLabel = [v5 accessibilityLabel];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v8 = [accessibilityLabel stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    v9 = [v8 length];
    v10 = v9 != 0;

    if (!v9)
    {
      [v5 setAccessibilityIdentifier:@"AXUIButtonLabelEmptyLabel"];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = UIButtonAccessibility__MusicApplication__UIKit;
    return [(UIButtonAccessibility__MusicApplication__UIKit *)&v12 isAccessibilityElement];
  }

  return v10;
}

- (id)accessibilityLabel
{
  v3 = [(UIButtonAccessibility__MusicApplication__UIKit *)self safeValueForKey:@"currentImage"];
  accessibilityIdentifier = [v3 accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"Context-Love"])
  {
    v5 = @"love";
LABEL_5:
    accessibilityLabel = accessibilityMusicLocalizedString(v5);
    goto LABEL_7;
  }

  if ([accessibilityIdentifier isEqualToString:@"Context-Hate"])
  {
    v5 = @"dislike";
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = UIButtonAccessibility__MusicApplication__UIKit;
  accessibilityLabel = [(UIButtonAccessibility__MusicApplication__UIKit *)&v9 accessibilityLabel];
LABEL_7:
  v7 = accessibilityLabel;

  return v7;
}

@end