@interface LSExtensionPointRecord
+ (BOOL)isCurrentProcessAnApplicationExtension;
+ (LSExtensionPointRecord)extensionPointRecordForCurrentProcess;
+ (NSString)identifierForCurrentProcess;
+ (id)_propertyClasses;
+ (id)enumerator;
+ (id)enumeratorForExtensionPointIdentifier:(id)a3;
+ (id)enumeratorWithParentApplicationRecord:(id)a3;
+ (void)identifierForCurrentProcess;
+ (void)setExtensionPointRecordForCurrentProcess:(id)a3;
- (LSExtensionPointRecord)initWithIdentifier:(id)a3 platform:(unsigned int)a4 parentAppRecord:(id)a5 error:(id *)a6;
- (id)_compatibilityObjectWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const void *)a6;
- (id)identifierWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6;
- (id)nameWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6;
- (id)parentAppRecordWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6;
- (id)versionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6;
@end

@implementation LSExtensionPointRecord

+ (BOOL)isCurrentProcessAnApplicationExtension
{
  v2 = [a1 identifierForCurrentProcess];
  v3 = v2 != 0;

  return v3;
}

+ (NSString)identifierForCurrentProcess
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = v2;
  if (!v2)
  {
    v8 = 0;
    goto LABEL_24;
  }

  v4 = [v2 infoDictionary];
  v5 = objc_opt_class();
  v6 = [v4 objectForKey:@"NSExtension"];
  v7 = v6;
  if (v5 && v6)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v7 = 0;
      goto LABEL_22;
    }
  }

  else
  {

    if (!v7)
    {
LABEL_22:
      v8 = 0;
      goto LABEL_23;
    }
  }

  v9 = objc_opt_class();
  v10 = [v7 objectForKey:@"NSExtensionPointIdentifier"];
  v8 = v10;
  if (v9 && v10)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_22;
    }

LABEL_13:
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[(LSExtensionPointRecord *)v8];
    }

    v12 = [v3 bundlePath];
    v13 = [v12 pathExtension];

    if (!v13 || [v13 caseInsensitiveCompare:@"appex"])
    {
      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[(LSExtensionPointRecord *)v8];
      }

      v8 = 0;
    }

    goto LABEL_23;
  }

  if (v10)
  {
    goto LABEL_13;
  }

LABEL_23:

LABEL_24:

  return v8;
}

+ (id)_propertyClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (LSExtensionPointRecord)initWithIdentifier:(id)a3 platform:(unsigned int)a4 parentAppRecord:(id)a5 error:(id *)a6
{
  if (!a3)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"LSExtensionPointRecord.mm" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"extensionPointIdentifier != nil"}];
  }

  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
    p_CurrentContext = 0;
    LOBYTE(v46) = 0;
    v47 = 0;
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(&CurrentContext, v11, 0);

    if (v12)
    {
      LODWORD(v36[0]) = 0;
      v38 = 0;
      if (a5)
      {
        v13 = [a5 unitID];
      }

      else
      {
        v13 = 0;
      }

      v22 = _LSExtensionPointFindWithIdentifier(*v12, a3, a4, v13, v36, &v38);
      if (_LSGetNSErrorFromOSStatusImpl(v22, a6, 0, "[LSExtensionPointRecord initWithIdentifier:platform:parentAppRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSExtensionPointRecord.mm", 85))
      {
        v23 = *([(_LSDatabase *)*v12 schema]+ 1592);
        v35.receiver = self;
        v35.super_class = LSExtensionPointRecord;
        v24 = [(LSRecord *)&v35 _initWithContext:v12 tableID:v23 unitID:LODWORD(v36[0])];
        goto LABEL_29;
      }
    }

    else if (a6)
    {
      v19 = +[_LSDServiceDomain defaultServiceDomain];
      v20 = LaunchServices::Database::Context::_get(&CurrentContext, v19, 0);

      if (v20)
      {
        v21 = 0;
      }

      else
      {
        v21 = v47;
      }

      *a6 = v21;
    }

    v24 = 0;
