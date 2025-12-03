@interface BuddyUILabelAccessibility
- (BOOL)isAccessibilityElement;
@end

@implementation BuddyUILabelAccessibility

- (BOOL)isAccessibilityElement
{
  v8.receiver = self;
  v8.super_class = BuddyUILabelAccessibility;
  if (![(BuddyUILabelAccessibility *)&v8 isAccessibilityElement])
  {
    return 0;
  }

  accessibilityLabel = [(BuddyUILabelAccessibility *)self accessibilityLabel];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v5 = [accessibilityLabel stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v6 = [v5 length] != 0;

  return v6;
}

@end