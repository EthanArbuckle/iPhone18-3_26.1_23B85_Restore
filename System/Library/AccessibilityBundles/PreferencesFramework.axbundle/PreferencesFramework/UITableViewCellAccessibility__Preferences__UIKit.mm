@interface UITableViewCellAccessibility__Preferences__UIKit
- (id)accessibilityLabel;
@end

@implementation UITableViewCellAccessibility__Preferences__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentification = [(UITableViewCellAccessibility__Preferences__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"LanguageCell"];

  if (v4)
  {
    v5 = [(UITableViewCellAccessibility__Preferences__UIKit *)self safeValueForKey:@"textLabel"];
    accessibilityLabel = [v5 accessibilityLabel];

    if ([accessibilityLabel length])
    {
      accessibilityLabel2 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];
      v8 = [(UITableViewCellAccessibility__Preferences__UIKit *)self _accessibilityValueForKey:@"axLanguage"];
      [accessibilityLabel2 setAttribute:v8 forKey:*MEMORY[0x29EDBD950]];

      goto LABEL_6;
    }
  }

  v10.receiver = self;
  v10.super_class = UITableViewCellAccessibility__Preferences__UIKit;
  accessibilityLabel2 = [(UITableViewCellAccessibility__Preferences__UIKit *)&v10 accessibilityLabel];
LABEL_6:

  return accessibilityLabel2;
}

@end