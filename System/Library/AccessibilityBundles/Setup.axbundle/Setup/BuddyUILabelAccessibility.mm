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

  v3 = [(BuddyUILabelAccessibility *)self accessibilityLabel];
  v4 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];
  v6 = [v5 length] != 0;

  return v6;
}

@end