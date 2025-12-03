@interface PDUserDefaults
+ (BOOL)isInternalOSVariant;
+ (id)configurationDictionary;
+ (id)sharedDefaults;
+ (void)removeSharedDefaults;
- (BOOL)setValue:(id)value forDefaultNamed:(id)named error:(id *)error;
- (BOOL)unprotected_BOOLForKey:(id)key defaultValue:(BOOL)value;
- (PDUserDefaults)init;
- (id)description;
- (id)dictionaryRepresentation;
- (id)valueForDefaultNamed:(id)named;
- (void)resetUserDefaultsIfAllowed;
- (void)restoreFromDictionaryRepresentation:(id)representation;
- (void)setEnableResponseStreaming:(BOOL)streaming;
- (void)setEnableVerboseLogging:(BOOL)logging;
- (void)setRestoreCurrentDefaults:(BOOL)defaults;
- (void)unprotected_writeToBackingStore;
- (void)updateFromBackingStore;
@end

@implementation PDUserDefaults

+ (id)configurationDictionary
{
  if (qword_10024D9F8 != -1)
  {
    dispatch_once(&qword_10024D9F8, &stru_1002048A8);
  }

  v3 = qword_10024D9F0;

  return v3;
}

+ (id)sharedDefaults
{
  os_unfair_lock_lock(&stru_10024D9E4);
  if ((byte_10024D9E0 & 1) == 0)
  {
    v2 = objc_alloc_init(PDUserDefaults);
    v3 = qword_10024D9E8;
    qword_10024D9E8 = v2;

    byte_10024D9E0 = 1;
  }

  os_unfair_lock_unlock(&stru_10024D9E4);
  v4 = qword_10024D9E8;

  return v4;
}

+ (void)removeSharedDefaults
{
  os_unfair_lock_lock(&stru_10024D9E4);
  v2 = qword_10024D9E8;
  qword_10024D9E8 = 0;

  byte_10024D9E0 = 0;

  os_unfair_lock_unlock(&stru_10024D9E4);
}

- (PDUserDefaults)init
{
  v47.receiver = self;
  v47.super_class = PDUserDefaults;
  v2 = [(PDUserDefaults *)&v47 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_16;
  }

  v2->_lock._os_unfair_lock_opaque = 0;
  v4 = +[NSMutableDictionary dictionary];
  backingStoreDictionary = v3->_backingStoreDictionary;
  v3->_backingStoreDictionary = v4;

  v6 = sub_1000E0594();
  v7 = sub_1000E0CF4(v6);
  defaultsFileURL = v3->_defaultsFileURL;
  v3->_defaultsFileURL = v7;

  v9 = [NSData dataWithContentsOfURL:v3->_defaultsFileURL];
  if (v9)
  {
    v10 = [NSPropertyListSerialization propertyListWithData:v9 options:2 format:0 error:0];
    if ([v10 count])
    {
      v11 = +[PDUserDefaults configurationDictionary];
      v12 = [v11 keysOfEntriesPassingTest:&stru_1002048E8];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v41 objects:v52 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v42;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v42 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v41 + 1) + 8 * i);
            v19 = [v10 objectForKeyedSubscript:{v18, v41}];
            if (v19)
            {
              [(NSMutableDictionary *)v3->_backingStoreDictionary setObject:v19 forKeyedSubscript:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v41 objects:v52 count:16];
        }

        while (v15);
      }
    }

    v20 = 0;
    goto LABEL_15;
  }

  v30 = v3->_backingStoreDictionary;
  v46 = 0;
  v9 = [NSPropertyListSerialization dataWithPropertyList:v30 format:200 options:0 error:&v46];
  v31 = v46;
  v32 = v31;
  if (!v9)
  {
    CLSInitLog();
    v36 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v37 = v3->_backingStoreDictionary;
      *buf = 138412546;
      v54 = v37;
      v55 = 2112;
      v56 = v32;
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Failed to create backing store data for: %@. Cannot init PDUserDefaults. Error: %@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  v33 = v3->_defaultsFileURL;
  v45 = v31;
  v34 = [v9 writeToURL:v33 options:1 error:&v45];
  v20 = v45;

  if ((v34 & 1) == 0)
  {
    CLSInitLog();
    v35 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v38 = v3->_defaultsFileURL;
      v39 = v35;
      path = [(NSURL *)v38 path];
      *buf = 138412546;
      v54 = path;
      v55 = 2112;
      v56 = v20;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to write backing store data to: %@. Cannot init PDUserDefaults. Error: %@", buf, 0x16u);
    }

    v32 = v20;
LABEL_25:

    v28 = 0;
    goto LABEL_17;
  }

