@interface UINavigationButtonAccessibility__MediaPlayer__UIKit
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UINavigationButtonAccessibility__MediaPlayer__UIKit

- (id)accessibilityLabel
{
  v3 = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"scaleButton"])
  {
    v4 = accessibilityLocalizedString(@"scaleButton.text");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationButtonAccessibility__MediaPlayer__UIKit;
    v4 = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)&v7 accessibilityLabel];
  }

  v5 = v4;

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)self accessibilityIdentification];
  if ([v3 isEqualToString:@"scaleButton"])
  {
    v4 = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)self safeValueForKey:@"image"];
    v5 = [v4 accessibilityIdentification];
    if ([v5 hasPrefix:@"zoomin_icon"] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"wildcat-widescreen-mode-icon"))
    {
      v6 = @"sizeToFit.scale.text";
    }

    else
    {
      if (([v5 hasPrefix:@"zoomout_icon"] & 1) == 0 && !objc_msgSend(v5, "hasPrefix:", @"wildcat-fullscreen-mode-icon"))
      {
        v7 = 0;
        goto LABEL_6;
      }

      v6 = @"fullScreen.scale.text";
    }

    v7 = accessibilityLocalizedString(v6);
LABEL_6:

    goto LABEL_8;
  }

  v9.receiver = self;
  v9.super_class = UINavigationButtonAccessibility__MediaPlayer__UIKit;
  v7 = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)&v9 accessibilityValue];
LABEL_8:

  return v7;
}

@end