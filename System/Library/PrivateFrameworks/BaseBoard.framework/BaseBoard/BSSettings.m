@interface BSSettings
+ (void)_appendObject:(id)a3 toBuilder:(id)a4 forName:(id)a5;
- (BOOL)BOOLForSetting:(unint64_t)a3;
- (BOOL)_hasValueForSetting:(void *)a1;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BSSettingDescriptionProvider)descriptionProvider;
- (BSSettings)initWithCoder:(id)a3;
- (BSSettings)initWithSettings:(id)a3;
- (BSSettings)initWithXPCDictionary:(id)a3;
- (id)allSettings;
- (id)basicDescriptionWithPrefix:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectForSetting:(unint64_t)a3;
- (id)succinctDescription;
- (int64_t)flagForSetting:(unint64_t)a3;
- (unint64_t)hash;
- (void)_appendDescriptionForSetting:(void *)a3 toBuilder:;
- (void)_appendValueDescriptionForFlag:(uint64_t)a1 object:(void *)a2 toBuilder:(void *)a3 forName:(void *)a4;
- (void)_applyToSettings:(id)a3 preserveDiffs:(BOOL)a4;
- (void)_enumerateSettingsForFlagsWithBlock:(uint64_t)a1;
- (void)_enumerateSettingsForObjectsWithBlock:(uint64_t)a1;
- (void)_enumerateSettingsInMap:(void *)a3 withBlock:;
- (void)_removeAllSettings;
- (void)_setFlag:(uint64_t)a3 forSetting:;
- (void)_setObject:(uint64_t)a3 forSetting:;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)enumerateFlagsWithBlock:(id)a3;
- (void)enumerateObjectsWithBlock:(id)a3;
@end

@implementation BSSettings

- (BOOL)isEmpty
{
  settingToFlagMap = self->_settingToFlagMap;
  if (settingToFlagMap)
  {
    v4 = BSIntegerMapCount(settingToFlagMap) == 0;
  }

  else
  {
    v4 = 1;
  }

  settingToObjectMap = self->_settingToObjectMap;
  if (settingToObjectMap)
  {
    v6 = BSIntegerMapCount(settingToObjectMap) == 0;
  }

  else
  {
    v6 = 1;
  }

  return v4 && v6;
}

- (BSSettingDescriptionProvider)descriptionProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_descriptionProvider);

  return WeakRetained;
}

- (id)allSettings
{
  v3 = [(BSIntegerMap *)self->_settingToFlagMap allKeys];
  v4 = [(BSIntegerMap *)self->_settingToObjectMap allKeys];
  v5 = -[BSIntegerSet initWithCapacity:]([BSMutableIntegerSet alloc], "initWithCapacity:", [v4 count] + objc_msgSend(v3, "count"));
  [(BSMutableIntegerSet *)v5 unionSet:v3];
  [(BSMutableIntegerSet *)v5 unionSet:v4];

  return v5;
}

- (void)_removeAllSettings
{
  settingToFlagMap = self->_settingToFlagMap;
  if (settingToFlagMap)
  {
    BSIntegerMapRemoveAllObjects(settingToFlagMap);
  }

  settingToObjectMap = self->_settingToObjectMap;
  if (settingToObjectMap)
  {

    BSIntegerMapRemoveAllObjects(settingToObjectMap);
  }
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendObject:self->_settingToFlagMap];
  v5 = [v4 appendObject:self->_settingToObjectMap];
  v6 = [v5 hash];

  return v6;
}

