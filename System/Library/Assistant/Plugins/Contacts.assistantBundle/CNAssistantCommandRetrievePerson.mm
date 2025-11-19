@interface CNAssistantCommandRetrievePerson
- (CNContactStore)contactStore;
- (id)retrieve;
- (void)performWithCompletion:(id)a3;
@end

@implementation CNAssistantCommandRetrievePerson

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
  v10 = objc_msgSend_retrieve(self, v5, v6);
  v9 = objc_msgSend_dictionary(v10, v7, v8);
  v4[2](v4, v9);
}

- (id)retrieve
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifiers(self, a2, v2);

  if (v4)
  {
    v56 = objc_msgSend_array(MEMORY[0x277CBEB18], v5, v6);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v9 = objc_msgSend_identifiers(self, v7, v8);
    v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v58, v62, 16);
    if (v11)
    {
      v12 = v11;
      v13 = *v59;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v59 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v58 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v18 = objc_msgSend_internalGUID(v15, v16, v17);

        if (v18)
        {
          v23 = objc_msgSend_internalGUID(v15, v19, v20);
          if (!v23)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v24 = MEMORY[0x277CFBC50];
          v25 = objc_msgSend_identifier(v15, v19, v20);
          v23 = objc_msgSend_contactIDFromAssistantID_(v24, v26, v25);

          if (!v23)
          {
LABEL_22:
            v49 = @"Invalid person identifier";
            goto LABEL_23;
          }
        }

        v27 = objc_msgSend_descriptorsForRequiredKeys(MEMORY[0x277CFBC48], v21, v22);
        v30 = objc_msgSend_contactStore(self, v28, v29);
        v57 = 0;
        v32 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v30, v31, v23, v27, &v57);

        if (v32)
        {
          objc_msgSend_addObject_(v56, v33, v32);
        }

        else
        {
          v34 = objc_alloc(MEMORY[0x277D47208]);
          v55 = objc_msgSend_initWithReason_(v34, v35, @"Invalid person identifier (person does not exist)");
        }

        if (!v32)
        {
          v48 = v55;
          v37 = v56;
          goto LABEL_27;
        }

        if (v12 == ++v14)
        {
          v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v36, &v58, v62, 16);
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v49 = @"Expected SAABPerson for identifier";
LABEL_23:
      v50 = objc_alloc(MEMORY[0x277D47208]);
      v48 = objc_msgSend_initWithReason_(v50, v51, v49);

      v37 = v56;
      goto LABEL_27;
    }

LABEL_18:

    v37 = v56;
    if (objc_msgSend_count(v56, v38, v39))
    {
      v9 = objc_msgSend_mapUsingBlock_(v56, v40, &unk_2848D10B8);
      v41 = MEMORY[0x277CFBC48];
      v44 = objc_msgSend_contactStore(self, v42, v43);
      objc_msgSend_markMeContactInPeople_usingStore_(v41, v45, v9, v44);
    }

    else
    {
      v9 = 0;
    }

    v48 = objc_alloc_init(MEMORY[0x277D472B8]);
    objc_msgSend_setObjects_(v48, v52, v9);
LABEL_27:
  }

  else
  {
    v46 = objc_alloc(MEMORY[0x277D47208]);
    v48 = objc_msgSend_initWithReason_(v46, v47, @"Expected identifiers to be set");
  }

  v53 = *MEMORY[0x277D85DE8];

  return v48;
}

@end