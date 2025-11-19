@interface UITextViewAccessibility__MessageUI__UIKit
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation UITextViewAccessibility__MessageUI__UIKit

- (id)accessibilityLabel
{
  v3 = [(UITextViewAccessibility__MessageUI__UIKit *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"subjectField"])
  {
    v4 = [MEMORY[0x29EDBA050] string];
    v5 = accessibilityLocalizedString(@"subject.text");
    [v4 appendString:v5];

    v9.receiver = self;
    v9.super_class = UITextViewAccessibility__MessageUI__UIKit;
    v6 = [(UITextViewAccessibility__MessageUI__UIKit *)&v9 accessibilityLabel];
    if (v6)
    {
      [v4 appendString:v6];
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UITextViewAccessibility__MessageUI__UIKit;
    v4 = [(UITextViewAccessibility__MessageUI__UIKit *)&v8 accessibilityLabel];
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  v3 = [(UITextViewAccessibility__MessageUI__UIKit *)self accessibilityIdentifier];
  v4 = [v3 isEqualToString:@"subjectField"];

  if (v4)
  {
    objc_opt_class();
    v5 = [(UITextViewAccessibility__MessageUI__UIKit *)self superview];
    v6 = __UIAccessibilityCastAsClass();

    [(UITextViewAccessibility__MessageUI__UIKit *)self frame];
    v8 = v7;
    v10 = v9;
    [(UIView *)v6 frame];
    v24.origin.x = 0.0;
    v24.origin.y = v8;
    v24.size.height = v10;
    v25 = UIAccessibilityConvertFrameToScreenCoordinates(v24, v6);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
  }

  else
  {
    v23.receiver = self;
    v23.super_class = UITextViewAccessibility__MessageUI__UIKit;
    [(UITextViewAccessibility__MessageUI__UIKit *)&v23 accessibilityFrame];
    x = v15;
    y = v16;
    width = v17;
    height = v18;
  }

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

@end