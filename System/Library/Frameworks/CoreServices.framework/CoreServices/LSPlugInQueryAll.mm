@interface LSPlugInQueryAll
- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)resolver error:(id *)error;
@end

@implementation LSPlugInQueryAll

- (id)resolveExpensiveQueryRemotelyUsingResolver:(id)resolver error:(id *)error
{
  v58 = *MEMORY[0x1E69E9840];
  resolverCopy = resolver;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  p_vtable = LSDefaultApplicationQueryDatabaseDefaultAppEvaluator.vtable;
  do
  {
    if (v5)
    {
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v5;
        _os_log_error_impl(&dword_18162D000, v8, OS_LOG_TYPE_ERROR, "failed batch fetch of all plugins, retrying: %@", buf, 0xCu);
      }
    }

    v9 = MEMORY[0x1E695DFD8];
    _init = [objc_alloc((p_vtable + 257)) _init];
    v11 = [v9 setWithObject:_init];
    v55 = 0;
    v12 = [resolverCopy _resolveQueries:v11 XPCConnection:0 error:&v55];
    v5 = v55;

    allValues = [v12 allValues];
    firstObject = [allValues firstObject];
    v14FirstObject = [firstObject firstObject];

    v16 = v14FirstObject;
    pluginUnits = [v14FirstObject pluginUnits];
    dbUUID = [v14FirstObject dbUUID];
    v53 = dbUUID;
    if (pluginUnits)
    {
      v19 = dbUUID == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      v48 = v14FirstObject;
      v49 = v12;
      v50 = v6;
      v51 = v4;
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([pluginUnits count])
      {
        v21 = 0;
        v22 = 50;
        while (1)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [pluginUnits count];
          v25 = (v24 - v21) >= 0x32 ? 50 : v24 - v21;
          v26 = [pluginUnits subarrayWithRange:{v21, v25}];
          v54 = 0;
          v27 = MEMORY[0x1E695DFD8];
          v28 = resolverCopy;
          v29 = v26;
          v30 = v53;
          v31 = [[LSPlugInQueryWithUnits alloc] initWithPlugInUnits:v29 forDatabaseWithUUID:v30];

          v32 = [v27 setWithObject:v31];
          v33 = [v28 _resolveQueries:v32 XPCConnection:0 error:&v54];

          if (v33)
          {
            allValues2 = [v33 allValues];
            firstObject2 = [allValues2 firstObject];
            v36 = firstObject2;
            v37 = MEMORY[0x1E695E0F0];
            if (firstObject2)
            {
              v37 = firstObject2;
            }

            v38 = v37;
          }

          else
          {
            v38 = 0;
          }

          v39 = v54;
          if (!v38)
          {
            break;
          }

          [v20 addObjectsFromArray:v38];

          objc_autoreleasePoolPop(v23);
          v21 = v22;
          v40 = [pluginUnits count] > v22;
          v22 += 50;
          v5 = v39;
          if (!v40)
          {
            goto LABEL_24;
          }
        }

        objc_autoreleasePoolPop(v23);
        v4 = v51;
      }

      else
      {
        v39 = v5;
LABEL_24:
        v4 = [v20 copy];
      }

      v5 = v39;
      v6 = v50;
      p_vtable = (LSDefaultApplicationQueryDatabaseDefaultAppEvaluator + 24);
      v16 = v48;
      v12 = v49;
    }

    if (v4)
    {
      v41 = 1;
    }

    else if (_LSNSErrorIsXPCConnectionInterrupted(v5))
    {
      v41 = 0;
    }

    else
    {
      domain = [v5 domain];
      if ([domain isEqual:@"LSApplicationWorkspaceErrorDomain"])
      {
        v41 = [v5 code] != 114;
      }

      else
      {
        v41 = 1;
      }
    }

    if (v41)
    {
      break;
    }

    ++v6;
  }

  while (v6 != 10);
  if (!v4)
  {
    v43 = _LSDefaultLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [LSPlugInQueryAll resolveExpensiveQueryRemotelyUsingResolver:v5 error:v43];
    }

    if (error)
    {
      v44 = v5;
      *error = v5;
    }
  }

  v45 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)resolveExpensiveQueryRemotelyUsingResolver:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "failed batch fetch of all plugins, giving up: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end