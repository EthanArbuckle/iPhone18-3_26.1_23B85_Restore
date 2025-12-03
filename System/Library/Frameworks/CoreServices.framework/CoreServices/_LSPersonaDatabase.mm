@interface _LSPersonaDatabase
+ (id)sharedInstance;
- (id)_getPersonaAttributesRetryingIfNecessary;
- (id)getBundleIDToPersonasWithAttributesMap;
- (id)getPersonalPersonaUniqueString;
- (id)initPrivately;
- (id)personasWithAttributesForBundleIdentifier:(void *)identifier;
- (id)personasWithAttributesForPersonaUniqueStrings:(void *)strings error:;
- (id)personasWithType:(uint64_t)type;
- (void)_getPersonaAttributesRetryingIfNecessary;
- (void)currentGeneration;
- (void)generationIsCurrent:(void *)result;
- (void)getCachedBundleIDToPersonasWithAttributesMap:(id *)map systemPersonaUniqueString:(id *)string personalPersonaUniqueString:(id *)uniqueString;
- (void)getUncachedBundleIDToPersonasWithAttributesMap:(id *)map systemPersonaUniqueString:(id *)string personalPersonaUniqueString:(id *)uniqueString;
- (void)refreshFromUserManagementIfNecessary;
@end

@implementation _LSPersonaDatabase

- (id)initPrivately
{
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(_LSPersonaDatabase *)v3 initPrivately];
    }

    return 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _LSPersonaDatabase;
    v5 = [(_LSPersonaDatabase *)&v9 init];
    v4 = v5;
    if (v5)
    {
      v6 = *(v5 + 2);
      *(v5 + 8) = 0u;

      v7 = v4[3];
      v4[3] = 0;

      v4[5] = 0;
    }
  }

  return v4;
}

+ (id)sharedInstance
{
  objc_opt_self();
  if (+[_LSPersonaDatabase sharedInstance]::onceToken != -1)
  {
    +[_LSPersonaDatabase sharedInstance];
  }

  v0 = +[_LSPersonaDatabase sharedInstance]::sharedInstance;

  return v0;
}

- (id)_getPersonaAttributesRetryingIfNecessary
{
  v2 = 0;
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E696A798];
  v5 = *MEMORY[0x1E696A278];
  v6 = 10;
  do
  {

    sharedManager = [getUMUserManagerClass() sharedManager];
    v14 = 0;
    v8 = [sharedManager listAllPersonaAttributesWithError:&v14];
    v3 = v14;

    if ([v8 count])
    {
      break;
    }

    if (v3)
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v3;
        _os_log_error_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "error getting persona attributes list: %@", buf, 0xCu);
      }
    }

    else
    {
      v10 = _LSDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v8;
        _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "UM returned empty array or nil (%@) but not an error!?", buf, 0xCu);
      }

      v15 = v5;
      v16 = @"placeholder for missing error; file a bug";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v3 = _LSMakeNSErrorImpl(v4, 5, v9, "[_LSPersonaDatabase _getPersonaAttributesRetryingIfNecessary]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/_LSPersonaDatabase.mm", 277);
    }

    usleep(0x186A0u);
    v2 = v8;
    --v6;
  }

  while (v6);
  if (v8)
  {
    if ([v8 count])
    {
      goto LABEL_17;
    }

    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(_LSPersonaDatabase *)v3 _getPersonaAttributesRetryingIfNecessary];
    }
  }

  else
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(_LSPersonaDatabase *)v3 _getPersonaAttributesRetryingIfNecessary];
    }
  }

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)getUncachedBundleIDToPersonasWithAttributesMap:(id *)map systemPersonaUniqueString:(id *)string personalPersonaUniqueString:(id *)uniqueString
{
  uniqueStringCopy = uniqueString;
  v46 = *MEMORY[0x1E69E9840];
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Fetching persona data from usermanager.", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(_LSPersonaDatabase *)self _getPersonaAttributesRetryingIfNecessary];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v28 = 0;
    v30 = 0;
    v31 = *v40;
    do
    {
      v10 = 0;
      v32 = v9;
      do
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v10;
        v11 = *(*(&v39 + 1) + 8 * v10);
        userPersonaUniqueString = [v11 userPersonaUniqueString];
        if (userPersonaUniqueString)
        {
          if ([v11 isSystemPersona])
          {
            v13 = userPersonaUniqueString;

            v34 = 3;
            v30 = v13;
          }

          else
          {
            if ([v11 isPersonalPersona])
            {
              v14 = userPersonaUniqueString;

              v28 = v14;
              v15 = 1;
            }

            else
            {
              isEnterprisePersona = [v11 isEnterprisePersona];
              v15 = 2;
              if (!isEnterprisePersona)
              {
                v15 = 0;
              }
            }

            v34 = v15;
          }

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          userPersonaBundleIDList = [v11 userPersonaBundleIDList];
          v18 = [userPersonaBundleIDList countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v18)
          {
            v19 = *v36;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v36 != v19)
                {
                  objc_enumerationMutation(userPersonaBundleIDList);
                }

                v21 = *(*(&v35 + 1) + 8 * i);
                v22 = [v8 objectForKeyedSubscript:v21];
                if (!v22)
                {
                  v22 = objc_opt_new();
                  [v8 setObject:v22 forKeyedSubscript:v21];
                }

                v23 = [v7 objectForKey:userPersonaUniqueString];
                if (!v23)
                {
                  v23 = [[_LSPersonaWithAttributes alloc] initWithPersonaType:v34 personaUniqueString:userPersonaUniqueString];
                  [v7 setObject:v23 forKey:userPersonaUniqueString];
                }

                [v22 addObject:v23];
              }

              v18 = [userPersonaBundleIDList countByEnumeratingWithState:&v35 objects:v44 count:16];
            }

            while (v18);
          }
        }

        v10 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v9);
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  if (map)
  {
    objc_storeStrong(map, v8);
  }

  if (string)
  {
    objc_storeStrong(string, v30);
  }

  if (uniqueStringCopy)
  {
    objc_storeStrong(uniqueStringCopy, v28);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)refreshFromUserManagementIfNecessary
{
  sharedManager = [getUMUserManagerClass() sharedManager];
  v10 = 0;
  v4 = [sharedManager personaGenerationIdentifierWithError:&v10];
  v5 = v10;

  if (self->_userManagementGenerationNumber != v4)
  {
    self->_userManagementGenerationNumber = v4;
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Persona list did update.", v9, 2u);
    }

    os_unfair_lock_lock(&self->_ivarLock);
    cachedBundleIDToPersonasMap = self->_cachedBundleIDToPersonasMap;
    self->_cachedBundleIDToPersonasMap = 0;

    cachedSystemPersonaUniqueString = self->_cachedSystemPersonaUniqueString;
    self->_cachedSystemPersonaUniqueString = 0;

    os_unfair_lock_unlock(&self->_ivarLock);
  }
}

