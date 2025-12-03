@interface CKAPSMachServiceConnectionDelegate
- (APSConnection)connection;
- (CKAPSMachServiceConnectionDelegate)initWithConnection:(id)connection key:(id)key;
- (void)connection:(id)connection didFailToSendOutgoingMessage:(id)message error:(id)error;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)connection:(id)connection didSendOutgoingMessage:(id)message;
- (void)connectionDidReconnect:(id)reconnect;
@end

@implementation CKAPSMachServiceConnectionDelegate

- (CKAPSMachServiceConnectionDelegate)initWithConnection:(id)connection key:(id)key
{
  connectionCopy = connection;
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = CKAPSMachServiceConnectionDelegate;
  v8 = [(CKAPSMachServiceConnectionDelegate *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_connection, connectionCopy);
    v12 = objc_msgSend_copy(keyCopy, v10, v11);
    key = v9->_key;
    v9->_key = v12;

    objc_msgSend_setDelegate_(connectionCopy, v14, v9);
  }

  return v9;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v6 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, 3);
  v12 = objc_msgSend_key(self, v10, v11);
  v15 = objc_msgSend_environmentName(v12, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, @"environmentName");

  v19 = objc_msgSend_key(self, v17, v18);
  v22 = objc_msgSend_namedDelegatePort(v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v22, @"namedDelegatePort");

  if (tokenCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, tokenCopy, @"publicToken");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"CKAPSMachServiceConnectionDidReceivePublicTokenNotification", connectionCopy, v9);
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v12 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  v15 = objc_msgSend_dictionaryWithCapacity_(v12, v14, 5);
  v18 = objc_msgSend_key(self, v16, v17);
  v21 = objc_msgSend_environmentName(v18, v19, v20);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v22, v21, @"environmentName");

  v25 = objc_msgSend_key(self, v23, v24);
  v28 = objc_msgSend_namedDelegatePort(v25, v26, v27);
  objc_msgSend_setObject_forKeyedSubscript_(v15, v29, v28, @"namedDelegatePort");

  if (tokenCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, tokenCopy, @"token");
  }

  if (topicCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, topicCopy, @"topic");
  }

  if (identifierCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v15, v30, identifierCopy, @"identifier");
  }

  v32 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v30, v31);
  objc_msgSend_postNotificationName_object_userInfo_(v32, v33, @"CKAPSMachServiceConnectionDidReceiveTokenNotification", connectionCopy, v15);
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  v6 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, 3);
  v12 = objc_msgSend_key(self, v10, v11);
  v15 = objc_msgSend_environmentName(v12, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, @"environmentName");

  v19 = objc_msgSend_key(self, v17, v18);
  v22 = objc_msgSend_namedDelegatePort(v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v22, @"namedDelegatePort");

  if (messageCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, messageCopy, @"message");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"CKAPSMachServiceConnectionDidReceiveIncomingMessageNotification", connectionCopy, v9);
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  topicCopy = topic;
  infoCopy = info;
  v9 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  v12 = objc_msgSend_dictionaryWithCapacity_(v9, v11, 4);
  v15 = objc_msgSend_key(self, v13, v14);
  v18 = objc_msgSend_environmentName(v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v18, @"environmentName");

  v22 = objc_msgSend_key(self, v20, v21);
  v25 = objc_msgSend_namedDelegatePort(v22, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"namedDelegatePort");

  if (topicCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, topicCopy, @"topic");
  }

  if (infoCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, infoCopy, @"userInfo");
  }

  v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v27, v28);
  objc_msgSend_postNotificationName_object_userInfo_(v29, v30, @"CKAPSMachServiceConnectionDidReceiveMessageForTopicNotification", connectionCopy, v12);
}

- (void)connection:(id)connection didSendOutgoingMessage:(id)message
{
  messageCopy = message;
  v6 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  v9 = objc_msgSend_dictionaryWithCapacity_(v6, v8, 5);
  v12 = objc_msgSend_key(self, v10, v11);
  v15 = objc_msgSend_environmentName(v12, v13, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v16, v15, @"environmentName");

  v19 = objc_msgSend_key(self, v17, v18);
  v22 = objc_msgSend_namedDelegatePort(v19, v20, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v9, v23, v22, @"namedDelegatePort");

  if (messageCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v9, v24, messageCopy, @"message");
  }

  v26 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v24, v25);
  objc_msgSend_postNotificationName_object_userInfo_(v26, v27, @"CKAPSMachServiceConnectionDidSendOutgoingMessageNotification", connectionCopy, v9);
}

- (void)connection:(id)connection didFailToSendOutgoingMessage:(id)message error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  v9 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  v12 = objc_msgSend_dictionaryWithCapacity_(v9, v11, 4);
  v15 = objc_msgSend_key(self, v13, v14);
  v18 = objc_msgSend_environmentName(v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v18, @"environmentName");

  v22 = objc_msgSend_key(self, v20, v21);
  v25 = objc_msgSend_namedDelegatePort(v22, v23, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v26, v25, @"namedDelegatePort");

  if (messageCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, messageCopy, @"message");
  }

  if (errorCopy)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v27, errorCopy, @"error");
  }

  v29 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v27, v28);
  objc_msgSend_postNotificationName_object_userInfo_(v29, v30, @"CKAPSMachServiceConnectionDidFailToSendOutgoingMessageNotification", connectionCopy, v12);
}

- (void)connectionDidReconnect:(id)reconnect
{
  v4 = MEMORY[0x1E695DF90];
  reconnectCopy = reconnect;
  v25 = objc_msgSend_dictionaryWithCapacity_(v4, v6, 2);
  v9 = objc_msgSend_key(self, v7, v8);
  v12 = objc_msgSend_environmentName(v9, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v25, v13, v12, @"environmentName");

  v16 = objc_msgSend_key(self, v14, v15);
  v19 = objc_msgSend_namedDelegatePort(v16, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v25, v20, v19, @"namedDelegatePort");

  v23 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v21, v22);
  objc_msgSend_postNotificationName_object_userInfo_(v23, v24, @"CKAPSMachServiceConnectionDidReconnectNotification", reconnectCopy, v25);
}

- (APSConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end