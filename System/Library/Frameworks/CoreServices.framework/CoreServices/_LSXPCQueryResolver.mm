@interface _LSXPCQueryResolver
- (_LSXPCQueryResolver)init;
- (id)_resolveQueries:(id)a3 XPCConnection:(id)a4 error:(id *)a5;
- (id)resolveExpensiveRemoteQueriesInSet:(id)a3 XPCConnection:(id)a4 error:(id *)a5;
- (id)resolveWhatWeCanLocallyWithQueries:(id)a3 XPCConnection:(id)a4 error:(id *)a5;
- (void)_enumerateResolvedResultsOfQuery:(id)a3 XPCConnection:(id)a4 withBlock:(id)a5;
@end

@implementation _LSXPCQueryResolver

- (_LSXPCQueryResolver)init
{
  v6.receiver = self;
  v6.super_class = _LSXPCQueryResolver;
  v2 = [(_LSXPCQueryResolver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_LSLocalQueryResolver);
    localResolver = v2->_localResolver;
    v2->_localResolver = v3;
  }

  return v2;
}

- (id)resolveWhatWeCanLocallyWithQueries:(id)a3 XPCConnection:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:338 description:@"Hit the client-side query resolution codepath from within lsd! This is a serious bug! Please file a radar against Launch Services."];
  }

  v11 = [MEMORY[0x1E695DFA8] set];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        if ([v16 _canResolveLocallyWithoutMappingDatabase])
        {
          [v11 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  if ([v11 count])
  {
    localResolver = self->_localResolver;
    v25 = 0;
    v18 = [(_LSLocalQueryResolver *)localResolver _resolveQueries:v11 XPCConnection:v10 error:&v25];
    v19 = v25;
    v20 = v19;
    if (a5 && !v18)
    {
      v21 = v19;
      v18 = 0;
      *a5 = v20;
    }
  }

  else
  {
    v20 = 0;
    v18 = MEMORY[0x1E695E0F8];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)resolveExpensiveRemoteQueriesInSet:(id)a3 XPCConnection:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"LSQueryContext.mm" lineNumber:372 description:@"Hit the client-side remote-expensive query resolution codepath from within lsd! This is a serious bug! Please file a radar against Launch Services."];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v20;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if ([v13 _remoteResolutionIsExpensive])
        {
          if ((v10 & 1) == 0)
          {
            __LAUNCH_SERVICES_IS_FAULTING_BECAUSE_THIS_PROCESS_IS_USING_VERY_EXPENSIVE_SPI__();
          }

          v21 = 0;
          v14 = [v13 resolveExpensiveQueryRemotelyUsingResolver:self error:&v21];
          v15 = v21;
          if (v14)
          {
            [v7 setObject:v14 forKeyedSubscript:v13];
          }

          else
          {
            v16 = _LSDefaultLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v27 = v15;
              _os_log_fault_impl(&dword_18162D000, v16, OS_LOG_TYPE_FAULT, "Could not resolve expensive query remotely! This may lead to lsd jetsams! %@", buf, 0xCu);
            }
          }

          v10 = 1;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_resolveQueries:(id)a3 XPCConnection:(id)a4 error:(id *)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__44;
  v55 = __Block_byref_object_dispose__44;
  v56 = 0;
  v48 = 0;
  v49[0] = &v48;
  v49[1] = 0x3032000000;
  v49[2] = __Block_byref_object_copy__44;
  v49[3] = __Block_byref_object_dispose__44;
  v50 = 0;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v59 count:16];
  if (v11)
  {
    v12 = *v45;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v44 + 1) + 8 * i) isLegacy])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v44 objects:v59 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = (v49[0] + 40);
  obj = *(v49[0] + 40);
  v16 = [(_LSXPCQueryResolver *)self resolveWhatWeCanLocallyWithQueries:v10 XPCConnection:v9 error:&obj];
  objc_storeStrong(v15, obj);
  v17 = v52[5];
  v52[5] = v16;

  v18 = v52[5];
  if (v18)
  {
    v19 = [v10 mutableCopy];
    v20 = MEMORY[0x1E695DFD8];
    v21 = [v52[5] allKeys];
    v22 = [v20 setWithArray:v21];
    [v19 minusSet:v22];

    if ([v19 count])
    {
      v23 = (v49[0] + 40);
      v42 = *(v49[0] + 40);
      v24 = [(_LSXPCQueryResolver *)self resolveExpensiveRemoteQueriesInSet:v19 XPCConnection:v9 error:&v42];
      objc_storeStrong(v23, v42);
      if (v24)
      {
        v25 = [v52[5] mutableCopy];
        [v25 addEntriesFromDictionary:v24];
        objc_storeStrong(v52 + 5, v25);
        v26 = MEMORY[0x1E695DFD8];
        v27 = [v24 allKeys];
        v28 = [v26 setWithArray:v27];
        [v19 minusSet:v28];
      }
    }

    if ([v19 count])
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __59___LSXPCQueryResolver__resolveQueries_XPCConnection_error___block_invoke;
      v37[3] = &unk_1E6A1DB38;
      v39 = &v48;
      v41 = v14;
      v38 = v19;
      v40 = &v51;
      v29 = MEMORY[0x1865D71B0](v37);
      v30 = 0;
      while (1)
      {
        v29[2](v29);
        if (!_LSNSErrorIsXPCConnectionInterrupted(*(v49[0] + 40)))
        {
          break;
        }

        v31 = _LSDefaultLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(_LSXPCQueryResolver *)buf _resolveQueries:v49 XPCConnection:&v58 error:v31];
        }

        v32 = *(v49[0] + 40);
        *(v49[0] + 40) = 0;

        if (++v30 == 5)
        {
          goto LABEL_27;
        }
      }

      if (v30)
      {
        v33 = _LSDefaultLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [_LSXPCQueryResolver _resolveQueries:v30 XPCConnection:v33 error:?];
        }
      }

LABEL_27:
    }

    v18 = v52[5];
  }

  if (a5 && !v18)
  {
    *a5 = *(v49[0] + 40);
    v18 = v52[5];
  }

  v34 = v18;
  _Block_object_dispose(&v48, 8);

  _Block_object_dispose(&v51, 8);
  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

- (void)_enumerateResolvedResultsOfQuery:(id)a3 XPCConnection:(id)a4 withBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DFD8] setWithObject:a3];
  v18 = 0;
  v11 = [(_LSXPCQueryResolver *)self _resolveQueries:v10 XPCConnection:v8 error:&v18];
  v12 = v18;

  if (v11)
  {
    v13 = [v11 allValues];
    v14 = [v13 firstObject];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __80___LSXPCQueryResolver__enumerateResolvedResultsOfQuery_XPCConnection_withBlock___block_invoke;
    v16[3] = &unk_1E6A1DB60;
    v17 = v9;
    [v14 enumerateObjectsUsingBlock:v16];
  }

  else
  {
    v15 = 0;
    (*(v9 + 2))(v9, 0, v12, &v15);
  }
}

- (void)_resolveQueries:(int)a1 XPCConnection:(NSObject *)a2 error:.cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "Got result for query with attempt %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_resolveQueries:(void *)a3 XPCConnection:(os_log_t)log error:.cold.2(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138543362;
  *a3 = v4;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Re-trying failed xpc message to lsd: %{public}@", buf, 0xCu);
}

@end