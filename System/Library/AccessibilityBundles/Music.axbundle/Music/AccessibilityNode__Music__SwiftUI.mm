@interface AccessibilityNode__Music__SwiftUI
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AccessibilityNode__Music__SwiftUI

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(AccessibilityNode__Music__SwiftUI *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"Music.accountButton"];

  if (v4)
  {
    accessibilityLabel = accessibilityMusicLocalizedString(@"account");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNode__Music__SwiftUI;
    accessibilityLabel = [(AccessibilityNode__Music__SwiftUI *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  accessibilityIdentifier = [(AccessibilityNode__Music__SwiftUI *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"Music.accountButton"];

  if (v4)
  {
    return *MEMORY[0x29EDC7F70];
  }

  v6.receiver = self;
  v6.super_class = AccessibilityNode__Music__SwiftUI;
  return [(AccessibilityNode__Music__SwiftUI *)&v6 accessibilityTraits];
}

@end