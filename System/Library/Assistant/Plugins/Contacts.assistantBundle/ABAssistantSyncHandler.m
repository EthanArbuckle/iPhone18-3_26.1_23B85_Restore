@interface ABAssistantSyncHandler
- (CNContactStore)contactStore;
- (id)syncSnapshotForKey:(id)a3;
- (id)syncVerificationKeyForKey:(id)a3;
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
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

- (id)syncSnapshotForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_syncWorker(self, v5, v6);
  v9 = objc_msgSend_syncSnapshotForKey_(v7, v8, v4);

  return v9;
}

- (id)syncVerificationKeyForKey:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_syncWorker(self, v5, v6);
  v9 = objc_msgSend_syncVerificationKeyForKey_(v7, v8, v4);

  return v9;
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = objc_msgSend_syncWorker(self, v14, v15);
  objc_msgSend_beginSyncWithAnchor_validity_forKey_beginInfo_(v17, v16, v13, v12, v11, v10);
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_msgSend_syncWorker(self, v8, v9);
  objc_msgSend_getChangeAfterAnchor_changeInfo_(v11, v10, v7, v6);
}

- (void)syncDidEnd
{
  v5 = objc_msgSend_syncWorker(self, a2, v2);
  objc_msgSend_syncDidEnd(v5, v3, v4);
}

@end