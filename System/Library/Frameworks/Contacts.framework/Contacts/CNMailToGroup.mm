@interface CNMailToGroup
+ (id)bestGuessEmailAddressForAddresses:(id)addresses sendingAddressDomain:(id)domain alreadyDuetRanked:(BOOL)ranked;
+ (id)bestGuessEmailAddressForContact:(id)contact sendingAddressDomain:(id)domain;
+ (id)descriptorForRequiredKeys;
+ (id)os_log;
+ (id)queryForEmailAddresses:(id)addresses;
- (CNMailToGroup)init;
- (id)bestGuessEmailAddressForContact:(id)contact;
- (id)mailUrlForContacts:(id)contacts needsEmailAddresses:(BOOL)addresses;
- (id)mailUrlForMailingAddresses:(id)addresses;
- (id)mailUrlWithEmailAddressesForContacts:(id)contacts;
- (id)mailingAddressForContact:(id)contact;
- (id)mailingAddressWithEmailForContact:(id)contact;
- (id)santizeMailingAddress:(id)address;
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

  v5 = [self description];
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

- (id)mailUrlWithEmailAddressesForContacts:(id)contacts
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CNMailToGroup_mailUrlWithEmailAddressesForContacts___block_invoke;
  v7[3] = &unk_1E7412EB0;
  v7[4] = self;
  v4 = [contacts _cn_compactMap:v7];
  v5 = [(CNMailToGroup *)self mailUrlForMailingAddresses:v4];

  return v5;
}

- (id)mailUrlForContacts:(id)contacts needsEmailAddresses:(BOOL)addresses
{
  addressesCopy = addresses;
  contactsCopy = contacts;
  if (addressesCopy && ![(CNMailToGroup *)self allContactsHaveEmailAddress:contactsCopy])
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
    v7 = [contactsCopy _cn_compactMap:v10];
    v8 = [(CNMailToGroup *)self mailUrlForMailingAddresses:v7];
  }

  return v8;
}

- (id)mailUrlForMailingAddresses:(id)addresses
{
  addressesCopy = addresses;
  if ([addressesCopy count])
  {
    v4 = [MEMORY[0x1E696AD60] stringWithString:@"mailto:"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __44__CNMailToGroup_mailUrlForMailingAddresses___block_invoke;
    v10[3] = &unk_1E74139A8;
    v11 = v4;
    os_log = v4;
    [addressesCopy enumerateObjectsUsingBlock:v10];
    _cn_stringByAddingPercentEscapesToEntireURL = [os_log _cn_stringByAddingPercentEscapesToEntireURL];
    v7 = [MEMORY[0x1E696AF20] componentsWithString:_cn_stringByAddingPercentEscapesToEntireURL];
    v8 = [v7 URL];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
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

- (id)bestGuessEmailAddressForContact:(id)contact
{
  contactCopy = contact;
  v4 = [objc_opt_class() bestGuessEmailAddressForContact:contactCopy];

  return v4;
}

- (id)mailingAddressWithEmailForContact:(id)contact
{
  v16 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v5 = [(CNMailToGroup *)self bestGuessEmailAddressForContact:contactCopy];
  v6 = *MEMORY[0x1E6996570];
  if ((*(*MEMORY[0x1E6996570] + 16))(*MEMORY[0x1E6996570], v5))
  {
    v7 = v5;
    contactFormatter = [(CNMailToGroup *)self contactFormatter];
    v9 = [contactFormatter stringFromContact:contactCopy];

    if ((*(v6 + 16))(v6, v9))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v9, v7];

      v7 = v10;
    }

    v11 = [(CNMailToGroup *)self santizeMailingAddress:v7];
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = contactCopy;
      _os_log_impl(&dword_1954A0000, os_log, OS_LOG_TYPE_INFO, "Contact has no e-mail so will not be included: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (id)mailingAddressForContact:(id)contact
{
  contactCopy = contact;
  contactFormatter = [(CNMailToGroup *)self contactFormatter];
  v6 = [contactFormatter stringFromContact:contactCopy];

  v7 = [(CNMailToGroup *)self bestGuessEmailAddressForContact:contactCopy];
  phoneNumbers = [contactCopy phoneNumbers];
  firstObject = [phoneNumbers firstObject];
  value = [firstObject value];

  v11 = *MEMORY[0x1E6996570];
  v12 = (*MEMORY[0x1E6996570] + 16);
  v13 = (*v12)(*MEMORY[0x1E6996570], v6);
  v14 = (*v12)(v11, v7);
  if ((v13 & 1) == 0 && (v14 & 1) == 0 && !value)
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNMailToGroup mailingAddressForContact:];
    }

    goto LABEL_7;
  }

  if ((v13 & v14) == 1)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ <%@>", v6, v7];
LABEL_12:
    digits = v17;
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

  if (value)
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
    digits = [value digits];
    v19 = [v22 stringWithFormat:@"%@ <%@>", v6, digits];
    goto LABEL_13;
  }

  if (v13)
  {
    digits2 = v6;
  }

  else
  {
    if (!value)
    {
LABEL_7:
      v16 = 0;
      goto LABEL_14;
    }

    digits2 = [value digits];
  }

  v16 = digits2;
LABEL_14:

  return v16;
}

