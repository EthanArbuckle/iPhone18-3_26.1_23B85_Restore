@interface NSXPCStoreConnectionInfo
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (id)description;
- (id)entitlements;
- (id)initForToken:(id *)token entitlementNames:(id)names cache:(id)cache;
- (id)persistentStoreCoordinator;
- (id)userInfo;
- (void)dealloc;
@end

@implementation NSXPCStoreConnectionInfo

- (id)persistentStoreCoordinator
{
  coordinator = [(NSXPCStoreServerPerConnectionCache *)self->_cache coordinator];

  return coordinator;
}

- (id)entitlements
{
  v2 = self->_entitlements;

  return v2;
}

- (id)userInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_userInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)dealloc
{
  self->_userInfo = 0;

  self->_entitlements = 0;
  self->_cache = 0;
  v3.receiver = self;
  v3.super_class = NSXPCStoreConnectionInfo;
  [(NSXPCStoreConnectionInfo *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSXPCStoreServerConnectionInfo: \n\tentitlements = %@ ;\n\tcoordinator = %@ ;\n\tuserInfo = %@>", self->_entitlements, -[NSXPCStoreServerPerConnectionCache coordinator](self->_cache, "coordinator"), self->_userInfo];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[1].var0[2];
  *retstr->var0 = *&self->var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (id)initForToken:(id *)token entitlementNames:(id)names cache:(id)cache
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = NSXPCStoreConnectionInfo;
  v8 = [(NSXPCStoreConnectionInfo *)&v24 init];
  v9 = v8;
  if (v8)
  {
    *(v8 + 16) = 0;
    v10 = *token->var0;
    *(v8 + 40) = *&token->var0[4];
    v11 = MEMORY[0x1E695E480];
    *(v8 + 24) = v10;
    v12 = *v11;
    v13 = *&token->var0[4];
    *token.val = *token->var0;
    *&token.val[4] = v13;
    v14 = SecTaskCreateWithAuditToken(v12, &token);
    v15 = v14;
    error = 0;
    if (names)
    {
      v16 = SecTaskCopyValuesForEntitlements(v14, names, &error);
      v9[1] = v16;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else if (v9[1])
    {
LABEL_5:
      if (!error)
      {
LABEL_14:
        CFRelease(v15);
        v9[2] = cache;
        goto LABEL_15;
      }

      v17 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v18 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v20 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v18)
        {
          if (v20)
          {
            token.val[0] = 138412290;
            *&token.val[1] = error;
LABEL_17:
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error while copying values for entitlements, %@\n", &token, 0xCu);
          }
        }

        else if (v20)
        {
          token.val[0] = 138412290;
          *&token.val[1] = error;
          goto LABEL_17;
        }
      }

      _NSCoreDataLog_console(1, "Error while copying values for entitlements, %@", error);
      objc_autoreleasePoolPop(v17);
      CFRelease(error);
      goto LABEL_14;
    }

    v9[1] = [MEMORY[0x1E695DF20] dictionary];
    goto LABEL_5;
  }

LABEL_15:
  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

@end