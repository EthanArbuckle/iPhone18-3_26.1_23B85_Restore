@interface LSPlugInQueryWithUnits
- (LSPlugInQueryWithUnits)initWithCoder:(id)coder;
- (LSPlugInQueryWithUnits)initWithPlugInUnits:(id)units forDatabaseWithUUID:(id)d;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSPlugInQueryWithUnits

- (LSPlugInQueryWithUnits)initWithPlugInUnits:(id)units forDatabaseWithUUID:(id)d
{
  unitsCopy = units;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryWithUnits;
  _init = [(LSPlugInQuery *)&v12 _init];
  if (_init)
  {
    v9 = [unitsCopy copy];
    pluginUnits = _init->_pluginUnits;
    _init->_pluginUnits = v9;

    objc_storeStrong(&_init->_dbUUID, d);
  }

  return _init;
}

- (LSPlugInQueryWithUnits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = LSPlugInQueryWithUnits;
  v5 = [(LSPlugInQuery *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"pluginUnits"];
    pluginUnits = v5->_pluginUnits;
    v5->_pluginUnits = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"dbUUID"];
    dbUUID = v5->_dbUUID;
    v5->_dbUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pluginUnits = self->_pluginUnits;
  coderCopy = coder;
  [coderCopy encodeObject:pluginUnits forKey:@"pluginUnits"];
  [coderCopy encodeObject:self->_dbUUID forKey:@"dbUUID"];
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v27[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  v22 = 0;
  v23 = 0;
  inited = _LSContextInitReturningError(&v23, &v22);
  v9 = v22;
  if (inited)
  {
    v10 = _LSDatabaseGetCacheGUID(v23);
    v11 = [v10 isEqual:self->_dbUUID];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DFD8] setWithArray:self->_pluginUnits];
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(_LSDatabase *)v23 store];
      v14 = *([(_LSDatabase *)v23 schema]+ 1588);
      v15 = v12;
      v16 = v13;
      _CSStoreEnumerateUnits();
      if ([v16 isEqual:v15])
      {
        if ([v16 count])
        {
          [(LSPlugInQuery *)self sort:0 pluginIDs:v15 andYield:blockCopy context:&v23];
        }
      }

      else
      {
        v17 = [v15 mutableCopy];
        [v17 minusSet:v16];
        v18 = _LSDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [LSPlugInQueryWithUnits _enumerateWithXPCConnection:v17 block:v18];
        }

        v26 = *MEMORY[0x1E696A278];
        v27[0] = @"specified plugin units were not available";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
        v20 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 114, v19, "[LSPlugInQueryWithUnits _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryAll.m", 141);

        blockCopy[2](blockCopy, 0, v20);
        v9 = v20;
      }
    }

    else
    {
      v24 = *MEMORY[0x1E696A278];
      v25 = @"DB UUID mismatch";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v16 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 114, v15, "[LSPlugInQueryWithUnits _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryAll.m", 147);
      blockCopy[2](blockCopy, 0, v16);
    }

    _LSContextDestroy(&v23);
  }

  else
  {
    blockCopy[2](blockCopy, 0, v9);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __60__LSPlugInQueryWithUnits__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v6 addObject:v7];
  }
}

- (void)_enumerateWithXPCConnection:(uint64_t)a1 block:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "LSPlugInQueryWithUnits: missing units %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end