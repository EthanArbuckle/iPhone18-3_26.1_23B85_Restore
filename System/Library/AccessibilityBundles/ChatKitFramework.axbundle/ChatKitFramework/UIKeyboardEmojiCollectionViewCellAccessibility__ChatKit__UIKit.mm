@interface UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit
- (id)accessibilityCustomRotors;
@end

@implementation UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit

- (id)accessibilityCustomRotors
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit;
  accessibilityCustomRotors = [(UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit *)&v5 accessibilityCustomRotors];
  v3 = addFirstResponderRotorsToRotorArray(accessibilityCustomRotors);

  return v3;
}

@end