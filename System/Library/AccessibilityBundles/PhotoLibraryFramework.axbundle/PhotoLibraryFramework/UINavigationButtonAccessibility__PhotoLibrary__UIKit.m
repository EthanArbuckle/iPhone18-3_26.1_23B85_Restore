@interface UINavigationButtonAccessibility__PhotoLibrary__UIKit
- (id)accessibilityLabel;
@end

@implementation UINavigationButtonAccessibility__PhotoLibrary__UIKit

- (id)accessibilityLabel
{
  v3 = [(UINavigationButtonAccessibility__PhotoLibrary__UIKit *)self safeValueForKey:@"_accessibilityImagePath"];
  v4 = v3;
  if (v3)
  {
    if ([v3 rangeOfString:@"video_play.png"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = @"play.button";
      goto LABEL_9;
    }

    if ([v4 rangeOfString:@"video_pause.png"] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = @"pause.button";
      goto LABEL_9;
    }
  }

  if (![v4 hasPrefix:@"PUEditPluginLarger"])
  {
    v9.receiver = self;
    v9.super_class = UINavigationButtonAccessibility__PhotoLibrary__UIKit;
    v6 = [(UINavigationButtonAccessibility__PhotoLibrary__UIKit *)&v9 accessibilityLabel];
    goto LABEL_10;
  }

  v5 = @"plugin.buttons";
LABEL_9:
  v6 = accessibilityLocalizedString(v5);
LABEL_10:
  v7 = v6;

  return v7;
}

@end