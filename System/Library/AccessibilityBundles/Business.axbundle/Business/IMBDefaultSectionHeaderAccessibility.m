@interface IMBDefaultSectionHeaderAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation IMBDefaultSectionHeaderAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = IMBDefaultSectionHeaderAccessibility;
  return *MEMORY[0x29EDC7F80] | [(IMBDefaultSectionHeaderAccessibility *)&v3 accessibilityTraits];
}

@end