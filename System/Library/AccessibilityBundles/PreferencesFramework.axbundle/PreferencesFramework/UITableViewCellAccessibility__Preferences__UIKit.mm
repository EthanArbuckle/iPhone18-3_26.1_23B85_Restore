@interface UITableViewCellAccessibility__Preferences__UIKit
- (id)accessibilityLabel;
@end

@implementation UITableViewCellAccessibility__Preferences__UIKit

- (id)accessibilityLabel
{
  v3 = [(UITableViewCellAccessibility__Preferences__UIKit *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"LanguageCell"];

  if (v4)
  {
    v5 = [(UITableViewCellAccessibility__Preferences__UIKit *)self safeValueForKey:@"textLabel"];
    v6 = [v5 accessibilityLabel];

    if ([v6 length])
    {
      v7 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v6];
      v8 = [(UITableViewCellAccessibility__Preferences__UIKit *)self _accessibilityValueForKey:@"axLanguage"];
      [v7 setAttribute:v8 forKey:*MEMORY[0x29EDBD950]];

      goto LABEL_6;
    }
  }

  v10.receiver = self;
  v10.super_class = UITableViewCellAccessibility__Preferences__UIKit;
  v7 = [(UITableViewCellAccessibility__Preferences__UIKit *)&v10 accessibilityLabel];
LABEL_6:

  return v7;
}

@end