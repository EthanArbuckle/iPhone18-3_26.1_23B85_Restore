@interface MTATimerTableViewCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation MTATimerTableViewCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MTATimerTableViewCellAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(MTATimerTableViewCellAccessibility *)&v3 accessibilityTraits];
}

@end