- (id)santizeMailingAddress:(id)address
{
  addressCopy = address;
  v4 = [(objc_class *)getECEmailAddressClass_0() emailAddressWithString:addressCopy];
  emailAddressValue = [v4 emailAddressValue];
  v6 = emailAddressValue;
  if (emailAddressValue)
  {
    displayName = [emailAddressValue displayName];
    emailAddressValue2 = [displayName emailAddressValue];

    if (emailAddressValue2 && ([emailAddressValue2 stringValue], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "simpleAddress"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, (v11 & 1) == 0))
    {
      simpleAddress = [v6 simpleAddress];
    }

    else
    {
      simpleAddress = [v6 stringValue];
    }

    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [v4 stringValue];
  }

  if (stringValue)
  {
    v14 = stringValue;
  }

  else
  {
    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      [CNMailToGroup santizeMailingAddress:];
    }
  }

  return stringValue;
}

+ (id)bestGuessEmailAddressForContact:(id)contact sendingAddressDomain:(id)domain
{
  domainCopy = domain;
  emailAddresses = [contact emailAddresses];
  v7 = +[CNLabeledValue Value];
  v8 = [emailAddresses _cn_map:v7];
  v9 = [v8 _cn_filter:*MEMORY[0x1E6996570]];

  v10 = [objc_opt_class() bestGuessEmailAddressForAddresses:v9 sendingAddressDomain:domainCopy alreadyDuetRanked:0];

  return v10;
}

+ (id)bestGuessEmailAddressForAddresses:(id)addresses sendingAddressDomain:(id)domain alreadyDuetRanked:(BOOL)ranked
{
  rankedCopy = ranked;
  addressesCopy = addresses;
  domainCopy = domain;
  v9 = [objc_opt_class() queryForEmailAddresses:addressesCopy];
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
    defaultInstance = [v10 defaultInstance];
    v21 = 0;
    v13 = [defaultInstance recentContactsForQuery:v9 error:&v21];
    if ((*(*MEMORY[0x1E6996530] + 16))())
    {
      goto LABEL_5;
    }

    if (rankedCopy)
    {
      firstObject = [addressesCopy firstObject];
      address = 0;
    }

    else
    {
      firstObject2 = [v13 firstObject];
      address = [firstObject2 address];

      firstObject = address;
      if (!address)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    goto LABEL_13;
  }

LABEL_6:
  if (!(*(*MEMORY[0x1E6996570] + 16))() || (v19[0] = MEMORY[0x1E69E9820], v19[1] = 3221225472, v19[2] = __90__CNMailToGroup_bestGuessEmailAddressForAddresses_sendingAddressDomain_alreadyDuetRanked___block_invoke, v19[3] = &unk_1E7412440, v20 = domainCopy, [addressesCopy _cn_firstObjectPassingTest:v19], v14 = objc_claimAutoreleasedReturnValue(), v20, address = v14, (firstObject = address) == 0))
  {
    address = [addressesCopy firstObject];
    firstObject = address;
  }

LABEL_13:

  return firstObject;
}

+ (id)queryForEmailAddresses:(id)addresses
{
  v35[2] = *MEMORY[0x1E69E9840];
  addressesCopy = addresses;
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
  v18 = [v14 predicateForKey:v17 inCollection:addressesCopy];
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
  frecencyComparator = [getCRSearchQueryClass_0() frecencyComparator];
  [v3 setComparator:frecencyComparator];

  return v3;
}

@end