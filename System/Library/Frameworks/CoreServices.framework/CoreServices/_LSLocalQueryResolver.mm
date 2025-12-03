@interface _LSLocalQueryResolver
- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error;
- (void)_enumerateResolvedResultsOfQuery:(id)query XPCConnection:(id)connection withBlock:(id)block;
@end

@implementation _LSLocalQueryResolver

- (id)_resolveQueries:(id)queries XPCConnection:(id)connection error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  queriesCopy = queries;
  connectionCopy = connection;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v7 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v7 assertActiveForThisThread];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = queriesCopy;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v19 = *v37;
    v18 = 0;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v37 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v36 + 1) + 8 * v9);
      v30 = 0;
      v31 = &v30;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__44;
      v34 = __Block_byref_object_dispose__44;
      array = [MEMORY[0x1E695DF70] array];
      v24 = 0;
      v25 = &v24;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__44;
      v28 = __Block_byref_object_dispose__44;
      v29 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __61___LSLocalQueryResolver__resolveQueries_XPCConnection_error___block_invoke;
      v23[3] = &unk_1E6A1DAC0;
      v23[4] = &v30;
      v23[5] = &v24;
      [(_LSLocalQueryResolver *)self _enumerateResolvedResultsOfQuery:v10 XPCConnection:connectionCopy withBlock:v23];
      v11 = v31[5];
      if (v11)
      {
        [dictionary setObject:v31[5] forKeyedSubscript:v10];
      }

      else
      {

        v12 = v25[5];
        dictionary = 0;
        v18 = v12;
      }

      _Block_object_dispose(&v24, 8);

      _Block_object_dispose(&v30, 8);
      if (!v11)
      {
        break;
      }

      if (v8 == ++v9)
      {
        v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  if (error && !dictionary)
  {
    v13 = v18;
    *error = v18;
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)_enumerateResolvedResultsOfQuery:(id)query XPCConnection:(id)connection withBlock:(id)block
{
  v47 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  connectionCopy = connection;
  blockCopy = block;
  isInXCTestRigInsecure = [__LSDefaultsGetSharedInstance() isInXCTestRigInsecure];
  if (((queryCopy != 0) & isInXCTestRigInsecure) != 1)
  {
    goto LABEL_12;
  }

  v11 = objc_autoreleasePoolPush();
  v41 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:queryCopy requiringSecureCoding:1 error:&v41];
  v13 = v41;
  if (!v12)
  {
    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(_LSLocalQueryResolver *)v13 _enumerateResolvedResultsOfQuery:v16 XPCConnection:v17 withBlock:v18, v19, v20, v21, v22];
    }

    goto LABEL_10;
  }

  v40 = v13;
  v14 = [MEMORY[0x1E696ACD0] ls_unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v40];
  v15 = v40;

  if (!v14)
  {
    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(_LSLocalQueryResolver *)v15 _enumerateResolvedResultsOfQuery:v16 XPCConnection:v23 withBlock:v24, v25, v26, v27, v28];
    }

    queryCopy = 0;
    v13 = v15;
LABEL_10:

    goto LABEL_11;
  }

  v13 = v15;
  queryCopy = v14;
LABEL_11:

  objc_autoreleasePoolPop(v11);
LABEL_12:
  if (!queryCopy || ![queryCopy _requiresDatabaseMappingEntitlement])
  {
    goto LABEL_24;
  }

  if (connectionCopy)
  {
    _xpcConnection = [connectionCopy _xpcConnection];
    v30 = _LSXPCConnectionMayMapDatabase(_xpcConnection) == 0;
  }

  else
  {
    v30 = 0;
  }

  if (((v30 | isInXCTestRigInsecure ^ 1) & 1) == 0)
  {
    v30 = +[_LSQueryContext simulateLimitedMappingForXCTests];
  }

  if (!v30)
  {
    goto LABEL_24;
  }

  if ([queryCopy isLegacy])
  {
    v31 = _LSDefaultLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = [connectionCopy processIdentifier];
      *buf = 138543618;
      *&buf[4] = queryCopy;
      *&buf[12] = 1024;
      *&buf[14] = processIdentifier;
      _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Unentitled query %{public}@ issued from pid %i. Allowing due to legacy SPI.", buf, 0x12u);
    }

LABEL_24:
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v45 = 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __82___LSLocalQueryResolver__enumerateResolvedResultsOfQuery_XPCConnection_withBlock___block_invoke;
    v37[3] = &unk_1E6A1DAE8;
    v39 = buf;
    v38 = blockCopy;
    [queryCopy _enumerateWithXPCConnection:connectionCopy block:v37];
    v33 = v38;
    goto LABEL_25;
  }

  v35 = _LSDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    -[_LSLocalQueryResolver _enumerateResolvedResultsOfQuery:XPCConnection:withBlock:].cold.3(queryCopy, v46, [connectionCopy processIdentifier], v35);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v45 = 0;
  v42 = *MEMORY[0x1E696A278];
  v43 = @"Query not allowed";
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v36, "[_LSLocalQueryResolver _enumerateResolvedResultsOfQuery:XPCConnection:withBlock:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSQuery/LSQueryContext.mm", 308);

  (*(blockCopy + 2))(blockCopy, 0, v33, *&buf[8] + 24);
LABEL_25:

  _Block_object_dispose(buf, 8);
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateResolvedResultsOfQuery:(uint64_t)a3 XPCConnection:(uint64_t)a4 withBlock:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to decode query: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateResolvedResultsOfQuery:(uint64_t)a3 XPCConnection:(uint64_t)a4 withBlock:(uint64_t)a5 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_7(&dword_18162D000, a2, a3, "Failed to encode query: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_enumerateResolvedResultsOfQuery:(int)a3 XPCConnection:(os_log_t)log withBlock:.cold.3(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Unentitled query %{public}@ issued from pid %i. Disallowing and yielding an error.", buf, 0x12u);
}

@end