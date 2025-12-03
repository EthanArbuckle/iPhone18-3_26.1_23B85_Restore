@interface CNAssistantCommandCancelPerson
- (CNContactStore)contactStore;
- (id)removeUpdatesFromCache;
- (id)validate;
- (void)performWithCompletion:(id)completion;
@end

@implementation CNAssistantCommandCancelPerson

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
    v7 = objc_msgSend_removeUpdatesFromCache(self, v8, v9);
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

- (id)removeUpdatesFromCache
{
  v3 = objc_msgSend_identifier(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  if ((objc_msgSend_removeUpdatesForAssistantUrl_(CNAssistantCache, v7, v6) & 1) == 0)
  {
    v8 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      sub_2334C2E90(v8, v6);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277D472A0]);

  return v9;
}

@end