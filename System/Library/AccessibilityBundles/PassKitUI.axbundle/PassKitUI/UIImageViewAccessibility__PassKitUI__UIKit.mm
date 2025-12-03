@interface UIImageViewAccessibility__PassKitUI__UIKit
- (CGRect)accessibilityFrame;
@end

@implementation UIImageViewAccessibility__PassKitUI__UIKit

- (CGRect)accessibilityFrame
{
  accessibilityIdentification = [(UIImageViewAccessibility__PassKitUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"LogoImage"];

  if (v4)
  {
    v5 = [(UIImageViewAccessibility__PassKitUI__UIKit *)self _accessibilityValueForKey:@"LogoRect"];
    [v5 rectValue];
    CGRectInset(v23, -20.0, -20.0);
    UIAccessibilityFrameForBounds();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = UIImageViewAccessibility__PassKitUI__UIKit;
    [(UIImageViewAccessibility__PassKitUI__UIKit *)&v22 accessibilityFrame];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v13 = v17;
  }

  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end