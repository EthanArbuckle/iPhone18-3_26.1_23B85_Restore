@interface GKUILabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation GKUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  v3 = [(GKUILabelAccessibility *)self accessibilityIdentifier];
  if ([v3 isEqualToString:@"ComposeHeaderFieldValueLabel"])
  {
    v4 = [(GKUILabelAccessibility *)self accessibilityLabel];
    v5 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = [v6 length] != 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GKUILabelAccessibility;
    v7 = [(GKUILabelAccessibility *)&v9 isAccessibilityElement];
  }

  return v7;
}

@end