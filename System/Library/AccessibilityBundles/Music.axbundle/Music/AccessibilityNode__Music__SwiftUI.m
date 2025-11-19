@interface AccessibilityNode__Music__SwiftUI
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation AccessibilityNode__Music__SwiftUI

- (id)accessibilityLabel
{
  v3 = [(AccessibilityNode__Music__SwiftUI *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"Music.accountButton"];

  if (v4)
  {
    v5 = accessibilityMusicLocalizedString(@"account");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = AccessibilityNode__Music__SwiftUI;
    v5 = [(AccessibilityNode__Music__SwiftUI *)&v7 accessibilityLabel];
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(AccessibilityNode__Music__SwiftUI *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"Music.accountButton"];

  if (v4)
  {
    return *MEMORY[0x29EDC7F70];
  }

  v6.receiver = self;
  v6.super_class = AccessibilityNode__Music__SwiftUI;
  return [(AccessibilityNode__Music__SwiftUI *)&v6 accessibilityTraits];
}

@end