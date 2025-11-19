@interface NTKModularSmallActivityTemplateViewAccessibility
- (id)accessibilityLabel;
@end

@implementation NTKModularSmallActivityTemplateViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(NTKModularSmallActivityTemplateViewAccessibility *)self safeValueForKey:@"_ringsView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end