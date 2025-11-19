@interface APXPCConnection
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (APXPCConnection)initWithConnection:(id)a3;
- (BOOL)hasEntitlement:(id)a3;
- (NSString)bundleID;
- (id)auditTokenString;
- (id)remoteObjectProxy;
- (void)invalidate;
@end

@implementation APXPCConnection

- (NSString)bundleID
{
  v32 = *MEMORY[0x1E69E9840];
  bundleID = self->_bundleID;
  if (bundleID)
  {
LABEL_24:
    v16 = bundleID;
    goto LABEL_25;
  }

  connection = self->_connection;
  if (connection)
  {
    objc_msgSend_auditToken(connection, a2, v2, v3);
  }

  else
  {
    memset(&token, 0, sizeof(token));
  }

  v7 = SecTaskCreateWithAuditToken(0, &token);
  if (v7)
  {
    v8 = v7;
    error = 0;
    v9 = SecTaskCopySigningIdentifier(v7, &error);
    if (error)
    {
      v10 = APLogForCategory(0x39uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        token.val[0] = 138477827;
        *&token.val[1] = v11;
        v12 = v11;
        _os_log_impl(&dword_1BADC1000, v10, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to copy signing ID.", &token, 0xCu);
      }

      CFRelease(error);
      if (v9)
      {
        CFRelease(v9);
      }
    }

    else
    {
      v17 = APLogForCategory(0x39uLL);
      v18 = v17;
      if (v9)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v22 = objc_msgSend_connection(self, v19, v20, v21);
          token.val[0] = 136643331;
          *&token.val[1] = "[APXPCConnection bundleID]";
          LOWORD(token.val[3]) = 2114;
          *(&token.val[3] + 2) = v9;
          HIWORD(token.val[5]) = 2114;
          *&token.val[6] = v22;
          _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_INFO, "%{sensitive}s: SecTaskCopySigningIdentifier returned bundleID %{public}@ for connection %{public}@", &token, 0x20u);
        }

        v23 = self->_bundleID;
        self->_bundleID = &v9->isa;

        v24 = APLogForCategory(0x39uLL);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = self->_bundleID;
          token.val[0] = 136643075;
          *&token.val[1] = "[APXPCConnection bundleID]";
          LOWORD(token.val[3]) = 2114;
          *(&token.val[3] + 2) = v25;
          _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_INFO, "%{sensitive}s: bundleID is now %{public}@", &token, 0x16u);
        }
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          token.val[0] = 138478083;
          *&token.val[1] = v26;
          LOWORD(token.val[3]) = 2114;
          *(&token.val[3] + 2) = error;
          v27 = v26;
          _os_log_impl(&dword_1BADC1000, v18, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to retrieve signing ID. %{public}@", &token, 0x16u);
        }
      }
    }

    CFRelease(v8);
    bundleID = self->_bundleID;
    goto LABEL_24;
  }

  v13 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    token.val[0] = 138477827;
    *&token.val[1] = v14;
    v15 = v14;
    _os_log_impl(&dword_1BADC1000, v13, OS_LOG_TYPE_ERROR, "[%{private}@] Failed to allocate security task.", &token, 0xCu);
  }

  v16 = 0;
LABEL_25:
  v28 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)invalidate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = APLogForCategory(0x39uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    connection = self->_connection;
    v12 = 136643075;
    v13 = "[APXPCConnection invalidate]";
    v14 = 2048;
    v15 = connection;
    _os_log_impl(&dword_1BADC1000, v3, OS_LOG_TYPE_INFO, "%{sensitive}s: invalidating connection %p", &v12, 0x16u);
  }

  v8 = self->_connection;
  if (v8)
  {
    objc_msgSend_invalidate(v8, v5, v6, v7);
    v9 = self->_connection;
    self->_connection = 0;
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    self->_bundleID = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (APXPCConnection)initWithConnection:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = APXPCConnection;
  v6 = [(APXPCConnection *)&v10 self];

  if (v6)
  {
    v7 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136643075;
      v12 = "[APXPCConnection initWithConnection:]";
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_INFO, "%{sensitive}s: Initializing connection %p", buf, 0x16u);
    }

    objc_storeStrong(&v6->_connection, a3);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  result = self->_connection;
  if (result)
  {
    return objc_msgSend_auditToken(result, a3, v3, v4);
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (id)auditTokenString
{
  connection = self->_connection;
  if (connection)
  {
    objc_msgSend_auditToken(connection, a2, v2, v3);
  }

  v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%u-%u-%u-%u-%u-%u-%u-%u", v3, 0, 0, 0, 0, 0, 0, 0, 0);

  return v5;
}

- (BOOL)hasEntitlement:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v8 = objc_msgSend_connection(self, v4, v5, v6);
    v11 = objc_msgSend_valueForEntitlement_(v8, v9, v7, v10);
    v15 = objc_msgSend_BOOLValue(v11, v12, v13, v14);
  }

  else
  {
    v16 = APLogForCategory(0x39uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 138477827;
      v21 = objc_opt_class();
      v17 = v21;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "[%{private}@] Caller did not provide an entitlement to check.", &v20, 0xCu);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)remoteObjectProxy
{
  v4 = objc_msgSend_connection(self, a2, v2, v3);
  v8 = objc_msgSend_remoteObjectProxy(v4, v5, v6, v7);

  return v8;
}

@end