@interface VitalsWidgetCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation VitalsWidgetCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = VitalsWidgetCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(VitalsWidgetCellAccessibility *)&v3 accessibilityTraits];
}

@end