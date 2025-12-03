@interface UITextViewAccessibility__PhotosUI__UIKit
- (id)accessibilityPlaceholderValue;
@end

@implementation UITextViewAccessibility__PhotosUI__UIKit

- (id)accessibilityPlaceholderValue
{
  accessibilityIdentifier = [(UITextViewAccessibility__PhotosUI__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"AddCommentTextView"];

  if (v4)
  {
    v5 = [(UITextViewAccessibility__PhotosUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Puphotocomment.isa)];
    v6 = [v5 safeValueForKey:@"_placeholderLabel"];
    accessibilityLabel = [v6 accessibilityLabel];
    if ([accessibilityLabel length])
    {
      v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];

      [v8 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD970]];
      accessibilityLabel = v8;
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UITextViewAccessibility__PhotosUI__UIKit;
    accessibilityLabel = [(UITextViewAccessibility__PhotosUI__UIKit *)&v10 accessibilityPlaceholderValue];
  }

  return accessibilityLabel;
}

@end