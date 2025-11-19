@interface CKAPSMachServiceConnectionDelegate
- (APSConnection)connection;
- (CKAPSMachServiceConnectionDelegate)initWithConnection:(id)a3 key:(id)a4;
- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)connection:(id)a3 didSendOutgoingMessage:(id)a4;
- (void)connectionDidReconnect:(id)a3;
@end

@implementation CKAPSMachServiceConnectionDelegate

- (CKAPSMachServiceConnectionDelegate)initWithConnection:(id)a3 key:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = CKAPSMachServiceConnectionDelegate;
  v8 = [(CKAPSMachServiceConnectionDelegate *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, v6);
    v12 = objc_msgSend_copy(v7, v10, v11);
    key = v9->_key;
    v9->_key = v12;

    objc_msgSend_setDelegate_(v6, v14, v9);
  }

  return v9;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v28 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, 3);
  v12 = objc_msgSend_key(self, v10, v11);
  v15 = objc_msgSend_environmentName(v12, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, @"environmentName");

  v19 = objc_msgSend_key(self, v17, v18);
  v22 = objc_msgSend_namedDelegatePort(v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v22, @"namedDelegatePort");

  if (v28)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, v28, @"publicToken");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"CKAPSMachServiceConnectionDidReceivePublicTokenNotification", v7, v9);
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v34 = a4;
  v10 = a5;
  v11 = a6;
  v12 = MEMORY[0x1E695DF90];
  v13 = a3;
  v15 = objc_msgSend_dictionaryWithCapacity_(v12, v14, 5);
  v18 = objc_msgSend_key(self, v16, v17);
  v21 = objc_msgSend_environmentName(v18, v19, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v22, v21, @"environmentName");

  v25 = objc_msgSend_key(self, v23, v24);
  v28 = objc_msgSend_namedDelegatePort(v25, v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v29, v28, @"namedDelegatePort");

  if (v34)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, v34, @"token");
  }

  if (v10)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, v10, @"topic");
  }

  if (v11)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, v11, @"identifier");
  }

  v32 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v30, v31);
  objc_msgSend_postNotificationName_object_userInfo_(v32, v33, @"CKAPSMachServiceConnectionDidReceiveTokenNotification", v13, v15);
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v28 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, 3);
  v12 = objc_msgSend_key(self, v10, v11);
  v15 = objc_msgSend_environmentName(v12, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, @"environmentName");

  v19 = objc_msgSend_key(self, v17, v18);
  v22 = objc_msgSend_namedDelegatePort(v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v22, @"namedDelegatePort");

  if (v28)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, v28, @"message");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"CKAPSMachServiceConnectionDidReceiveIncomingMessageNotification", v7, v9);
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v31 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = a3;
  v12 = objc_msgSend_dictionaryWithCapacity_(v9, v11, 4);
  v15 = objc_msgSend_key(self, v13, v14);
  v18 = objc_msgSend_environmentName(v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v18, @"environmentName");

  v22 = objc_msgSend_key(self, v20, v21);
  v25 = objc_msgSend_namedDelegatePort(v22, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"namedDelegatePort");

  if (v31)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, v31, @"topic");
  }

  if (v8)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, v8, @"userInfo");
  }

  v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v27, v28);
  objc_msgSend_postNotificationName_object_userInfo_(v29, v30, @"CKAPSMachServiceConnectionDidReceiveMessageForTopicNotification", v10, v12);
}

- (void)connection:(id)a3 didSendOutgoingMessage:(id)a4
{
  v28 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, 5);
  v12 = objc_msgSend_key(self, v10, v11);
  v15 = objc_msgSend_environmentName(v12, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, @"environmentName");

  v19 = objc_msgSend_key(self, v17, v18);
  v22 = objc_msgSend_namedDelegatePort(v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v22, @"namedDelegatePort");

  if (v28)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, v28, @"message");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"CKAPSMachServiceConnectionDidSendOutgoingMessageNotification", v7, v9);
}

- (void)connection:(id)a3 didFailToSendOutgoingMessage:(id)a4 error:(id)a5
{
  v31 = a4;
  v8 = a5;
  v9 = MEMORY[0x1E695DF90];
  v10 = a3;
  v12 = objc_msgSend_dictionaryWithCapacity_(v9, v11, 4);
  v15 = objc_msgSend_key(self, v13, v14);
  v18 = objc_msgSend_environmentName(v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v18, @"environmentName");

  v22 = objc_msgSend_key(self, v20, v21);
  v25 = objc_msgSend_namedDelegatePort(v22, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"namedDelegatePort");

  if (v31)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, v31, @"message");
  }

  if (v8)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, v8, @"error");
  }

  v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v27, v28);
  objc_msgSend_postNotificationName_object_userInfo_(v29, v30, @"CKAPSMachServiceConnectionDidFailToSendOutgoingMessageNotification", v10, v12);
}

- (void)connectionDidReconnect:(id)a3
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v25 = objc_msgSend_dictionaryWithCapacity_(v4, v6, 2);
  v9 = objc_msgSend_key(self, v7, v8);
  v12 = objc_msgSend_environmentName(v9, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v25, v13, v12, @"environmentName");

  v16 = objc_msgSend_key(self, v14, v15);
  v19 = objc_msgSend_namedDelegatePort(v16, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v25, v20, v19, @"namedDelegatePort");

  v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
  objc_msgSend_postNotificationName_object_userInfo_(v23, v24, @"CKAPSMachServiceConnectionDidReconnectNotification", v5, v25);
}

- (APSConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end