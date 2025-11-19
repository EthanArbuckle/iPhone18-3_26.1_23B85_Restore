@interface APXPCActionRequester
+ (APUnfairLock)unfairLock;
+ (BOOL)canShareConnection;
+ (id)machService;
- (APXPCActionRequester)init;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)remoteObjectInterface;
- (id)remoteObjectProxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3;
- (id)xpcConnection;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)dealloc;
- (void)finished;
@end

@implementation APXPCActionRequester

- (id)xpcConnection
{
  v5 = objc_msgSend_unfairLock(APXPCActionRequester, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);
  if (!self->_connection)
  {
    v12 = objc_opt_class();
    if (objc_msgSend_canShareConnection(v12, v13, v14, v15))
    {
      objc_msgSend_sharedConnectionFor_(APXPCRemoteConnection, v16, self, v17);
    }

    else
    {
      objc_msgSend_connectionFor_(APXPCRemoteConnection, v16, self, v17);
    }
    v18 = ;
    connection = self->_connection;
    self->_connection = v18;
  }

  v20 = objc_msgSend_xpcConnection(self->_connection, v9, v10, v11);
  objc_msgSend_unlock(v5, v21, v22, v23);

  return v20;
}

- (APXPCActionRequester)init
{
  v9.receiver = self;
  v9.super_class = APXPCActionRequester;
  v5 = [(APXPCActionRequester *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v2, v3, v4);
    delegateID = v5->_delegateID;
    v5->_delegateID = v6;
  }

  return v5;
}

+ (APUnfairLock)unfairLock
{
  if (qword_1EDBA4BE0 != -1)
  {
    sub_1BADC3618();
  }

  v3 = qword_1EDBA4BF0;

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v8 = objc_msgSend_delegateID(self, v5, v6, v7);
  v11 = objc_msgSend_stringWithFormat_(v3, v9, @"%@.%@", v10, v4, v8);

  return v11;
}

- (void)dealloc
{
  objc_msgSend_finished(self, a2, v2, v3);
  v5.receiver = self;
  v5.super_class = APXPCActionRequester;
  [(APXPCActionRequester *)&v5 dealloc];
}

- (void)finished
{
  v13 = objc_msgSend_unfairLock(APXPCActionRequester, a2, v2, v3);
  objc_msgSend_lock(v13, v5, v6, v7);
  connection = self->_connection;
  if (connection)
  {
    objc_msgSend_invalidateForDelegate_(connection, v8, self, v10);
    v12 = self->_connection;
    self->_connection = 0;
  }

  objc_msgSend_unlock(v13, v8, v9, v10);
}

- (id)remoteObjectProxy
{
  v4 = objc_msgSend_xpcConnection(self, a2, v2, v3);
  v8 = objc_msgSend_remoteObjectProxy(v4, v5, v6, v7);

  return v8;
}

- (id)remoteObjectInterface
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"You must override %@ in a subclass", v6, v4);
  APSimulateCrash(5, v7, 1);

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a2);
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"You must override %@ in a subclass", v13, v11);
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v15, v9, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)connectionInterrupted
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"You must override %@ in a subclass", v6, v4);
  APSimulateCrash(5, v7, 1);

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a2);
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"You must override %@ in a subclass", v13, v11);
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v15, v9, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)connectionInvalidated
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"You must override %@ in a subclass", v6, v4);
  APSimulateCrash(5, v7, 1);

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a2);
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"You must override %@ in a subclass", v13, v11);
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v15, v9, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

+ (BOOL)canShareConnection
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"You must override %@ in a subclass", v6, v4);
  APSimulateCrash(5, v7, 1);

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a2);
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"You must override %@ in a subclass", v13, v11);
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v15, v9, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

+ (id)machService
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"You must override %@ in a subclass", v6, v4);
  APSimulateCrash(5, v7, 1);

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a2);
  v14 = objc_msgSend_stringWithFormat_(v10, v12, @"You must override %@ in a subclass", v13, v11);
  v16 = objc_msgSend_exceptionWithName_reason_userInfo_(v8, v15, v9, v14, 0);
  v17 = v16;

  objc_exception_throw(v16);
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_xpcConnection(self, v5, v6, v7);
  v11 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v8, v9, v4, v10);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (v5 = objc_opt_class(), v6 = objc_opt_class(), objc_msgSend_isEqual_(v5, v7, v6, v8)))
  {
    delegateID = self->_delegateID;
    v13 = objc_msgSend_delegateID(v4, v9, v10, v11);
    isEqual = objc_msgSend_isEqual_(delegateID, v14, v13, v15);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end