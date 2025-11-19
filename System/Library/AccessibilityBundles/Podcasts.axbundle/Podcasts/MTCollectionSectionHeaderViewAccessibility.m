@interface MTCollectionSectionHeaderViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTCollectionSectionHeaderViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTCollectionSectionHeaderViewAccessibility *)self safeValueForKey:@"textLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end