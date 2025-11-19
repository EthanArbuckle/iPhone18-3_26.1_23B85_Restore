@interface INExecutionCounterpartMapper
+ (void)initialize;
- (INExecutionCounterpartMapper)init;
- (id)counterpartIdentifiersForLocalIdentifier:(id)a3;
- (id)localIdentifiersForCounterpartIdentifier:(id)a3;
- (void)dealloc;
- (void)installedApplicationsDidChange:(id)a3;
- (void)reset;
@end

@implementation INExecutionCounterpartMapper

- (id)counterpartIdentifiersForLocalIdentifier:(id)a3
{
  v3 = MEMORY[0x1E69635F8];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 allowPlaceholder:1 error:0];

  if (v5)
  {
    v6 = INCounterpartIdentifiersForApplicationRecord(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)localIdentifiersForCounterpartIdentifier:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v47 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
    v48 = 2112;
    v49 = v4;
    _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] Starting counterpart mapping for bundle id: %@", buf, 0x16u);
  }

  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __73__INExecutionCounterpartMapper_localIdentifiersForCounterpartIdentifier___block_invoke;
    v43[3] = &unk_1E72882F8;
    v43[4] = self;
    v30 = MEMORY[0x193AD7780](v43);
    v28 = [(NSMutableDictionary *)self->_mapping objectForKey:v4];
    if (v28)
    {
      v6 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v47 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
        v48 = 2112;
        v49 = v4;
        v50 = 2112;
        v51 = v28;
        _os_log_impl(&dword_18E991000, v6, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Found counterpart in local mapping: %@", buf, 0x20u);
      }

      v7 = v28;
      v8 = v28;
    }

    else
    {
      if (self->_filled)
      {
        v9 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v47 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
          v48 = 2112;
          v49 = v4;
          _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Mapping is filled and a counterpart was not found, returning nil", buf, 0x16u);
        }

        v8 = 0;
      }

      else
      {
        [MEMORY[0x1E69635F8] enumeratorWithOptions:1];
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        obj = v40 = 0u;
        v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v10)
        {
          v32 = *v40;
          *&v11 = 136315394;
          v27 = v11;
          while (2)
          {
            v34 = 0;
            v31 = v10;
            do
            {
              if (*v40 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v39 + 1) + 8 * v34);
              context = objc_autoreleasePoolPush();
              v13 = INCounterpartIdentifiersForApplicationRecord(v12);
              v37 = 0u;
              v38 = 0u;
              v35 = 0u;
              v36 = 0u;
              v14 = v13;
              v15 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
              if (v15)
              {
                v16 = *v36;
                while (2)
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v36 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v35 + 1) + 8 * i);
                    v19 = INSiriLogContextIntents;
                    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315650;
                      v47 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
                      v48 = 2112;
                      v49 = v4;
                      v50 = 2112;
                      v51 = v18;
                      _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Found counterpart: %@", buf, 0x20u);
                    }

                    v20 = [(NSMutableDictionary *)self->_mapping objectForKey:v18, v27];
                    if (!v20)
                    {
                      v20 = objc_opt_new();
                      [(NSMutableDictionary *)self->_mapping setObject:v20 forKey:v18];
                    }

                    v21 = [v12 bundleIdentifier];
                    [v20 addObject:v21];

                    if ([v18 isEqualToString:v4])
                    {
                      v23 = INSiriLogContextIntents;
                      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
                      {
                        *buf = v27;
                        v47 = "[INExecutionCounterpartMapper localIdentifiersForCounterpartIdentifier:]";
                        v48 = 2112;
                        v49 = v4;
                        _os_log_impl(&dword_18E991000, v23, OS_LOG_TYPE_INFO, "%s [Counterpart Mapping] (%@) Counterpart and original match, stopping", buf, 0x16u);
                      }

                      v22 = 1;
                      goto LABEL_34;
                    }
                  }

                  v15 = [v14 countByEnumeratingWithState:&v35 objects:v44 count:16];
                  if (v15)
                  {
                    continue;
                  }

                  break;
                }
              }

              v22 = 0;
LABEL_34:

              objc_autoreleasePoolPop(context);
              if (v22)
              {
                v24 = 0;
                goto LABEL_39;
              }

              ++v34;
            }

            while (v34 != v31);
            v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v24 = 1;
LABEL_39:

        self->_filled = v24;
        v8 = [(NSMutableDictionary *)self->_mapping objectForKey:v4];
      }

      v7 = 0;
    }

    v30[2]();
  }

  else
  {
    v8 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__INExecutionCounterpartMapper_reset__block_invoke;
  v6[3] = &unk_1E72882F8;
  v6[4] = self;
  v3 = MEMORY[0x193AD7780](v6);
  v4 = objc_opt_new();
  mapping = self->_mapping;
  self->_mapping = v4;

  self->_filled = 0;
  v3[2](v3);
}

- (void)installedApplicationsDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"isPlaceholder"];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 BOOLValue];
  if ((v8 & 1) == 0)
  {

    [(INExecutionCounterpartMapper *)self reset];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationRegistered" object:0];
  [v3 removeObserver:self name:@"com.apple.LaunchServices.applicationUnregistered" object:0];

  v4.receiver = self;
  v4.super_class = INExecutionCounterpartMapper;
  [(INExecutionCounterpartMapper *)&v4 dealloc];
}

- (INExecutionCounterpartMapper)init
{
  v7.receiver = self;
  v7.super_class = INExecutionCounterpartMapper;
  v2 = [(INExecutionCounterpartMapper *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 addObserver:v3 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationRegistered" object:0];
    [v4 addObserver:v3 selector:sel_installedApplicationsDidChange_ name:@"com.apple.LaunchServices.applicationUnregistered" object:0];
    [(INExecutionCounterpartMapper *)v3 reset];
    v5 = v3;
  }

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1 && INLogInitIfNeeded_once != -1)
  {

    dispatch_once(&INLogInitIfNeeded_once, &__block_literal_global_72043);
  }
}

@end