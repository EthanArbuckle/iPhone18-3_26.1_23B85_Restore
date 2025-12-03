@interface CNPostalAddressEditorViewAccessibility
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation CNPostalAddressEditorViewAccessibility

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v27 = *MEMORY[0x29EDCA608];
  viewCopy = view;
  pathCopy = path;
  v25.receiver = self;
  v25.super_class = CNPostalAddressEditorViewAccessibility;
  v8 = [(CNPostalAddressEditorViewAccessibility *)&v25 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v24 = 0;
  objc_opt_class();
  v9 = [v8 safeValueForKey:@"textFields"];
  v10 = __UIAccessibilityCastAsClass();

  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v24 = 0;
        objc_opt_class();
        v16 = __UIAccessibilityCastAsClass();
        if (v24 == 1)
        {
          abort();
        }

        v17 = v16;
        placeholder = [v16 placeholder];
        if (placeholder)
        {
          [v17 setAccessibilityLabel:placeholder];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v13);
  }

  return v8;
}

@end