@interface LSPlugInQueryWithQueryDictionary
- (BOOL)isEqual:(id)a3;
- (LSPlugInQueryWithQueryDictionary)initWithCoder:(id)a3;
- (id).cxx_construct;
- (id)_initWithQueryDictionary:(id)a3 applyFilter:(id)a4;
- (id)systemMode;
- (unint64_t)hash;
- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4;
@end

@implementation LSPlugInQueryWithQueryDictionary

- (id).cxx_construct
{
  *(self + 48) = 0;
  *(self + 56) = 0;
  *(self + 16) = 0;
  return self;
}

- (id)systemMode
{
  os_unfair_lock_lock(&self->_systemModeMutex);
  p_cachedSystemMode = &self->_cachedSystemMode;
  if (!self->_cachedSystemMode.__engaged_)
  {
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [v4 systemMode];
    if (self->_cachedSystemMode.__engaged_)
    {
      val = p_cachedSystemMode->var0.__val_;
      p_cachedSystemMode->var0.__val_ = v5;
    }

    else
    {
      p_cachedSystemMode->var0.__val_ = v5;
      self->_cachedSystemMode.__engaged_ = 1;
    }

    if (!self->_cachedSystemMode.__engaged_)
    {
      std::__throw_bad_optional_access[abi:nn200100]();
      v10 = v9;

      os_unfair_lock_unlock(&self->_systemModeMutex);
      _Unwind_Resume(v10);
    }
  }

  v7 = p_cachedSystemMode->var0.__val_;
  os_unfair_lock_unlock(&self->_systemModeMutex);

  return v7;
}