- (BSSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = BSSettings;
  v5 = [(BSSettings *)&v20 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [(BSSettings *)v5 _isMutable];
    v8 = *(v4 + 1);
    if (v7)
    {
      v9 = [v8 mutableCopy];
    }

    else
    {
      v9 = [v8 copy];
    }

    settingToFlagMap = v6->_settingToFlagMap;
    v6->_settingToFlagMap = v9;

    v11 = *(v4 + 2);
    v12 = [(BSSettings *)v6 _isMutable];
    if (v11)
    {
      v13 = [v11 mutableCopy];
    }

    else
    {
      v13 = objc_opt_new();
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __27__BSSettings__deepCopyMap___block_invoke;
    v21[3] = &unk_1E72CC7A0;
    v23 = v12;
    v14 = v13;
    v22 = v14;
    [v11 enumerateWithBlock:v21];
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = [v14 copy];
    }

    v16 = v15;

    settingToObjectMap = v6->_settingToObjectMap;
    v6->_settingToObjectMap = v16;

    WeakRetained = objc_loadWeakRetained(v4 + 3);
    objc_storeWeak(&v6->_descriptionProvider, WeakRetained);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(BSSettings *)self _isMutable])
  {
    v4 = [objc_msgSend(objc_opt_class() "_baseClass")];

    return [v4 initWithSettings:self];
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() "_mutableClass")];

  return [v4 initWithSettings:self];
}

- (BSSettings)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [(BSSettings *)self init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = xpc_dictionary_get_value(v4, "flags");
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __36__BSSettings_initWithXPCDictionary___block_invoke;
    v13[3] = &unk_1E72CC618;
    v8 = v6;
    v14 = v8;
    BSSettingsDecodeSettingEntries(v7, v13);
    v9 = xpc_dictionary_get_value(v4, "objects");
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__BSSettings_initWithXPCDictionary___block_invoke_16;
    v11[3] = &unk_1E72CC618;
    v12 = v8;
    BSSettingsDecodeSettingEntries(v9, v11);
  }

  return v6;
}

void __36__BSSettings_initWithXPCDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (object_getClass(v5) == MEMORY[0x1E69E9E58])
  {
    v7 = *(a1 + 32);
    value = xpc_BOOL_get_value(v5);
    [(BSSettings *)v7 _setFlag:a2 forSetting:?];
  }

  else
  {
    v6 = BSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "[BSSettings initWithXPCDictionary:]_block_invoke";
      v11 = 2048;
      v12 = a2;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&dword_18FEF6000, v6, OS_LOG_TYPE_ERROR, "%s the encoded flag format for %llu is unknown -> %{public}@", &v9, 0x20u);
    }
  }
}

- (void)_setFlag:(uint64_t)a3 forSetting:
{
  if (a1)
  {
    v6 = *(a1 + 8);
    if (a2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v6)
      {
        BSIntegerMapRemoveObjectForKey(v6, a3);
        if (!BSIntegerMapCount(*(a1 + 8)))
        {
          v11 = *(a1 + 8);
          *(a1 + 8) = 0;
        }
      }
    }

    else
    {
      if (!v6)
      {
        v7 = objc_alloc_init(BSMutableIntegerMap);
        v8 = *(a1 + 8);
        *(a1 + 8) = v7;

        v6 = *(a1 + 8);
      }

      v9 = MEMORY[0x1E695E4C0];
      if (a2)
      {
        v9 = MEMORY[0x1E695E4D0];
      }

      v10 = *v9;

      BSIntegerMapSetObjectForKey(v6, v10, a3);
    }
  }
}

void __36__BSSettings_initWithXPCDictionary___block_invoke_16(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = BSSettingsDecodeSettingObject(a3, a4);
  if (v6)
  {
    [(BSSettings *)*(a1 + 32) _setObject:v6 forSetting:a2];
  }

  else
  {
    v7 = BSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[BSSettings initWithXPCDictionary:]_block_invoke";
      v10 = 2048;
      v11 = a2;
      _os_log_error_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_ERROR, "%s Could not decode object for setting %llu", &v8, 0x16u);
    }
  }
}

