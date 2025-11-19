@interface CNContactPickerServiceViewController
- (BOOL)shouldRecordPrivateAccessToAggregator;
- (CNContactPickerServiceViewController)init;
- (id)_filteredContact:(id)a3 withKeys:(id)a4;
- (id)_filteredProperty:(id)a3;
- (void)_logPrivacyAccountingAccessEvent;
- (void)_logPrivateAccessEventForContactPickerUsage;
- (void)pickerDidCancel;
- (void)pickerDidCompleteWithNewContact:(id)a3;
- (void)pickerDidSelectAddNewContact;
- (void)pickerDidSelectContact:(id)a3 property:(id)a4;
- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation CNContactPickerServiceViewController

- (void)_logPrivacyAccountingAccessEvent
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(CNContactPickerServiceViewController *)self extensionContext];
  v3 = v2;
  if (v2)
  {
    [v2 _extensionHostAuditToken];
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v6[0] = v7;
  v6[1] = v8;
  v4 = [MEMORY[0x1E6996638] auditToken:v6];
  v5 = [objc_alloc(MEMORY[0x1E6996800]) initWithAuditToken:v4 assumedIdentity:0];
  [v5 logContactPickerAccessEvent];
}

- (void)_logPrivateAccessEventForContactPickerUsage
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:20];

  if (v5)
  {
    if ([(CNContactPickerServiceViewController *)self shouldRecordPrivateAccessToAggregator])
    {
      v6 = [(CNContactPickerContentViewController *)self managedConfiguration];
      v7 = [v6 clientBundleIdentifier];

      if (v7)
      {
        v9 = [(CNContactPickerContentViewController *)self managedConfiguration];
        v8 = [v9 clientBundleIdentifier];
        [CNPrivateAccessAggregator recordAccessForBundleIdentifier:v8];
      }
    }
  }
}

- (BOOL)shouldRecordPrivateAccessToAggregator
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [v3 authorizationContext];

  LOBYTE(v3) = [v4 isFullAccessGranted];
  v5 = [(CNContactPickerContentViewController *)self managedConfiguration];
  v6 = [v5 clientBundleIdentifier];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNContactPickerServiceViewController.m", 186, 5, @"%@ is %@ for full access:", v7, v8, v9, v10, v6);

  return v3 ^ 1;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNContactPickerServiceViewController;
  [(CNContactPickerServiceViewController *)&v4 viewDidAppear:a3];
  [(CNContactPickerServiceViewController *)self _logPrivateAccessEventForContactPickerUsage];
}

- (void)pickerDidCancel
{
  v2 = [(CNContactPickerServiceViewController *)self extensionContext];
  [v2 pickerDidCancel];
}

- (void)pickerDidCompleteWithNewContact:(id)a3
{
  v8 = a3;
  v4 = v8;
  if (![(CNContactPickerContentViewController *)self clientHasContactsAccess])
  {
    if (v8)
    {
      v5 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];

      v4 = v8;
      if (v5)
      {
        v6 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];
        v4 = [(CNContactPickerServiceViewController *)self _filteredContact:v8 withKeys:v6];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  [(CNContactPickerServiceViewController *)self _logPrivacyAccountingAccessEvent];
  v7 = [(CNContactPickerServiceViewController *)self extensionContext];
  [v7 pickerDidCompleteWithNewContact:v4];
}

- (void)pickerDidSelectContacts:(id)a3 properties:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v7;
  v10 = v9;
  v11 = v8;
  if ([(CNContactPickerContentViewController *)self clientHasContactsAccess])
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v12 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];

    v11 = v8;
    if (v12)
    {
      v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v8;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v33;
        do
        {
          v17 = 0;
          do
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v32 + 1) + 8 * v17);
            v19 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];
            v20 = [(CNContactPickerServiceViewController *)self _filteredContact:v18 withKeys:v19];

            [v11 addObject:v20];
            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v15);
      }
    }

    if (v9)
    {
      goto LABEL_13;
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v11 = 0;
  if (!v9)
  {
    goto LABEL_22;
  }

LABEL_13:
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = v9;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [(CNContactPickerServiceViewController *)self _filteredProperty:*(*(&v28 + 1) + 8 * v25), v28];
        [v10 addObject:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v23);
  }

LABEL_23:
  [(CNContactPickerServiceViewController *)self _logPrivacyAccountingAccessEvent];
  v27 = [(CNContactPickerServiceViewController *)self extensionContext];
  [v27 pickerDidSelectContacts:v11 properties:v10];
}

