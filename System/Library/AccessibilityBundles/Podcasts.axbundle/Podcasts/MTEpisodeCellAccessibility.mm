@interface MTEpisodeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axLockup;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation MTEpisodeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTEpisodeCell" hasInstanceMethod:@"setExpanded:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityClearChildren" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"MTEpisodeCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"MTEpisodeCell" hasInstanceMethod:@"episodeLockup" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
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
  _axLockup = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (_axLockup)
  {
    _axLockup2 = [(MTEpisodeCellAccessibility *)self _axLockup];
    accessibilityLabel = [_axLockup2 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = 0;
  }

  return accessibilityLabel;
}

- (id)_accessibilitySupplementaryFooterViews
{
  _axLockup = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (_axLockup)
  {
    _axLockup2 = [(MTEpisodeCellAccessibility *)self _axLockup];
    _accessibilitySupplementaryFooterViews = [_axLockup2 _accessibilitySupplementaryFooterViews];
  }

  else
  {
    _accessibilitySupplementaryFooterViews = 0;
  }

  return _accessibilitySupplementaryFooterViews;
}

- (id)_privateAccessibilityCustomActions
{
  _axLockup = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (_axLockup)
  {
    _axLockup2 = [(MTEpisodeCellAccessibility *)self _axLockup];
    _privateAccessibilityCustomActions = [_axLockup2 _privateAccessibilityCustomActions];
  }

  else
  {
    _privateAccessibilityCustomActions = 0;
  }

  return _privateAccessibilityCustomActions;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = MTEpisodeCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(MTEpisodeCellAccessibility *)&v8 accessibilityTraits]| *MEMORY[0x29EDC7FC8];
  v4 = [(MTEpisodeCellAccessibility *)self safeValueForKey:@"isSelected"];
  bOOLValue = [v4 BOOLValue];

  v6 = *MEMORY[0x29EDC7FC0];
  if (!bOOLValue)
  {
    v6 = 0;
  }

  return v3 | v6;
}

- (id)automationElements
{
  _axLockup = [(MTEpisodeCellAccessibility *)self _axLockup];

  if (_axLockup)
  {
    _axLockup2 = [(MTEpisodeCellAccessibility *)self _axLockup];
    automationElements = [_axLockup2 automationElements];
  }

  else
  {
    automationElements = 0;
  }

  return automationElements;
}

@end