- (id)_initWithQueryDictionary:(id)a3 applyFilter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = LSPlugInQueryWithQueryDictionary;
  v8 = [(LSPlugInQuery *)&v23 _init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8[2];
    v8[2] = v9;

    v11 = [v6 ls_parseQueryForIdentifiers:@"NSExtensionIdentifier"];
    v12 = [v11 copy];
    v13 = v8[3];
    v8[3] = v12;

    v14 = [v6 ls_parseQueryForIdentifiers:@"NSExtensionPointName"];
    v15 = [v14 copy];
    v16 = v8[4];
    v8[4] = v15;

    v17 = [v7 copy];
    v18 = v8[5];
    v8[5] = v17;

    v19 = [v6 objectForKey:@"LSShouldORIdentifiers"];

    if (v19)
    {
      v20 = v8[2];
      v8[2] = 0;
    }
  }

  if (_LSEntitledForPluginQuery())
  {
    v21 = v8;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

uint64_t __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = _LSIsCPUTypeSubtypeRunnable(a2, SHIDWORD(a2));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_60(uint64_t a1, uint64_t a2, _LSPlistHint *a3)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v12 = _LSPlistGetDictionary(*(a1 + 32), *(*(a1 + 48) + 136), a3);
    v4 = *(a1 + 32);
    SDKDictionaryDataUnit = _LSPluginGetSDKDictionaryDataUnit(v4, 0, *(a1 + 48));
    v7 = _LSPlistGetDictionary(v4, SDKDictionaryDataUnit, v6);
    v8 = [v12 ls_resolvePlugInKitInfoPlistWithDictionary:v7];
    v9 = [v8 copy];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if (([v7 hasPrefix:@"ENTITLEMENT:"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"NSUserElection") & 1) != 0 || _NSIsNSString() && (objc_msgSend(v8, "hasPrefix:", @"?CODEREQUIREMENT") & 1) != 0 || (_NSIsNSDictionary() & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"LS:ExtensionPlatforms") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"LS:IncludeUnsupportedArchitectures") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"LS:IncludeRestricted"))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_10;
  }

  v9 = getValueForKeyFromPlugin(v7, *(a1 + 64), *(a1 + 32));
  if (!v9)
  {
    (*(*(a1 + 40) + 16))();
    v9 = getValueForKeyFromPlist(v7, *(*(*(a1 + 56) + 8) + 40));
  }

  if ([v8 isEqual:MEMORY[0x1E695E110]])
  {
    if (v9)
    {
      v10 = [v9 isEqual:MEMORY[0x1E695E110]];
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_24;
  }

  if (!v9)
  {
LABEL_27:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_28;
  }

  if (![v8 isEqual:MEMORY[0x1E695E118]])
  {
    if (_NSIsNSString())
    {
      v10 = [v9 ls_matchesForPluginQuery:v8];
LABEL_24:
      *(*(*(a1 + 48) + 8) + 24) = v10;
      goto LABEL_28;
    }

    if (_NSIsNSArray())
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_3;
      v11[3] = &unk_1E6A1D7C0;
      v13 = *(a1 + 48);
      v12 = v8;
      [v9 enumerateObjectsUsingBlock:v11];

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  *(*(*(a1 + 48) + 8) + 24) = [v9 isEqual:MEMORY[0x1E695E110]] ^ 1;
LABEL_28:

LABEL_10:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

void __74__LSPlugInQueryWithQueryDictionary_matchesPlugin_pluginData_withDatabase___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (_NSIsNSString())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 ls_matchesForPluginQuery:*(a1 + 32)];
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (void)_enumerateWithXPCConnection:(id)a3 block:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [LSPlugInQueryWithQueryDictionary _enumerateWithXPCConnection:v8 block:?];
    }
  }

  v37 = 0;
  v38 = 0;
  inited = _LSContextInitReturningError(&v38, &v37);
  v10 = v37;
  if (inited)
  {
    v11 = [MEMORY[0x1E695DFA8] set];
    if ([(NSArray *)self->_extensionIdentifiers count]|| [(NSArray *)self->_extensionPointIdentifiers count])
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3321888768;
      v33[2] = __70__LSPlugInQueryWithQueryDictionary__enumerateWithXPCConnection_block___block_invoke;
      v33[3] = &unk_1EEF63C80;
      v34 = v11;
      v35 = self;
      v36 = v38;
      v12 = MEMORY[0x1865D71B0](v33);
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v29 = 0u;
      v13 = self->_extensionIdentifiers;
      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v14)
      {
        v15 = *v30;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(v13);
            }

            _LSDatabaseGetStringForCFString(v38, *(*(&v29 + 1) + 8 * i), 0);
            _LSDatabaseEnumeratingBindingMap(v38);
          }

          v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v40 count:16];
        }

        while (v14);
      }

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = self->_extensionPointIdentifiers;
      v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v39 count:16];
      if (v18)
      {
        v19 = *v26;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v26 != v19)
            {
              objc_enumerationMutation(v17);
            }

            _LSDatabaseGetStringForCFString(v38, *(*(&v25 + 1) + 8 * j), 0);
            _LSDatabaseEnumeratingBindingMap(v38);
          }

          v18 = [(NSArray *)v17 countByEnumeratingWithState:&v25 objects:v39 count:16];
        }

        while (v18);
      }
    }

    else
    {
      [(_LSDatabase *)v38 store];
      v22 = *([(_LSDatabase *)v38 schema]+ 1588);
      v24 = v38;
      v23 = v11;
      _CSStoreEnumerateUnits();
    }

    [(LSPlugInQuery *)self sort:1 pluginIDs:v11 andYield:v7 context:&v38];
    _LSContextDestroy(&v38);
  }

  else
  {
    v7[2](v7, 0, v10);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __70__LSPlugInQueryWithQueryDictionary__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  LOBYTE(v5) = [v5 containsObject:?];

  if ((v5 & 1) == 0 && [*(a1 + 40) matchesPlugin:a3 pluginData:_LSGetPlugin(*(a1 + 48) withDatabase:{a3), *(a1 + 48)}])
  {
    v6 = *(a1 + 32);
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a3];
    [v6 addObject:?];
  }
}

void __70__LSPlugInQueryWithQueryDictionary__enumerateWithXPCConnection_block___block_invoke_79(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 && [*(a1 + 32) matchesPlugin:a2 pluginData:a3 withDatabase:*(a1 + 48)])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v5 addObject:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryWithQueryDictionary;
  if (![(LSPlugInQuery *)&v12 isEqual:v4]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v10 = 0;
    goto LABEL_9;
  }

  v5 = v4;
  v6 = v5;
  queryDict = self->_queryDict;
  if (!queryDict)
  {
    v8 = [v5 _queryDictionary];

    if (!v8)
    {
      v10 = 1;
      goto LABEL_7;
    }

    queryDict = self->_queryDict;
  }

  v9 = [v6 _queryDictionary];
  v10 = [(NSDictionary *)queryDict isEqual:v9];

LABEL_7:
LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSDictionary *)self->_queryDict ls_hashQuery];
  v5.receiver = self;
  v5.super_class = LSPlugInQueryWithQueryDictionary;
  return [(LSPlugInQuery *)&v5 hash]^ v3;
}

- (LSPlugInQueryWithQueryDictionary)initWithCoder:(id)a3
{
  v4 = [a3 decodePropertyListForKey:@"query"];
  v5 = [(LSPlugInQueryWithQueryDictionary *)self _initWithQueryDictionary:v4 applyFilter:0];

  return v5;
}

@end