- (void)pickerDidSelectContact:(id)a3 property:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = v6;
  v8 = v7;
  v9 = v14;
  v10 = v8;
  if (![(CNContactPickerContentViewController *)self clientHasContactsAccess])
  {
    if (v14)
    {
      v11 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];

      v9 = v14;
      if (v11)
      {
        v12 = [(CNContactPickerContentViewController *)self displayedPropertyKeys];
        v9 = [(CNContactPickerServiceViewController *)self _filteredContact:v14 withKeys:v12];
      }

      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = 0;
      if (v8)
      {
LABEL_6:
        v10 = [(CNContactPickerServiceViewController *)self _filteredProperty:v8];

        goto LABEL_9;
      }
    }

    v10 = 0;
  }

LABEL_9:
  [(CNContactPickerServiceViewController *)self _logPrivacyAccountingAccessEvent];
  v13 = [(CNContactPickerServiceViewController *)self extensionContext];
  [v13 pickerDidSelectContact:v9 property:v10];
}

- (void)pickerDidSelectAddNewContact
{
  [(CNContactPickerServiceViewController *)self _logPrivacyAccountingAccessEvent];
  v3 = [(CNContactPickerServiceViewController *)self extensionContext];
  [v3 pickerDidSelectAddNewContact];
}

- (id)_filteredProperty:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 contact];
  v6 = [v4 key];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v8 = [(CNContactPickerServiceViewController *)self _filteredContact:v5 withKeys:v7];

  v9 = MEMORY[0x1E695CE08];
  v10 = [v4 key];
  v11 = [v4 identifier];

  v12 = [v9 contactPropertyWithContact:v8 propertyKey:v10 identifier:v11];

  return v12;
}

- (id)_filteredContact:(id)a3 withKeys:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (_filteredContact_withKeys__cn_once_token_1 != -1)
  {
    dispatch_once(&_filteredContact_withKeys__cn_once_token_1, &__block_literal_global_24906);
  }

  v7 = _filteredContact_withKeys__cn_once_object_1;
  v8 = v7;
  if ([v6 count])
  {
    v8 = [v7 arrayByAddingObjectsFromArray:v6];
  }

  v9 = [v5 copyWithPropertyKeys:v8];

  return v9;
}

void __66__CNContactPickerServiceViewController__filteredContact_withKeys___block_invoke()
{
  v15[26] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C240];
  v15[0] = *MEMORY[0x1E695C300];
  v15[1] = v0;
  v1 = *MEMORY[0x1E695C230];
  v15[2] = *MEMORY[0x1E695C2F0];
  v15[3] = v1;
  v2 = *MEMORY[0x1E695C308];
  v15[4] = *MEMORY[0x1E695C390];
  v15[5] = v2;
  v3 = *MEMORY[0x1E695C348];
  v15[6] = *MEMORY[0x1E695C310];
  v15[7] = v3;
  v4 = *MEMORY[0x1E695C340];
  v15[8] = *MEMORY[0x1E695C350];
  v15[9] = v4;
  v5 = *MEMORY[0x1E695C328];
  v15[10] = *MEMORY[0x1E695C210];
  v15[11] = v5;
  v6 = *MEMORY[0x1E695C1F8];
  v15[12] = *MEMORY[0x1E695C358];
  v15[13] = v6;
  v7 = *MEMORY[0x1E695C380];
  v15[14] = *MEMORY[0x1E695C2C8];
  v15[15] = v7;
  v8 = *MEMORY[0x1E695C278];
  v15[16] = *MEMORY[0x1E695C378];
  v15[17] = v8;
  v9 = *MEMORY[0x1E695C270];
  v15[18] = *MEMORY[0x1E695C400];
  v15[19] = v9;
  v10 = *MEMORY[0x1E695C2D8];
  v15[20] = *MEMORY[0x1E695C410];
  v15[21] = v10;
  v11 = *MEMORY[0x1E695C238];
  v15[22] = *MEMORY[0x1E695C1E8];
  v15[23] = v11;
  v12 = *MEMORY[0x1E695C398];
  v15[24] = *MEMORY[0x1E695C3A0];
  v15[25] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:26];
  v14 = _filteredContact_withKeys__cn_once_object_1;
  _filteredContact_withKeys__cn_once_object_1 = v13;
}

- (CNContactPickerServiceViewController)init
{
  v4.receiver = self;
  v4.super_class = CNContactPickerServiceViewController;
  v2 = [(CNContactPickerContentViewController *)&v4 init];
  [(CNContactPickerContentViewController *)v2 setDelegate:v2];
  return v2;
}

@end