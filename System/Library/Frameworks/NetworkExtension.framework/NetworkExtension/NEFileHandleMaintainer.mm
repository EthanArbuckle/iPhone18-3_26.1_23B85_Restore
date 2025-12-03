@interface NEFileHandleMaintainer
+ (id)sharedMaintainer;
- (NEFileHandleMaintainer)init;
- (id)copyAuxiliaryDataForKey:(id)key;
- (id)createEvent;
- (void)commit;
- (void)iterateFileHandlesWithBlock:(id)block;
- (void)removeFileHandleMatchingPredicate:(id)predicate;
- (void)resetFileHandlesFromEvent:(id)event;
- (void)setAuxiliaryData:(id)data forKey:(id)key;
- (void)setFileHandle:(id)handle matchingPredicate:(id)predicate;
- (void)setFileHandleActivityCallback:(id)callback;
- (void)startOwnerModeWithEventName:(id)name handlesReceivedCallback:(id)callback;
@end

@implementation NEFileHandleMaintainer

- (id)copyAuxiliaryDataForKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy || (v7 = objc_getProperty(selfCopy, v6, 40, 1)) == 0 || (v8 = v7, v9 = [keyCopy length], v8, !v9))
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = keyCopy;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_INFO, "Failed to get auxiliary data for key %@: auxiliaryDataDictionary is nil", &v20, 0xCu);
    }

    goto LABEL_12;
  }

  v11 = objc_getProperty(selfCopy, v10, 40, 1);
  v12 = xpc_dictionary_get_value(v11, [keyCopy UTF8String]);

  if (!v12)
  {
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = keyCopy;
      _os_log_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEFAULT, "Failed to get auxiliary data for key %@: key does not exist", &v20, 0xCu);
    }

    v12 = 0;
LABEL_12:
    v15 = 0;
    goto LABEL_15;
  }

  if (MEMORY[0x1BFAFC5E0](v12) == MEMORY[0x1E69E9E70])
  {
    v16 = objc_alloc(MEMORY[0x1E695DEF0]);
    bytes_ptr = xpc_data_get_bytes_ptr(v12);
    v13 = [v16 initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v12) freeWhenDone:0];
  }

  else
  {
    v13 = _CFXPCCreateCFObjectFromXPCObject();
  }

  v15 = v13;
LABEL_15:

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)setAuxiliaryData:(id)data forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dataCopy && [keyCopy length])
  {
    v10 = _CFXPCCreateXPCObjectFromCFObject();
    if (v10)
    {
      if (!selfCopy || !objc_getProperty(selfCopy, v9, 40, 1))
      {
        v12 = xpc_dictionary_create(0, 0, 0);
        v14 = v12;
        if (!selfCopy)
        {

          Property = 0;
          goto LABEL_9;
        }

        objc_setProperty_atomic(selfCopy, v13, v12, 40);
      }

      Property = objc_getProperty(selfCopy, v11, 40, 1);
LABEL_9:
      v16 = Property;
      xpc_dictionary_set_value(v16, [keyCopy UTF8String], v10);

      goto LABEL_15;
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = 138412290;
      v20 = dataCopy;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to convert %@ to an XPC object", &v19, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218242;
      v20 = dataCopy;
      v21 = 2112;
      v22 = keyCopy;
      _os_log_error_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_ERROR, "Auxiliary data (%p) is nil or key (%@) has length 0", &v19, 0x16u);
    }
  }

