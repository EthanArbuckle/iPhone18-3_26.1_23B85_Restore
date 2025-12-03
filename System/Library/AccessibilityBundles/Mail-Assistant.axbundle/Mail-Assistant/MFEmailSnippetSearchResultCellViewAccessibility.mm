@interface MFEmailSnippetSearchResultCellViewAccessibility
- (id)accessibilityLabel;
- (void)setEmail:(id)email;
@end

@implementation MFEmailSnippetSearchResultCellViewAccessibility

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MFEmailSnippetSearchResultCellViewAccessibility *)self _accessibilityBoolValueForKey:@"isOutgoingEmailKey"];
  v5 = [(MFEmailSnippetSearchResultCellViewAccessibility *)self safeValueForKey:@"_addressLabel"];
  accessibilityLabel = [v5 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    if (v4)
    {
      v7 = @"message.address.to.label";
    }

    else
    {
      v7 = @"message.address.from.label";
    }

    v8 = accessibilityMobileMailLocalizedString(v7);
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:v8, accessibilityLabel];
    [array addObject:v9];
  }

  v10 = [(MFEmailSnippetSearchResultCellViewAccessibility *)self safeValueForKey:@"_subjectLabel"];
  accessibilityLabel2 = [v10 accessibilityLabel];

  if ([accessibilityLabel2 length])
  {
    v12 = MEMORY[0x29EDBA0F8];
    v13 = accessibilityMobileMailLocalizedString(@"subject");
    v14 = [v12 stringWithFormat:@"%@: %@", v13, accessibilityLabel2];

    [array addObject:v14];
  }

  v15 = [(MFEmailSnippetSearchResultCellViewAccessibility *)self safeValueForKey:@"_dateLabel"];
  accessibilityLabel3 = [v15 accessibilityLabel];

  if ([accessibilityLabel3 length])
  {
    v17 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel3];
    [v17 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD898]];
    [array addObject:v17];
  }

  v18 = [(MFEmailSnippetSearchResultCellViewAccessibility *)self safeValueForKey:@"_bodyLabel"];
  accessibilityLabel4 = [v18 accessibilityLabel];

  if ([accessibilityLabel4 length])
  {
    [array addObject:accessibilityLabel4];
  }

  v20 = [array componentsJoinedByString:{@", "}];

  return v20;
}

- (void)setEmail:(id)email
{
  emailCopy = email;
  v20.receiver = self;
  v20.super_class = MFEmailSnippetSearchResultCellViewAccessibility;
  [(MFEmailSnippetSearchResultCellViewAccessibility *)&v20 setEmail:emailCopy];
  objc_opt_class();
  v5 = [emailCopy safeValueForKey:@"outgoing"];
  v6 = __UIAccessibilityCastAsClass();

  bOOLValue = [v6 BOOLValue];
  [(MFEmailSnippetSearchResultCellViewAccessibility *)self _accessibilitySetBoolValue:bOOLValue forKey:@"isOutgoingEmailKey"];
  array = [MEMORY[0x29EDB8DE8] array];
  v9 = [emailCopy safeValueForKey:@"statusFlags"];
  intValue = [v9 intValue];

  if (intValue)
  {
    v11 = accessibilityMobileMailLocalizedString(@"unread");
    if (v11)
    {
      v12 = v11;
      [array addObject:v11];
    }
  }

  if ((intValue & 8) != 0)
  {
    v13 = accessibilityMobileMailLocalizedString(@"flagged");
    if (v13)
    {
      v14 = v13;
      [array addObject:v13];
    }
  }

  if ((intValue & 2) != 0)
  {
    v15 = accessibilityMobileMailLocalizedString(@"replied");
    if (v15)
    {
      v16 = v15;
      [array addObject:v15];
    }
  }

  if ((intValue & 4) != 0)
  {
    v17 = accessibilityMobileMailLocalizedString(@"forwarded");
    if (v17)
    {
      v18 = v17;
      [array addObject:v17];
    }
  }

  v19 = [array componentsJoinedByString:{@", "}];
  [(MFEmailSnippetSearchResultCellViewAccessibility *)self setAccessibilityValue:v19];
}

@end