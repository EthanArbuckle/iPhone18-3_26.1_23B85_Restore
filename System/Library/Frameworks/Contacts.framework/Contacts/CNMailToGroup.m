@interface CNMailToGroup
+ (id)bestGuessEmailAddressForAddresses:(id)a3 sendingAddressDomain:(id)a4 alreadyDuetRanked:(BOOL)a5;
+ (id)bestGuessEmailAddressForContact:(id)a3 sendingAddressDomain:(id)a4;
+ (id)descriptorForRequiredKeys;
+ (id)os_log;
+ (id)queryForEmailAddresses:(id)a3;
- (CNMailToGroup)init;
- (id)bestGuessEmailAddressForContact:(id)a3;
- (id)mailUrlForContacts:(id)a3 needsEmailAddresses:(BOOL)a4;
- (id)mailUrlForMailingAddresses:(id)a3;
- (id)mailUrlWithEmailAddressesForContacts:(id)a3;
- (id)mailingAddressForContact:(id)a3;
- (id)mailingAddressWithEmailForContact:(id)a3;
- (id)santizeMailingAddress:(id)a3;
@end

@implementation CNMailToGroup

+ (id)os_log
{
  if (os_log_cn_once_token_1_4 != -1)
  {
    +[CNMailToGroup os_log];
  }

  v3 = os_log_cn_once_object_1_4;

  return v3;
}

uint64_t __23__CNMailToGroup_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNMailToGroup");
  v1 = os_log_cn_once_object_1_4;
  os_log_cn_once_object_1_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)descriptorForRequiredKeys
{
  v8[3] = *MEMORY[0x1E69E9840];
  v3 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v8[0] = v3;
  v8[1] = @"emailAddresses";
  v8[2] = @"phoneNumbers";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v5 = [a1 description];
  v6 = [CNContact descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

- (CNMailToGroup)init
{
  v7.receiver = self;
  v7.super_class = CNMailToGroup;
  v2 = [(CNMailToGroup *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(CNContactFormatter);
    contactFormatter = v2->_contactFormatter;
    v2->_contactFormatter = v3;

    [(CNContactFormatter *)v2->_contactFormatter setStyle:0];
    v5 = v2;
  }

  return v2;
}

- (id)mailUrlWithEmailAddressesForContacts:(id)a3
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CNMailToGroup_mailUrlWithEmailAddressesForContacts___block_invoke;
  v7[3] = &unk_1E7412EB0;
  v7[4] = self;
  v4 = [a3 _cn_compactMap:v7];
  v5 = [(CNMailToGroup *)self mailUrlForMailingAddresses:v4];

  return v5;
}

- (id)mailUrlForContacts:(id)a3 needsEmailAddresses:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 && ![(CNMailToGroup *)self allContactsHaveEmailAddress:v6])
  {
    v8 = 0;
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__CNMailToGroup_mailUrlForContacts_needsEmailAddresses___block_invoke;
    v10[3] = &unk_1E7412EB0;
    v10[4] = self;
    v7 = [v6 _cn_compactMap:v10];
    v8 = [(CNMailToGroup *)self mailUrlForMailingAddresses:v7];
  }

  return v8;
}

- (id)mailUrlForMailingAddresses:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AD60] stringWithString:@"mailto:"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CNMailToGroup_mailUrlForMailingAddresses___block_invoke;
    v10[3] = &unk_1E74139A8;
    v11 = v4;
    v5 = v4;
    [v3 enumerateObjectsUsingBlock:v10];
    v6 = [v5 _cn_stringByAddingPercentEscapesToEntireURL];
    v7 = [MEMORY[0x1E696AF20] componentsWithString:v6];
    v8 = [v7 URL];
  }

  else
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CNMailToGroup mailUrlForMailingAddresses:];
    }

    v8 = 0;
  }

  return v8;
}

void __44__CNMailToGroup_mailUrlForMailingAddresses___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v5];
}

uint64_t __45__CNMailToGroup_allContactsHaveEmailAddress___block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x1E6996530];
  v3 = [a2 emailAddresses];
  v4 = +[CNLabeledValue Value];
  v5 = [v3 _cn_map:v4];
  v6 = [v5 _cn_filter:*MEMORY[0x1E6996570]];
  v7 = (*(v2 + 16))(v2, v6);

  return v7;
}

