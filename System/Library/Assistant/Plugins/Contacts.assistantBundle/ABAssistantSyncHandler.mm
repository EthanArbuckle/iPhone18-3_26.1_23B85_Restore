@interface ABAssistantSyncHandler
- (CNContactStore)contactStore;
- (id)syncSnapshotForKey:(id)key;
- (id)syncVerificationKeyForKey:(id)key;
- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info;
- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info;
- (void)syncDidEnd;
@end

@implementation ABAssistantSyncHandler

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

- (id)syncSnapshotForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_syncWorker(self, v5, v6);
  v9 = objc_msgSend_syncSnapshotForKey_(v7, v8, keyCopy);

  return v9;
}

- (id)syncVerificationKeyForKey:(id)key
{
  keyCopy = key;
  v7 = objc_msgSend_syncWorker(self, v5, v6);
  v9 = objc_msgSend_syncVerificationKeyForKey_(v7, v8, keyCopy);

  return v9;
}

- (void)beginSyncWithAnchor:(id)anchor validity:(id)validity forKey:(id)key beginInfo:(id)info
{
  infoCopy = info;
  keyCopy = key;
  validityCopy = validity;
  anchorCopy = anchor;
  v17 = objc_msgSend_syncWorker(self, v14, v15);
  objc_msgSend_beginSyncWithAnchor_validity_forKey_beginInfo_(v17, v16, anchorCopy, validityCopy, keyCopy, infoCopy);
}

- (void)getChangeAfterAnchor:(id)anchor changeInfo:(id)info
{
  infoCopy = info;
  anchorCopy = anchor;
  v11 = objc_msgSend_syncWorker(self, v8, v9);
  objc_msgSend_getChangeAfterAnchor_changeInfo_(v11, v10, anchorCopy, infoCopy);
}

- (void)syncDidEnd
{
  v5 = objc_msgSend_syncWorker(self, a2, v2);
  objc_msgSend_syncDidEnd(v5, v3, v4);
}

@end