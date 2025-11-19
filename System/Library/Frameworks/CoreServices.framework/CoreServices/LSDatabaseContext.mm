@interface LSDatabaseContext
+ (LSDatabaseContext)sharedDatabaseContext;
- (BOOL)startAccessingCurrentUserSessionReturningError:(id *)a3;
- (BOOL)startAccessingSystemScopeReturningError:(id *)a3;
- (NSData)currentPersistentIdentifier;
- (id)_init;
- (id)addDatabaseChangeObserver4WebKit:(id)a3;
- (void)accessCurrentUserSessionUsingBlock:(id)a3;
- (void)accessSystemScopeUsingBlock:(id)a3;
- (void)getSystemContentDatabaseObject4WebKit:(id)a3;
- (void)observeDatabaseChange4WebKit:(id)a3;
- (void)releaseObservedDatabase4WebKit;
@end

@implementation LSDatabaseContext

+ (LSDatabaseContext)sharedDatabaseContext
{
  if (+[LSDatabaseContext sharedDatabaseContext]::once != -1)
  {
    +[LSDatabaseContext sharedDatabaseContext];
  }

  v3 = +[LSDatabaseContext sharedDatabaseContext]::result;

  return v3;
}

void __42__LSDatabaseContext_sharedDatabaseContext__block_invoke()
{
  v0 = [[LSDatabaseContext alloc] _init];
  v1 = +[LSDatabaseContext sharedDatabaseContext]::result;
  +[LSDatabaseContext sharedDatabaseContext]::result = v0;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = LSDatabaseContext;
  return [(LSDatabaseContext *)&v3 init];
}

- (NSData)currentPersistentIdentifier
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *LaunchServices::DatabaseContext::getPerThreadStateReference(self);
  if (!v2)
  {
    goto LABEL_3;
  }

  memset(v9, 0, 28);
  [(_LSDatabase *)*v2 store];
  CatalogTable = _CSStoreGetCatalogTable();
  _LSPersistentIdentifierDataMake(v2, CatalogTable, 0, v9);
  SequenceNumber = _LSDatabaseGetSequenceNumber(*v2);
  *v8 = v9[0];
  *&v8[12] = *(v9 + 12);
  *&v8[28] = SequenceNumber;
  v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v8 length:36];
  if (!v5)
  {
LABEL_3:
    v5 = [MEMORY[0x1E695DEF0] data];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)addDatabaseChangeObserver4WebKit:(id)a3
{
  v13 = *LaunchServices::DatabaseContext::getPerThreadStateReference(self);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = LaunchServices::Database::Context::_get(&v13, v4, 0);

  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__LSDatabaseContext_WebKitChangeTracking__addDatabaseChangeObserver4WebKit___block_invoke;
    v12[3] = &unk_1E6A1BA18;
    v12[4] = a3;
    v6 = MEMORY[0x1865D71B0](v12);
    v7 = +[_LSDServiceDomain defaultServiceDomain];
    v8 = _LSContextAddChangeObserver(v5, v7, v6);

    if (v8)
    {
      v6[2](v6, v5);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v13 && v15 == 1)
  {
    _LSContextDestroy(v13);
  }

  v9 = v14;
  v13 = 0;
  v14 = 0;

  v15 = 0;
  v10 = v16;
  v16 = 0;

  return v8;
}

void __76__LSDatabaseContext_WebKitChangeTracking__addDatabaseChangeObserver4WebKit___block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = _LSDatabaseGetNode(*a2);
  v4 = [(_LSDatabase *)*a2 store];
  v5 = getXPCObjectForNodeAndStore(v7, v4);
  v6 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v6);
}

- (void)getSystemContentDatabaseObject4WebKit:(id)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__LSDatabaseContext_WebKitChangeTracking__getSystemContentDatabaseObject4WebKit___block_invoke;
  v6[3] = &unk_1E6A19090;
  v6[4] = a3;
  v4 = [(_LSDService *)_LSDReadService XPCProxyWithErrorHandler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__LSDatabaseContext_WebKitChangeTracking__getSystemContentDatabaseObject4WebKit___block_invoke_2;
  v5[3] = &unk_1E6A1BA40;
  v5[4] = a3;
  [v4 getSystemContentStoreWithCompletionHandler:v5];
}

