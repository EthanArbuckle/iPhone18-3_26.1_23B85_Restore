@interface CNAssistantCommandSearchPerson
- (CNContactStore)contactStore;
- (id)meContact:(id *)a3;
- (id)perform;
- (id)searchByName:(id *)a3;
- (id)searchLocal:(id *)a3;
- (id)searchRemote:(id *)a3;
- (id)validate;
- (void)performWithCompletion:(id)a3;
@end

@implementation CNAssistantCommandSearchPerson

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_validate(self, v5, v6);
  if (!v7)
  {
    v7 = objc_msgSend_perform(self, v8, v9);
  }

  v11 = v7;
  v10 = objc_msgSend_dictionary(v7, v8, v9);
  v4[2](v4, v10);
}

- (id)validate
{
  v4 = objc_msgSend_scope(self, a2, v2);
  v5 = *MEMORY[0x277D47BB0];
  if (objc_msgSend_isEqualToString_(v4, v6, *MEMORY[0x277D47BB0]))
  {
  }

  else
  {
    v11 = objc_msgSend_scope(self, v7, v8);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x277D47BB8]);

    if ((isEqualToString & 1) == 0)
    {
      v25 = objc_alloc(MEMORY[0x277D47208]);
      v19 = objc_msgSend_initWithReason_(v25, v26, @"Expected scope to be local or remote");
      goto LABEL_9;
    }
  }

  v14 = objc_msgSend_birthday(self, v9, v10);

  if (v14)
  {
    v17 = objc_alloc(MEMORY[0x277D47208]);
    v19 = objc_msgSend_initWithReason_(v17, v18, @"Birthday not supported");
    goto LABEL_9;
  }

  v20 = objc_msgSend_relationship(self, v15, v16);

  if (v20)
  {
    v23 = objc_alloc(MEMORY[0x277D47208]);
    v19 = objc_msgSend_initWithReason_(v23, v24, @"Relationship not supported");
    goto LABEL_9;
  }

  v28 = objc_msgSend_me(self, v21, v22);

  v31 = objc_msgSend_name(self, v29, v30);

  if (v28)
  {
    v34 = 2;
  }

  else
  {
    v34 = 1;
  }

  if (v31)
  {
    v35 = v34;
  }

  else
  {
    v35 = v28 != 0;
  }

  v36 = objc_msgSend_email(self, v32, v33);

  if (v36)
  {
    ++v35;
  }

  v39 = objc_msgSend_phone(self, v37, v38);

  if (v39)
  {
    ++v35;
  }

  v42 = objc_msgSend_company(self, v40, v41);

  if (v42)
  {
    ++v35;
  }

  v45 = objc_msgSend_address(self, v43, v44);

  if (v45)
  {
    v48 = v35 + 1;
  }

  else
  {
    v48 = v35;
  }

  if (v48 == 1)
  {
    v51 = objc_msgSend_scope(self, v46, v47);
    v53 = objc_msgSend_isEqualToString_(v51, v52, v5);

    if (v53)
    {
      v56 = objc_msgSend_accountIdentifier(self, v54, v55);
      if (v56)
      {
        v57 = v56;
        v58 = objc_msgSend_name(self, v54, v55);

        if (!v58)
        {
          v71 = objc_alloc(MEMORY[0x277D47208]);
          v19 = objc_msgSend_initWithReason_(v71, v72, @"Only support local search with an accountIdentifier for name");
          goto LABEL_9;
        }
      }
    }

    v59 = objc_msgSend_scope(self, v54, v55);
    v61 = objc_msgSend_isEqualToString_(v59, v60, *MEMORY[0x277D47BB8]);

    if (v61)
    {
      v64 = objc_msgSend_name(self, v62, v63);
      if (v64 || (objc_msgSend_email(self, v65, v66), (v64 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v73 = objc_msgSend_company(self, v67, v68);

        if (!v73)
        {
          v74 = objc_alloc(MEMORY[0x277D47208]);
          v19 = objc_msgSend_initWithReason_(v74, v75, @"Only support remote search for name, email or company");
          goto LABEL_9;
        }
      }
    }

    v19 = 0;
    goto LABEL_9;
  }

  if (v48)
  {
    v69 = objc_alloc(MEMORY[0x277D47208]);
    v19 = objc_msgSend_initWithReason_(v69, v70, @"Only support single parameter searching (me, name, email, phone, company or address)");
  }

  else
  {
    v49 = objc_alloc(MEMORY[0x277D47208]);
    v19 = objc_msgSend_initWithReason_(v49, v50, @"No search parameter specified (me, name, email, phone, company or address)");
  }

LABEL_9:

  return v19;
}

- (id)perform
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_me(self, a2, v2);
  v7 = objc_msgSend_BOOLValue(v4, v5, v6);

  if (v7)
  {
    v37 = 0;
    v10 = objc_msgSend_meContact_(self, v8, &v37);
    v11 = v37;
    v14 = v11;
    if (v10)
    {
      v38[0] = v10;
      v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v38, 1);
    }

    else
    {
      if (objc_msgSend_code(v11, v12, v13) == 200)
      {

        v14 = 0;
      }

      v15 = MEMORY[0x277CBEBF8];
    }

    if (v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = objc_msgSend_scope(self, v8, v9);
    isEqualToString = objc_msgSend_isEqualToString_(v16, v17, *MEMORY[0x277D47BB0]);

    if (isEqualToString)
    {
      v36 = 0;
      v15 = objc_msgSend_searchLocal_(self, v19, &v36);
      v21 = v36;
    }

    else
    {
      v22 = objc_msgSend_scope(self, v19, v20);
      v24 = objc_msgSend_isEqualToString_(v22, v23, *MEMORY[0x277D47BB8]);

      if (!v24)
      {
        v15 = MEMORY[0x277CBEBF8];
        goto LABEL_16;
      }

      v35 = 0;
      v15 = objc_msgSend_searchRemote_(self, v25, &v35);
      v21 = v35;
    }

    v14 = v21;
    if (v14)
    {
LABEL_14:
      v26 = objc_alloc(MEMORY[0x277D47208]);
      v28 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v27, @"Search error: %@", v14);
      v30 = objc_msgSend_initWithReason_(v26, v29, v28);

      goto LABEL_17;
    }
  }

