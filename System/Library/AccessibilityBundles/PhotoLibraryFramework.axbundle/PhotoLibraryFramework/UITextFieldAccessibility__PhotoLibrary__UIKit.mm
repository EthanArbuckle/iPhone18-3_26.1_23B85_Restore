@interface UITextFieldAccessibility__PhotoLibrary__UIKit
- (id)accessibilityPlaceholderValue;
@end

@implementation UITextFieldAccessibility__PhotoLibrary__UIKit

- (id)accessibilityPlaceholderValue
{
  v3 = [(UITextFieldAccessibility__PhotoLibrary__UIKit *)self accessibilityIdentification];
  if (![v3 isEqualToString:@"PhotoShareAlbumNameTextField"])
  {
    goto LABEL_4;
  }

  v4 = [(UITextFieldAccessibility__PhotoLibrary__UIKit *)self safeValueForKey:@"text"];
  if ([v4 length])
  {

LABEL_4:
LABEL_5:
    v9.receiver = self;
    v9.super_class = UITextFieldAccessibility__PhotoLibrary__UIKit;
    v5 = [(UITextFieldAccessibility__PhotoLibrary__UIKit *)&v9 accessibilityPlaceholderValue];
    goto LABEL_6;
  }

  v7 = [(UITextFieldAccessibility__PhotoLibrary__UIKit *)self safeValueForKey:@"attributedText"];
  v8 = [v7 length];

  if (v8)
  {
    goto LABEL_5;
  }

  v5 = [(UITextFieldAccessibility__PhotoLibrary__UIKit *)self _accessibilityValueForKey:@"AXPlaceholder"];
LABEL_6:

  return v5;
}

@end