- (id)bestGuessEmailAddressForContact:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() bestGuessEmailAddressForContact:v3];

  return v4;
}

- (id)mailingAddressWithEmailForContact:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNMailToGroup *)self bestGuessEmailAddressForContact:v4];
  v6 = *MEMORY[0x1E6996570];
  if ((*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], v5))
  {
    v7 = v5;
    v8 = [(CNMailToGroup *)self contactFormatter];
    v9 = [v8 stringFromContact:v4];

    if ((*(v6 + 16))(v6, v9))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v9, v7];

      v7 = v10;
    }

    v11 = [(CNMailToGroup *)self santizeMailingAddress:v7];
  }

  else
  {
    v12 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1954A0000, v12, OS_LOG_TYPE_INFO, "Contact has no e-mail so will not be included: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)mailingAddressForContact:(id)a3
{
  v4 = a3;
  v5 = [(CNMailToGroup *)self contactFormatter];
  v6 = [v5 stringFromContact:v4];

  v7 = [(CNMailToGroup *)self bestGuessEmailAddressForContact:v4];
  v8 = [v4 phoneNumbers];
  v9 = [v8 firstObject];
  v10 = [v9 value];

  v11 = *MEMORY[0x1E6996570];
  v12 = (*MEMORY[0x1E6996570] + 16);
  v13 = (*v12)(*MEMORY[0x1E6996570], v6);
  v14 = (*v12)(v11, v7);
  if ((v13 & 1) == 0 && (v14 & 1) == 0 && !v10)
  {
    v15 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CNMailToGroup mailingAddressForContact:];
    }

    goto LABEL_7;
  }

  if ((v13 & v14) == 1)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v6, v7];
LABEL_12:
    v18 = v17;
    v19 = [(CNMailToGroup *)self santizeMailingAddress:v17];
LABEL_13:
    v16 = v19;

    goto LABEL_14;
  }

  if (v14)
  {
    v17 = v7;
    goto LABEL_12;
  }

  if (v10)
  {
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  if (v21 == 1)
  {
    v22 = MEMORY[0x1E696AEC0];
    v18 = [v10 digits];
    v19 = [v22 stringWithFormat:@"%@ <%@>", v6, v18];
    goto LABEL_13;
  }

  if (v13)
  {
    v23 = v6;
  }

  else
  {
    if (!v10)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_14;
    }

    v23 = [v10 digits];
  }

  v16 = v23;
LABEL_14:

  return v16;
}

- (id)santizeMailingAddress:(id)a3
{
  v3 = a3;
  v4 = [(objc_class *)getECEmailAddressClass_0() emailAddressWithString:v3];
  v5 = [v4 emailAddressValue];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 displayName];
    v8 = [v7 emailAddressValue];

    if (v8 && ([v8 stringValue], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "simpleAddress"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
    {
      v12 = [v6 simpleAddress];
    }

    else
    {
      v12 = [v6 stringValue];
    }

    v13 = v12;
  }

  else
  {
    v13 = [v4 stringValue];
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v15 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CNMailToGroup santizeMailingAddress:];
    }
  }

  return v13;
}

+ (id)bestGuessEmailAddressForContact:(id)a3 sendingAddressDomain:(id)a4
{
  v5 = a4;
  v6 = [a3 emailAddresses];
  v7 = +[CNLabeledValue Value];
  v8 = [v6 _cn_map:v7];
  v9 = [v8 _cn_filter:*MEMORY[0x1E6996570]];

  v10 = [objc_opt_class() bestGuessEmailAddressForAddresses:v9 sendingAddressDomain:v5 alreadyDuetRanked:0];

  return v10;
}

+ (id)bestGuessEmailAddressForAddresses:(id)a3 sendingAddressDomain:(id)a4 alreadyDuetRanked:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [objc_opt_class() queryForEmailAddresses:v7];
  if (v9)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v10 = getCRRecentContactsLibraryClass_softClass_1;
    v26 = getCRRecentContactsLibraryClass_softClass_1;
    if (!getCRRecentContactsLibraryClass_softClass_1)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __getCRRecentContactsLibraryClass_block_invoke_1;
      v22[3] = &unk_1E7412110;
      v22[4] = &v23;
      __getCRRecentContactsLibraryClass_block_invoke_1(v22);
      v10 = v24[3];
    }

    v11 = v10;
    _Block_object_dispose(&v23, 8);
    v12 = [v10 defaultInstance];
    v21 = 0;
    v13 = [v12 recentContactsForQuery:v9 error:&v21];
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      goto LABEL_5;
    }

    if (v5)
    {
      v16 = [v7 firstObject];
      v15 = 0;
    }

    else
    {
      v17 = [v13 firstObject];
      v15 = [v17 address];

      v16 = v15;
      if (!v15)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    goto LABEL_13;
  }

