@interface UITableViewCellAccessibility__UIKit__HomeUI
- (unint64_t)accessibilityTraits;
@end

@implementation UITableViewCellAccessibility__UIKit__HomeUI

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UITableViewCellAccessibility__UIKit__HomeUI;
  v3 = [(UITableViewCellAccessibility__UIKit__HomeUI *)&v7 accessibilityTraits];
  if ((*MEMORY[0x29EDC7FC0] & ~v3) == 0 && [(UITableViewCellAccessibility__UIKit__HomeUI *)self accessoryType]== 3)
  {
    v4 = [(UITableViewCellAccessibility__UIKit__HomeUI *)self accessoryView];
    v5 = [v4 accessibilityElementsHidden];

    if (v5)
    {
      return _AXTraitsRemoveTrait();
    }
  }

  return v3;
}

@end