@interface GKUILabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation GKUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  accessibilityIdentifier = [(GKUILabelAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"ComposeHeaderFieldValueLabel"])
  {
    accessibilityLabel = [(GKUILabelAccessibility *)self accessibilityLabel];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v6 = [accessibilityLabel stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
    isAccessibilityElement = [v6 length] != 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GKUILabelAccessibility;
    isAccessibilityElement = [(GKUILabelAccessibility *)&v9 isAccessibilityElement];
  }

  return isAccessibilityElement;
}

@end