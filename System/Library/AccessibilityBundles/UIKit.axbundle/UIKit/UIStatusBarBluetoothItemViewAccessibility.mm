@interface UIStatusBarBluetoothItemViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarBluetoothItemViewAccessibility

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarBluetoothItemViewAccessibility;
  return [(UIStatusBarBluetoothItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end