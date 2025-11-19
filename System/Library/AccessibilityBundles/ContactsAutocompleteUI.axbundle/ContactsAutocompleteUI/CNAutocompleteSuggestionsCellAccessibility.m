@interface CNAutocompleteSuggestionsCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation CNAutocompleteSuggestionsCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CNAutocompleteSuggestionsCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CNAutocompleteSuggestionsCellAccessibility *)&v3 accessibilityTraits];
}

@end