- (void)_setObject:(uint64_t)a3 forSetting:
{
  v9 = a2;
  if (a1)
  {
    v5 = *(a1 + 16);
    if (v9)
    {
      if (!v5)
      {
        v6 = objc_alloc_init(BSMutableIntegerMap);
        v7 = *(a1 + 16);
        *(a1 + 16) = v6;

        v5 = *(a1 + 16);
      }

      BSIntegerMapSetObjectForKey(v5, v9, a3);
    }

    else if (v5)
    {
      BSIntegerMapRemoveObjectForKey(v5, a3);
      if (!BSIntegerMapCount(*(a1 + 16)))
      {
        v8 = *(a1 + 16);
        *(a1 + 16) = 0;
      }
    }
  }
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  if (v4 && ![(BSSettings *)self isEmpty])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__BSSettings_encodeWithXPCDictionary___block_invoke;
    v6[3] = &unk_1E72CC668;
    v6[4] = self;
    v7 = v4;
    v5 = MEMORY[0x193AE5AC0](v6);
    (v5)[2](v5, self->_settingToFlagMap, "flags", &__block_literal_global_42);
    (v5)[2](v5, self->_settingToObjectMap, "objects", &__block_literal_global_21);
  }
}

void __38__BSSettings_encodeWithXPCDictionary___block_invoke(uint64_t a1, void *a2, const char *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    v9 = BSIntegerMapCount(v7);
    if (v8)
    {
      if (v9)
      {
        v10 = xpc_array_create(0, 0);
        v11 = *(a1 + 32);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __38__BSSettings_encodeWithXPCDictionary___block_invoke_2;
        v13[3] = &unk_1E72CC640;
        v12 = v10;
        v14 = v12;
        v15 = v7;
        v16 = v8;
        [(BSSettings *)v11 _enumerateSettingsInMap:v15 withBlock:v13];
        xpc_dictionary_set_value(*(a1 + 40), a3, v12);
      }
    }
  }
}

void __38__BSSettings_encodeWithXPCDictionary___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = BSIntegerMapObjectForKey(*(a1 + 40), a2);
  BSSettingsEncodeAppendSettingArrayEntry(v4, a2, v5, *(a1 + 48));
}

- (void)_enumerateSettingsInMap:(void *)a3 withBlock:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 && v5 && v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__BSSettings__enumerateSettingsInMap_withBlock___block_invoke;
    v8[3] = &unk_1E72CC328;
    v9 = v6;
    BSIntegerMapEnumerateKeysWithBlock(v5, v8);
  }
}

id __38__BSSettings_encodeWithXPCDictionary___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = CFBooleanGetValue(v3) != 0;
  v5 = xpc_BOOL_create(v4);

  return v5;
}

id __38__BSSettings_encodeWithXPCDictionary___block_invoke_4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = BSSettingsEncodeSettingObject(a3, a4);

  return v4;
}

- (BSSettings)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(BSSettings *)self init];
    if (!self)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v5 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be decoded with an instance of NSXPCCoder; attempting to decode with %@", v7, v9}];

    if (!self)
    {
      goto LABEL_17;
    }
  }

  v10 = v4;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v23 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  if ([v10 containsValueForKey:@"flags"])
  {
    v13 = [v10 decodeObjectOfClasses:v23 forKey:@"flags"];
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = [v13 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 unsignedIntegerValue];
          v20 = [v13 objectForKey:v18];
          -[BSSettings _setFlag:forSetting:](self, [v20 BOOLValue], v19);
        }

        v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }
  }

  if ([v10 containsValueForKey:@"objects"])
  {
    v21 = [v10 decodeXPCObjectOfType:MEMORY[0x1E69E9E50] forKey:@"objects"];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __28__BSSettings_initWithCoder___block_invoke;
    v24[3] = &unk_1E72CC618;
    v25 = self;
    BSSettingsDecodeSettingEntries(v21, v24);
  }

LABEL_17:
  return self;
}

