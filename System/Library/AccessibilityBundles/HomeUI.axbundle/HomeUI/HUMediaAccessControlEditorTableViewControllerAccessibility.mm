@interface HUMediaAccessControlEditorTableViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityHomeUIHandleTVandSpeakersTableViewCells;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUMediaAccessControlEditorTableViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUMediaAccessControlEditorTableViewController" isKindOfClass:@"UITableViewController"];
  [validationsCopy validateClass:@"HUItemTableViewController" hasInstanceMethod:@"itemManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUItemTableViewController" isKindOfClass:@"UITableViewController"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HUMediaAccessControlEditorTableViewControllerAccessibility;
  [(HUMediaAccessControlEditorTableViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HUMediaAccessControlEditorTableViewControllerAccessibility *)self _accessibilityHomeUIHandleTVandSpeakersTableViewCells];
}

- (void)_accessibilityHomeUIHandleTVandSpeakersTableViewCells
{
  v37 = *MEMORY[0x29EDCA608];
  v27 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:0];
  section = [v27 section];
  v35 = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v26 = v4;
  tableView = [v4 tableView];
  visibleCells = [tableView visibleCells];

  v7 = [(HUMediaAccessControlEditorTableViewControllerAccessibility *)self safeValueForKey:@"itemManager"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = visibleCells;
  v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    v11 = 0x29EDBA000uLL;
    v28 = section;
    v29 = v7;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v35 = 0;
        v14 = *(v11 + 248);
        objc_opt_class();
        v15 = [v7 displayedSectionIdentifierForSectionIndex:section];
        v16 = __UIAccessibilityCastAsClass();

        if (v35 == 1)
        {
          abort();
        }

        if ([v16 isEqualToString:@"ACCESS_CONTROL_SECTION"])
        {
          v17 = *(v11 + 248);
          v18 = accessibilityHomeUILocalizedString(@"allow.speaker.and.tv.access.option");
          textLabel = [v13 textLabel];
          [textLabel text];
          v20 = v9;
          v21 = v11;
          v23 = v22 = v10;
          v24 = [v17 localizedStringWithFormat:v18, v23];
          [v13 setAccessibilityHint:v24];

          v10 = v22;
          v11 = v21;
          v9 = v20;

          section = v28;
          v7 = v29;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x29EDCA608];
}

@end