@interface ABAssistantSyncPeople
- (ABAssistantSyncPeople)init;
- (BOOL)hasContactsForFullSync;
- (BOOL)verifyChangeHistory;
- (id)_currentSyncSnapshotProperty;
- (id)contactsForFullSync;
- (id)copyChangeHistoryAfterSyncAnchor:(id)a3;
- (id)currentSyncSnapshotAnchorString;
- (id)fullSyncSnapshotProperty;
- (id)getLastClearedSyncAnchor;
- (id)newSADomainObjectFromCNContactWithIdentifier:(id)a3;
- (id)newSADomainObjectFromDeletedContactIdentifier:(id)a3;
- (int64_t)currentSyncSnapshotCount;
- (void)clearChangeHistoryToSyncAnchor:(id)a3;
- (void)setCurrentSyncSnapshotAnchorString:(id)a3;
@end

@implementation ABAssistantSyncPeople

- (ABAssistantSyncPeople)init
{
  v8.receiver = self;
  v8.super_class = ABAssistantSyncPeople;
  v2 = [(ABAssistantSyncPeople *)&v8 init];
  if (v2)
  {
    v3 = [ABAssistantSyncWorker alloc];
    v5 = objc_msgSend_initWithDelegate_(v3, v4, v2);
    objc_msgSend_setSyncWorker_(v2, v6, v5);
  }

  return v2;
}

- (id)fullSyncSnapshotProperty
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_changeHistoryClientIdentifier(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@-fullSyncSequenceNumberSnapshot", v4);

  return v6;
}

