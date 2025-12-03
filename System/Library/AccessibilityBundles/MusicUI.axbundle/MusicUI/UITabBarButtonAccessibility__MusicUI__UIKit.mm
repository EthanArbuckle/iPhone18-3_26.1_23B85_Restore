@interface UITabBarButtonAccessibility__MusicUI__UIKit
- (unint64_t)accessibilityTraits;
@end

@implementation UITabBarButtonAccessibility__MusicUI__UIKit

- (unint64_t)accessibilityTraits
{
  v6.receiver = self;
  v6.super_class = UITabBarButtonAccessibility__MusicUI__UIKit;
  accessibilityTraits = [(UITabBarButtonAccessibility__MusicUI__UIKit *)&v6 accessibilityTraits];
  v4 = [(UITabBarButtonAccessibility__MusicUI__UIKit *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uitabbarcustom.isa)];

  if (v4 && ([(UITabBarButtonAccessibility__MusicUI__UIKit *)self safeBoolForKey:@"_isSelected"]& 1) == 0)
  {
    return (*MEMORY[0x29EDC7FA8] | accessibilityTraits) & ~*MEMORY[0x29EDC7510];
  }

  return accessibilityTraits;
}

@end