LABEL_29:
    if (CurrentContext && v46 == 1)
    {
      _LSContextDestroy(CurrentContext);
    }

    v28 = p_CurrentContext;
    CurrentContext = 0;
    p_CurrentContext = 0;

    LOBYTE(v46) = 0;
    v29 = v47;
    v47 = 0;

    return v24;
  }

  v33 = self;
  CurrentContext = 0;
  p_CurrentContext = &CurrentContext;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__29;
  v48 = __Block_byref_object_dispose__29;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__29;
  v42 = __Block_byref_object_dispose__29;
  v43 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 11;
  while (1)
  {
    v37[0] = v14;
    v37[1] = 3221225472;
    v37[2] = ___ZL12getEPFromLSDP8NSStringjPU15__autoreleasingP7NSError_block_invoke;
    v37[3] = &unk_1E6A18DF0;
    v37[4] = &CurrentContext;
    v16 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v37];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___ZL12getEPFromLSDP8NSStringjPU15__autoreleasingP7NSError_block_invoke_2;
    v36[3] = &unk_1E6A1CDD8;
    v36[4] = &v38;
    v36[5] = &CurrentContext;
    [v16 getExtensionPointRecordWithIdentifier:a3 platform:a4 completionHandler:v36];
    if (v39[5] || !_LSNSErrorIsXPCConnectionInterrupted(p_CurrentContext[5]))
    {
      break;
    }

    if (--v15 <= 1)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  v17 = v39[5];
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = p_CurrentContext[5];
    v25 = v18;
    v17 = v39[5];
  }

  v24 = v17;
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(&CurrentContext, 8);
  v26 = v18;

  if (a6 && !v24)
  {
    v27 = v26;
    *a6 = v26;
  }

  return v24;
}

+ (LSExtensionPointRecord)extensionPointRecordForCurrentProcess
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__29;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  os_unfair_lock_lock(&currentLock);
  objc_storeStrong(v12 + 5, currentExtensionPointRecord);
  os_unfair_lock_unlock(&currentLock);
  v2 = v12[5];
  if (!v2)
  {
    if (_LSCurrentProcessMayMapDatabase())
    {
      v3 = +[LSBundleRecord bundleRecordForCurrentProcess];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [v3 extensionPointRecord];
        v5 = v12[5];
        v12[5] = v4;
      }

      else
      {
        v5 = _LSExtensionsLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v6 = getpid();
          *buf = 67109120;
          v18 = v6;
          _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_INFO, "Bundle record not found for current process %d", buf, 8u);
        }
      }
    }

    else
    {
      v3 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __63__LSExtensionPointRecord_extensionPointRecordForCurrentProcess__block_invoke_2;
      v10[3] = &unk_1E6A1CDB0;
      v10[4] = &v11;
      [v3 getExtensionPointRecordForCurrentProcessWithCompletionHandler:v10];
    }

    v2 = v12[5];
    if (v2)
    {
      os_unfair_lock_lock(&currentLock);
      objc_storeStrong(&currentExtensionPointRecord, v12[5]);
      os_unfair_lock_unlock(&currentLock);
      v2 = v12[5];
    }
  }

  v7 = v2;
  _Block_object_dispose(&v11, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (void)setExtensionPointRecordForCurrentProcess:(id)a3
{
  os_unfair_lock_lock(&currentLock);
  objc_storeStrong(&currentExtensionPointRecord, a3);

  os_unfair_lock_unlock(&currentLock);
}

- (id)identifierWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6
{
  var1 = a6->var1;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)nameWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6
{
  var3 = a6->var3;
  [(_LSDatabase *)a3->db store];
  v7 = _CSStringCopyCFString();

  return v7;
}

- (id)versionWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *&a6->var2._opaque[16];
  v10[0] = *a6->var2._opaque;
  v10[1] = v6;
  v7 = _LSVersionNumberGetStringRepresentation(v10);
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)parentAppRecordWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const LSExtensionPointData *)a6
{
  if (a6->var7)
  {
    v8 = [LSApplicationRecord alloc];
    var7 = a6->var7;
    v12 = 0;
    v10 = [(LSApplicationRecord *)v8 _initWithContext:a3 bundleID:var7 bundleData:0 error:&v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_compatibilityObjectWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(const void *)a6
{
  v6 = [[LSExtensionPoint alloc] _initWithRecord:self resolveAndDetach:0];

  return v6;
}

+ (id)enumerator
{
  v2 = [(_LSDBEnumerator *)[_LSExtensionPointRecordEnumerator alloc] _initWithContext:0];

  return v2;
}

+ (id)enumeratorWithParentApplicationRecord:(id)a3
{
  v4 = [(_LSDBEnumerator *)[_LSExtensionPointRecordEnumerator alloc] _initWithContext:0];
  [v4 setParentApplicationRecord:a3];

  return v4;
}

+ (id)enumeratorForExtensionPointIdentifier:(id)a3
{
  v3 = [[_LSExtensionPointRecordEnumerator alloc] initWithExtensionPointIdentifier:a3];

  return v3;
}

+ (void)identifierForCurrentProcess
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Suppressing returning extension point identifier %{public}@ because the current process is not an app extension (path extension is %{public}@)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end