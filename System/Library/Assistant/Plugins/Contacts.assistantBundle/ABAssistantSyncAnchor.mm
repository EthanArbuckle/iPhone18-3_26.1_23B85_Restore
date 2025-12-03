@interface ABAssistantSyncAnchor
+ (id)anchorWithString:(id)string forContactStore:(id)store;
- (ABAssistantSyncAnchor)initWithSequenceNumber:(int64_t)number contactLegacyIdentifier:(int)identifier;
- (BOOL)isOlderThanAnchor:(id)anchor;
- (id)description;
- (id)shortDescription;
@end

@implementation ABAssistantSyncAnchor

- (ABAssistantSyncAnchor)initWithSequenceNumber:(int64_t)number contactLegacyIdentifier:(int)identifier
{
  v7.receiver = self;
  v7.super_class = ABAssistantSyncAnchor;
  result = [(ABAssistantSyncAnchor *)&v7 init];
  if (result)
  {
    result->_sequenceNumber = number;
    result->_contactLegacyIdentifier = identifier;
  }

  return result;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_sequenceNumber(self, a2, v2);
  v8 = objc_msgSend_contactLegacyIdentifier(self, v6, v7);
  if (objc_msgSend_shouldResetSync(self, v9, v10))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (objc_msgSend_shouldClearChangeHistoryForPreviouslySyncedContacts(self, v11, v12))
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (objc_msgSend_shouldFullSync(self, v14, v15))
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if (objc_msgSend_shouldResumePreviousFullSync(self, v17, v18))
  {
    return objc_msgSend_stringWithFormat_(v4, v20, @"sequenceNumber = %li, contactLegacyIdentifier = %d, shouldResetSync = %@, shouldDeleteSyncedContacts = %@, shouldFullSync = %@, shouldResumePreviousFullSync = %@", v5, v8, v13, v16, v19, @"YES");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v4, v20, @"sequenceNumber = %li, contactLegacyIdentifier = %d, shouldResetSync = %@, shouldDeleteSyncedContacts = %@, shouldFullSync = %@, shouldResumePreviousFullSync = %@", v5, v8, v13, v16, v19, @"NO");
  }
}

- (id)shortDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_sequenceNumber(self, a2, v2);
  v8 = objc_msgSend_contactLegacyIdentifier(self, v6, v7);
  return objc_msgSend_stringWithFormat_(v4, v9, @"sequenceNumber = %li, contactLegacyIdentifier = %d", v5, v8);
}

+ (id)anchorWithString:(id)string forContactStore:(id)store
{
  stringCopy = string;
  storeCopy = store;
  if (stringCopy)
  {
    v8 = objc_msgSend_componentsSeparatedByString_(stringCopy, v6, @" ");
    if (objc_msgSend_count(v8, v9, v10) != 2)
    {
      goto LABEL_9;
    }

    v30 = 0;
    v12 = MEMORY[0x277CCAC80];
    v13 = objc_msgSend_objectAtIndex_(v8, v11, 0);
    v15 = objc_msgSend_scannerWithString_(v12, v14, v13);
    v17 = objc_msgSend_scanInteger_(v15, v16, &v30);

    if (!v17)
    {
      goto LABEL_9;
    }

    v20 = v30;
    if (v30 >= -1 && v20 <= objc_msgSend_saveSequenceCount(storeCopy, v18, v19) && (objc_msgSend_objectAtIndexedSubscript_(v8, v21, 1), v22 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend_intValue(v22, v23, v24), v22, v25 != -1))
    {
      v26 = [ABAssistantSyncAnchor alloc];
      v28 = objc_msgSend_initWithSequenceNumber_contactLegacyIdentifier_(v26, v27, v30, v25);

      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
    }
  }

  v28 = objc_alloc_init(ABAssistantSyncAnchor);
LABEL_11:

  return v28;
}

- (BOOL)isOlderThanAnchor:(id)anchor
{
  anchorCopy = anchor;
  if (!anchorCopy)
  {
    goto LABEL_6;
  }

  v7 = objc_msgSend_sequenceNumber(self, v4, v5);
  if (v7 >= objc_msgSend_sequenceNumber(anchorCopy, v8, v9))
  {
    v13 = objc_msgSend_sequenceNumber(self, v10, v11);
    if (v13 == objc_msgSend_sequenceNumber(anchorCopy, v14, v15))
    {
      v18 = objc_msgSend_contactLegacyIdentifier(self, v16, v17);
      v12 = v18 < objc_msgSend_contactLegacyIdentifier(anchorCopy, v19, v20);
      goto LABEL_7;
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v12 = 1;
LABEL_7:

  return v12;
}

@end