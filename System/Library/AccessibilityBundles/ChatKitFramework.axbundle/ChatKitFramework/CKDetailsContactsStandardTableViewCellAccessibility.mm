@interface CKDetailsContactsStandardTableViewCellAccessibility
- (id)_privateAccessibilityCustomActions;
@end

@implementation CKDetailsContactsStandardTableViewCellAccessibility

- (id)_privateAccessibilityCustomActions
{
  v20 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14.receiver = self;
  v14.super_class = CKDetailsContactsStandardTableViewCellAccessibility;
  _privateAccessibilityCustomActions = [(CKDetailsContactsStandardTableViewCellAccessibility *)&v14 _privateAccessibilityCustomActions];
  v5 = [_privateAccessibilityCustomActions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(_privateAccessibilityCustomActions);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        name = [v9 name];
        v11 = accessibilityLocalizedString(@"plugin.clear.action.title");
        v12 = [name isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          [array axSafelyAddObject:v9];
        }
      }

      v6 = [_privateAccessibilityCustomActions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return array;
}

@end