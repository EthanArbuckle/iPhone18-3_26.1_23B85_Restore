@interface MFEmailSnippetComposeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MFEmailSnippetComposeViewAccessibility

- (id)accessibilityLabel
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_toHeader"];
  accessibilityLabel = [v4 accessibilityLabel];

  v6 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_toField"];
  accessibilityLabel2 = [v6 accessibilityLabel];

  if ([accessibilityLabel length] && objc_msgSend(accessibilityLabel2, "length"))
  {
    v8 = __UIAXStringForVariables();
    [array addObject:{v8, accessibilityLabel2, @"__AXStringForVariablesSentinel"}];
  }

  v9 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_ccHeader"];
  accessibilityLabel3 = [v9 accessibilityLabel];

  v11 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_ccField"];
  accessibilityLabel4 = [v11 accessibilityLabel];

  if ([accessibilityLabel3 length] && objc_msgSend(accessibilityLabel4, "length"))
  {
    v13 = __UIAXStringForVariables();
    [array addObject:{v13, accessibilityLabel4, @"__AXStringForVariablesSentinel"}];
  }

  v28 = accessibilityLabel2;
  v14 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_bccHeader"];
  accessibilityLabel5 = [v14 accessibilityLabel];

  v16 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_bccField"];
  accessibilityLabel6 = [v16 accessibilityLabel];

  if ([accessibilityLabel5 length] && objc_msgSend(accessibilityLabel6, "length"))
  {
    v18 = __UIAXStringForVariables();
    [array addObject:{v18, accessibilityLabel6, @"__AXStringForVariablesSentinel"}];
  }

  v19 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_subjectHeader"];
  accessibilityLabel7 = [v19 accessibilityLabel];

  v21 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_subjectField"];
  accessibilityLabel8 = [v21 accessibilityLabel];

  if ([accessibilityLabel7 length] && objc_msgSend(accessibilityLabel8, "length"))
  {
    v23 = __UIAXStringForVariables();
    [array addObject:{v23, accessibilityLabel8, @"__AXStringForVariablesSentinel"}];
  }

  v24 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_bodyText"];
  accessibilityLabel9 = [v24 accessibilityLabel];

  if ([accessibilityLabel9 length])
  {
    [array addObject:accessibilityLabel9];
  }

  v26 = [array componentsJoinedByString:{@", "}];

  return v26;
}

@end