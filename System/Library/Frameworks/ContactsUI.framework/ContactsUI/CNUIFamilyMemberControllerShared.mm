@interface CNUIFamilyMemberControllerShared
+ (id)actionTitleAddNewContactForFamilyMember:(id)member;
+ (id)actionTitleChooseFromContactsForFamilyMember:(id)member;
+ (id)addContactsOptionsSheetForFamilyMember:(id)member delegate:(id)delegate;
+ (id)addContactsToWhitelistOptionsSheetForFamilyMember:(id)member offerChooseFromFamilyMemberContactsOption:(BOOL)option delegate:(id)delegate;
+ (id)contactMatchingFamilyMemberContactItem:(id)item fetchedFromContactStore:(id)store schedulerProvider:(id)provider;
+ (id)contactViewControllerForContact:(id)contact fromStore:(id)store;
+ (id)formattedNameOfFamilyMember:(id)member;
+ (int64_t)contactsUIFetchStatusFromContactsUICoreFetchStatus:(int64_t)status;
@end

@implementation CNUIFamilyMemberControllerShared

+ (int64_t)contactsUIFetchStatusFromContactsUICoreFetchStatus:(int64_t)status
{
  if ((status - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_199E43F08[status - 1];
  }
}

+ (id)actionTitleChooseFromContactsForFamilyMember:(id)member
{
  if (member)
  {
    v3 = [self formattedNameOfFamilyMember:?];
    v4 = v3;
    if (v3 && [v3 length])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = CNContactsUIBundle();
      v7 = [v6 localizedStringForKey:@"CHOOSE_FROM_YOUR_CHILD" value:&stru_1F0CE7398 table:@"Localized"];
      v8 = [v5 stringWithFormat:v7, v4];
    }

    else
    {
      v6 = CNContactsUIBundle();
      v8 = [v6 localizedStringForKey:@"CHOOSE_FROM_MY_CHILDS_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
    }
  }

  else
  {
    v4 = CNContactsUIBundle();
    v8 = [v4 localizedStringForKey:@"CHOOSE_FROM_MY_CHILDS_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v8;
}

+ (id)actionTitleAddNewContactForFamilyMember:(id)member
{
  if (member)
  {
    v3 = [self formattedNameOfFamilyMember:?];
    v4 = v3;
    if (v3 && [v3 length])
    {
      v5 = MEMORY[0x1E696AEC0];
      v6 = CNContactsUIBundle();
      v7 = [v6 localizedStringForKey:@"ADD_NEW_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
      v8 = [v5 stringWithFormat:v7, v4];
    }

    else
    {
      v6 = CNContactsUIBundle();
      v8 = [v6 localizedStringForKey:@"ADD_NEW_CONTACT_FOR_MY_CHILD" value:&stru_1F0CE7398 table:@"Localized"];
    }
  }

  else
  {
    v4 = CNContactsUIBundle();
    v8 = [v4 localizedStringForKey:@"ADD_NEW_LOCAL_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v8;
}

+ (id)addContactsToWhitelistOptionsSheetForFamilyMember:(id)member offerChooseFromFamilyMemberContactsOption:(BOOL)option delegate:(id)delegate
{
  optionCopy = option;
  delegateCopy = delegate;
  v8 = MEMORY[0x1E69DC650];
  memberCopy = member;
  v10 = [v8 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v11 = MEMORY[0x1E69DC648];
  v12 = CNContactsUIBundle();
  v13 = [v12 localizedStringForKey:@"CHOOSE_FROM_MY_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __137__CNUIFamilyMemberControllerShared_addContactsToWhitelistOptionsSheetForFamilyMember_offerChooseFromFamilyMemberContactsOption_delegate___block_invoke;
  v46[3] = &unk_1E74E7308;
  v14 = delegateCopy;
  v47 = v14;
  v15 = v10;
  v48 = v15;
  v35 = [v11 actionWithTitle:v13 style:0 handler:v46];

  v16 = [self actionTitleChooseFromContactsForFamilyMember:memberCopy];
  v17 = MEMORY[0x1E69DC648];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __137__CNUIFamilyMemberControllerShared_addContactsToWhitelistOptionsSheetForFamilyMember_offerChooseFromFamilyMemberContactsOption_delegate___block_invoke_2;
  v43[3] = &unk_1E74E7308;
  v18 = v14;
  v44 = v18;
  v19 = v15;
  v45 = v19;
  v36 = v16;
  v20 = [v17 actionWithTitle:v16 style:0 handler:v43];
  v21 = [self actionTitleAddNewContactForFamilyMember:memberCopy];

  v22 = MEMORY[0x1E69DC648];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __137__CNUIFamilyMemberControllerShared_addContactsToWhitelistOptionsSheetForFamilyMember_offerChooseFromFamilyMemberContactsOption_delegate___block_invoke_3;
  v40[3] = &unk_1E74E7308;
  v23 = v18;
  v41 = v23;
  v24 = v19;
  v42 = v24;
  v25 = [v22 actionWithTitle:v21 style:0 handler:v40];
  v26 = MEMORY[0x1E69DC648];
  v27 = CNContactsUIBundle();
  v28 = [v27 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __137__CNUIFamilyMemberControllerShared_addContactsToWhitelistOptionsSheetForFamilyMember_offerChooseFromFamilyMemberContactsOption_delegate___block_invoke_4;
  v37[3] = &unk_1E74E7308;
  v38 = v23;
  v29 = v24;
  v39 = v29;
  v30 = v23;
  v31 = [v26 actionWithTitle:v28 style:1 handler:v37];

  [v29 addAction:v35];
  if (memberCopy && optionCopy)
  {
    [v29 addAction:v20];
  }

  [v29 addAction:v25];
  [v29 addAction:v31];
  v32 = v29;

  return v29;
}

+ (id)addContactsOptionsSheetForFamilyMember:(id)member delegate:(id)delegate
{
  delegateCopy = delegate;
  v7 = MEMORY[0x1E69DC650];
  memberCopy = member;
  v9 = [v7 alertControllerWithTitle:0 message:0 preferredStyle:0];
  v10 = MEMORY[0x1E69DC648];
  v11 = CNContactsUIBundle();
  v12 = [v11 localizedStringForKey:@"CHOOSE_FROM_MY_CONTACTS" value:&stru_1F0CE7398 table:@"Localized"];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __84__CNUIFamilyMemberControllerShared_addContactsOptionsSheetForFamilyMember_delegate___block_invoke;
  v35[3] = &unk_1E74E7308;
  v13 = delegateCopy;
  v36 = v13;
  v14 = v9;
  v37 = v14;
  v15 = [v10 actionWithTitle:v12 style:0 handler:v35];

  v16 = [self actionTitleAddNewContactForFamilyMember:memberCopy];

  v17 = MEMORY[0x1E69DC648];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __84__CNUIFamilyMemberControllerShared_addContactsOptionsSheetForFamilyMember_delegate___block_invoke_2;
  v32[3] = &unk_1E74E7308;
  v18 = v13;
  v33 = v18;
  v19 = v14;
  v34 = v19;
  v20 = [v17 actionWithTitle:v16 style:0 handler:v32];
  v21 = MEMORY[0x1E69DC648];
  v22 = CNContactsUIBundle();
  v23 = [v22 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __84__CNUIFamilyMemberControllerShared_addContactsOptionsSheetForFamilyMember_delegate___block_invoke_3;
  v29[3] = &unk_1E74E7308;
  v30 = v18;
  v24 = v19;
  v31 = v24;
  v25 = v18;
  v26 = [v21 actionWithTitle:v23 style:1 handler:v29];

  [v24 addAction:v15];
  [v24 addAction:v20];
  [v24 addAction:v26];
  v27 = v24;

  return v24;
}

+ (id)contactMatchingFamilyMemberContactItem:(id)item fetchedFromContactStore:(id)store schedulerProvider:(id)provider
{
  itemCopy = item;
  storeCopy = store;
  v9 = MEMORY[0x1E6996720];
  v16 = MEMORY[0x1E69E9820];
  v17 = storeCopy;
  v18 = itemCopy;
  v10 = itemCopy;
  v11 = storeCopy;
  providerCopy = provider;
  backgroundScheduler = [providerCopy backgroundScheduler];
  v14 = [v9 futureWithBlock:&v16 scheduler:backgroundScheduler schedulerProvider:providerCopy];

  return v14;
}

id __117__CNUIFamilyMemberControllerShared_contactMatchingFamilyMemberContactItem_fetchedFromContactStore_schedulerProvider___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) contactIdentifier];
  v5 = +[CNContactViewController descriptorForRequiredKeys];
  v13[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v12 = 0;
  v7 = [v3 unifiedContactWithIdentifier:v4 keysToFetch:v6 error:&v12];
  v8 = v12;

  if (v7)
  {
    v9 = v7;
  }

  else if (a2)
  {
    v10 = v8;
    *a2 = v8;
  }

  return v7;
}

+ (id)contactViewControllerForContact:(id)contact fromStore:(id)store
{
  storeCopy = store;
  contactCopy = contact;
  v7 = [CNContactViewController viewControllerForContact:contactCopy];
  [v7 setActions:127];
  [v7 setIgnoresParentalRestrictions:1];
  propertyKeysContainingSenstiveData = [MEMORY[0x1E6996B20] propertyKeysContainingSenstiveData];
  [v7 setProhibitedPropertyKeys:propertyKeysContainingSenstiveData];

  [v7 setContactStore:storeCopy];
  [v7 setDisplayMode:2];
  [v7 setContact:contactCopy];

  return v7;
}

+ (id)formattedNameOfFamilyMember:(id)member
{
  v3 = MEMORY[0x1E695CF18];
  memberCopy = member;
  v5 = objc_alloc_init(v3);
  firstName = [memberCopy firstName];
  [v5 setGivenName:firstName];

  lastName = [memberCopy lastName];

  [v5 setFamilyName:lastName];
  v8 = [MEMORY[0x1E695CD80] stringFromContact:v5 style:1000];

  return v8;
}

@end