LABEL_6:
  if (!(*(*MEMORY[0x1E6996570] + 16))() || (v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = __90__CNMailToGroup_bestGuessEmailAddressForAddresses_sendingAddressDomain_alreadyDuetRanked___block_invoke, v19[3] = &unk_1E7412440, v20 = v8, [v7 _cn_firstObjectPassingTest:v19], v14 = objc_claimAutoreleasedReturnValue(), v20, v15 = v14, (v16 = v15) == 0))
  {
    v15 = [v7 firstObject];
    v16 = v15;
  }

LABEL_13:

  return v16;
}

+ (id)queryForEmailAddresses:(id)a3
{
  v35[2] = *MEMORY[0x1E69E9840];
  v28 = a3;
  v3 = objc_alloc_init(getCRSearchQueryClass_0());
  CRSearchPredicateClass_0 = getCRSearchPredicateClass_0();
  v5 = getCRSearchPredicateClass_0();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v6 = getCRRecentContactKeyKindSymbolLoc_ptr_0;
  v32 = getCRRecentContactKeyKindSymbolLoc_ptr_0;
  if (!getCRRecentContactKeyKindSymbolLoc_ptr_0)
  {
    v7 = CoreRecentsLibrary_2();
    v30[3] = dlsym(v7, "CRRecentContactKeyKind");
    getCRRecentContactKeyKindSymbolLoc_ptr_0 = v30[3];
    v6 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = *v6;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v9 = getCRAddressKindEmailSymbolLoc_ptr_1;
  v32 = getCRAddressKindEmailSymbolLoc_ptr_1;
  if (!getCRAddressKindEmailSymbolLoc_ptr_1)
  {
    v10 = CoreRecentsLibrary_2();
    v30[3] = dlsym(v10, "CRAddressKindEmail");
    getCRAddressKindEmailSymbolLoc_ptr_1 = v30[3];
    v9 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v9)
  {
    goto LABEL_16;
  }

  v11 = *v9;
  v34 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
  v13 = [v5 predicateForKey:v8 inCollection:v12];
  v35[0] = v13;
  v14 = getCRSearchPredicateClass_0();
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v15 = getCRRecentContactKeyAddressSymbolLoc_ptr_1;
  v32 = getCRRecentContactKeyAddressSymbolLoc_ptr_1;
  if (!getCRRecentContactKeyAddressSymbolLoc_ptr_1)
  {
    v16 = CoreRecentsLibrary_2();
    v30[3] = dlsym(v16, "CRRecentContactKeyAddress");
    getCRRecentContactKeyAddressSymbolLoc_ptr_1 = v30[3];
    v15 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v15)
  {
    goto LABEL_16;
  }

  v17 = *v15;
  v18 = [v14 predicateForKey:v17 inCollection:v28];
  v35[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v20 = [CRSearchPredicateClass_0 predicateSatisfyingAllSubpredicates:v19];
  [v3 setSearchPredicate:v20];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v21 = getCRRecentsDomainMailSymbolLoc_ptr_0;
  v32 = getCRRecentsDomainMailSymbolLoc_ptr_0;
  if (!getCRRecentsDomainMailSymbolLoc_ptr_0)
  {
    v22 = CoreRecentsLibrary_2();
    v30[3] = dlsym(v22, "CRRecentsDomainMail");
    getCRRecentsDomainMailSymbolLoc_ptr_0 = v30[3];
    v21 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v21)
  {
LABEL_16:
    getMDItemUniqueIdentifier_cold_1();
    __break(1u);
  }

  v33 = *v21;
  v23 = MEMORY[0x1E695DEC8];
  v24 = v33;
  v25 = [v23 arrayWithObjects:&v33 count:1];

  [v3 setDomains:v25];
  v26 = [getCRSearchQueryClass_0() frecencyComparator];
  [v3 setComparator:v26];

  return v3;
}

@end