- (void)getCachedBundleIDToPersonasWithAttributesMap:(id *)map systemPersonaUniqueString:(id *)string personalPersonaUniqueString:(id *)uniqueString
{
  [(_LSPersonaDatabase *)self refreshFromUserManagementIfNecessary];
  v13 = 0;
  obj = 0;
  v12 = 0;
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_userManagementGenerationNumber && (cachedBundleIDToPersonasMap = self->_cachedBundleIDToPersonasMap) != 0)
  {
    obj = cachedBundleIDToPersonasMap;
    v13 = self->_cachedSystemPersonaUniqueString;
    v12 = self->_cachedPersonalPersonaUniqueString;
    p_ivarLock = &self->_ivarLock;
  }

  else
  {
    os_unfair_lock_unlock(&self->_ivarLock);
    os_unfair_lock_lock(&self->_uncachedCalloutLock);
    [(_LSPersonaDatabase *)self getUncachedBundleIDToPersonasWithAttributesMap:&obj systemPersonaUniqueString:&v13 personalPersonaUniqueString:&v12];
    os_unfair_lock_lock(&self->_ivarLock);
    if (self->_userManagementGenerationNumber)
    {
      objc_storeStrong(&self->_cachedBundleIDToPersonasMap, obj);
      objc_storeStrong(&self->_cachedSystemPersonaUniqueString, v13);
      objc_storeStrong(&self->_cachedPersonalPersonaUniqueString, v12);
    }

    os_unfair_lock_unlock(&self->_ivarLock);
    p_ivarLock = &self->_uncachedCalloutLock;
  }

  os_unfair_lock_unlock(p_ivarLock);
  if (map)
  {
    objc_storeStrong(map, obj);
  }

  if (string)
  {
    objc_storeStrong(string, v13);
  }

  v11 = v12;
  if (uniqueString)
  {
    objc_storeStrong(uniqueString, v12);
    v11 = v12;
  }
}

- (id)getBundleIDToPersonasWithAttributesMap
{
  [(_LSPersonaDatabase *)self refreshFromUserManagementIfNecessary];
  v5 = 0;
  [(_LSPersonaDatabase *)self getCachedBundleIDToPersonasWithAttributesMap:&v5 systemPersonaUniqueString:0 personalPersonaUniqueString:0];
  v3 = v5;

  return v3;
}

- (id)getPersonalPersonaUniqueString
{
  if (self)
  {
    v2 = 0;
    [self getCachedBundleIDToPersonasWithAttributesMap:0 systemPersonaUniqueString:0 personalPersonaUniqueString:&v2];
    self = v2;
  }

  return self;
}