- (id)getLastClearedSyncAnchor
{
  v4 = objc_msgSend_contactStore(self, a2, v2);
  v7 = objc_msgSend_changeHistoryClientIdentifier(self, v5, v6);
  v19 = 0;
  v9 = objc_msgSend_latestConsumedChangeHistoryAnchorForClientIdentifier_error_(v4, v8, v7, &v19);
  v10 = v19;

  if (v9)
  {
    v11 = [ABAssistantSyncAnchor alloc];
    v14 = objc_msgSend_sequenceNumber(v9, v12, v13);
    v16 = objc_msgSend_initWithSequenceNumber_contactLegacyIdentifier_(v11, v15, v14, 0xFFFFFFFFLL);
  }

  else
  {
    if (v10)
    {
      v17 = *MEMORY[0x277CEF0D0];
      if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
      {
        sub_2334C2918(v17, self);
      }
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)verifyChangeHistory
{
  v4 = objc_msgSend_contactStore(self, a2, v2);
  v7 = objc_msgSend_changeHistoryClientIdentifier(self, v5, v6);
  v9 = objc_msgSend_verifyChangeHistoryForClientIdentifier_error_(v4, v8, v7, 0);

  return v9;
}

- (void)clearChangeHistoryToSyncAnchor:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBDA38]);
  v8 = objc_msgSend_sequenceNumber(v4, v6, v7);
  v10 = objc_msgSend_initWithSequenceNumber_(v5, v9, v8);
  v11 = objc_alloc(MEMORY[0x277CBDA40]);
  v14 = objc_msgSend_changeHistoryClientIdentifier(self, v12, v13);
  v16 = objc_msgSend_initWithClientIdentifier_(v11, v15, v14);

  objc_msgSend_setToChangeAnchor_(v16, v17, v10);
  v20 = objc_msgSend_contactStore(self, v18, v19);
  v32 = 0;
  objc_msgSend_executeChangeHistoryClearRequest_error_(v20, v21, v16, &v32);
  v22 = v32;

  if (v22)
  {
    v23 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      v25 = v23;
      v28 = objc_msgSend_changeHistoryClientIdentifier(self, v26, v27);
      v31 = objc_msgSend_sequenceNumber(v4, v29, v30);
      *buf = 136315906;
      v34 = "[ABAssistantSyncPeople clearChangeHistoryToSyncAnchor:]";
      v35 = 2112;
      v36 = v28;
      v37 = 2048;
      v38 = v31;
      v39 = 2112;
      v40 = v22;
      _os_log_debug_impl(&dword_2334BB000, v25, OS_LOG_TYPE_DEBUG, "%s Failed to get clear change history for %@ to sequence number = %li, error = %@", buf, 0x2Au);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasContactsForFullSync
{
  v3 = objc_msgSend_contactStore(self, a2, v2);
  v5 = objc_msgSend_individualContactCountWithError_(v3, v4, 0);
  v8 = objc_msgSend_integerValue(v5, v6, v7) > 0;

  return v8;
}

- (id)contactsForFullSync
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CBDA70]);
  v6 = objc_msgSend_descriptorsForRequiredKeysForConversionType_(MEMORY[0x277CFBC48], v5, 2);
  v8 = objc_msgSend_initWithKeysToFetch_(v4, v7, v6);

  objc_msgSend_setUnifyResults_(v8, v9, 0);
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = -1;
  v12 = objc_msgSend_contactStore(self, v10, v11);
  v23 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_2334BC888;
  v20[3] = &unk_2789D8DC0;
  v13 = v3;
  v21 = v13;
  v22 = v24;
  Request_error_usingBlock = objc_msgSend_enumerateContactsWithFetchRequest_error_usingBlock_(v12, v14, v8, &v23, v20);
  v16 = v23;

  v17 = MEMORY[0x277CEF0D0];
  if ((Request_error_usingBlock & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C29CC();
  }

  if (v16 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
  {
    sub_2334C2A4C();
  }

  v18 = v13;
  _Block_object_dispose(v24, 8);

  return v18;
}

- (id)copyChangeHistoryAfterSyncAnchor:(id)a3
{
  v4 = objc_opt_new();
  objc_msgSend_setShouldUnifyResults_(v4, v5, 0);
  v8 = objc_msgSend_contactStore(self, v6, v7);
  v17 = 0;
  v10 = objc_msgSend_changeHistoryWithFetchRequest_error_(v8, v9, v4, &v17);
  v11 = v17;

  if (v11)
  {
    v14 = *MEMORY[0x277CEF0D0];
    if (os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
    {
      sub_2334C2B48(v14, self);
    }
  }

  v15 = objc_msgSend_contactChanges(v10, v12, v13);

  return v15;
}

- (id)newSADomainObjectFromCNContactWithIdentifier:(id)a3
{
  v37[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_2334BCCA8;
  v35 = sub_2334BCCB8;
  v36 = 0;
  v5 = objc_alloc(MEMORY[0x277CBDA70]);
  v7 = objc_msgSend_descriptorsForRequiredKeysForConversionType_(MEMORY[0x277CFBC48], v6, 2);
  v9 = objc_msgSend_initWithKeysToFetch_(v5, v8, v7);

  objc_msgSend_setUnifyResults_(v9, v10, 0);
  v11 = MEMORY[0x277CBDA58];
  v37[0] = v4;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v37, 1);
  v15 = objc_msgSend_predicateForContactsWithIdentifiers_(v11, v14, v13);
  objc_msgSend_setPredicate_(v9, v16, v15);

  v19 = objc_msgSend_contactStore(self, v17, v18);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2334BCCC0;
  v29[3] = &unk_2789D8DE8;
  v29[4] = &v31;
  v30 = 0;
  Request_error_usingBlock = objc_msgSend_enumerateContactsWithFetchRequest_error_usingBlock_(v19, v20, v9, &v30, v29);
  v22 = v30;

  v24 = MEMORY[0x277CEF0D0];
  if ((Request_error_usingBlock & 1) == 0 && os_log_type_enabled(*MEMORY[0x277CEF0D0], OS_LOG_TYPE_DEBUG))
  {
    sub_2334C2BFC();
  }

  if (v22 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
  {
    sub_2334C2C78();
  }

  v25 = v32[5];
  if (v25)
  {
    v26 = objc_msgSend_newSADomainObjectFromCNContact_(self, v23, v25);
  }

  else
  {
    v26 = 0;
  }

  _Block_object_dispose(&v31, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)newSADomainObjectFromDeletedContactIdentifier:(id)a3
{
  v3 = MEMORY[0x277D47630];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v7 = objc_msgSend_assistantIDFromContactID_(MEMORY[0x277CFBC50], v6, v4);

  objc_msgSend_setIdentifier_(v5, v8, v7);
  return v5;
}

- (id)_currentSyncSnapshotProperty
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_msgSend_changeHistoryClientIdentifier(self, a2, v2);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@-currentSyncAnchorSnapshot", v4);

  return v6;
}

- (void)setCurrentSyncSnapshotAnchorString:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend__currentSyncSnapshotProperty(self, v5, v6);
  objc_msgSend_saveString_forKey_(ABAssistantSyncInfoPersistence, v7, v4, v8);
}

- (id)currentSyncSnapshotAnchorString
{
  v4 = objc_msgSend__currentSyncSnapshotProperty(self, a2, v2);
  v6 = objc_msgSend_stringForKey_(ABAssistantSyncInfoPersistence, v5, v4);

  v9 = objc_msgSend_contactStore(self, v7, v8);
  v11 = objc_msgSend_anchorWithString_forContactStore_(ABAssistantSyncAnchor, v10, v6, v9);

  v13 = objc_msgSend_copyChangeHistoryAfterSyncAnchor_(self, v12, v11);
  v16 = objc_msgSend_lastObject(v13, v14, v15);
  v19 = v16;
  if (v16)
  {
    v20 = objc_msgSend_changeAnchor(v16, v17, v18);
    v23 = objc_msgSend_sequenceNumber(v20, v21, v22);
    v26 = objc_msgSend_iOSLegacyIdentifier(v19, v24, v25);
    v28 = objc_msgSend_stringValueWithSequenceNumber_contactLegacyIdentifier_(ABAssistantSyncAnchor, v27, v23, v26);

    v6 = v28;
  }

  return v6;
}

- (int64_t)currentSyncSnapshotCount
{
  v3 = objc_msgSend_contactStore(self, a2, v2);
  v5 = objc_msgSend_individualContactCountWithError_(v3, v4, 0);
  v8 = objc_msgSend_integerValue(v5, v6, v7);

  return v8;
}

@end