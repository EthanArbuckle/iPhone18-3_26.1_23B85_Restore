@interface UIToolbarButtonAccessibility__PhotoLibrary__UIKit
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation UIToolbarButtonAccessibility__PhotoLibrary__UIKit

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)self isAccessibilityUserDefinedElement];
    LOBYTE(v5) = [isAccessibilityUserDefinedElement2 BOOLValue];
  }

  else
  {
    isAccessibilityUserDefinedElement2 = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)self safeValueForKey:@"isHidden"];
    v5 = [isAccessibilityUserDefinedElement2 BOOLValue] ^ 1;
  }

  return v5;
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)self accessibilityUserDefinedLabel];
  }

  else
  {
    accessibilityIdentification = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)self accessibilityIdentification];
    v6 = [accessibilityIdentification isEqualToString:@"playButton"];

    if (v6)
    {
      accessibilityUserDefinedLabel2 = accessibilityLocalizedString(@"play.slideshow.button.text");
    }

    else
    {
      v8.receiver = self;
      v8.super_class = UIToolbarButtonAccessibility__PhotoLibrary__UIKit;
      accessibilityUserDefinedLabel2 = [(UIToolbarButtonAccessibility__PhotoLibrary__UIKit *)&v8 accessibilityLabel];
    }
  }

  return accessibilityUserDefinedLabel2;
}

@end