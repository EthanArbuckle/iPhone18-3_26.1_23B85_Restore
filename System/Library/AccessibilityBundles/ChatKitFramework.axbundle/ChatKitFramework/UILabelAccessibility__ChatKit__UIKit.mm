@interface UILabelAccessibility__ChatKit__UIKit
- (BOOL)_accessibilityIsNotFirstElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation UILabelAccessibility__ChatKit__UIKit

- (id)accessibilityLabel
{
  accessibilityIdentifier = [(UILabelAccessibility__ChatKit__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"CharacterCount"];

  if (v4)
  {
    accessibilityLabel = accessibilityLocalizedString(@"character.count");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UILabelAccessibility__ChatKit__UIKit;
    accessibilityLabel = [(UILabelAccessibility__ChatKit__UIKit *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  accessibilityIdentifier = [(UILabelAccessibility__ChatKit__UIKit *)self accessibilityIdentifier];
  v4 = [accessibilityIdentifier isEqualToString:@"CharacterCount"];

  if (v4)
  {
    selfCopy = self;
    v5 = &selRef_accessibilityLabel;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_accessibilityValue;
    v6 = &selfCopy2;
  }

  v6[1] = UILabelAccessibility__ChatKit__UIKit;
  v7 = objc_msgSendSuper2(v6, *v5, selfCopy2);

  return v7;
}

- (BOOL)_accessibilityIsNotFirstElement
{
  v6.receiver = self;
  v6.super_class = UILabelAccessibility__ChatKit__UIKit;
  if ([(UILabelAccessibility__ChatKit__UIKit *)&v6 _accessibilityIsNotFirstElement])
  {
    return 1;
  }

  v4 = [(UILabelAccessibility__ChatKit__UIKit *)self _accessibilityFindViewAncestor:&__block_literal_global_9 startWithSelf:0];
  _accessibilityIsNotFirstElement = [v4 _accessibilityIsNotFirstElement];

  return _accessibilityIsNotFirstElement;
}

@end