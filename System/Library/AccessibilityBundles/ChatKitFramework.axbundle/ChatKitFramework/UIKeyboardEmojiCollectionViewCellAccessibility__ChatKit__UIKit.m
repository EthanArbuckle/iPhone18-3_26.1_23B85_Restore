@interface UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit
- (id)accessibilityCustomRotors;
@end

@implementation UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit

- (id)accessibilityCustomRotors
{
  v5.receiver = self;
  v5.super_class = UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit;
  v2 = [(UIKeyboardEmojiCollectionViewCellAccessibility__ChatKit__UIKit *)&v5 accessibilityCustomRotors];
  v3 = addFirstResponderRotorsToRotorArray(v2);

  return v3;
}

@end