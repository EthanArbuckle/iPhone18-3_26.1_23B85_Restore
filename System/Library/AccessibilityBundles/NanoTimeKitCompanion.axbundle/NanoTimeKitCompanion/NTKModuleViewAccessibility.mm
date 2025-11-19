@interface NTKModuleViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation NTKModuleViewAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NTKModuleViewAccessibility;
  return [(NTKModuleViewAccessibility *)&v3 accessibilityTraits]& ~UIAccessibilityTraitNotEnabled;
}

@end