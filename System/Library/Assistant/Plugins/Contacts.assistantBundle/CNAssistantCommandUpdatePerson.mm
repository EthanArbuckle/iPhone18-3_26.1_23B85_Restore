@interface CNAssistantCommandUpdatePerson
- (CNContactStore)contactStore;
- (id)addToUpdatesCache;
- (id)validate;
- (void)performWithCompletion:(id)a3;
@end

@implementation CNAssistantCommandUpdatePerson

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
    v7 = objc_msgSend_addToUpdatesCache(self, v8, v9);
  }

  v11 = v7;
  v10 = objc_msgSend_dictionary(v7, v8, v9);
  v4[2](v4, v10);
}

- (id)validate
{
  v53[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_identifier(self, a2, v2);

  if (!v4)
  {
    v34 = objc_alloc(MEMORY[0x277D47208]);
    v36 = objc_msgSend_initWithReason_(v34, v35, @"Expected identifier to be set");
    goto LABEL_30;
  }

  v7 = objc_msgSend_identifier(self, v5, v6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = objc_msgSend_identifier(v7, v8, v9);
    v13 = objc_msgSend_absoluteString(v10, v11, v12);

    if (!v13)
    {
      v39 = objc_alloc(MEMORY[0x277D47208]);
      v36 = objc_msgSend_initWithReason_(v39, v40, @"Invalid person identifier");
LABEL_28:

      goto LABEL_29;
    }

    v16 = MEMORY[0x277CFBC50];
    v17 = objc_msgSend_identifier(v7, v14, v15);
    v19 = objc_msgSend_contactIDFromAssistantID_(v16, v18, v17);

    if (!v19)
    {
      v41 = objc_alloc(MEMORY[0x277D47208]);
      v36 = objc_msgSend_initWithReason_(v41, v42, @"Invalid person identifier (person does not exist)");
LABEL_27:

      goto LABEL_28;
    }

    v22 = objc_msgSend_contactStore(self, v20, v21);
    v53[0] = *MEMORY[0x277CBD160];
    v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v23, v53, 1);
    v26 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v22, v25, v19, v24, 0);

    if (!v26)
    {
      v33 = @"Invalid person identifier (person does not exist)";
      goto LABEL_24;
    }

    v29 = objc_msgSend_setFields(self, v27, v28);

    if (v29)
    {
      v32 = objc_msgSend_setFields(self, v30, v31);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = @"Expected SAABPerson for setFields";
        v7 = v32;
        goto LABEL_24;
      }
    }

    else
    {
      v32 = v7;
    }

    v43 = objc_msgSend_addFields(self, v30, v31);

    if (v43)
    {
      v7 = objc_msgSend_addFields(self, v44, v45);

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v33 = @"Expected SAABPerson for addFields";
        goto LABEL_24;
      }

      v32 = v7;
    }

    v46 = objc_msgSend_removeFields(self, v44, v45);

    if (!v46)
    {
      v36 = 0;
LABEL_26:

      v7 = v32;
      goto LABEL_27;
    }

    v7 = objc_msgSend_removeFields(self, v47, v48);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = 0;
LABEL_25:
      v32 = v7;
      goto LABEL_26;
    }

    v33 = @"Expected SAABPerson for removeFields";
LABEL_24:
    v49 = objc_alloc(MEMORY[0x277D47208]);
    v36 = objc_msgSend_initWithReason_(v49, v50, v33);
    goto LABEL_25;
  }

  v37 = objc_alloc(MEMORY[0x277D47208]);
  v36 = objc_msgSend_initWithReason_(v37, v38, @"Expected SAABPerson for identifier");
LABEL_29:

LABEL_30:
  v51 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)addToUpdatesCache
{
  v23.receiver = self;
  v23.super_class = CNAssistantCommandUpdatePerson;
  v3 = [(CNAssistantCommandUpdatePerson *)&v23 dictionary];
  v6 = objc_msgSend_identifier(self, v4, v5);
  v9 = objc_msgSend_identifier(v6, v7, v8);
  v11 = objc_msgSend_addUpdate_forAssistantUrl_(CNAssistantCache, v10, v3, v9);

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277D472C8]);
    v15 = objc_msgSend_identifier(self, v13, v14);
    v18 = objc_msgSend_identifier(v15, v16, v17);
    objc_msgSend_setIdentifier_(v12, v19, v18);
  }

  else
  {
    v20 = objc_alloc(MEMORY[0x277D47208]);
    v12 = objc_msgSend_initWithReason_(v20, v21, @"Failed to cache the update");
  }

  return v12;
}

@end