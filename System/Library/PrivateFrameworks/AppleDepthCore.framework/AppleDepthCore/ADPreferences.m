@interface ADPreferences
- (ADPreferences)initWithDomain:(id)a3 defaultValues:(id)a4;
- (BOOL)BOOLForKey:(id)a3;
- (BOOL)createPropertyForKey:(id)a3;
- (double)doubleForKey:(id)a3;
- (float)floatForKey:(id)a3;
- (id)listForKey:(id)a3;
- (id)numberForKey:(id)a3;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerUpdateHandlerForKeys:(id)a3 invokeOnRegistration:(BOOL)a4 scopeObject:(id)a5 handlerBlock:(id)a6;
- (void)updateValue:(id)a3 forKey:(id)a4;
@end

@implementation ADPreferences

- (id)listForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)numberForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CCABB0];
    [v3 doubleValue];
    v4 = [v5 numberWithDouble:?];
  }

  v6 = v4;

  return v6;
}

- (id)stringForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  v4 = [MEMORY[0x277CBEB68] null];
  if ([v3 isEqual:v4])
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = v3;
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (double)doubleForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  v6 = 0.0;
  if ((v5 & 1) == 0)
  {
    [v3 doubleValue];
    v6 = v7;
  }

  return v6;
}

- (float)floatForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  v6 = 0.0;
  if ((v5 & 1) == 0)
  {
    [v3 floatValue];
    v6 = v7;
  }

  return v6;
}

- (int64_t)integerForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 integerValue];
  }

  return v6;
}

- (BOOL)BOOLForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:a3];
  v4 = [MEMORY[0x277CBEB68] null];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 BOOLValue];
  }

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (self->_ignoreValueUpdate)
  {
    goto LABEL_24;
  }

  globalUserDefaults = self->_globalUserDefaults;
  if (self->_userDefaults != v10)
  {
    if (globalUserDefaults != v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error getting defaults key", buf, 2u);
      }

      goto LABEL_24;
    }

    goto LABEL_8;
  }

  if (globalUserDefaults == v10)
  {
LABEL_8:
    v13 = v9;
    goto LABEL_9;
  }

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", self->_domain, v9];
LABEL_9:
  v14 = v13;
  if (self->_userDefaults == v10)
  {
    v18 = v9;
  }

  else
  {
    v15 = self->_domain;
    v16 = v9;
    if ([v16 hasPrefix:v15])
    {
      v17 = [v16 substringFromIndex:{-[NSString length](v15, "length") + 1}];
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
  }

  v19 = [(NSUserDefaults *)self->_globalUserDefaults objectForKey:v14];
  v20 = [(NSUserDefaults *)self->_userDefaults objectForKey:v18];
  v21 = v20;
  if (v19 && v20)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      domain = self->_domain;
      *buf = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = domain;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "cannot set configuration. %{public}@ is set in both global domain and in %@. please only use one.", buf, 0x16u);
    }
  }

  else
  {
    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = v19;
    }

    [(ADPreferences *)self updateValue:v23 forKey:v18];
  }

LABEL_24:
}

- (void)registerUpdateHandlerForKeys:(id)a3 invokeOnRegistration:(BOOL)a4 scopeObject:(id)a5 handlerBlock:(id)a6
{
  v8 = a4;
  v18 = a3;
  v10 = a5;
  v11 = a6;
  v12 = self;
  objc_sync_enter(v12);
  v13 = [[ADPreferencesObserver alloc] initForPreferences:v12 updateHandlerBlock:v11 keys:v18 invokeOnInit:v8];
  if (!v10)
  {
    v10 = v12;
  }

  v14 = 0;
  do
  {
    v15 = [ADPreferences registerUpdateHandlerForKeys:invokeOnRegistration:scopeObject:handlerBlock:]::uniqueNameIdx++;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"__ADPreferencesObserver_%u", v15];

    v14 = v16;
    v17 = objc_getAssociatedObject(v10, [v16 UTF8String]);
  }

  while (v17);
  objc_setAssociatedObject(v10, [v14 UTF8String], v13, 1);

  objc_sync_exit(v12);
}

- (void)updateValue:(id)a3 forKey:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  [(ADPreferences *)self willChangeValueForKey:v8];
  v9 = v7;
  if (!v7)
  {
    v4 = [(NSDictionary *)self->_originalDefaults objectForKeyedSubscript:v8];
    v9 = [v4 copy];
  }

  [(NSMutableDictionary *)self->_currentDefaults setObject:v9 forKeyedSubscript:v8];
  if (!v7)
  {
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(NSMutableDictionary *)self->_currentDefaults objectForKeyedSubscript:v8];
    v13 = 138412802;
    v14 = v11;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@: (%@)=>(%@)", &v13, 0x20u);
  }

  [(ADPreferences *)self didChangeValueForKey:v8];
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_currentDefaults;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [(NSUserDefaults *)self->_userDefaults removeObserver:self forKeyPath:v7 context:0];
        globalUserDefaults = self->_globalUserDefaults;
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", self->_domain, v7];
        [(NSUserDefaults *)globalUserDefaults removeObserver:self forKeyPath:v9 context:0];
      }

      v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10.receiver = self;
  v10.super_class = ADPreferences;
  [(ADPreferences *)&v10 dealloc];
}

- (ADPreferences)initWithDomain:(id)a3 defaultValues:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v23 = a4;
  v30.receiver = self;
  v30.super_class = ADPreferences;
  v7 = [(ADPreferences *)&v30 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_domain, a3);
    objc_storeStrong(&v8->_originalDefaults, a4);
    v9 = [(NSDictionary *)v8->_originalDefaults mutableCopy];
    currentDefaults = v8->_currentDefaults;
    v8->_currentDefaults = v9;

    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    globalUserDefaults = v8->_globalUserDefaults;
    v8->_globalUserDefaults = v11;

    v13 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v25];
    userDefaults = v8->_userDefaults;
    v8->_userDefaults = v13;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v23;
    v15 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v15)
    {
      v16 = *v27;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = v8->_globalUserDefaults;
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v25, v18];
          [(NSUserDefaults *)v19 addObserver:v8 forKeyPath:v20 options:7 context:0];

          v8->_ignoreValueUpdate = 1;
          [(NSUserDefaults *)v8->_userDefaults addObserver:v8 forKeyPath:v18 options:7 context:0];
          v8->_ignoreValueUpdate = 0;
          if (![(ADPreferences *)v8 createPropertyForKey:v18])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v32 = v18;
              _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed setting property for configuration key %{public}@", buf, 0xCu);
            }

            v21 = 0;
            goto LABEL_15;
          }
        }

        v15 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }
  }

  v21 = v8;
LABEL_15:

  return v21;
}

- (BOOL)createPropertyForKey:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 substringToIndex:{1, 0x2404D5185, 0x2404D5187, 0x2404D518DLL, 0x2404D26E5}];
  v5 = [v4 uppercaseString];
  v6 = [v3 stringByReplacingCharactersInRange:0 withString:{1, v5}];

  v7 = [v6 stringByAppendingString:@":"];

  v8 = objc_opt_class();
  v9 = NSSelectorFromString(v3);
  if (class_addMethod(v8, v9, getterDummy, "@@:") && (v10 = objc_opt_class(), v11 = NSSelectorFromString(v7), class_addMethod(v10, v11, setterDummy, "v@:@")))
  {
    v12 = objc_opt_class();
    v13 = class_addProperty(v12, [v3 UTF8String], &v15, 2u);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end