void __28__BSSettings_initWithCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = BSSettingsDecodeSettingObject(a3, a4);
  if (v6)
  {
    [(BSSettings *)*(a1 + 32) _setObject:v6 forSetting:a2];
  }

  else
  {
    v7 = BSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[BSSettings initWithCoder:]_block_invoke";
      v10 = 2048;
      v11 = a2;
      _os_log_error_impl(&dword_18FEF6000, v7, OS_LOG_TYPE_ERROR, "%s Could not decode object for setting %llu", &v8, 0x16u);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    settingToFlagMap = self->_settingToFlagMap;
    if (settingToFlagMap)
    {
      v7 = BSIntegerMapCount(settingToFlagMap);
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v7];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __30__BSSettings_encodeWithCoder___block_invoke;
        v23[3] = &unk_1E72CC6B0;
        v9 = v8;
        v24 = v9;
        [(BSSettings *)self enumerateFlagsWithBlock:v23];
        v10 = [v9 copy];
        [v5 encodeObject:v10 forKey:@"flags"];
      }
    }

    settingToObjectMap = self->_settingToObjectMap;
    if (settingToObjectMap && BSIntegerMapCount(settingToObjectMap))
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x3032000000;
      v20 = __Block_byref_object_copy__10;
      v21 = __Block_byref_object_dispose__10;
      v22 = xpc_array_create(0, 0);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __30__BSSettings_encodeWithCoder___block_invoke_37;
      v16[3] = &unk_1E72CC6D8;
      v16[4] = &v17;
      [(BSSettings *)self enumerateObjectsWithBlock:v16];
      [v5 encodeXPCObject:v18[5] forKey:@"objects"];
      _Block_object_dispose(&v17, 8);
    }
  }

  else
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = objc_opt_class();
    v5 = NSStringFromClass(v13);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v12 raise:*MEMORY[0x1E695D940] format:{@"An %@ can only be encoded with an instance of NSXPCCoder; attempting to encode with %@", v5, v15}];
  }
}

void __30__BSSettings_encodeWithCoder___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v6 = a3 != 0x7FFFFFFFFFFFFFFFLL && a3 != 0;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [*(a1 + 32) setObject:v7 forKey:v8];
}

void __30__BSSettings_encodeWithCoder___block_invoke_37(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  if (!v5)
  {
    v6 = xpc_array_create(0, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v5 = *(*(*(a1 + 32) + 8) + 40);
  }

  BSSettingsEncodeAppendSettingArrayEntry(v5, a2, v9, &__block_literal_global_39);
}

id __30__BSSettings_encodeWithCoder___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v4 = BSSettingsEncodeSettingObject(a3, a4);

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BSSettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BSSettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = a3;
  v6 = [(BSSettings *)self succinctDescriptionBuilder];
  if ([(BSSettings *)self isEmpty])
  {
    v7 = [v6 appendObject:@"(empty)" withName:0];
  }

  else
  {
    v8 = [(BSSettings *)self isEmpty];
    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v11;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __52__BSSettings_descriptionBuilderWithMultilinePrefix___block_invoke;
      v11[3] = &unk_1E72CACC0;
      v11[4] = self;
      v3 = &v12;
      v12 = v6;
    }

    [v6 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];
    if (!v8)
    {
    }
  }

  return v6;
}

void __52__BSSettings_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _sortedSettingsForDescription];
  if (v2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__BSSettings_descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v9[3] = &unk_1E72CC700;
    v3 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v3;
    [v2 enumerateObjectsUsingBlock:v9];
    v4 = &v10;
  }

  else
  {
    v5 = [*(a1 + 32) allSettings];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __52__BSSettings_descriptionBuilderWithMultilinePrefix___block_invoke_3;
    v7[3] = &unk_1E72CC728;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v5 enumerateSortedWithBlock:v7];
    v4 = &v8;
  }
}

void __52__BSSettings_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  -[BSSettings _appendDescriptionForSetting:toBuilder:](*(a1 + 32), [v3 integerValue], *(a1 + 40));
}