- (id)personasWithAttributesForBundleIdentifier:(void *)identifier
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (identifier)
  {
    if ([__LSDefaultsGetSharedInstance() isInEducationMode] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "isUsingEphemeralStorage"))
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    else
    {
      getBundleIDToPersonasWithAttributesMap = [identifier getBundleIDToPersonasWithAttributesMap];
      v4 = [getBundleIDToPersonasWithAttributesMap objectForKeyedSubscript:v3];

      if (!v4)
      {
        getPersonalPersonaUniqueString = [(_LSPersonaDatabase *)identifier getPersonalPersonaUniqueString];
        if (getPersonalPersonaUniqueString)
        {
          v9 = [[_LSPersonaWithAttributes alloc] initWithPersonaType:getPersonalPersonaUniqueString personaUniqueString:?];
          v10[0] = v9;
          v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
        }

        else
        {
          if ([_LSPersonaDatabase personasWithAttributesForBundleIdentifier:]::once != -1)
          {
            [_LSPersonaDatabase personasWithAttributesForBundleIdentifier:];
          }

          v4 = MEMORY[0x1E695E0F0];
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)personasWithAttributesForPersonaUniqueStrings:(void *)strings error:
{
  v49 = *MEMORY[0x1E69E9840];
  v33 = a2;
  if (self)
  {
    sharedManager = [getUMUserManagerClass() sharedManager];
    listAllPersonaWithAttributes = [sharedManager listAllPersonaWithAttributes];

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = listAllPersonaWithAttributes;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v8)
    {
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          if ([v11 userPersonaType] != 4)
          {
            userPersonaUniqueString = [v11 userPersonaUniqueString];
            if (userPersonaUniqueString)
            {
              userPersonaUniqueString2 = [v11 userPersonaUniqueString];
              v14 = userPersonaUniqueString2;
              if (!userPersonaUniqueString2)
              {
                null = [MEMORY[0x1E695DFB0] null];
                v14 = null;
              }

              [v6 setObject:v11 forKey:v14];
              if (!userPersonaUniqueString2)
              {
              }
            }

            else
            {
              userPersonaUniqueString2 = _LSDefaultLog();
              if (os_log_type_enabled(userPersonaUniqueString2, OS_LOG_TYPE_ERROR))
              {
                userPersonaType = [v11 userPersonaType];
                *buf = 67109120;
                v47 = userPersonaType;
                _os_log_error_impl(&dword_18162D000, userPersonaUniqueString2, OS_LOG_TYPE_ERROR, "persona with type %d did not have a persona unique string, ignoring!", buf, 8u);
              }
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v8);
    }

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v33;
    v17 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v17)
    {
      v18 = *v36;
      while (2)
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v35 + 1) + 8 * j);
          v21 = [v6 objectForKey:v20];
          v22 = v21;
          if (!v21)
          {

            v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no known persona with unique string %@", v20];
            v43 = *MEMORY[0x1E696A278];
            v44 = v26;
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 2, v27, "[_LSPersonaDatabase personasWithAttributesForPersonaUniqueStrings:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/_LSPersonaDatabase.mm", 492);

            v16 = 0;
            goto LABEL_28;
          }

          v23 = LSPersonaTypeForPersonaAttributes(v21);
          v24 = [[_LSPersonaWithAttributes alloc] initWithPersonaType:v23 personaUniqueString:v20];
          [v16 addObject:v24];
        }

        v17 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
LABEL_28:

    if (strings && !v16)
    {
      v28 = v25;
      *strings = v25;
    }
  }

  else
  {
    v16 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)personasWithType:(uint64_t)type
{
  v21 = *MEMORY[0x1E69E9840];
  if (type)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    sharedManager = [getUMUserManagerClass() sharedManager];
    listAllPersonaWithAttributes = [sharedManager listAllPersonaWithAttributes];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = listAllPersonaWithAttributes;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          if (LSPersonaTypeForPersonaAttributes(v10) == a2)
          {
            v11 = [_LSPersonaWithAttributes alloc];
            userPersonaUniqueString = [v10 userPersonaUniqueString];
            v13 = [(_LSPersonaWithAttributes *)v11 initWithPersonaType:a2 personaUniqueString:userPersonaUniqueString];
            [v3 addObject:v13];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)generationIsCurrent:(void *)result
{
  if (result)
  {
    v3 = result;
    [result refreshFromUserManagementIfNecessary];
    if (a2)
    {
      return (v3[5] == a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)currentGeneration
{
  if (result)
  {
    v1 = result;
    [result refreshFromUserManagementIfNecessary];
    return v1[5];
  }

  return result;
}

- (void)_getPersonaAttributesRetryingIfNecessary
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "list of persona attributes was nil, last error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end