LABEL_15:

  objc_sync_exit(selfCopy);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)iterateFileHandlesWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v6, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = Property;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = *v14;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v8);
      }

      if ((blockCopy[2](blockCopy, *(*(&v13 + 1) + 8 * v11)) & 1) == 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)setFileHandle:(id)handle matchingPredicate:(id)predicate
{
  handleCopy = handle;
  predicateCopy = predicate;
  if (handleCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = 0;
    if (!selfCopy)
    {
      goto LABEL_9;
    }

LABEL_3:
    for (i = objc_getProperty(selfCopy, v8, 16, 1); ; i = 0)
    {
      v11 = i;
      v12 = [v11 count];

      if (v9 >= v12)
      {
        goto LABEL_12;
      }

      v13 = selfCopy ? objc_getProperty(selfCopy, v8, 16, 1) : 0;
      v14 = v13;
      v15 = [v14 objectAtIndexedSubscript:v9];
      v16 = predicateCopy[2](predicateCopy, v15);

      if (v16)
      {
        break;
      }

      ++v9;
      if (selfCopy)
      {
        goto LABEL_3;
      }

LABEL_9:
      ;
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_12:
      if (selfCopy)
      {
        Property = objc_getProperty(selfCopy, v8, 16, 1);
      }

      else
      {
        Property = 0;
      }

      v18 = Property;
      [v18 addObject:handleCopy];
      goto LABEL_18;
    }

    if (selfCopy)
    {
      v19 = objc_getProperty(selfCopy, v8, 16, 1);
    }

    else
    {
      v19 = 0;
    }

    v18 = v19;
    [v18 setObject:handleCopy atIndexedSubscript:v9];
LABEL_18:

    if (selfCopy)
    {
      selfCopy->_changed = 1;
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)removeFileHandleMatchingPredicate:(id)predicate
{
  v23 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (selfCopy)
  {
    Property = objc_getProperty(selfCopy, v6, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = Property;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if (predicateCopy[2](predicateCopy, v13))
        {
          [v7 addObject:{v13, v18}];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    if (selfCopy)
    {
      v15 = objc_getProperty(selfCopy, v14, 16, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    [v16 removeObjectsInArray:v7];

    if (selfCopy)
    {
      selfCopy->_changed = 1;
    }
  }

  objc_sync_exit(selfCopy);
  v17 = *MEMORY[0x1E69E9840];
}

- (void)commit
{
  obj = self;
  objc_sync_enter(obj);
  createEvent = [(NEFileHandleMaintainer *)obj createEvent];
  eventName = [(NEFileHandleMaintainer *)obj eventName];
  [eventName UTF8String];
  xpc_set_event();

  if (obj)
  {
    obj->_changed = 0;
  }

  objc_sync_exit(obj);
}

- (id)createEvent
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = xpc_array_create(0, 0);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v3, 16, 1);
  }

  else
  {
    Property = 0;
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    v10 = MEMORY[0x1E69E9E80];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dictionary = [*(*(&v20 + 1) + 8 * i) dictionary];
        v13 = dictionary;
        if (dictionary && MEMORY[0x1BFAFC5E0](dictionary) == v10)
        {
          xpc_array_append_value(v4, v13);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v14, "handles-array", v4);
  if (self && objc_getProperty(self, v15, 40, 1))
  {
    v17 = objc_getProperty(self, v16, 40, 1);
    xpc_dictionary_set_value(v14, "aux-data", v17);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)setFileHandleActivityCallback:(id)callback
{
  newValue = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    objc_setProperty_atomic_copy(selfCopy, v5, newValue, 32);
  }

  objc_sync_exit(selfCopy);
}

- (void)startOwnerModeWithEventName:(id)name handlesReceivedCallback:(id)callback
{
  nameCopy = name;
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NEFileHandleMaintainer *)selfCopy setEventName:nameCopy];
  objc_initWeak(&location, selfCopy);
  uTF8String = [nameCopy UTF8String];
  v10 = MEMORY[0x1E69E96A0];
  v11 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __78__NEFileHandleMaintainer_startOwnerModeWithEventName_handlesReceivedCallback___block_invoke;
  handler[3] = &unk_1E7F07478;
  objc_copyWeak(&v14, &location);
  handler[4] = selfCopy;
  xpc_set_event_stream_handler(uTF8String, v10, handler);

  if (selfCopy)
  {
    selfCopy->_isOwnerMode = 1;
    objc_setProperty_atomic_copy(selfCopy, v12, callbackCopy, 24);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  objc_sync_exit(selfCopy);
}

void __78__NEFileHandleMaintainer_startOwnerModeWithEventName_handlesReceivedCallback___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [WeakRetained eventName];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_INFO, "Handling a %@ event", &v14, 0xCu);
    }

    [WeakRetained resetFileHandlesFromEvent:v3];
    v7 = WeakRetained;
    objc_sync_enter(v7);
    v9 = *(a1 + 32);
    if (v9 && objc_getProperty(v9, v8, 32, 1))
    {
      Property = *(a1 + 32);
      if (Property)
      {
        Property = objc_getProperty(Property, v10, 32, 1);
      }

      v12 = Property;
      v12[2]();
    }

    objc_sync_exit(v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resetFileHandlesFromEvent:(id)event
{
  v47 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy)
  {
    v6 = MEMORY[0x1BFAFC5E0](eventCopy);
    v7 = MEMORY[0x1E69E9E80];
    if (v6 == MEMORY[0x1E69E9E80])
    {
      v8 = xpc_dictionary_get_array(v5, "handles-array");
      v9 = xpc_dictionary_get_dictionary(v5, "aux-data");
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (selfCopy && selfCopy->_isOwnerMode && !objc_getProperty(selfCopy, v11, 24, 1))
      {
        v30 = ne_log_obj();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_DEBUG, "Ignoring additional event in owner mode", buf, 2u);
        }

        objc_sync_exit(selfCopy);
        goto LABEL_43;
      }

      if (v8 && MEMORY[0x1BFAFC5E0](v8) == MEMORY[0x1E69E9E50])
      {
        v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        if (selfCopy)
        {
          Property = objc_getProperty(selfCopy, v12, 16, 1);
        }

        else
        {
          Property = 0;
        }

        v14 = Property;
        v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v15)
        {
          v16 = *v39;
          do
          {
            v17 = 0;
            do
            {
              if (*v39 != v16)
              {
                objc_enumerationMutation(v14);
              }

              handle = [*(*(&v38 + 1) + 8 * v17) handle];
              [handle setReadabilityHandler:0];

              ++v17;
            }

            while (v15 != v17);
            v15 = [v14 countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v15);
        }

        if (selfCopy)
        {
          objc_setProperty_atomic(selfCopy, v19, 0, 16);
        }

        applier[0] = MEMORY[0x1E69E9820];
        applier[1] = 3221225472;
        applier[2] = __52__NEFileHandleMaintainer_resetFileHandlesFromEvent___block_invoke;
        applier[3] = &unk_1E7F09530;
        v20 = v35;
        v37 = v20;
        xpc_array_apply(v8, applier);
        if (selfCopy)
        {
          objc_setProperty_atomic(selfCopy, v21, v20, 16);
        }

        v22 = ne_log_large_obj();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          eventName = [(NEFileHandleMaintainer *)selfCopy eventName];
          if (selfCopy)
          {
            v34 = objc_getProperty(selfCopy, v32, 16, 1);
          }

          else
          {
            v34 = 0;
          }

          *buf = 138412546;
          v43 = eventName;
          v44 = 2112;
          v45 = v34;
          _os_log_debug_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_DEBUG, "Current file handles for %@: %@", buf, 0x16u);
        }
      }

      if (selfCopy)
      {
        objc_setProperty_atomic(selfCopy, v11, 0, 40);
      }

      if (v9 && MEMORY[0x1BFAFC5E0](v9) == v7)
      {
        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "Received an auxiliary data dictionary", buf, 2u);
        }

        if (!selfCopy)
        {
          goto LABEL_37;
        }

        objc_setProperty_atomic(selfCopy, v26, v9, 40);
      }

      else
      {
        v23 = ne_log_obj();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "Did not receive an auxiliary data dictionary", buf, 2u);
        }

        if (!selfCopy)
        {
          goto LABEL_37;
        }
      }

      if (objc_getProperty(selfCopy, v24, 24, 1))
      {
        v28 = objc_getProperty(selfCopy, v27, 24, 1);
        objc_setProperty_atomic_copy(selfCopy, v29, 0, 24);
LABEL_38:
        objc_sync_exit(selfCopy);

        if (!v28)
        {
LABEL_44:

          goto LABEL_45;
        }

        v28[2](v28);
        selfCopy = v28;
LABEL_43:

        goto LABEL_44;
      }