- (void)_appendDescriptionForSetting:(void *)a3 toBuilder:
{
  v13 = a3;
  if (a1)
  {
    v5 = [a1 flagForSetting:a2];
    v6 = [a1 objectForSetting:a2];
    WeakRetained = objc_loadWeakRetained(a1 + 3);
    if (!WeakRetained)
    {
      goto LABEL_13;
    }

    if (objc_opt_respondsToSelector())
    {
      v8 = [WeakRetained settings:a1 appendDescriptionToBuilder:v13 forFlag:v5 object:v6 ofSetting:a2];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_8;
      }

      v8 = [WeakRetained appendDescriptionToBuilder:v13 forFlag:v5 object:v6 ofSetting:a2];
    }

    if (v8)
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_8:
    if (objc_opt_respondsToSelector())
    {
      v9 = [WeakRetained settings:a1 keyDescriptionForSetting:a2];
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_13;
      }

      v9 = [WeakRetained keyDescriptionForSetting:a2];
    }

    v10 = v9;
    if (v9)
    {
LABEL_14:
      if (objc_opt_respondsToSelector())
      {
        v11 = [WeakRetained settings:a1 valueDescriptionForFlag:v5 object:v6 ofSetting:a2];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_20;
        }

        v11 = [WeakRetained valueDescriptionForFlag:v5 object:v6 ofSetting:a2];
      }

      v12 = v11;
      if (v11)
      {
        [BSSettings _appendValueDescriptionForFlag:v11 object:v13 toBuilder:v10 forName:?];
LABEL_21:

        goto LABEL_22;
      }

LABEL_20:
      v12 = 0;
      [BSSettings _appendValueDescriptionForFlag:v5 object:v6 toBuilder:v13 forName:v10];
      goto LABEL_21;
    }

LABEL_13:
    v10 = [a1 _keyDescriptionForSetting:a2];
    if (!WeakRetained)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_23:
}

- (void)_appendValueDescriptionForFlag:(uint64_t)a1 object:(void *)a2 toBuilder:(void *)a3 forName:(void *)a4
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v15;
  v10 = v8;
  if (a1 == 0x7FFFFFFFFFFFFFFFLL || !v15)
  {
    if (a1 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a1)
      {
        v9 = @"Yes";
      }

      else
      {
        v9 = @"No";
      }
    }

    [BSSettings _appendObject:v9 toBuilder:v7 forName:v8];
  }

  else
  {
    v11 = @"Yes";
    if (!a1)
    {
      v11 = @"No";
    }

    v12 = v11;
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [flag]", v10];
    [BSSettings _appendObject:v12 toBuilder:v7 forName:v13];

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ [obj]", v10];
    [BSSettings _appendObject:v15 toBuilder:v7 forName:v14];
  }
}

- (int64_t)flagForSetting:(unint64_t)a3
{
  settingToFlagMap = self->_settingToFlagMap;
  if (!settingToFlagMap)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = BSIntegerMapObjectForKey(settingToFlagMap, a3);
  if (v4)
  {
    return CFBooleanGetValue(v4) != 0;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (BOOL)BOOLForSetting:(unint64_t)a3
{
  settingToFlagMap = self->_settingToFlagMap;
  if (settingToFlagMap)
  {
    settingToFlagMap = BSIntegerMapObjectForKey(settingToFlagMap, a3);
    if (settingToFlagMap)
    {
      LOBYTE(settingToFlagMap) = CFBooleanGetValue(settingToFlagMap) != 0;
    }
  }

  return settingToFlagMap;
}

- (void)enumerateFlagsWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __38__BSSettings_enumerateFlagsWithBlock___block_invoke;
    v6[3] = &unk_1E72CC750;
    v6[4] = self;
    v7 = v4;
    [(BSSettings *)self _enumerateSettingsForFlagsWithBlock:v6];
  }
}

