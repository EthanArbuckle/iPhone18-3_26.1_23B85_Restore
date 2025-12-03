@interface BSKeyedSettings
- (BOOL)BOOLForKey:(id)key;
- (BSKeyedSettings)initWithCoder:(id)coder;
- (BSKeyedSettings)initWithSettings:(id)settings;
- (BSKeyedSettings)initWithXPCDictionary:(id)dictionary;
- (id)_keyForSetting:(id *)setting;
- (id)_sortedSettingsForDescription;
- (id)allKeys;
- (id)objectForKey:(id)key;
- (int64_t)flagForKey:(id)key;
- (uint64_t)_settingForKey:(int)key saveKey:;
- (void)_addDecodedKeys:(id *)keys;
- (void)_applyToSettings:(id)settings preserveDiffs:(BOOL)diffs;
- (void)_removeAllSettings;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)enumerateKeyedFlagsWithBlock:(id)block;
- (void)enumerateKeyedObjectsWithBlock:(id)block;
@end

@implementation BSKeyedSettings

- (id)allKeys
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(BSIntegerMap *)self->_keyMap allValues];
  v4 = [v2 setWithArray:allValues];

  return v4;
}

- (id)_sortedSettingsForDescription
{
  allValues = [(BSIntegerMap *)self->_keyMap allValues];
  v4 = [allValues mutableCopy];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__BSKeyedSettings__sortedSettingsForDescription__block_invoke;
  v8[3] = &unk_1E72CC290;
  v8[4] = self;
  [v4 sortUsingComparator:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__BSKeyedSettings__sortedSettingsForDescription__block_invoke_2;
  v7[3] = &unk_1E72CC2B8;
  v7[4] = self;
  v5 = [v4 bs_map:v7];

  return v5;
}

uint64_t __48__BSKeyedSettings__sortedSettingsForDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [*(a1 + 32) objectForKey:v6];
  objc_opt_class();
  LODWORD(a1) = objc_opt_isKindOfClass();

  if ((isKindOfClass ^ a1))
  {
    if (isKindOfClass)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }
  }

  else
  {
    v10 = [v5 compare:v6];
  }

  return v10;
}

id __48__BSKeyedSettings__sortedSettingsForDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BSKeyedSettings _settingForKey:saveKey:](*(a1 + 32), v3, 0)}];

  return v4;
}

- (BSKeyedSettings)initWithSettings:(id)settings
{
  v32 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (settingsCopy)
  {
    NSClassFromString(&cfstr_Bskeyedsetting.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:BSKeyedSettingsClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(a2);
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138544642;
        v21 = v15;
        v22 = 2114;
        v23 = v17;
        v24 = 2048;
        selfCopy = self;
        v26 = 2114;
        v27 = @"BSKeyedSettings.m";
        v28 = 1024;
        v29 = 37;
        v30 = 2114;
        v31 = v14;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v18 = v14;
      qword_1EAD33B00 = [v14 UTF8String];
      __break(0);
      JUMPOUT(0x18FF83F0CLL);
    }
  }

  v19.receiver = self;
  v19.super_class = BSKeyedSettings;
  v6 = [(BSSettings *)&v19 initWithSettings:settingsCopy];
  if (v6)
  {
    if (settingsCopy)
    {
      v7 = [settingsCopy[4] mutableCopy];
      keys = v6->_keys;
      v6->_keys = v7;

      v9 = [settingsCopy[5] mutableCopy];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = v6->_keys;
      v6->_keys = v10;

      v9 = objc_alloc_init(BSMutableIntegerMap);
    }

    keyMap = v6->_keyMap;
    v6->_keyMap = v9;
  }

  return v6;
}

- (int64_t)flagForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSKeyedSettings *)self _settingForKey:keyCopy saveKey:0];
  v8.receiver = self;
  v8.super_class = BSKeyedSettings;
  v6 = [(BSSettings *)&v8 flagForSetting:v5];

  return v6;
}

