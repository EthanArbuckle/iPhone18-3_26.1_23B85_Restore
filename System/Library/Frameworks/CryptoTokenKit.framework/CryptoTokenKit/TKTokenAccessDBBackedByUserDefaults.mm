@interface TKTokenAccessDBBackedByUserDefaults
- (TKTokenAccessDBBackedByUserDefaults)init;
- (id)_keyRefForRequest:(id)request;
- (id)allStoredBundleIDs;
- (id)fetchStoredInstallationIDForBundleID:(id)d;
- (int64_t)fetchAccessForRequest:(id)request;
- (void)clearAllAccessRecords;
- (void)removeAccessForBundleID:(id)d matchPartial:(BOOL)partial;
- (void)storeAccess:(int64_t)access forRequest:(id)request;
- (void)storeInstallationID:(id)d forBundleID:(id)iD;
@end

@implementation TKTokenAccessDBBackedByUserDefaults

- (TKTokenAccessDBBackedByUserDefaults)init
{
  v6.receiver = self;
  v6.super_class = TKTokenAccessDBBackedByUserDefaults;
  v2 = [(TKTokenAccessDBBackedByUserDefaults *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.ctkd.access-db"];
    db = v2->_db;
    v2->_db = v3;
  }

  return v2;
}

- (int64_t)fetchAccessForRequest:(id)request
{
  v4 = [(TKTokenAccessDBBackedByUserDefaults *)self _keyRefForRequest:request];
  v5 = [(NSUserDefaults *)self->_db objectForKey:v4];

  if (v5)
  {
    if ([(NSUserDefaults *)self->_db BOOLForKey:v4])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)storeAccess:(int64_t)access forRequest:(id)request
{
  if (access)
  {
    v6 = [(TKTokenAccessDBBackedByUserDefaults *)self _keyRefForRequest:request];
    [(NSUserDefaults *)self->_db setBool:access == 1 forKey:v6];
  }
}

- (void)storeInstallationID:(id)d forBundleID:(id)iD
{
  dCopy = d;
  v7 = [(TKTokenAccessDBBackedByUserDefaults *)self _installationKeyForBundleID:iD];
  [(NSUserDefaults *)self->_db setObject:dCopy forKey:v7];
}

- (void)removeAccessForBundleID:(id)d matchPartial:(BOOL)partial
{
  partialCopy = partial;
  v44 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (![dCopy length])
  {
    goto LABEL_48;
  }

  dictionaryRepresentation = [(NSUserDefaults *)self->_db dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = allKeys;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  v31 = array;
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v12 = *v39;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v39 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v38 + 1) + 8 * i);
      v15 = [v14 rangeOfString:{@", ", v31}];
      if (v15)
      {
        v16 = v15 == 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        if (!partialCopy)
        {
          continue;
        }

        goto LABEL_21;
      }

      v17 = [v14 substringWithRange:{0, v15}];
      v18 = v17;
      if (!partialCopy)
      {
        if (([v17 isEqualToString:dCopy] & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_19:
        [array addObject:v14];
        goto LABEL_20;
      }

      if (([v17 hasPrefix:dCopy] & 1) != 0 || objc_msgSend(dCopy, "hasPrefix:", v18))
      {
        goto LABEL_19;
      }

LABEL_20:

      if (!partialCopy)
      {
        continue;
      }

LABEL_21:
      v19 = [(TKTokenAccessDBBackedByUserDefaults *)self _installationKeyForBundleID:dCopy];
      if ([v14 hasPrefix:v19])
      {

LABEL_23:
        [array addObject:v14];
        continue;
      }

      if ([v14 hasPrefix:@"installation:"])
      {
        v20 = dCopy;
        v21 = [v14 rangeOfString:dCopy];

        v16 = v21 == 0x7FFFFFFFFFFFFFFFLL;
        dCopy = v20;
        array = v31;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v11 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v11);
LABEL_31:

  if (!partialCopy)
  {
    v22 = [(TKTokenAccessDBBackedByUserDefaults *)self _installationKeyForBundleID:dCopy];
    v23 = [(NSUserDefaults *)self->_db objectForKey:v22];

    if (v23)
    {
      [v31 addObject:v22];
    }

    array = v31;
  }

  if ([array count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = array;
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [(NSUserDefaults *)self->_db removeObjectForKey:*(*(&v34 + 1) + 8 * j)];
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v26);
    }

    if (TK_LOG_token_access_registry_once != -1)
    {
      [TKTokenAccessDBBackedByUserDefaults removeAccessForBundleID:matchPartial:];
    }

    array = v32;
    v29 = TK_LOG_token_access_registry_log;
    if (os_log_type_enabled(TK_LOG_token_access_registry_log, OS_LOG_TYPE_DEBUG))
    {
      [TKTokenAccessDBBackedByUserDefaults removeAccessForBundleID:v24 matchPartial:v29];
    }
  }

LABEL_48:
  v30 = *MEMORY[0x1E69E9840];
}

- (id)allStoredBundleIDs
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  dictionaryRepresentation = [(NSUserDefaults *)self->_db dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = allKeys;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 rangeOfString:{@", ", v18}];
        if (v12)
        {
          v13 = v12 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = [v11 substringWithRange:{0, v12}];
          [v3 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)fetchStoredInstallationIDForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    db = self->_db;
    v6 = [(TKTokenAccessDBBackedByUserDefaults *)self _installationKeyForBundleID:dCopy];
    v7 = [(NSUserDefaults *)db stringForKey:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearAllAccessRecords
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dictionaryRepresentation = [(NSUserDefaults *)self->_db dictionaryRepresentation];
  allKeys = [dictionaryRepresentation allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        [(NSUserDefaults *)self->_db removeObjectForKey:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_keyRefForRequest:(id)request
{
  v3 = MEMORY[0x1E696AEC0];
  requestCopy = request;
  clientBundleID = [requestCopy clientBundleID];
  v6 = clientBundleID;
  if (clientBundleID)
  {
    v7 = clientBundleID;
  }

  else
  {
    v7 = &stru_1F5A7A8A8;
  }

  tokenID = [requestCopy tokenID];

  classID = [tokenID classID];
  v10 = [v3 stringWithFormat:@"%@, %@", v7, classID];

  return v10;
}

- (void)removeAccessForBundleID:(uint64_t)a1 matchPartial:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "Removing stored token access for: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end