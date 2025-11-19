@interface UIButtonAccessibility__MusicApplication__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation UIButtonAccessibility__MusicApplication__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIButton" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIButton" hasInstanceMethod:@"currentImage" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(UIButtonAccessibility__MusicApplication__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"AXNowPlayingSubtitleButton"];

  if (v4)
  {
    v5 = [(UIButtonAccessibility__MusicApplication__UIKit *)self safeValueForKey:@"titleLabel"];
    v6 = [v5 accessibilityLabel];
    v7 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v8 = [v6 stringByTrimmingCharactersInSet:v7];
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
  v4 = [v3 accessibilityIdentifier];
  if ([v4 isEqualToString:@"Context-Love"])
  {
    v5 = @"love";
LABEL_5:
    v6 = accessibilityMusicLocalizedString(v5);
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"Context-Hate"])
  {
    v5 = @"dislike";
    goto LABEL_5;
  }

  v9.receiver = self;
  v9.super_class = UIButtonAccessibility__MusicApplication__UIKit;
  v6 = [(UIButtonAccessibility__MusicApplication__UIKit *)&v9 accessibilityLabel];
LABEL_7:
  v7 = v6;

  return v7;
}

@end