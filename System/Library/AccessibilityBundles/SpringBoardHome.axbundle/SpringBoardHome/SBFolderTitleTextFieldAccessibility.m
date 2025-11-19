@interface SBFolderTitleTextFieldAccessibility
- (BOOL)_accessibilitySupportsHandwriting;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation SBFolderTitleTextFieldAccessibility

- (id)accessibilityLabel
{
  if ([(SBFolderTitleTextFieldAccessibility *)self safeBoolForKey:@"_showingEditUI"])
  {
    v2 = accessibilityLocalizedString(@"folder.name.textfield");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityIdentifier
{
  v6.receiver = self;
  v6.super_class = SBFolderTitleTextFieldAccessibility;
  v2 = [(SBFolderTitleTextFieldAccessibility *)&v6 accessibilityValue];
  v5 = accessibilityLocalizedString(@"folder.name.textfield");
  v3 = __UIAXStringForVariables();

  return v3;
}

- (BOOL)_accessibilitySupportsHandwriting
{
  if ([(SBFolderTitleTextFieldAccessibility *)self safeBoolForKey:@"_showingEditUI"])
  {
    v3 = [(SBFolderTitleTextFieldAccessibility *)self accessibilityTraits];
    if ((*MEMORY[0x29EDC7528] & ~v3) == 0)
    {
      return 1;
    }
  }

  v5.receiver = self;
  v5.super_class = SBFolderTitleTextFieldAccessibility;
  return [(SBFolderTitleTextFieldAccessibility *)&v5 _accessibilitySupportsHandwriting];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = SBFolderTitleTextFieldAccessibility;
  v3 = [(SBFolderTitleTextFieldAccessibility *)&v5 accessibilityTraits];
  if (([(SBFolderTitleTextFieldAccessibility *)self safeBoolForKey:@"_showingEditUI"]& 1) == 0)
  {
    return *MEMORY[0x29EDC7F80] | _AXTraitsRemoveTrait();
  }

  return v3;
}

- (id)accessibilityHint
{
  if (([(SBFolderTitleTextFieldAccessibility *)self safeBoolForKey:@"isEditing"]& 1) != 0)
  {
    goto LABEL_2;
  }

  v4 = [(SBFolderTitleTextFieldAccessibility *)self safeValueForKey:@"clearButtonMode"];
  v5 = [v4 intValue];

  if (v5 == 3)
  {
    v6 = @"folder.name.enter.edit.textfield.hint";
  }

  else
  {
    if (![(SBFolderTitleTextFieldAccessibility *)self safeBoolForKey:@"isEditable"])
    {
LABEL_2:
      v3 = 0;
      goto LABEL_8;
    }

    v6 = @"folder.name.enter.edit.mode.hint";
  }

  v3 = accessibilityLocalizedString(v6);
LABEL_8:

  return v3;
}

@end