- (uint64_t)_settingForKey:(int)key saveKey:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = [v5 hash];
    if (key)
    {
      v8 = [*(self + 40) objectForKey:v7];
      if (v8)
      {
        if (([v6 isEqualToString:v8] & 1) == 0)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Hash collision: '%@' and '%@' both hash to %lu", v6, v8, v7];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v12 = NSStringFromSelector(sel__settingForKey_saveKey_);
            v13 = objc_opt_class();
            NSStringFromClass(v13);
            *buf = 138544642;
            v32 = v12;
            v14 = v33 = 2114;
            v34 = v14;
            v35 = 2048;
            selfCopy4 = self;
            v37 = 2114;
            v38 = @"BSKeyedSettings.m";
            v39 = 1024;
            v40 = 194;
            v41 = 2114;
            v42 = v11;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v15 = v11;
          qword_1EAD33B00 = [v11 UTF8String];
          __break(0);
          JUMPOUT(0x18FF84214);
        }

        v9 = v6;
      }

      else
      {
        if (!*(self + 32))
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_keys != nil"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v17 = NSStringFromSelector(sel__settingForKey_saveKey_);
            v18 = objc_opt_class();
            NSStringFromClass(v18);
            *buf = 138544642;
            v32 = v17;
            v19 = v33 = 2114;
            v34 = v19;
            v35 = 2048;
            selfCopy4 = self;
            v37 = 2114;
            v38 = @"BSKeyedSettings.m";
            v39 = 1024;
            v40 = 187;
            v41 = 2114;
            v42 = v16;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v20 = v16;
          qword_1EAD33B00 = [v16 UTF8String];
          __break(0);
          JUMPOUT(0x18FF8431CLL);
        }

        if (!*(self + 40))
        {
          v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_keyMap != nil"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v22 = NSStringFromSelector(sel__settingForKey_saveKey_);
            v23 = objc_opt_class();
            NSStringFromClass(v23);
            *buf = 138544642;
            v32 = v22;
            v24 = v33 = 2114;
            v34 = v24;
            v35 = 2048;
            selfCopy4 = self;
            v37 = 2114;
            v38 = @"BSKeyedSettings.m";
            v39 = 1024;
            v40 = 188;
            v41 = 2114;
            v42 = v21;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v25 = v21;
          qword_1EAD33B00 = [v21 UTF8String];
          __break(0);
          JUMPOUT(0x18FF84424);
        }

        if (![v6 length])
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[key length] > 0"];
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v27 = NSStringFromSelector(sel__settingForKey_saveKey_);
            v28 = objc_opt_class();
            NSStringFromClass(v28);
            *buf = 138544642;
            v32 = v27;
            v29 = v33 = 2114;
            v34 = v29;
            v35 = 2048;
            selfCopy4 = self;
            v37 = 2114;
            v38 = @"BSKeyedSettings.m";
            v39 = 1024;
            v40 = 189;
            v41 = 2114;
            v42 = v26;
            _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v30 = v26;
          qword_1EAD33B00 = [v26 UTF8String];
          __break(0);
          JUMPOUT(0x18FF8452CLL);
        }

        v9 = [v6 copy];

        [*(self + 32) addObject:v9];
        [*(self + 40) setObject:v9 forKey:v7];
      }

      v6 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)BOOLForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSKeyedSettings *)self _settingForKey:keyCopy saveKey:0];
  v7.receiver = self;
  v7.super_class = BSKeyedSettings;
  LOBYTE(self) = [(BSSettings *)&v7 BOOLForSetting:v5];

  return self;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  v5 = [(BSKeyedSettings *)self _settingForKey:keyCopy saveKey:0];
  v8.receiver = self;
  v8.super_class = BSKeyedSettings;
  v6 = [(BSSettings *)&v8 objectForSetting:v5];

  return v6;
}

- (void)enumerateKeyedFlagsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __48__BSKeyedSettings_enumerateKeyedFlagsWithBlock___block_invoke;
    v6[3] = &unk_1E72CC268;
    v6[4] = self;
    v7 = blockCopy;
    [(BSSettings *)self _enumerateSettingsForFlagsWithBlock:v6];
  }
}

void __48__BSKeyedSettings_enumerateKeyedFlagsWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [(BSKeyedSettings *)*(a1 + 32) _keyForSetting:a2];
  if (v6)
  {
    (*(*(a1 + 40) + 16))(*(a1 + 40), v6, [*(a1 + 32) flagForSetting:a2], a3);
  }
}