LABEL_15:
  [(PDUserDefaults *)v3 updateFromBackingStore];
  v21 = CLSUserDefaultRestoreCurrentDefaults;
  v22 = CLSUserDefaultEnableVerboseLogging;
  v50[0] = CLSUserDefaultRestoreCurrentDefaults;
  v50[1] = CLSUserDefaultEnableVerboseLogging;
  v51[0] = @"setRestoreCurrentDefaults:";
  v51[1] = @"setEnableVerboseLogging:";
  v23 = CLSUserDefaultEnableResponseStreaming;
  v50[2] = CLSUserDefaultEnableResponseStreaming;
  v51[2] = @"setEnableResponseStreaming:";
  v24 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:3];
  setterNames = v3->_setterNames;
  v3->_setterNames = v24;

  v48[0] = v21;
  v48[1] = v22;
  v49[0] = @"restoreCurrentDefaults";
  v49[1] = @"enableVerboseLogging";
  v48[2] = v23;
  v49[2] = @"enableResponseStreaming";
  v26 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:3];
  getterNames = v3->_getterNames;
  v3->_getterNames = v26;

LABEL_16:
  v28 = v3;
LABEL_17:

  return v28;
}

- (void)resetUserDefaultsIfAllowed
{
  if (!self->_restoreCurrentDefaults)
  {
    CLSInitLog();
    v3 = CLSLogDatabase;
    if (os_log_type_enabled(CLSLogDatabase, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "resetting user defaults", v4, 2u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_backingStoreDictionary removeAllObjects];
    [(PDUserDefaults *)self unprotected_writeToBackingStore];
    os_unfair_lock_unlock(&self->_lock);
    [(PDUserDefaults *)self updateFromBackingStore];
  }
}

- (void)updateFromBackingStore
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_defaultsFileURL)
  {
    [(NSMutableDictionary *)self->_backingStoreDictionary removeAllObjects];
  }

  self->_restoreCurrentDefaults = [(PDUserDefaults *)self unprotected_BOOLForKey:CLSUserDefaultRestoreCurrentDefaults defaultValue:1];
  self->_enableVerboseLogging = [(PDUserDefaults *)self unprotected_BOOLForKey:CLSUserDefaultEnableVerboseLogging defaultValue:0];
  self->_enableResponseStreaming = [(PDUserDefaults *)self unprotected_BOOLForKey:CLSUserDefaultEnableResponseStreaming defaultValue:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)restoreFromDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = +[PDUserDefaults configurationDictionary];
  os_unfair_lock_lock(&self->_lock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  keyEnumerator = [representationCopy keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v5 objectForKeyedSubscript:v11];
        bOOLValue = [v12 BOOLValue];

        if (bOOLValue)
        {
          v14 = [representationCopy objectForKeyedSubscript:v11];
          -[PDUserDefaults unprotected_setBool:forKey:](self, "unprotected_setBool:forKey:", [v14 BOOLValue], v11);
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)unprotected_BOOLForKey:(id)key defaultValue:(BOOL)value
{
  backingStoreDictionary = self->_backingStoreDictionary;
  if (backingStoreDictionary)
  {
    v6 = [(NSMutableDictionary *)backingStoreDictionary objectForKeyedSubscript:key];
    v7 = v6;
    if (v6)
    {
      value = [v6 BOOLValue];
    }
  }

  return value;
}

- (void)unprotected_writeToBackingStore
{
  if (self->_defaultsFileURL)
  {
    backingStoreDictionary = self->_backingStoreDictionary;
    v17 = 0;
    v4 = [NSPropertyListSerialization dataWithPropertyList:backingStoreDictionary format:200 options:0 error:&v17];
    v5 = v17;
    v6 = v5;
    if (v4)
    {
      defaultsFileURL = self->_defaultsFileURL;
      v16 = v5;
      v8 = [v4 writeToURL:defaultsFileURL options:1 error:&v16];
      v9 = v16;

      if ((v8 & 1) == 0)
      {
        CLSInitLog();
        v10 = CLSLogDefault;
        if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
        {
          v13 = self->_defaultsFileURL;
          v14 = v10;
          path = [(NSURL *)v13 path];
          *buf = 138412546;
          v19 = path;
          v20 = 2112;
          v21 = v9;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to write backing store data to: %@. Error: %@", buf, 0x16u);
        }
      }

      v6 = v9;
    }

    else
    {
      CLSInitLog();
      v11 = CLSLogDefault;
      if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
      {
        v12 = self->_backingStoreDictionary;
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v6;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to serialize user defaults %@. Error: %@", buf, 0x16u);
      }
    }
  }
}

- (void)setRestoreCurrentDefaults:(BOOL)defaults
{
  if (self->_restoreCurrentDefaults != defaults)
  {
    self->_restoreCurrentDefaults = defaults;
    [PDUserDefaults setBool:"setBool:forKey:" forKey:?];
  }
}

- (void)setEnableVerboseLogging:(BOOL)logging
{
  if (self->_enableVerboseLogging != logging)
  {
    self->_enableVerboseLogging = logging;
    [PDUserDefaults setBool:"setBool:forKey:" forKey:?];
  }
}

- (void)setEnableResponseStreaming:(BOOL)streaming
{
  if (self->_enableResponseStreaming != streaming)
  {
    self->_enableResponseStreaming = streaming;
    [PDUserDefaults setBool:"setBool:forKey:" forKey:?];
  }
}

+ (BOOL)isInternalOSVariant
{
  if (qword_10024DA00 != -1)
  {
    dispatch_once(&qword_10024DA00, &stru_100204908);
  }

  return byte_10024D9E1;
}

- (id)description
{
  v3 = [NSMutableString stringWithString:@"{\n"];
  v4 = CLSUserDefaultRestoreCurrentDefaults;
  if ([(PDUserDefaults *)self restoreCurrentDefaults])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [v3 appendFormat:@"  %@ : %@\n", v4, v5];
  v6 = CLSUserDefaultEnableVerboseLogging;
  if ([(PDUserDefaults *)self enableVerboseLogging])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"  %@ : %@\n", v6, v7];
  v8 = CLSUserDefaultEnableResponseStreaming;
  if ([(PDUserDefaults *)self enableResponseStreaming])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 appendFormat:@"  %@ : %@\n", v8, v9];
  [v3 appendString:@"}"];
  v10 = [v3 copy];

  return v10;
}

