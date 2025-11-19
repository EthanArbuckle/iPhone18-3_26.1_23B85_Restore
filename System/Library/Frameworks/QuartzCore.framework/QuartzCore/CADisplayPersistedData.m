@interface CADisplayPersistedData
+ (id)sharedInstance;
+ (id)supportedClasses;
- (CADisplayPersistedData)init;
- (CADisplayPersistedData)initWithCoder:(id)a3;
- (Mode)preferredModeForUUID:(id)a3;
- (double)latencyForUUID:(id)a3 andMode:(Mode)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)save;
- (void)setLatency:(double)a3 forUUID:(id)a4 andMode:(Mode)a5;
- (void)setPreferredMode:(Mode)a3 forUUID:(id)a4;
- (void)update;
@end

@implementation CADisplayPersistedData

- (void)encodeWithCoder:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  if (self->_version)
  {
    [a3 encodeObject:MEMORY[0x1E695E118] forKey:@"hasVersion"];
    [a3 encodeObject:self->_version forKey:@"version"];
  }

  else
  {
    [a3 encodeObject:MEMORY[0x1E695E110] forKey:@"hasVersion"];
  }

  latencies = self->_latencies;
  if (latencies && [(NSMutableArray *)latencies count])
  {
    [a3 encodeObject:MEMORY[0x1E695E118] forKey:@"hasLatencies"];
    [a3 encodeObject:-[NSMutableArray copy](self->_latencies forKey:{"copy"), @"latencies"}];
  }

  else
  {
    [a3 encodeObject:MEMORY[0x1E695E110] forKey:@"hasLatencies"];
  }

  preferredModes = self->_preferredModes;
  if (preferredModes && [(NSMutableArray *)preferredModes count])
  {
    [a3 encodeObject:MEMORY[0x1E695E118] forKey:@"hasPreferredModes"];
    [a3 encodeObject:-[NSMutableArray copy](self->_preferredModes forKey:{"copy"), @"preferredModes"}];
  }

  else
  {
    [a3 encodeObject:MEMORY[0x1E695E110] forKey:@"hasPreferredModes"];
  }

  objc_autoreleasePoolPop(v5);
}

- (CADisplayPersistedData)initWithCoder:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = CADisplayPersistedData;
  v4 = [(CADisplayPersistedData *)&v8 init];
  if (v4)
  {
    v4->_version = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    v5 = [a3 decodeObjectOfClasses:+[CADisplayPersistedData supportedClasses](CADisplayPersistedData forKey:{"supportedClasses"), @"latencies"}];
    v4->_latencies = v5;
    if (!v5)
    {
      v4->_latencies = objc_opt_new();
    }

    v6 = [a3 decodeObjectOfClasses:+[CADisplayPersistedData supportedClasses](CADisplayPersistedData forKey:{"supportedClasses"), @"preferredModes"}];
    v4->_preferredModes = v6;
    if (!v6)
    {
      v4->_preferredModes = objc_opt_new();
    }
  }

  return v4;
}

- (void)save
{
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  if (v2)
  {
    v3 = *MEMORY[0x1E695E8A8];
    CFPreferencesSetAppValue(@"CADisplayPersistence", v2, *MEMORY[0x1E695E8A8]);

    CFPreferencesAppSynchronize(v3);
  }
}

