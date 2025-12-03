@interface _GCDaemonSettings
+ (id)instance;
- (_GCDaemonSettings)init;
- (id)anonymizedIdentifierForControllerIdentifier:(id)identifier;
- (id)newAnonymizedIdentifiersDictionary:(id)dictionary;
@end

@implementation _GCDaemonSettings

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29___GCDaemonSettings_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (instance_dispatcher_0 != -1)
  {
    dispatch_once(&instance_dispatcher_0, block);
  }

  v2 = instance_sharedInstance_0;

  return v2;
}

- (_GCDaemonSettings)init
{
  v6.receiver = self;
  v6.super_class = _GCDaemonSettings;
  v2 = [(_GCDaemonSettings *)&v6 init];
  if (v2)
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    defaults = v2->_defaults;
    v2->_defaults = standardUserDefaults;
  }

  return v2;
}

- (id)newAnonymizedIdentifiersDictionary:(id)dictionary
{
  v3 = MEMORY[0x1E695DF90];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(v3);
  [v5 setObject:&unk_1F4E8F290 forKeyedSubscript:@"nextIdentifier"];
  [v5 setObject:dictionaryCopy forKeyedSubscript:@"currentCycle"];

  [v5 setObject:MEMORY[0x1E695E0F8] forKeyedSubscript:@"identifiers"];
  return v5;
}

- (id)anonymizedIdentifierForControllerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (gc_isInternalBuild())
  {
    v25 = getGCDLogger();
    [_GCDaemonSettings anonymizedIdentifierForControllerIdentifier:v25];
  }

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v8 = [MEMORY[0x1E696AD98] numberWithLong:vcvtmd_s64_f64(v7 / 86400.0 / 91.0)];
  v9 = [(NSUserDefaults *)selfCopy->_defaults objectForKey:@"anonymizedIdentifiers"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"currentCycle"];
    v12 = [v11 isEqualToNumber:v8];
    if (v12)
    {
      v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
    }

    else
    {
      v13 = [(_GCDaemonSettings *)selfCopy newAnonymizedIdentifiersDictionary:v8];
    }

    v14 = v13;
    v15 = v12 ^ 1;
  }

  else
  {
    v14 = [(_GCDaemonSettings *)selfCopy newAnonymizedIdentifiersDictionary:v8];
    v15 = 1;
  }

  v16 = MEMORY[0x1E695DF90];
  v17 = [v14 objectForKeyedSubscript:@"identifiers"];
  v18 = [v16 dictionaryWithDictionary:v17];

  v19 = [v18 objectForKeyedSubscript:identifierCopy];

  if (!v19)
  {
    v20 = [v14 objectForKeyedSubscript:@"nextIdentifier"];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"controller-%@", v20];
    [v18 setObject:v21 forKeyedSubscript:identifierCopy];

    v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v20, "intValue") + 1}];
    [v14 setObject:v22 forKeyedSubscript:@"nextIdentifier"];

    v15 = 1;
  }

  [v14 setObject:v18 forKeyedSubscript:@"identifiers"];
  if (v15)
  {
    if (gc_isInternalBuild())
    {
      v26 = getGCDLogger();
      [_GCDaemonSettings anonymizedIdentifierForControllerIdentifier:v26];
    }

    [(NSUserDefaults *)selfCopy->_defaults setObject:v14 forKey:@"anonymizedIdentifiers"];
  }

  else if (gc_isInternalBuild())
  {
    v27 = getGCDLogger();
    [_GCDaemonSettings anonymizedIdentifierForControllerIdentifier:v27];
  }

  v23 = [v18 objectForKeyedSubscript:identifierCopy];

  objc_sync_exit(selfCopy);

  return v23;
}

- (void)anonymizedIdentifierForControllerIdentifier:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v2, v3, "anonymizedIdentifierForControllerIdentifier: %@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)anonymizedIdentifierForControllerIdentifier:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v2, v3, "Values didn't change. Stored anonymizedIdentifiers are: %@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)anonymizedIdentifierForControllerIdentifier:(NSObject *)a1 .cold.3(NSObject *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v2, v3, "Storing the following anonymizedIdentifiers: %@", v4, v5, v6, v7, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end