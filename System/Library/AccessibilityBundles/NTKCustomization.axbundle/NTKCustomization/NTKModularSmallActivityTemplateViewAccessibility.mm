@interface NTKModularSmallActivityTemplateViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKModularSmallActivityTemplateViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKModularSmallActivityTemplateViewAccessibility *)self safeValueForKey:@"_ringsView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end