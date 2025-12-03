@interface CNVisualIdentityAvatarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomContent;
- (id)axAvatarContacts;
- (id)axContactNameForCNContact:(id)contact;
- (id)axContacts;
@end

@implementation CNVisualIdentityAvatarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"visualIdentity" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CNVisualIdentity" hasInstanceMethod:@"contacts" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomContent
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v21.receiver = self;
  v21.super_class = CNVisualIdentityAvatarViewControllerAccessibility;
  accessibilityCustomContent = [(CNVisualIdentityAvatarViewControllerAccessibility *)&v21 accessibilityCustomContent];
  [v3 axSafelyAddObjectsFromArray:accessibilityCustomContent];

  axContacts = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContacts];
  v6 = [axContacts count];

  if (v6 >= 3)
  {
    axContacts2 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContacts];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [axContacts2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(axContacts2);
          }

          v12 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:*(*(&v17 + 1) + 8 * i)];
          if (v12)
          {
            v13 = MEMORY[0x29EDB8058];
            v14 = accessibilityLocalizedString(@"contact");
            v15 = [v13 customContentWithLabel:v14 value:v12];

            [v3 axSafelyAddObject:v15];
          }
        }

        v9 = [axContacts2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (id)axContactNameForCNContact:(id)contact
{
  contactCopy = contact;
  if (!contactCopy || ([MEMORY[0x29EDB8BA8] stringFromContact:contactCopy style:0], (stringValue = objc_claimAutoreleasedReturnValue()) == 0))
  {
    phoneNumbers = [contactCopy phoneNumbers];
    emailAddresses = [contactCopy emailAddresses];
    if ([phoneNumbers count])
    {
      firstObject = [phoneNumbers firstObject];
      value = [firstObject value];
      stringValue = [value stringValue];
    }

    else
    {
      if (![emailAddresses count])
      {
        stringValue = 0;
        goto LABEL_8;
      }

      firstObject = [emailAddresses firstObject];
      stringValue = [firstObject value];
    }

LABEL_8:
  }

  return stringValue;
}

- (id)axAvatarContacts
{
  axContacts = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContacts];
  if ([axContacts count])
  {
    v4 = [axContacts objectAtIndexedSubscript:0];
    v5 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:v4];

    v6 = [axContacts count];
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = [axContacts objectAtIndexedSubscript:1];
        v8 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:v7];

        v9 = MEMORY[0x29EDBA0F8];
        v10 = accessibilityLocalizedString(@"avatar.contacts");
        v11 = [v9 stringWithFormat:v10, v5, v8];
      }

      else
      {
        v12 = [axContacts objectAtIndexedSubscript:1];
        v8 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:v12];

        v13 = MEMORY[0x29EDBA0F8];
        v10 = accessibilityLocalizedString(@"avatar.contacts.overflow");
        v15 = [v13 localizedStringWithFormat:v10, v8, objc_msgSend(axContacts, "count") - 2];
        v11 = __UIAXStringForVariables();

        v5 = v15;
      }

      v5 = v11;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)axContacts
{
  v2 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self safeValueForKey:@"visualIdentity"];
  v3 = [v2 safeArrayForKey:@"contacts"];

  return v3;
}

@end