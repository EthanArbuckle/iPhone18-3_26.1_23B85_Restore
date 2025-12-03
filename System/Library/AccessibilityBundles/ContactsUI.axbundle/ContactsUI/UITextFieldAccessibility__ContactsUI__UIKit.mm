@interface UITextFieldAccessibility__ContactsUI__UIKit
- (BOOL)isAccessibilityElement;
- (unint64_t)accessibilityTraits;
@end

@implementation UITextFieldAccessibility__ContactsUI__UIKit

- (unint64_t)accessibilityTraits
{
  accessibilityIdentification = [(UITextFieldAccessibility__ContactsUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:kAXPhotosTextFieldIdentifier];

  if (v4)
  {
    return *MEMORY[0x29EDC7F80];
  }

  v6.receiver = self;
  v6.super_class = UITextFieldAccessibility__ContactsUI__UIKit;
  return [(UITextFieldAccessibility__ContactsUI__UIKit *)&v6 accessibilityTraits];
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  accessibilityIdentification = [(UITextFieldAccessibility__ContactsUI__UIKit *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:kAXPhotosTextFieldIdentifier];

  if (v4)
  {
    selfCopy = [selfCopy safeStringForKey:@"text"];
    if (selfCopy)
    {
      whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
      v6 = [selfCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      LOBYTE(selfCopy) = [v6 length] != 0;
    }
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = UITextFieldAccessibility__ContactsUI__UIKit;
    LOBYTE(selfCopy) = [(UITextFieldAccessibility__ContactsUI__UIKit *)&v8 isAccessibilityElement];
  }

  return selfCopy;
}

@end