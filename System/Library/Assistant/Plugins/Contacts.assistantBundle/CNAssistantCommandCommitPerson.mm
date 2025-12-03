@interface CNAssistantCommandCommitPerson
- (CNContactStore)contactStore;
- (id)commitFromUpdatesCache;
- (id)validate;
- (void)performWithCompletion:(id)completion;
@end

@implementation CNAssistantCommandCommitPerson

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

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_validate(self, v5, v6);
  if (!v7)
  {
    v7 = objc_msgSend_commitFromUpdatesCache(self, v8, v9);
  }

  v11 = v7;
  v10 = objc_msgSend_dictionary(v7, v8, v9);
  completionCopy[2](completionCopy, v10);
}

- (id)validate
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifier(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_identifier(self, v5, v6);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = objc_msgSend_identifier(v7, v8, v9);
      v13 = objc_msgSend_absoluteString(v10, v11, v12);

      if (v13)
      {
        v16 = MEMORY[0x277CFBC50];
        v17 = objc_msgSend_identifier(v7, v14, v15);
        v19 = objc_msgSend_contactIDFromAssistantID_(v16, v18, v17);

        if (v19)
        {
          v22 = objc_msgSend_contactStore(self, v20, v21);
          v40[0] = *MEMORY[0x277CBD160];
          v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v40, 1);
          v26 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v22, v25, v19, v24, 0);

          v27 = 0;
          if (!v26)
          {
            v28 = objc_alloc(MEMORY[0x277D47208]);
            v27 = objc_msgSend_initWithReason_(v28, v29, @"Invalid person identifier (person does not exist)");
          }
        }

        else
        {
          v36 = objc_alloc(MEMORY[0x277D47208]);
          v27 = objc_msgSend_initWithReason_(v36, v37, @"Invalid person identifier (person does not exist)");
        }
      }

      else
      {
        v34 = objc_alloc(MEMORY[0x277D47208]);
        v27 = objc_msgSend_initWithReason_(v34, v35, @"Invalid person identifier");
      }
    }

    else
    {
      v32 = objc_alloc(MEMORY[0x277D47208]);
      v27 = objc_msgSend_initWithReason_(v32, v33, @"Expected SAABPerson for identifier");
    }
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D47208]);
    v27 = objc_msgSend_initWithReason_(v30, v31, @"Expected identifier to be set");
  }

  v38 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)commitFromUpdatesCache
{
  v60 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifier(self, a2, v2);
  v7 = objc_msgSend_identifier(v4, v5, v6);
  v11 = objc_msgSend_updatesForAssistantUrl_(CNAssistantCache, v8, v7);
  if (!v11)
  {
    goto LABEL_11;
  }

  v53 = v4;
  v12 = objc_alloc_init(MEMORY[0x277CBDBA0]);
  v52 = v7;
  v14 = objc_msgSend_contactIDFromAssistantID_(MEMORY[0x277CFBC50], v13, v7);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v51 = v11;
  obj = v11;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v55, v59, 16);
  if (v16)
  {
    v17 = v16;
    v18 = *v56;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v56 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v55 + 1) + 8 * i);
        v21 = objc_alloc(MEMORY[0x277D472C0]);
        v23 = objc_msgSend_initWithDictionary_(v21, v22, v20);
        v24 = MEMORY[0x277CFBC48];
        v27 = objc_msgSend_contactStore(self, v25, v26);
        objc_msgSend_applyUpdate_toContactWithIdentifier_usingStore_saveRequest_(v24, v28, v23, v14, v27, v12);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v55, v59, 16);
    }

    while (v17);
  }

  v7 = v52;
  objc_msgSend_removeUpdatesForAssistantUrl_(CNAssistantCache, v30, v52);
  v33 = objc_msgSend_contactStore(self, v31, v32);
  v35 = objc_msgSend_executeSaveRequest_error_(v33, v34, v12, 0);

  v4 = v53;
  v11 = v51;
  if (v35)
  {
    v36 = objc_alloc_init(MEMORY[0x277D472A8]);
    v39 = objc_msgSend_identifier(self, v37, v38);
    v42 = objc_msgSend_identifier(v39, v40, v41);
    objc_msgSend_setIdentifier_(v36, v43, v42);
  }

  else
  {
LABEL_11:
    v44 = objc_msgSend_code(0, v9, v10, v51);
    v45 = *MEMORY[0x277D47BA0];
    v46 = objc_alloc(MEMORY[0x277D47208]);
    if (v44 == v45)
    {
      v48 = objc_msgSend_initWithErrorCode_(v46, v47, v44);
    }

    else
    {
      v48 = objc_msgSend_initWithReason_(v46, v47, @"Failed to update the AB person");
    }

    v36 = v48;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v36;
}

@end