@interface CNAssistantCommandMultiSearchPerson
- (CNContactStore)contactStore;
- (id)perform;
- (id)validate;
- (void)performWithCompletion:(id)a3;
@end

@implementation CNAssistantCommandMultiSearchPerson

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
  v4 = objc_msgSend_personSearches(self, a2, v2);
  if (v4 && (v7 = v4, objc_msgSend_personSearches(self, v5, v6), v8 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend_count(v8, v9, v10), v8, v7, v11))
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D47208]);
    v12 = objc_msgSend_initWithReason_(v13, v14, @"Expected personSearches to be set");
  }

  return v12;
}

- (id)perform
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_2334BF73C;
  v62 = sub_2334BF74C;
  v4 = MEMORY[0x277CBEB18];
  v5 = objc_msgSend_personSearches(self, a2, v2);
  v8 = objc_msgSend_count(v5, v6, v7);
  v63 = objc_msgSend_arrayWithCapacity_(v4, v9, v8);

  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = objc_msgSend_personSearches(self, v10, v11);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v50, v64, 16);
  if (v14)
  {
    v15 = *v51;
    obj = v12;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v18 = [CNAssistantCommandSearchPerson alloc];
        v21 = objc_msgSend_dictionary(v17, v19, v20);
        v23 = objc_msgSend_initWithDictionary_(v18, v22, v21);

        v26 = objc_msgSend_contactStore(self, v24, v25);
        objc_msgSend_setContactStore_(v23, v27, v26);

        v32 = objc_msgSend_resultsLimit(self, v28, v29);
        if (v32 && (v33 = v55[3], objc_msgSend_resultsLimit(self, v30, v31), v34 = objc_claimAutoreleasedReturnValue(), LODWORD(v33) = v33 < objc_msgSend_integerValue(v34, v35, v36), v34, v32, !v33))
        {
          v37 = objc_alloc_init(MEMORY[0x277D47100]);
          v40 = objc_msgSend_refId(v17, v38, v39);
          objc_msgSend_setRefId_(v37, v41, v40);

          objc_msgSend_addObject_(v59[5], v42, v37);
        }

        else
        {
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = sub_2334BF754;
          v49[3] = &unk_2789D8E98;
          v49[4] = v17;
          v49[5] = &v58;
          v49[6] = &v54;
          objc_msgSend_performWithCompletion_(v23, v30, v49, obj);
        }
      }

      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v43, &v50, v64, 16);
    }

    while (v14);
  }

  v44 = objc_alloc_init(MEMORY[0x277D470E8]);
  objc_msgSend_setPersonSearchCompleteds_(v44, v45, v59[5]);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);

  v46 = *MEMORY[0x277D85DE8];

  return v44;
}

@end