@interface MFEmailSnippetComposeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MFEmailSnippetComposeViewAccessibility

- (id)accessibilityLabel
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_toHeader"];
  v5 = [v4 accessibilityLabel];

  v6 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_toField"];
  v7 = [v6 accessibilityLabel];

  if ([v5 length] && objc_msgSend(v7, "length"))
  {
    v8 = __UIAXStringForVariables();
    [v3 addObject:{v8, v7, @"__AXStringForVariablesSentinel"}];
  }

  v9 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_ccHeader"];
  v10 = [v9 accessibilityLabel];

  v11 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_ccField"];
  v12 = [v11 accessibilityLabel];

  if ([v10 length] && objc_msgSend(v12, "length"))
  {
    v13 = __UIAXStringForVariables();
    [v3 addObject:{v13, v12, @"__AXStringForVariablesSentinel"}];
  }

  v28 = v7;
  v14 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_bccHeader"];
  v15 = [v14 accessibilityLabel];

  v16 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_bccField"];
  v17 = [v16 accessibilityLabel];

  if ([v15 length] && objc_msgSend(v17, "length"))
  {
    v18 = __UIAXStringForVariables();
    [v3 addObject:{v18, v17, @"__AXStringForVariablesSentinel"}];
  }

  v19 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_subjectHeader"];
  v20 = [v19 accessibilityLabel];

  v21 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_subjectField"];
  v22 = [v21 accessibilityLabel];

  if ([v20 length] && objc_msgSend(v22, "length"))
  {
    v23 = __UIAXStringForVariables();
    [v3 addObject:{v23, v22, @"__AXStringForVariablesSentinel"}];
  }

  v24 = [(MFEmailSnippetComposeViewAccessibility *)self safeValueForKey:@"_bodyText"];
  v25 = [v24 accessibilityLabel];

  if ([v25 length])
  {
    [v3 addObject:v25];
  }

  v26 = [v3 componentsJoinedByString:{@", "}];

  return v26;
}

@end