- (id)_keyForSetting:(id *)setting
{
  if (setting)
  {
    setting = [setting[5] objectForKey:a2];
    v2 = vars8;
  }

  return setting;
}

- (void)enumerateKeyedObjectsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__BSKeyedSettings_enumerateKeyedObjectsWithBlock___block_invoke;
    v6[3] = &unk_1E72CC268;
    v6[4] = self;
    v7 = blockCopy;
    [(BSSettings *)self _enumerateSettingsForObjectsWithBlock:v6];
  }
}

void __50__BSKeyedSettings_enumerateKeyedObjectsWithBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [(BSKeyedSettings *)*(a1 + 32) _keyForSetting:a2];
  if (v6)
  {
    v9 = v6;
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) objectForSetting:a2];
    (*(v7 + 16))(v7, v9, v8, a3);

    v6 = v9;
  }
}

- (void)_applyToSettings:(id)settings preserveDiffs:(BOOL)diffs
{
  diffsCopy = diffs;
  v17 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (settingsCopy)
  {
    v15.receiver = self;
    v15.super_class = BSKeyedSettings;
    [(BSSettings *)&v15 _applyToSettings:settingsCopy preserveDiffs:diffsCopy];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    allKeys = [(BSKeyedSettings *)self allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          [(BSKeyedSettings *)settingsCopy _settingForKey:1 saveKey:?];
        }

        while (v8 != v10);
        v8 = [allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_removeAllSettings
{
  v3.receiver = self;
  v3.super_class = BSKeyedSettings;
  [(BSSettings *)&v3 _removeAllSettings];
  [(BSMutableIntegerMap *)self->_keyMap removeAllObjects];
  [(NSMutableSet *)self->_keys removeAllObjects];
}

- (void)_addDecodedKeys:(id *)keys
{
  v33 = *MEMORY[0x1E69E9840];
  v15 = a2;
  if (!keys[4] || !keys[5])
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_keys && _keyMap", v15];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(sel__addDecodedKeys_);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2048;
      keysCopy = keys;
      v27 = 2114;
      v28 = @"BSKeyedSettings.m";
      v29 = 1024;
      v30 = 202;
      v31 = 2114;
      v32 = v10;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v14 = v10;
    qword_1EAD33B00 = [v10 UTF8String];
    __break(0);
    JUMPOUT(0x18FF84ECCLL);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v15;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [v7 hash];
        if ([(BSSettings *)keys _hasValueForSetting:v8])
        {
          [keys[4] addObject:v7];
          [keys[5] setObject:v7 forKey:v8];
        }

        else
        {
          v9 = BSLogCommon();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v22 = v7;
            v23 = 2048;
            v24 = v8;
            _os_log_error_impl(&dword_18FEF6000, v9, OS_LOG_TYPE_ERROR, "No value decoded for key %@ (%llu). Ignoring.", buf, 0x16u);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (BSKeyedSettings)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = BSKeyedSettings;
  v5 = [(BSSettings *)&v8 initWithXPCDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey(dictionaryCopy, "BSKeys");
    [(BSKeyedSettings *)&v5->super.super.isa _addDecodedKeys:v6];
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6.receiver = self;
  v6.super_class = BSKeyedSettings;
  [(BSSettings *)&v6 encodeWithXPCDictionary:dictionaryCopy];
  allObjects = [(NSMutableSet *)self->_keys allObjects];
  if ([allObjects count])
  {
    BSSerializeCFValueToXPCDictionaryWithKey(allObjects, dictionaryCopy, "BSKeys");
  }
}

- (BSKeyedSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = BSKeyedSettings;
  v5 = [(BSSettings *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"BSKeys"];
    [(BSKeyedSettings *)&v5->super.super.isa _addDecodedKeys:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = BSKeyedSettings;
  [(BSSettings *)&v6 encodeWithCoder:coderCopy];
  allObjects = [(NSMutableSet *)self->_keys allObjects];
  [coderCopy encodeObject:allObjects forKey:@"BSKeys"];
}

@end