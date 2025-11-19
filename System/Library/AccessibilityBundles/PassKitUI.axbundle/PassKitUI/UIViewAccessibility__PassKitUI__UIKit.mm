@interface UIViewAccessibility__PassKitUI__UIKit
- (BOOL)_accessibilityOverridesInvalidFrames;
- (BOOL)_accessibilityUseAccessibilityFrameForHittest;
- (CGRect)accessibilityFrame;
@end

@implementation UIViewAccessibility__PassKitUI__UIKit

- (BOOL)_accessibilityUseAccessibilityFrameForHittest
{
  v3 = [(UIViewAccessibility__PassKitUI__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:kAXPriceViewIdentifier];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIViewAccessibility__PassKitUI__UIKit;
  return [(UIViewAccessibility__PassKitUI__UIKit *)&v6 _accessibilityUseAccessibilityFrameForHittest];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v3 = [(UIViewAccessibility__PassKitUI__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:kAXPriceViewIdentifier];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = UIViewAccessibility__PassKitUI__UIKit;
  return [(UIViewAccessibility__PassKitUI__UIKit *)&v6 _accessibilityOverridesInvalidFrames];
}

- (CGRect)accessibilityFrame
{
  v3 = [(UIViewAccessibility__PassKitUI__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:kAXPriceViewIdentifier];

  if (v4 && ([(UIViewAccessibility__PassKitUI__UIKit *)self _accessibilityFindSubviewDescendant:&__block_literal_global_8], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [v5 accessibilityFrame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = UIViewAccessibility__PassKitUI__UIKit;
    [(UIViewAccessibility__PassKitUI__UIKit *)&v23 accessibilityFrame];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end