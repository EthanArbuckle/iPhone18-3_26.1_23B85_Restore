@interface LSPlugInQuery
+ (id)pluginQuery;
+ (id)pluginQueryWithIdentifier:(id)a3;
+ (id)pluginQueryWithQueryDictionary:(id)a3 applyFilter:(id)a4;
+ (id)pluginQueryWithURL:(id)a3;
+ (id)pluginQueryWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_init;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
- (void)_init;
- (void)encodeWithCoder:(id)a3;
- (void)sort:(BOOL)a3 pluginIDs:(id)a4 andYield:(id)a5 context:(LSContext *)a6;
@end

@implementation LSPlugInQuery

- (id)_init
{
  v4.receiver = self;
  v4.super_class = LSPlugInQuery;
  v2 = [(_LSQuery *)&v4 _init];
  if (v2 && [v2 isMemberOfClass:objc_opt_class()])
  {
    [LSPlugInQuery _init];
  }

  return v2;
}

+ (id)pluginQuery
{
  v2 = [[LSPlugInQueryAll alloc] _init];

  return v2;
}

+ (id)pluginQueryWithQueryDictionary:(id)a3 applyFilter:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[LSPlugInQueryWithQueryDictionary alloc] _initWithQueryDictionary:v6 applyFilter:v5];

  return v7;
}

+ (id)pluginQueryWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[LSPlugInQueryWithIdentifier alloc] _initWithIdentifier:v3 inMap:9];

  return v4;
}

+ (id)pluginQueryWithUUID:(id)a3
{
  v3 = a3;
  v4 = [LSPlugInQueryWithIdentifier alloc];
  v5 = [v3 UUIDString];

  v6 = [(LSPlugInQueryWithIdentifier *)v4 _initWithIdentifier:v5 inMap:11];

  return v6;
}

+ (id)pluginQueryWithURL:(id)a3
{
  v3 = a3;
  v4 = [[LSPlugInQueryWithURL alloc] _initWithURL:v3];

  return v4;
}

- (void)sort:(BOOL)a3 pluginIDs:(id)a4 andYield:(id)a5 context:(LSContext *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    [LSPlugInQuery sort:pluginIDs:andYield:context:];
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  [LSPlugInQuery sort:pluginIDs:andYield:context:];
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (a6)
  {
    goto LABEL_4;
  }

LABEL_23:
  [LSPlugInQuery sort:pluginIDs:andYield:context:];
LABEL_4:
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v14 = 0x1E6A18000uLL;
    v30 = a6;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 unsignedLongLongValue];
        v19 = [*(v14 + 616) plugInKitProxyForPlugin:v18 withContext:a6];
        if (v19)
        {
          if (((v10)[2](v10, v19, 0) & 1) == 0)
          {

            objc_autoreleasePoolPop(v17);
            goto LABEL_20;
          }
        }

        else
        {
          v20 = a6;
          v21 = v12;
          v22 = v13;
          v23 = v10;
          v24 = v14;
          v25 = _LSGetPlugin(v20->db, v18);
          if (v25)
          {
            v26 = *(v25 + 172);
            [(_LSDatabase *)v20->db store];
            v27 = _CSStringCopyCFString();
          }

          else
          {
            v27 = @"<unknown>";
          }

          v28 = _LSDefaultLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v37 = v27;
            v38 = 2048;
            v39 = v18;
            _os_log_error_impl(&dword_18162D000, v28, OS_LOG_TYPE_ERROR, "Failed to create LSPlugInKitProxy object (after sorting) for %@ (%llu)", buf, 0x16u);
          }

          v14 = v24;
          v10 = v23;
          v13 = v22;
          v12 = v21;
          a6 = v30;
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v12);
  }

LABEL_20:

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &v14;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3812000000;
  v17 = __Block_byref_object_copy__39;
  v18 = __Block_byref_object_dispose__39;
  v19 = 256;
  v20 = 0;
  if (v6)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [LSPlugInQuery _enumerateWithXPCConnection:v9 block:?];
    }

    v8 = v15;
  }

  v10 = _LSContextInit(v8 + 6);
  if (v10)
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "[LSPlugInQuery _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQuery.m", 173);
    v7[2](v7, 0, v11);
  }

  else
  {
    v12 = [MEMORY[0x1E695DFA8] set];
    [(_LSDatabase *)v15[6] store];
    v13 = *([(_LSDatabase *)v15[6] schema]+ 1588);
    v11 = v12;
    _CSStoreEnumerateUnits();
    [(LSPlugInQuery *)self sort:0 pluginIDs:v11 andYield:v7 context:v15 + 6];
    _LSContextDestroy(v15 + 6);
  }

  _Block_object_dispose(&v14, 8);
}

void __51__LSPlugInQuery__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_LSPluginIsValid(*(*(*(a1 + 40) + 8) + 48), a2, a3, 0, 0, 0) && _LSPluginCheckExtensionPoint(*(*(*(a1 + 40) + 8) + 48), a2, a3, 0))
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v6 addObject:v7];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LSPlugInQuery;
  if ([(_LSQuery *)&v7 isEqual:v4])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = LSPlugInQuery;
  return [(_LSQuery *)&v3 hash];
}

- (void)encodeWithCoder:(id)a3
{
  if (([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    __LAUNCH_SERVICES_IS_GENERATING_A_SANDBOX_EXCEPTION_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();

    __LAUNCH_SERVICES_IS_ABORTING_BECAUSE_THIS_PROCESS_MAY_NOT_MAP_THE_DATABASE__();
  }
}

- (void)sort:pluginIDs:andYield:context:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"pluginIDs != nil" object:? file:? lineNumber:? description:?];
}

- (void)sort:pluginIDs:andYield:context:.cold.2()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"yield != nil" object:? file:? lineNumber:? description:?];
}

- (void)sort:pluginIDs:andYield:context:.cold.3()
{
  OUTLINED_FUNCTION_14();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v0 handleFailureInMethod:@"context != NULL" object:? file:? lineNumber:? description:?];
}

- (void)_init
{
  OUTLINED_FUNCTION_14();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_13();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end