@interface MapsUILabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation MapsUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(MapsUILabelAccessibility *)self accessibilityIdentification];
  v4 = [v3 isEqualToString:@"calloutViewSubtitle"];

  if (v4)
  {
    v5 = [(MapsUILabelAccessibility *)self accessibilityLabel];
    v6 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
    v7 = [v5 stringByTrimmingCharactersInSet:v6];
    v8 = [v7 length];

    if (!v8)
    {
      return 0;
    }
  }

  v10.receiver = self;
  v10.super_class = MapsUILabelAccessibility;
  return [(MapsUILabelAccessibility *)&v10 isAccessibilityElement];
}

@end