uint64_t __38__BSSettings_enumerateFlagsWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) flagForSetting:a2];
  v7 = *(v5 + 16);

  return v7(v5, a2, v6, a3);
}

- (void)_enumerateSettingsForFlagsWithBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(BSSettings *)a1 _enumerateSettingsInMap:v3 withBlock:?];
  }
}

- (id)objectForSetting:(unint64_t)a3
{
  settingToObjectMap = self->_settingToObjectMap;
  if (settingToObjectMap)
  {
    settingToObjectMap = BSIntegerMapObjectForKey(settingToObjectMap, a3);
    v3 = vars8;
  }

  return settingToObjectMap;
}

- (void)enumerateObjectsWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__BSSettings_enumerateObjectsWithBlock___block_invoke;
    v6[3] = &unk_1E72CC750;
    v6[4] = self;
    v7 = v4;
    [(BSSettings *)self _enumerateSettingsForObjectsWithBlock:v6];
  }
}

void __40__BSSettings_enumerateObjectsWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForSetting:a2];
  (*(v3 + 16))(v3, a2);
}

- (void)_enumerateSettingsForObjectsWithBlock:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    [(BSSettings *)a1 _enumerateSettingsInMap:v3 withBlock:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.isa;
  if (self == v4)
  {
    goto LABEL_16;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  if (BSIntegerMapCount(self->_settingToFlagMap) || BSIntegerMapCount(p_isa[1]))
  {
    settingToFlagMap = self->_settingToFlagMap;
    v7 = p_isa[1];
    if (settingToFlagMap != v7)
    {
      v8 = 0;
      if (!settingToFlagMap || !v7)
      {
        goto LABEL_18;
      }

      if (![(BSIntegerMap *)settingToFlagMap isEqual:?])
      {
        goto LABEL_17;
      }
    }
  }

  if (!BSIntegerMapCount(self->_settingToObjectMap) && !BSIntegerMapCount(p_isa[2]))
  {
    goto LABEL_16;
  }

  settingToObjectMap = self->_settingToObjectMap;
  v10 = p_isa[2];
  if (settingToObjectMap == v10)
  {
    goto LABEL_16;
  }

  v8 = 0;
  if (settingToObjectMap && v10)
  {
    if ([(BSIntegerMap *)settingToObjectMap isEqual:?])
    {
LABEL_16:
      v8 = 1;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:

  return v8;
}

- (BOOL)_hasValueForSetting:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = [a1 objectForSetting:a2];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 flagForSetting:a2] != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)_applyToSettings:(id)a3 preserveDiffs:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__BSSettings__applyToSettings_preserveDiffs___block_invoke;
    v12[3] = &unk_1E72CC6B0;
    v8 = v6;
    v13 = v8;
    [(BSSettings *)self enumerateFlagsWithBlock:v12];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__BSSettings__applyToSettings_preserveDiffs___block_invoke_2;
    v9[3] = &unk_1E72CC778;
    v11 = a4;
    v10 = v8;
    [(BSSettings *)self enumerateObjectsWithBlock:v9];
  }
}

void __45__BSSettings__applyToSettings_preserveDiffs___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(a1 + 32);
    if (*(a1 + 40) != 1)
    {
      v16 = [v5 objectForSetting:a2];
      if (!v16)
      {
        [v21 _isKeyed];
        v16 = objc_opt_new();
        [(BSSettings *)*(a1 + 32) _setObject:v16 forSetting:a2];
      }

      [v21 applyToSettings:v16];
      goto LABEL_28;
    }

    v6 = [v5 objectForSetting:a2];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = v9;

    v17 = *(a1 + 32);
    if (v16)
    {
      v18 = [v16 copyApplyingDiff:v21];
      [(BSSettings *)v17 _setObject:v18 forSetting:a2];
LABEL_27:

      goto LABEL_28;
    }

    [(BSSettings *)*(a1 + 32) _setObject:v21 forSetting:a2];
    v16 = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = *(a1 + 32);
    if ((isKindOfClass & 1) == 0)
    {
      [(BSSettings *)v11 _setObject:v21 forSetting:a2];
      goto LABEL_29;
    }

    v12 = [v11 objectForSetting:a2];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v19 = [*(a1 + 32) _isMutable];
      v20 = *(a1 + 32);
      if (v19)
      {
        v18 = [v21 mutableCopy];
      }

      else
      {
        v18 = [v21 copy];
      }

      [(BSSettings *)v20 _setObject:v18 forSetting:a2];
      v16 = 0;
      goto LABEL_27;
    }

    [v21 _applyToSettings:v16 preserveDiffs:*(a1 + 40)];
  }