- (void)update
{
  v24 = *MEMORY[0x1E69E9840];
  [(CADisplayPersistedData *)self setLatencies:[(NSMutableArray *)self->_latencies mutableCopy]];
  [(CADisplayPersistedData *)self setPreferredModes:[(NSMutableArray *)self->_preferredModes mutableCopy]];
  if (framework_version(void)::once[0] != -1)
  {
    dispatch_once(framework_version(void)::once, &__block_literal_global_131);
  }

  v3 = framework_version(void)::version;
  if (![(NSString *)self->_version isEqualToString:framework_version(void)::version])
  {
    [(CADisplayPersistedData *)self setVersion:v3];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    latencies = self->_latencies;
    v5 = [(NSMutableArray *)latencies countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(latencies);
          }

          [*(*(&v20 + 1) + 8 * i) setMode:{reload_mode(objc_msgSend(*(*(&v20 + 1) + 8 * i), "mode"))}];
        }

        v6 = [(NSMutableArray *)latencies countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v6);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    preferredModes = self->_preferredModes;
    v10 = [(NSMutableArray *)preferredModes countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(preferredModes);
          }

          [*(*(&v15 + 1) + 8 * j) setMode:{reload_mode(objc_msgSend(*(*(&v15 + 1) + 8 * j), "mode"))}];
        }

        v11 = [(NSMutableArray *)preferredModes countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v11);
    }

    [(CADisplayPersistedData *)self save];
  }
}

- (Mode)preferredModeForUUID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  preferredModes = self->_preferredModes;
  v5 = [(NSMutableArray *)preferredModes countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(preferredModes);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([a3 isEqualToString:{objc_msgSend(v10, "uuid")}])
        {
          v11 = 0;
          CA::WindowServer::Display::Mode::Mode(&v11, [v10 mode]);
          v5 = v11;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v5 = [(NSMutableArray *)preferredModes countByEnumeratingWithState:&v13 objects:v12 count:16];
      v7 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  *(&result.var0.var1 + 1) = v6;
  result.var0.var1 = v5;
  return result;
}

- (void)setPreferredMode:(Mode)a3 forUUID:(id)a4
{
  v4 = *(&a3.var0.var1 + 1);
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a3.var0.var1;
  v6 = objc_alloc_init(CADisplayPersistedPreferredMode);
  [(CADisplayPersistedPreferredMode *)v6 setUuid:v4, v9[0]];
  [(CADisplayPersistedPreferredMode *)v6 setMode:CA::WindowServer::Display::Mode::create_dictionary_representation(v9)];
  if (![(NSMutableArray *)self->_preferredModes count])
  {
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
  while (([v4 isEqualToString:{objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->_preferredModes, "objectAtIndexedSubscript:", v7), "uuid")}] & 1) == 0)
  {
    v7 = ++v8;
    if ([(NSMutableArray *)self->_preferredModes count]<= v8)
    {
      goto LABEL_8;
    }
  }

  if ((v8 & 0x80000000) != 0)
  {
LABEL_8:
    if ([(NSMutableArray *)self->_preferredModes count]>= 0x10)
    {
      [(NSMutableArray *)self->_preferredModes removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_preferredModes addObject:v6];
  }

  else
  {
    [(NSMutableArray *)self->_preferredModes replaceObjectAtIndex:v8 withObject:v6];
  }

  [(CADisplayPersistedData *)self save];
}

- (double)latencyForUUID:(id)a3 andMode:(Mode)a4
{
  v22 = *MEMORY[0x1E69E9840];
  var1 = a4.var0.var1;
  v6 = CA::WindowServer::Display::Mode::create_dictionary_representation(&var1);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  latencies = self->_latencies;
  v8 = [(NSMutableArray *)latencies countByEnumeratingWithState:&v18 objects:v17 count:16];
  v9 = 0.0;
  if (v8)
  {
    v10 = v8;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(latencies);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([a3 isEqualToString:{objc_msgSend(v13, "uuid")}] && (-[__CFDictionary isEqual:](v6, "isEqual:", objc_msgSend(v13, "mode")) & 1) != 0)
        {
          [v13 latency];
          return v14;
        }
      }

      v10 = [(NSMutableArray *)latencies countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return v9;
}

- (void)setLatency:(double)a3 forUUID:(id)a4 andMode:(Mode)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = a5.var0.var1;
  v8 = CA::WindowServer::Display::Mode::create_dictionary_representation(v13);
  v9 = objc_alloc_init(CADisplayPersistedLatency);
  [(CADisplayPersistedLatency *)v9 setUuid:a4];
  [(CADisplayPersistedLatency *)v9 setMode:v8];
  [(CADisplayPersistedLatency *)v9 setLatency:a3];
  if (![(NSMutableArray *)self->_latencies count])
  {
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = [(NSMutableArray *)self->_latencies objectAtIndexedSubscript:v10];
    if ([a4 isEqualToString:{objc_msgSend(v12, "uuid")}])
    {
      if (-[__CFDictionary isEqual:](v8, "isEqual:", [v12 mode]))
      {
        break;
      }
    }

    v10 = ++v11;
    if ([(NSMutableArray *)self->_latencies count]<= v11)
    {
      goto LABEL_6;
    }
  }

  if ((v11 & 0x80000000) != 0)
  {
LABEL_6:
    if ([(NSMutableArray *)self->_latencies count]>= 0x10)
    {
      [(NSMutableArray *)self->_latencies removeObjectAtIndex:0];
    }

    [(NSMutableArray *)self->_latencies addObject:v9];
  }

  else
  {
    [(NSMutableArray *)self->_latencies replaceObjectAtIndex:v11 withObject:v9];
  }

  [(CADisplayPersistedData *)self save];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  [v3 appendFormat:@"<%@:%p; ", NSStringFromClass(v4), self];
  [v3 appendFormat:@"version: %@, latencies: %@, preferredModes:%@", self->_version, self->_latencies, self->_preferredModes];
  [v3 appendString:@">"];
  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = CADisplayPersistedData;
  [(CADisplayPersistedData *)&v3 dealloc];
}

- (CADisplayPersistedData)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = CADisplayPersistedData;
  v2 = [(CADisplayPersistedData *)&v4 init];
  if (v2)
  {
    if (framework_version(void)::once[0] != -1)
    {
      dispatch_once(framework_version(void)::once, &__block_literal_global_131);
    }

    v2->_version = [framework_version(void)::version copy];
    v2->_latencies = objc_opt_new();
    v2->_preferredModes = objc_opt_new();
  }

  return v2;
}

