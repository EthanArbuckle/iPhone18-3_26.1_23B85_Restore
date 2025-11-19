@interface CNAssistantCommandPunchOut
- (CNAssistantCommandPunchOut)punchOutWithServiceHelper:(id)a3;
- (CNContactStore)contactStore;
- (id)validate;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4;
@end

@implementation CNAssistantCommandPunchOut

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

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4
{
  v13 = a4;
  v6 = a3;
  v11 = objc_msgSend_validate(self, v7, v8);
  if (!v11)
  {
    v11 = objc_msgSend_punchOutWithServiceHelper_(self, v9, v13);
  }

  v12 = objc_msgSend_dictionary(v11, v9, v10);
  v6[2](v6, v12);
}

- (id)validate
{
  v4 = objc_msgSend_domainItem(self, a2, v2);

  if (!v4)
  {
    v28 = objc_alloc(MEMORY[0x277D47208]);
    v25 = objc_msgSend_initWithReason_(v28, v29, @"Expected domainItem to be set");
    goto LABEL_12;
  }

  v7 = objc_msgSend_domainItem(self, v5, v6);
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

      v22 = objc_msgSend_contactStore(self, v20, v21);
      v24 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v22, v23, v19, MEMORY[0x277CBEBF8], 0);

      v25 = 0;
      if (!v24)
      {
        v26 = objc_alloc(MEMORY[0x277D47208]);
        v25 = objc_msgSend_initWithReason_(v26, v27, @"Invalid person identifier (person does not exist)");
      }

      goto LABEL_11;
    }

    v33 = objc_alloc(MEMORY[0x277D47208]);
    v32 = objc_msgSend_initWithReason_(v33, v34, @"Invalid person identifier");
  }

  else
  {
    v30 = objc_alloc(MEMORY[0x277D47208]);
    v32 = objc_msgSend_initWithReason_(v30, v31, @"Expected SAABPerson for domainItem");
  }

  v25 = v32;
LABEL_11:

LABEL_12:

  return v25;
}

- (CNAssistantCommandPunchOut)punchOutWithServiceHelper:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_domainItem(self, v5, v6);
  v8 = MEMORY[0x277CFBC50];
  v11 = objc_msgSend_identifier(v7, v9, v10);
  v13 = objc_msgSend_contactIDFromAssistantID_(v8, v12, v11);

  v16 = objc_msgSend_contactStore(self, v14, v15);
  v18 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v16, v17, v13, MEMORY[0x277CBEBF8], 0);

  if (!v18)
  {
    goto LABEL_4;
  }

  v21 = MEMORY[0x277CBEBC0];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_msgSend_identifier(v18, v19, v20);
  v25 = objc_msgSend_stringWithFormat_(v22, v24, @"addressbook://%@", v23);
  v27 = objc_msgSend_URLWithString_(v21, v26, v25);

  LODWORD(v25) = objc_msgSend_openSensitiveURL_(v4, v28, v27);
  if (v25)
  {
    v29 = objc_alloc_init(MEMORY[0x277D47218]);
  }

  else
  {
LABEL_4:
    v30 = objc_alloc(MEMORY[0x277D47208]);
    v31 = MEMORY[0x277CCACA8];
    v34 = objc_msgSend_absoluteString(0, v32, v33);
    v36 = objc_msgSend_stringWithFormat_(v31, v35, @"Failed to open url %@", v34);
    v29 = objc_msgSend_initWithReason_(v30, v37, v36);
  }

  return v29;
}

@end