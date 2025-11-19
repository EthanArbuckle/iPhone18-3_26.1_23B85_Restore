@interface AXSSKeyboardCommandMap
- (AXSSKeyboardCommandMap)commandMapWithKeyChord:(id)a3 forCommand:(id)a4;
- (AXSSKeyboardCommandMap)initWithCoder:(id)a3;
- (BOOL)_isAvailableCommand:(id)a3;
- (BOOL)_validateCommandsToKeyChords:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommandMap:(id)a3;
- (id)_initWithCommandsToKeyChordsDictionary:(id)a3;
- (id)addCommandsForTransientKeyChords:(id)a3;
- (id)commandForKeyChord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyChordForCommand:(id)a3;
- (unint64_t)hash;
- (void)_initializeDictionariesIfNeeded;
- (void)encodeWithCoder:(id)a3;
- (void)removeTransientKeyChordsForIdentifier:(id)a3;
@end

@implementation AXSSKeyboardCommandMap

- (id)_initWithCommandsToKeyChordsDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AXSSKeyboardCommandMap;
  v6 = [(AXSSKeyboardCommandMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefinedCommandsToKeyChords, a3);
  }

  return v7;
}

- (AXSSKeyboardCommandMap)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"commandsToKeyChords"];

  if (v9 && ![(AXSSKeyboardCommandMap *)self _validateCommandsToKeyChords:v9])
  {
    v10 = FKALogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(AXSSKeyboardCommandMap *)v9 initWithCoder:v10];
    }

    v9 = 0;
  }

  v11 = [(AXSSKeyboardCommandMap *)self _initWithCommandsToKeyChordsDictionary:v9];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  [v4 encodeObject:v5 forKey:@"commandsToKeyChords"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  v6 = v4[4];
  v4[4] = v5;

  v7 = [(AXSSKeyboardCommandMap *)self availableCommands];
  v8 = v4[1];
  v4[1] = v7;

  v9 = [(AXSSKeyboardCommandMap *)self transientCommands];
  v10 = [v9 copy];
  v11 = v4[5];
  v4[5] = v10;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AXSSKeyboardCommandMap *)self isEqualToCommandMap:v4];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqualToCommandMap:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  v6 = [v4 userDefinedCommandsToKeyChords];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
    v8 = [v4 userDefinedCommandsToKeyChords];
    v9 = [v7 isEqualToDictionary:v8];
  }

  return v9;
}

- (BOOL)_validateCommandsToKeyChords:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v3 objectForKeyedSubscript:{v8, v14}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            continue;
          }
        }

        v11 = 0;
        goto LABEL_13;
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v11 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 1;
  }

LABEL_13:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_isAvailableCommand:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyboardCommandMap *)self availableCommands];
  if (v5)
  {
    v6 = [(AXSSKeyboardCommandMap *)self availableCommands];
    v7 = [v6 containsObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_initializeDictionariesIfNeeded
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Error loading default keyboard commands: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (id)commandForKeyChord:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isNull])
  {
    goto LABEL_2;
  }

  [(AXSSKeyboardCommandMap *)self _initializeDictionariesIfNeeded];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(AXSSKeyboardCommandMap *)self transientCommands];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(AXSSKeyboardCommandMap *)self transientCommands];
        v13 = [v12 objectForKeyedSubscript:v11];
        v5 = [v13 objectForKeyedSubscript:v4];

        if (v5)
        {

          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(AXSSKeyboardCommandMap *)self keyChordsToCommands];
  v5 = [v14 objectForKeyedSubscript:v4];

  if (!v5)
  {
    v15 = [v4 keys];
    v16 = [v15 containsObject:@"⎋"];

    if (!v16)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_15;
    }

    v5 = [AXSSKeyboardCommand commandWithStandardCommandIdentifier:@"Escape"];
  }

LABEL_15:

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)keyChordForCommand:(id)a3
{
  v4 = a3;
  [(AXSSKeyboardCommandMap *)self _initializeDictionariesIfNeeded];
  v5 = [(AXSSKeyboardCommandMap *)self commandsToArraysOfKeyChords];
  v6 = [v5 objectForKeyedSubscript:v4];

  if ([v6 count] == 1 && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isNull"), v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 firstObject];
  }

  return v9;
}

- (AXSSKeyboardCommandMap)commandMapWithKeyChord:(id)a3 forCommand:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXSSKeyboardCommandMap *)self userDefinedCommandsToKeyChords];
  v9 = [v8 mutableCopy];

  if (!v9)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
  }

  if (v7)
  {
    [v9 setObject:v6 forKeyedSubscript:v7];
  }

  v10 = [objc_alloc(objc_opt_class()) _initWithCommandsToKeyChordsDictionary:v9];
  v11 = [(AXSSKeyboardCommandMap *)self availableCommands];
  [v10 setAvailableCommands:v11];

  return v10;
}

- (id)addCommandsForTransientKeyChords:(id)a3
{
  v4 = a3;
  if (!self->_transientCommands)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    transientCommands = self->_transientCommands;
    self->_transientCommands = v5;
  }

  v7 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v7 UUIDString];

  v9 = [(AXSSKeyboardCommandMap *)self transientCommands];
  [v9 setObject:v4 forKeyedSubscript:v8];

  return v8;
}

- (void)removeTransientKeyChordsForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AXSSKeyboardCommandMap *)self transientCommands];
  [v5 setObject:0 forKeyedSubscript:v4];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "Ignoring commands to key chords dictionary because of unexpected format: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end