+ (id)sharedInstance
{
  if (+[CADisplayPersistedData sharedInstance]::once[0] != -1)
  {
    dispatch_once(+[CADisplayPersistedData sharedInstance]::once, &__block_literal_global_7_24415);
  }

  return +[CADisplayPersistedData sharedInstance]::data;
}

void __40__CADisplayPersistedData_sharedInstance__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E8A8];
  v1 = CFPreferencesCopyAppValue(@"CADisplayPersistence", *MEMORY[0x1E695E8A8]);
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDataGetTypeID())
    {
      v6 = 0;
      +[CADisplayPersistedData sharedInstance]::data = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v6];
      v4 = +[CADisplayPersistedData sharedInstance]::data;
      if (v6)
      {
        if (x_log_get_windowserver(void)::once != -1)
        {
          dispatch_once(&x_log_get_windowserver(void)::once, &__block_literal_global_17283);
        }

        v5 = x_log_get_windowserver(void)::log;
        if (os_log_type_enabled(x_log_get_windowserver(void)::log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v8 = v6;
          _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        CFPreferencesSetAppValue(@"CADisplayPersistence", 0, v0);
        CFPreferencesAppSynchronize(v0);
      }

      else
      {
        [+[CADisplayPersistedData sharedInstance]::data update];
      }
    }

    CFRelease(v2);
  }

  if (!+[CADisplayPersistedData sharedInstance]::data)
  {
    +[CADisplayPersistedData sharedInstance]::data = objc_alloc_init(CADisplayPersistedData);
  }
}

+ (id)supportedClasses
{
  if (+[CADisplayPersistedData supportedClasses]::once != -1)
  {
    dispatch_once(&+[CADisplayPersistedData supportedClasses]::once, &__block_literal_global_24419);
  }

  return +[CADisplayPersistedData supportedClasses]::set;
}

id __42__CADisplayPersistedData_supportedClasses__block_invoke()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  result = [v0 setWithObjects:{v1, v2, v3, v4, objc_opt_class(), 0}];
  +[CADisplayPersistedData supportedClasses]::set = result;
  return result;
}

@end