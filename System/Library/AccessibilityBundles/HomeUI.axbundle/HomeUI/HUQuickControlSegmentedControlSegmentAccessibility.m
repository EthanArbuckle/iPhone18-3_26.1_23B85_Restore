@interface HUQuickControlSegmentedControlSegmentAccessibility
- (_NSRange)accessibilityRowRange;
- (unint64_t)accessibilityTraits;
@end

@implementation HUQuickControlSegmentedControlSegmentAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(HUQuickControlSegmentedControlSegmentAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (_NSRange)accessibilityRowRange
{
  v3 = [(HUQuickControlSegmentedControlSegmentAccessibility *)self superview];
  v4 = [v3 subviews];

  v5 = [v4 indexOfObject:self];
  v6 = [v4 count];

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

@end