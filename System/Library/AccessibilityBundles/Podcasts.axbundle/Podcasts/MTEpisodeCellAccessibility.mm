@interface MTEpisodeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axLockup;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation MTEpisodeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MTEpisodeCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MTEpisodeCell" isKindOfClass:@"UITableViewCell"];
  [v3 validateClass:@"MTEpisodeCell" hasInstanceMethod:@"episodeLockup" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UITableViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
}

- (id)_axLockup
{
  v2 = [(MTEpisodeCellAccessibility *)self safeValueForKey:@"episodeLockup"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (id)accessibilityLabel
{
  v3 = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (v3)
  {
    v4 = [(MTEpisodeCellAccessibility *)self _axLockup];
    v5 = [v4 accessibilityLabel];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (v3)
  {
    v4 = [(MTEpisodeCellAccessibility *)self _axLockup];
    v5 = [v4 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_privateAccessibilityCustomActions
{
  v3 = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (v3)
  {
    v4 = [(MTEpisodeCellAccessibility *)self _axLockup];
    v5 = [v4 _privateAccessibilityCustomActions];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = MTEpisodeCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MTEpisodeCellAccessibility *)&v8 accessibilityTraits]| *MEMORY[0x29EDC7FC8];
  v4 = [(MTEpisodeCellAccessibility *)self safeValueForKey:@"isSelected"];
  v5 = [v4 BOOLValue];

  v6 = *MEMORY[0x29EDC7FC0];
  if (!v5)
  {
    v6 = 0;
  }

  return v3 | v6;
}

- (id)automationElements
{
  v3 = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (v3)
  {
    v4 = [(MTEpisodeCellAccessibility *)self _axLockup];
    v5 = [v4 automationElements];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end