LABEL_16:
  v31 = objc_alloc(MEMORY[0x277D47100]);
  v30 = objc_msgSend_initWithResults_(v31, v32, v15);
LABEL_17:

  v33 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)meContact:(id *)a3
{
  v4 = objc_msgSend_contactStore(self, a2, a3);
  v7 = objc_msgSend_descriptorsForRequiredKeys(MEMORY[0x277CFBC48], v5, v6);
  v10 = objc_msgSend__crossPlatformUnifiedMeContactWithKeysToFetch_error_(v4, v8, v7, a3);
  if (*a3)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_msgSend_personFromContact_(MEMORY[0x277CFBC48], v9, v10);
  }

  return v11;
}

- (id)searchByName:(id *)a3
{
  v5 = objc_msgSend_name(self, a2, a3);

  if (v5)
  {
    v8 = objc_msgSend_contactStore(self, v6, v7);
    v11 = objc_msgSend_descriptorsForRequiredKeys(MEMORY[0x277CFBC48], v9, v10);
    v12 = MEMORY[0x277CBDA58];
    v15 = objc_msgSend_name(self, v13, v14);
    v17 = objc_msgSend_predicateForContactsMatchingName_options_(v12, v16, v15, 1);

    v21 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v8, v18, v17, v11, a3);
    if (*a3)
    {
      v22 = 0;
    }

    else
    {
      v23 = MEMORY[0x277CBDA58];
      v24 = objc_msgSend_name(self, v19, v20);
      v26 = objc_msgSend_predicateForContactsWithOrganizationName_(v23, v25, v24);

      v28 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v8, v27, v26, v11, a3);
      v30 = v28;
      if (*a3)
      {
        v22 = 0;
      }

      else
      {
        v31 = objc_msgSend_filterUsingBlock_(v28, v29, &unk_2848D1038);

        v22 = objc_msgSend_arrayByAddingObjectsFromArray_(v21, v32, v31);
        v30 = v31;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)searchLocal:(id *)a3
{
  v5 = objc_msgSend_name(self, a2, a3);

  if (v5)
  {
    v10 = objc_msgSend_searchByName_(self, v6, a3);
    v11 = 0;
    goto LABEL_9;
  }

  v12 = objc_msgSend_email(self, v6, v7);

  if (v12)
  {
    v15 = MEMORY[0x277CBDA58];
    v16 = objc_msgSend_email(self, v13, v14);
    v19 = objc_msgSend_emailAddress(v16, v17, v18);
    v11 = objc_msgSend_predicateForContactsMatchingEmailAddress_(v15, v20, v19);
  }

  else
  {
    v21 = objc_msgSend_phone(self, v13, v14);

    if (v21)
    {
      v24 = MEMORY[0x277CBDB70];
      v25 = objc_msgSend_phone(self, v22, v23);
      v28 = objc_msgSend_number(v25, v26, v27);
      v30 = objc_msgSend_phoneNumberWithStringValue_(v24, v29, v28);

      v11 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(MEMORY[0x277CBDA58], v31, v30);

      goto LABEL_8;
    }

    v41 = objc_msgSend_company(self, v22, v23);

    if (v41)
    {
      v44 = MEMORY[0x277CBDA58];
      v16 = objc_msgSend_company(self, v42, v43);
      v46 = objc_msgSend_predicateForContactsWithOrganizationName_(v44, v45, v16);
    }

    else
    {
      v11 = objc_msgSend_address(self, v42, v43);

      if (!v11)
      {
        goto LABEL_8;
      }

      v16 = objc_opt_new();
      v49 = objc_msgSend_address(self, v47, v48);
      v52 = objc_msgSend_street(v49, v50, v51);
      objc_msgSend_setStreet_(v16, v53, v52);

      v56 = objc_msgSend_address(self, v54, v55);
      v59 = objc_msgSend_city(v56, v57, v58);
      objc_msgSend_setCity_(v16, v60, v59);

      v63 = objc_msgSend_address(self, v61, v62);
      v66 = objc_msgSend_stateCode(v63, v64, v65);
      objc_msgSend_setState_(v16, v67, v66);

      v70 = objc_msgSend_address(self, v68, v69);
      v73 = objc_msgSend_postalCode(v70, v71, v72);
      objc_msgSend_setPostalCode_(v16, v74, v73);

      v77 = objc_msgSend_address(self, v75, v76);
      v80 = objc_msgSend_countryCode(v77, v78, v79);
      objc_msgSend_setISOCountryCode_(v16, v81, v80);

      v46 = objc_msgSend_predicateForContactsMatchingPostalAddress_(MEMORY[0x277CBDA58], v82, v16);
    }

    v11 = v46;
  }

LABEL_8:
  v10 = 0;
LABEL_9:
  if (*a3)
  {
    v32 = 0;
  }

  else
  {
    v35 = objc_msgSend_contactStore(self, v8, v9);
    if (v11)
    {
      v36 = objc_msgSend_descriptorsForRequiredKeys(MEMORY[0x277CFBC48], v33, v34);
      v38 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v35, v37, v11, v36, a3);

      v10 = v38;
    }

    if (v10)
    {
      v32 = objc_msgSend_mapUsingBlock_(v10, v33, &unk_2848D1058);
      objc_msgSend_markMeContactInPeople_usingStore_(MEMORY[0x277CFBC48], v39, v32, v35);
    }

    else
    {
      v32 = 0;
    }
  }

  return v32;
}

