@interface MapsUILabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation MapsUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentification = [(MapsUILabelAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"calloutViewSubtitle"];

  if (v4)
  {
    accessibilityLabel = [(MapsUILabelAccessibility *)self accessibilityLabel];
    whitespaceCharacterSet = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
    v7 = [accessibilityLabel stringByTrimmingCharactersInSet:whitespaceCharacterSet];
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