void __81__LSDatabaseContext_WebKitChangeTracking__getSystemContentDatabaseObject4WebKit___block_invoke_2(uint64_t a1, const __CSStore *a2, FSNode *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = getXPCObjectForNodeAndStore(a3, a2);
  }

  v6 = v5;
  (*(*(a1 + 32) + 16))();
}

- (void)releaseObservedDatabase4WebKit
{
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v6, v2, 0);

  if (v3)
  {
    _LSContextReleaseObservedChange(v3);
  }

  if (v6 && v8 == 1)
  {
    _LSContextDestroy(v6);
  }

  v4 = v7;
  v6 = 0;
  v7 = 0;

  v8 = 0;
  v5 = v9;
  v9 = 0;
}

- (void)observeDatabaseChange4WebKit:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (a3 && object_getClass(a3) == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(a3, "path");
    if (string)
    {
      string = [[FSNode alloc] initWithFileSystemRepresentation:string flags:0 error:0];
    }

    v5 = xpc_dictionary_get_value(a3, "store");
    if (v5)
    {
      v6 = _CSStoreCreateWithXPCRepresentation();
    }

    else
    {
      v6 = 0;
    }

    v7 = xpc_dictionary_get_value(a3, "insecureProcessID");
    v8 = v7;
    if (v7 && object_getClass(v7) == MEMORY[0x1E69E9F18])
    {
      value = xpc_uint64_get_value(v8);

      v10 = v6 == 0;
      if (string && v6)
      {
        v11 = LaunchServices::DatabaseContext::getLog(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = value;
          v12 = "Replacing local LS database with a copy pushed by process %llu.";
          v13 = v11;
          v14 = 12;
          goto LABEL_18;
        }

LABEL_19:

        v16 = _CFGetEUID();
        v23 = 0;
        v17 = _LSDatabaseCreate(string, v16, v6, &v23);
        v18 = v23;
        v19 = v18;
        if (v17)
        {
          *buf = v17;
          _LSContextObserveChange(buf);
        }

        else
        {
          v21 = LaunchServices::DatabaseContext::getLog(v18);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v19;
            _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_INFO, "Could not replace the local LS database with a pushed copy: %@", buf, 0xCu);
          }
        }

LABEL_29:
        CFRelease(v6);
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {

      v10 = v6 == 0;
      if (string && v6)
      {
        v11 = LaunchServices::DatabaseContext::getLog(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v12 = "Replacing local LS database with a copy pushed by an unspecified process.";
          v13 = v11;
          v14 = 2;
LABEL_18:
          _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_INFO, v12, buf, v14);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    v20 = LaunchServices::DatabaseContext::getLog(v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_INFO, "Could not replace the local LS database with a pushed copy because the pushed XPC object was malformed.", buf, 2u);
    }

    if (v10)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_31:
  v22 = *MEMORY[0x1E69E9840];
}

- (BOOL)startAccessingSystemScopeReturningError:(id *)a3
{
  v4 = systemIfExistsElseDefaultServiceDomain();
  LOBYTE(a3) = _LSDatabaseContextStartAccessingWithDomain(v4, 0, a3);

  return a3;
}

- (void)accessSystemScopeUsingBlock:(id)a3
{
  v4 = systemIfExistsElseDefaultServiceDomain();
  _LSDatabaseContextAccessWithDomainUsingBlock(v4, 0, a3);
}

- (BOOL)startAccessingCurrentUserSessionReturningError:(id *)a3
{
  v4 = +[_LSDServiceDomain currentUserSessionDomain];
  LOBYTE(a3) = _LSDatabaseContextStartAccessingWithDomain(v4, 0, a3);

  return a3;
}

- (void)accessCurrentUserSessionUsingBlock:(id)a3
{
  v4 = +[_LSDServiceDomain currentUserSessionDomain];
  _LSDatabaseContextAccessWithDomainUsingBlock(v4, 0, a3);
}

@end