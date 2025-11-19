@interface SBSUIBuddyMultitaskingFlowOptionViewAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation SBSUIBuddyMultitaskingFlowOptionViewAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(SBSUIBuddyMultitaskingFlowOptionViewAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

@end