- (id)dictionaryRepresentation
{
  v8[0] = CLSUserDefaultRestoreCurrentDefaults;
  v3 = [NSNumber numberWithBool:[(PDUserDefaults *)self restoreCurrentDefaults]];
  v9[0] = v3;
  v8[1] = CLSUserDefaultEnableVerboseLogging;
  v4 = [NSNumber numberWithBool:[(PDUserDefaults *)self enableVerboseLogging]];
  v9[1] = v4;
  v8[2] = CLSUserDefaultEnableResponseStreaming;
  v5 = [NSNumber numberWithBool:[(PDUserDefaults *)self enableResponseStreaming]];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BOOL)setValue:(id)value forDefaultNamed:(id)named error:(id *)error
{
  valueCopy = value;
  namedCopy = named;
  configurationDictionary = [objc_opt_class() configurationDictionary];
  v11 = [configurationDictionary valueForKey:namedCopy];
  v12 = v11;
  if (!v11)
  {
    if (error)
    {
      v16 = @"invalid key";
LABEL_11:
      v17 = 2;
      goto LABEL_12;
    }

LABEL_13:
    v15 = 0;
    goto LABEL_14;
  }

  if (([v11 BOOLValue] & 1) == 0)
  {
    if (error)
    {
      v16 = @"value for key is not mutable";
      v17 = 3;
LABEL_12:
      [NSError cls_createErrorWithCode:v17 description:v16];
      *error = v15 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = [(NSDictionary *)self->_setterNames objectForKeyedSubscript:namedCopy];
  v14 = NSSelectorFromString(v13);

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (error)
    {
      v16 = @"cannot find setter for key";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  [self v14];
  v15 = 1;
LABEL_14:

  return v15;
}

- (id)valueForDefaultNamed:(id)named
{
  v4 = [(NSDictionary *)self->_getterNames objectForKeyedSubscript:named];
  v5 = NSSelectorFromString(v4);

  if (objc_opt_respondsToSelector())
  {
    v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [self v5]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end