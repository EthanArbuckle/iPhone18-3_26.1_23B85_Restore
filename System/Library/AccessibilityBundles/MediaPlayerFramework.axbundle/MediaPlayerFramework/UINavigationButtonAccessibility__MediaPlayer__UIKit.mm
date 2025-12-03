@interface UINavigationButtonAccessibility__MediaPlayer__UIKit
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UINavigationButtonAccessibility__MediaPlayer__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"scaleButton"])
  {
    accessibilityLabel = accessibilityLocalizedString(@"scaleButton.text");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UINavigationButtonAccessibility__MediaPlayer__UIKit;
    accessibilityLabel = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)&v7 accessibilityLabel];
  }

  v5 = accessibilityLabel;

  return v5;
}

- (id)accessibilityValue
{
  accessibilityIdentification = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)self accessibilityIdentification];
  if ([accessibilityIdentification isEqualToString:@"scaleButton"])
  {
    v4 = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)self safeValueForKey:@"image"];
    accessibilityIdentification2 = [v4 accessibilityIdentification];
    if ([accessibilityIdentification2 hasPrefix:@"zoomin_icon"] & 1) != 0 || (objc_msgSend(accessibilityIdentification2, "hasPrefix:", @"wildcat-widescreen-mode-icon"))
    {
      v6 = @"sizeToFit.scale.text";
    }

    else
    {
      if (([accessibilityIdentification2 hasPrefix:@"zoomout_icon"] & 1) == 0 && !objc_msgSend(accessibilityIdentification2, "hasPrefix:", @"wildcat-fullscreen-mode-icon"))
      {
        accessibilityValue = 0;
        goto LABEL_6;
      }

      v6 = @"fullScreen.scale.text";
    }

    accessibilityValue = accessibilityLocalizedString(v6);
LABEL_6:

    goto LABEL_8;
  }

  v9.receiver = self;
  v9.super_class = UINavigationButtonAccessibility__MediaPlayer__UIKit;
  accessibilityValue = [(UINavigationButtonAccessibility__MediaPlayer__UIKit *)&v9 accessibilityValue];
LABEL_8:

  return accessibilityValue;
}

@end