- (id)searchRemote:(id *)a3
{
  v5 = objc_msgSend_name(self, a2, a3);

  if (v5)
  {
    v8 = objc_msgSend_name(self, v6, v7);
LABEL_3:
    v11 = v8;
    goto LABEL_6;
  }

  v12 = objc_msgSend_email(self, v6, v7);

  if (v12)
  {
    v15 = objc_msgSend_email(self, v13, v14);
    v11 = objc_msgSend_emailAddress(v15, v16, v17);
  }

  else
  {
    v11 = objc_msgSend_company(self, v13, v14);

    if (v11)
    {
      v8 = objc_msgSend_company(self, v9, v10);
      goto LABEL_3;
    }
  }

LABEL_6:
  v18 = objc_msgSend_contactStore(self, v9, v10);
  v21 = objc_msgSend_accountIdentifier(self, v19, v20);

  if (v21)
  {
    v24 = MEMORY[0x277CBDAD8];
    v25 = objc_msgSend_accountIdentifier(self, v22, v23);
    v28 = objc_msgSend_absoluteString(v25, v26, v27);
    v30 = objc_msgSend_predicateForContainersInAccountWithIdentifier_(v24, v29, v28);

    v32 = objc_msgSend_containersMatchingPredicate_error_(v18, v31, v30, a3);
    v34 = v32;
    if (*a3)
    {
LABEL_12:
      v43 = 0;
      goto LABEL_13;
    }

    v35 = objc_msgSend_mapUsingBlock_(v32, v33, &unk_2848D1078);

    v30 = v35;
    if (!v11)
    {
LABEL_9:
      v34 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v30 = 0;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v36 = objc_msgSend_predicateForContactsMatchingFullTextSearch_containerIdentifiers_groupIdentifiers_(MEMORY[0x277CBDA58], v22, v11, v30, 0);
  v39 = objc_msgSend_descriptorsForRequiredKeys(MEMORY[0x277CFBC48], v37, v38);
  v34 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v18, v40, v36, v39, a3);
  v41 = *a3;

  if (v41 || !v34)
  {
    goto LABEL_12;
  }

  v43 = objc_msgSend_mapUsingBlock_(v34, v42, &unk_2848D1098);
LABEL_13:

  return v43;
}

@end