LABEL_37:
      v28 = 0;
      goto LABEL_38;
    }
  }

LABEL_45:

  v31 = *MEMORY[0x1E69E9840];
}

uint64_t __52__NEFileHandleMaintainer_resetFileHandlesFromEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_self();
  if (!v4 || MEMORY[0x1BFAFC5E0](v4) != MEMORY[0x1E69E9E80] || (uint64 = xpc_dictionary_get_uint64(v4, "type"), uint64 - 1 > 3) || (v6 = *off_1E7F07450[uint64 - 1], (v7 = objc_opt_class()) == 0))
  {

    goto LABEL_15;
  }

  v8 = [[v7 alloc] initFromDictionary:v4];

  if (!v8)
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  if (nelog_is_debug_logging_enabled())
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "File Handle Maintainer adding %@", &v14, 0xCu);
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = v8;
  if ([v10 isRegisteredHandle])
  {

LABEL_13:
    [*(a1 + 32) addObject:v8];
    v10 = v8;
    goto LABEL_16;
  }

  v13 = ne_log_obj();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "File Handle Maintainer not adding %@, agent not registered", &v14, 0xCu);
  }

LABEL_16:
  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (NEFileHandleMaintainer)init
{
  v6.receiver = self;
  v6.super_class = NEFileHandleMaintainer;
  v2 = [(NEFileHandleMaintainer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fileHandles = v2->_fileHandles;
    v2->_fileHandles = v3;
  }

  return v2;
}

+ (id)sharedMaintainer
{
  if (sharedMaintainer_once_token != -1)
  {
    dispatch_once(&sharedMaintainer_once_token, &__block_literal_global_3399);
  }

  v3 = sharedMaintainer_g_maintainer;

  return v3;
}

uint64_t __42__NEFileHandleMaintainer_sharedMaintainer__block_invoke()
{
  sharedMaintainer_g_maintainer = objc_alloc_init(NEFileHandleMaintainer);

  return MEMORY[0x1EEE66BB8]();
}

@end