@interface CNVisualIdentityAvatarViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomContent;
- (id)axAvatarContacts;
- (id)axContactNameForCNContact:(id)a3;
- (id)axContacts;
@end

@implementation CNVisualIdentityAvatarViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNVisualIdentityAvatarViewController" hasInstanceMethod:@"visualIdentity" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNVisualIdentity" hasInstanceMethod:@"contacts" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomContent
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v21.receiver = self;
  v21.super_class = CNVisualIdentityAvatarViewControllerAccessibility;
  v4 = [(CNVisualIdentityAvatarViewControllerAccessibility *)&v21 accessibilityCustomContent];
  [v3 axSafelyAddObjectsFromArray:v4];

  v5 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContacts];
  v6 = [v5 count];

  if (v6 >= 3)
  {
    v7 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContacts];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(v7);
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

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v9);
    }
  }

  return v3;
}

- (id)axContactNameForCNContact:(id)a3
{
  v3 = a3;
  if (!v3 || ([MEMORY[0x29EDB8BA8] stringFromContact:v3 style:0], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [v3 phoneNumbers];
    v6 = [v3 emailAddresses];
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      v8 = [v7 value];
      v4 = [v8 stringValue];
    }

    else
    {
      if (![v6 count])
      {
        v4 = 0;
        goto LABEL_8;
      }

      v7 = [v6 firstObject];
      v4 = [v7 value];
    }

LABEL_8:
  }

  return v4;
}

- (id)axAvatarContacts
{
  v3 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContacts];
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:v4];

    v6 = [v3 count];
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        v7 = [v3 objectAtIndexedSubscript:1];
        v8 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:v7];

        v9 = MEMORY[0x29EDBA0F8];
        v10 = accessibilityLocalizedString(@"avatar.contacts");
        v11 = [v9 stringWithFormat:v10, v5, v8];
      }

      else
      {
        v12 = [v3 objectAtIndexedSubscript:1];
        v8 = [(CNVisualIdentityAvatarViewControllerAccessibility *)self axContactNameForCNContact:v12];

        v13 = MEMORY[0x29EDBA0F8];
        v10 = accessibilityLocalizedString(@"avatar.contacts.overflow");
        v15 = [v13 localizedStringWithFormat:v10, v8, objc_msgSend(v3, "count") - 2];
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