LABEL_28:

LABEL_29:
}

+ (void)_appendObject:(id)a3 toBuilder:(id)a4 forName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_15;
  }

  if ([v7 isNSArray])
  {
    v10 = v7;
  }

  else if ([v7 isNSSet])
  {
    v10 = [v7 allObjects];
  }

  else
  {
    if (([v7 isNSOrderedSet] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = [v7 array];
  }

  v11 = v10;
  if (v10)
  {
    v12 = NSStringFromClass([v7 classForCoder]);
    v13 = [v9 stringByAppendingFormat:@" <%@ %p>", v12, v7];;

    if ([v11 count])
    {
      v14 = [v8 activeMultilinePrefix];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __46__BSSettings__appendObject_toBuilder_forName___block_invoke;
      v26[3] = &unk_1E72CACC0;
      v27 = v11;
      v28 = v8;
      v15 = v11;
      [v28 appendBodySectionWithName:v13 multilinePrefix:v14 block:v26];
    }

    else
    {
      v21 = [v8 appendObject:@"(empty)" withName:v13];
    }

    goto LABEL_21;
  }

LABEL_12:
  if ([v7 isNSDictionary])
  {
    v16 = NSStringFromClass([v7 classForCoder]);
    v13 = [v9 stringByAppendingFormat:@" <%@ %p>", v16, v7];;

    if ([v7 count])
    {
      v17 = [v8 activeMultilinePrefix];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __46__BSSettings__appendObject_toBuilder_forName___block_invoke_2;
      v23[3] = &unk_1E72CACC0;
      v24 = v7;
      v25 = v8;
      [v25 appendBodySectionWithName:v13 multilinePrefix:v17 block:v23];
    }

    else
    {
      v22 = [v8 appendObject:@"(empty)" withName:v13];
    }

    goto LABEL_21;
  }

LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    v20 = [v8 appendObject:v7 withName:v9];
  }

  else
  {
    v18 = [v7 succinctDescription];
    v19 = [v8 appendObject:v18 withName:v9];
  }

  v13 = v9;
LABEL_21:
}

void __46__BSSettings__appendObject_toBuilder_forName___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [BSSettings _appendObject:*(*(&v6 + 1) + 8 * v5++) toBuilder:*(a1 + 40) forName:0, v6];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __46__BSSettings__appendObject_toBuilder_forName___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:{v6, v10}];
        v8 = *(a1 + 40);
        v9 = [v6 description];
        [BSSettings _appendObject:v7 toBuilder:v8 forName:v9];
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void __27__BSSettings__deepCopyMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (_NSIsNSArray() & 1) != 0 || (_NSIsNSSet() & 1) != 0 || _NSIsNSOrderedSet())
  {
    if (*(a1 + 40) == 1)
    {
      v5 = [v7 mutableCopy];
    }

    else
    {
      v5 = [v7 copy];
    }

    v6 = v5;

    v7 = v6;
    [*(a1 + 32) setObject:v6 forKey:a2];
  }
}

- (id)basicDescriptionWithPrefix:(id)a3
{
  v3 = [(BSSettings *)self descriptionWithMultilinePrefix:a3];

  return v3;
}

@end