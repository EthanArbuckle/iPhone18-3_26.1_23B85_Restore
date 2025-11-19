@interface _LSCoreTypesRecordProxy
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (LSBundleRecord)_realRecord;
- (id)URL;
- (id)_loadRealRecord;
- (id)debugDescription;
- (id)description;
- (id)serviceRecords;
- (unint64_t)hash;
- (void)detach;
- (void)forwardInvocation:(id)a3;
@end

@implementation _LSCoreTypesRecordProxy

- (id)URL
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" isDirectory:1];

  return v2;
}

- (void)detach
{
  if (_LSCurrentProcessMayMapDatabase())
  {
    os_unfair_lock_lock(&LaunchServices::Record::coreTypesProxyLock);
    obj = [(LSBundleRecord *)self->_realRecord copy];
    if (obj)
    {
      objc_storeStrong(&self->_realRecord, obj);
    }

    os_unfair_lock_unlock(&LaunchServices::Record::coreTypesProxyLock);
    [obj detach];
  }
}

- (id)_loadRealRecord
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__9;
  v34 = __Block_byref_object_dispose__9;
  v35 = 0;
  WeakRetained = objc_loadWeakRetained(&LaunchServices::Record::weakCoreTypesRecord);
  if (WeakRetained)
  {
    objc_storeStrong(v31 + 5, WeakRetained);
  }

  else
  {
    MayMapDatabase = _LSCurrentProcessMayMapDatabase();
    if (MayMapDatabase)
    {
      CurrentContext = _LSDatabaseContextGetCurrentContext(MayMapDatabase);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v4 = +[_LSDServiceDomain defaultServiceDomain];
      v5 = LaunchServices::Database::Context::_get(&CurrentContext, v4, 0);

      if (v5)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0;
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v21 = 0;
        [(_LSDatabase *)*v5 store];
        v6 = *([(_LSDatabase *)*v5 schema]+ 4);
        v17[5] = MEMORY[0x1E69E9820];
        v17[6] = 3221225472;
        v17[7] = __42___LSCoreTypesRecordProxy__loadRealRecord__block_invoke;
        v17[8] = &unk_1E6A1AFB8;
        v17[9] = &v18;
        v17[10] = &v22;
        _CSStoreEnumerateUnits();
        if (*(v23 + 6))
        {
          v7 = [[FSNode alloc] initWithPath:@"/System/Library/CoreServices/MobileCoreTypes.bundle" flags:8 error:0];
          v8 = [LSBundleRecord alloc];
          v9 = [(_LSDatabase *)*v5 schema];
          v10 = [(LSBundleRecord *)v8 _initWithNode:v7 bundleIdentifier:@"com.apple.mobilecoretypes" context:v5 tableID:*(v9 + 4) unitID:*(v23 + 6) bundleBaseData:v19[3] error:0];
          v11 = v31[5];
          v31[5] = v10;
        }

        _Block_object_dispose(&v18, 8);
        _Block_object_dispose(&v22, 8);
      }

      if (CurrentContext && v28 == 1)
      {
        _LSContextDestroy(CurrentContext);
      }

      v12 = v27;
      CurrentContext = 0;
      v27 = 0;

      v28 = 0;
      v13 = v29;
      v29 = 0;
    }

    else
    {
      v14 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42___LSCoreTypesRecordProxy__loadRealRecord__block_invoke_3;
      v17[3] = &unk_1E6A1AFE0;
      v17[4] = &v30;
      [v14 getBundleRecordForCoreTypesWithCompletionHandler:v17];
    }

    LaunchServices::Record::storeWeakSharedRecord(v31[5], &LaunchServices::Record::weakCoreTypesRecord);
  }

  v15 = v31[5];
  _Block_object_dispose(&v30, 8);

  return v15;
}

- (LSBundleRecord)_realRecord
{
  os_unfair_lock_lock(&LaunchServices::Record::coreTypesProxyLock);
  realRecord = self->_realRecord;
  if (!realRecord)
  {
    v4 = [(_LSCoreTypesRecordProxy *)self _loadRealRecord];
    v5 = self->_realRecord;
    self->_realRecord = v4;

    realRecord = self->_realRecord;
  }

  v6 = realRecord;
  os_unfair_lock_unlock(&LaunchServices::Record::coreTypesProxyLock);

  return v6;
}

- (id)serviceRecords
{
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v2;
}

- (void)forwardInvocation:(id)a3
{
  v4 = -[_LSCoreTypesRecordProxy forwardingTargetForSelector:](self, "forwardingTargetForSelector:", [a3 selector]);
  [a3 setTarget:?];
  [a3 invoke];
}

- (unint64_t)hash
{
  v2 = [(_LSCoreTypesRecordProxy *)self URL];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self || ([a3 isMemberOfClass:objc_opt_class()] & 1) != 0)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {

      LOBYTE(v5) = [a3 isEqual:self];
    }
  }

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p>", objc_opt_class(), self];

  return v2;
}

- (id)debugDescription
{
  os_unfair_lock_lock(&LaunchServices::Record::coreTypesProxyLock);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  if (self->_realRecord)
  {
    v5 = @"yes";
  }

  else
  {
    v5 = @"no";
  }

  v6 = [v3 initWithFormat:@"<%@ %p> { resolved: %@ }", v4, self, v5];
  os_unfair_lock_unlock(&LaunchServices::Record::coreTypesProxyLock);

  return v6;
}

- (BOOL)isKindOfClass:(Class)a3
{
  Class = object_getClass(self);
  if (Class)
  {
    while (Class != a3)
    {
      Class = class_getSuperclass(Class);
      if (!Class)
      {
        goto LABEL_4;
      }
    }

    return 1;
  }

  else
  {
LABEL_4:

    return [LSBundleRecord isSubclassOfClass:a3];
  }
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = objc_opt_class();
  if (class_conformsToProtocol(v4, a3))
  {
    return 1;
  }

  v6 = objc_opt_class();

  return class_conformsToProtocol(v6, a3);
}

@end