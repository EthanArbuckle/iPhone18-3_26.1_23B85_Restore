@interface LSRecordPromise
- (LSRecordPromise)initWithCoder:(id)coder;
- (LSRecordPromise)initWithRecord:(id)record error:(id *)error;
- (id)_initWithRecord:(id)record;
- (id)fulfillReturningError:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSRecordPromise

- (LSRecordPromise)initWithRecord:(id)record error:(id *)error
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!record)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSRecord.mm" lineNumber:796 description:{@"Invalid parameter not satisfying: %@", @"record != nil"}];
  }

  os_unfair_recursive_lock_lock_with_options();
  if (*(record + 2))
  {
    v7 = [(LSRecordPromise *)self _initWithRecord:record];
  }

  else
  {
    if (error)
    {
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"provided record was not attached";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v8, "[LSRecordPromise initWithRecord:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 801);
    }

    v7 = 0;
  }

  os_unfair_recursive_lock_unlock();
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)fulfillReturningError:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = self->_db;
  v30 = 0;
  v31 = v5;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (_LSSetLocalDatabaseIfNewer(self->_db))
  {
    v6 = &v31;
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "database in LSRecordPromise is out of date. Using current database.", buf, 2u);
    }

    v8 = +[_LSDServiceDomain defaultServiceDomain];
    v6 = LaunchServices::Database::Context::_get(&v27, v8, 0);

    if (!v6)
    {
      v18 = +[_LSDServiceDomain defaultServiceDomain];
      v19 = LaunchServices::Database::Context::_get(&v27, v18, 0);

      if (!v19)
      {
        v11 = v30;
        if (error)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      v11 = 0;
LABEL_15:
      if (error)
      {
LABEL_16:
        v20 = v11;
        v13 = 0;
        *error = v11;
        goto LABEL_19;
      }

LABEL_18:
      v13 = 0;
      goto LABEL_19;
    }
  }

  pi = self->_pi;
  v25 = 0;
  v10 = _LSCheckRecordPISizeAndVersionReturningPIInnerBytes(pi, &v25);
  v11 = v25;
  if (!v10)
  {
    goto LABEL_15;
  }

  SubclassForTable = LaunchServices::Record::findSubclassForTable(v6, *(v10 + 2));
  if (!SubclassForTable)
  {
    v32 = *MEMORY[0x1E696A278];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bogus table %d", *(v10 + 2)];
    v33[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v16, "[LSRecordPromise fulfillReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 840);

    v11 = v17;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v13 = [[SubclassForTable alloc] _initWithContext:v6 persistentIdentifier:self->_pi];
  if (!v13)
  {
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[LSRecordPromise fulfillReturningError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 836);

    v11 = v14;
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_19:
  if (v27 && v29 == 1)
  {
    _LSContextDestroy(v27);
  }

  v21 = v28;
  v27 = 0;
  v28 = 0;

  v29 = 0;
  v22 = v30;
  v30 = 0;

  v23 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_initWithRecord:(id)record
{
  v17.receiver = self;
  v17.super_class = LSRecordPromise;
  v5 = [(LSRecordPromise *)&v17 init];
  if (v5)
  {
    recordCopy = record;
    os_unfair_recursive_lock_lock_with_options();
    v7 = recordCopy;
    v8 = v7;
    v9 = v7[2];
    if ((*(v7 + 31) & 0x40) == 0 && !v9)
    {
      __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(v7, a2);
    }

    if (v9)
    {
      v10 = v7;
      [(_LSDatabase *)v8[2] store];
      v11 = *(v10 + 14);
      v12 = *(v10 + 6);
      CSStoreGetUnit();
      v13 = v8[2];
    }

    else
    {
      v13 = 0;
    }

    os_unfair_recursive_lock_unlock();
    objc_storeStrong(&v5->_db, v13);
    persistentIdentifier = [v8 persistentIdentifier];
    pi = v5->_pi;
    v5->_pi = persistentIdentifier;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (LaunchServices::Record::checkForExfiltrationRisk(coder, a2))
  {
    v11 = *MEMORY[0x1E696A278];
    v12[0] = @"This process may not encode instances of LSRecordPromise. This class is only for use by InstallCoordination.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v5, "[LSRecordPromise encodeWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 884);
    [coder failWithError:v6];

    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [coder encodeObject:-[_LSDatabase store](self->_db) forKey:@"store"];
    v8 = _LSDatabaseGetNode(self->_db);
    [coder encodeObject:v8 forKey:@"node"];

    [coder encodeBool:(_LSDatabaseGetSessionKey(self->_db) >> 32) & 1 forKey:@"systemSession"];
    [coder encodeInt64:_LSDatabaseGetSessionKey(self->_db) forKey:@"userID"];
    pi = self->_pi;
    v10 = *MEMORY[0x1E69E9840];

    [coder encodeObject:pi forKey:@"persistentIdentifier"];
  }
}

- (LSRecordPromise)initWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = LSRecordPromise;
  v4 = [(LSRecordPromise *)&v17 init];
  if (!v4)
  {
    return 0;
  }

  v5 = [coder ls_decodeObjectOfClass:_CSStoreGetXPCClass() forKey:@"store"];
  v6 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"node"];
  v7 = [coder decodeInt64ForKey:@"userID"];
  if ([coder decodeBoolForKey:@"systemSession"])
  {
    v8 = 0x100000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = [coder ls_decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
  v10 = v9;
  if (v5 && v6 && v9)
  {
    v16 = 0;
    v11 = (v8 & 0xFFFFFFFF00000000 | v7);
    v12 = _LSDatabaseCreate(v6, v11, v5, &v16);
    v13 = v16;
    if (v12)
    {
      objc_storeStrong(&v4->_db, v12);
      objc_storeStrong(&v4->_pi, v10);
    }

    else
    {
      [coder failWithError:v13];

      v4 = 0;
    }

    goto LABEL_15;
  }

  v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4865, 0, "[LSRecordPromise initWithCoder:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 918);
  [coder failWithError:v15];

  v4 = 0;
  result = 0;
  if (v5)
  {
LABEL_15:
    CFRelease(v5);
    return v4;
  }

  return result;
}

@end