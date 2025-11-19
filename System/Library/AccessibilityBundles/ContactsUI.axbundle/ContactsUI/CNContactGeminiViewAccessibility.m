@interface CNContactGeminiViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CNContactGeminiViewAccessibility

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = CNContactGeminiViewAccessibility;
  v3 = [(CNContactGeminiViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(CNContactGeminiViewAccessibility *)self safeBoolForKey:@"shouldDisplayChevron"];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end