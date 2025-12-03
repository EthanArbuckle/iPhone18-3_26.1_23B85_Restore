@interface MTAddPodcastCellAccessoryViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MTAddPodcastCellAccessoryViewAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v3 = [(MTAddPodcastCellAccessoryViewAccessibility *)self safeValueForKey:@"superview"];
  accessibilityTraits = [v3 accessibilityTraits];
  v5 = *MEMORY[0x29EDC7FA8];

  if ((v5 & accessibilityTraits) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6 | v2;
}

- (id)accessibilityLabel
{
  v2 = [(MTAddPodcastCellAccessoryViewAccessibility *)self safeValueForKey:@"isAdded"];
  bOOLValue = [v2 BOOLValue];

  if (bOOLValue)
  {
    v4 = @"selected";
  }

  else
  {
    v4 = @"not.selected";
  }

  v5 = accessibilityLocalizedString(v4);

  return v5;
}

@end