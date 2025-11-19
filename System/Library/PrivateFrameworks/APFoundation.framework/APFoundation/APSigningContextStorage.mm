@interface APSigningContextStorage
+ (APUnfairRecursiveLock)lock;
+ (BOOL)_isContextAssigned:(void *)a3;
+ (NSMutableArray)assignedContexts;
+ (NSMutableDictionary)contextDictionaries;
+ (NSString)launchID;
+ (id)_contextsForPool:(id)a3;
+ (id)_retrieveStashedContextsForPool:(id)a3 includeAssigned:(BOOL)a4;
+ (id)bundleIdentifier;
+ (id)reconstructFromStorage:(id)a3 contextRef:(id)a4;
+ (void)_setContextsForPool:(id)a3 contexts:(id)a4;
+ (void)destroyAndClearAllContextsForPool:(id)a3;
+ (void)destroyAndClearAllPreviousLaunchContexts;
+ (void)destroyAndClearAllPreviousLaunchContextsForPool:(id)a3;
+ (void)removeContextForPool:(id)a3 contextIdentifier:(void *)a4;
+ (void)setContextDictionaries:(id)a3;
- (APSigningContextStorage)initWithContextRef:(void *)a3 poolName:(id)a4 stashed:(BOOL)a5;
- (NSArray)propertyArray;
- (void)assign;
- (void)save;
- (void)setPoolName:(id)a3;
- (void)stashed:(BOOL)a3;
@end

@implementation APSigningContextStorage

+ (id)bundleIdentifier
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2, v3);
  v8 = objc_msgSend_bundleIdentifier(v4, v5, v6, v7);

  return v8;
}

+ (APUnfairRecursiveLock)lock
{
  if (qword_1EDBA4140 != -1)
  {
    sub_1BAF8E2E0();
  }

  v3 = qword_1EDBA4148;

  return v3;
}

+ (NSMutableDictionary)contextDictionaries
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_lock(APSigningContextStorage, a2, v2, v3);
  objc_msgSend_lock(v4, v5, v6, v7);

  v8 = [APStorageManager alloc];
  v11 = objc_msgSend_initWithPathPrefix_(v8, v9, @"fpdi", v10);
  v15 = objc_msgSend_bundleIdentifier(APSigningContextStorage, v12, v13, v14);
  v17 = objc_msgSend_fileForReadingAtKeyPath_error_(v11, v16, v15, 0);

  v21 = objc_msgSend_nextObject(v17, v18, v19, v20);
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
      v23 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v41 = 134218242;
        ClassName = objc_msgSend_count(v22, v24, v25, v26);
        v43 = 2112;
        v44 = v22;
        _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_INFO, "Found %lu stored pools: %@", &v41, 0x16u);
      }
    }

    else
    {
      v34 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v41 = 136315138;
        ClassName = object_getClassName(v21);
        _os_log_impl(&dword_1BADC1000, v34, OS_LOG_TYPE_ERROR, "Storage file object of wrong type: %s", &v41, 0xCu);
      }

      v22 = 0;
    }
  }

  else
  {
    v30 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      LOWORD(v41) = 0;
      _os_log_impl(&dword_1BADC1000, v30, OS_LOG_TYPE_INFO, "No stored pools found.", &v41, 2u);
    }

    v22 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v31, v32, v33);
  }

  v35 = objc_msgSend_lock(APSigningContextStorage, v27, v28, v29);
  objc_msgSend_unlock(v35, v36, v37, v38);

  v39 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (void)setContextDictionaries:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v7 = objc_msgSend_lock(APSigningContextStorage, v4, v5, v6);
  objc_msgSend_lock(v7, v8, v9, v10);

  v11 = [APStorageManager alloc];
  v14 = objc_msgSend_initWithPathPrefix_(v11, v12, @"fpdi", v13);
  v19 = objc_msgSend_bundleIdentifier(APSigningContextStorage, v15, v16, v17);
  if (v3)
  {
    v35 = 0;
    v20 = objc_msgSend_fileForWritingAtKeyPath_error_(v14, v18, v19, &v35);
    v21 = v35;

    v22 = APLogForCategory(0x30uLL);
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v21;
        _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_ERROR, "Error retrieving storage file: %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v37 = v3;
        _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_INFO, "Writing pools %@", buf, 0xCu);
      }

      v34 = 0;
      objc_msgSend_addObject_error_(v20, v27, v3, &v34);
      v21 = v34;
    }

LABEL_12:

    goto LABEL_13;
  }

  v33 = 0;
  objc_msgSend_removeObjectAtPath_error_(v14, v18, v19, &v33);
  v21 = v33;

  if (v21)
  {
    v20 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v21;
      _os_log_impl(&dword_1BADC1000, v20, OS_LOG_TYPE_ERROR, "Error deleting storage file: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:
  v28 = objc_msgSend_lock(APSigningContextStorage, v24, v25, v26);
  objc_msgSend_unlock(v28, v29, v30, v31);

  v32 = *MEMORY[0x1E69E9840];
}

+ (id)_contextsForPool:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v7 = objc_msgSend_contextDictionaries(APSigningContextStorage, v4, v5, v6);
  v10 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v3, v9);

  if (!v10)
  {
    v11 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1BADC1000, v11, OS_LOG_TYPE_INFO, "No context dictionary for pool %@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)_setContextsForPool:(id)a3 contexts:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = objc_msgSend_lock(APSigningContextStorage, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13);

  v27 = objc_msgSend_contextDictionaries(APSigningContextStorage, v14, v15, v16);
  objc_msgSend_setObject_forKeyedSubscript_(v27, v17, v5, v6);

  objc_msgSend_setContextDictionaries_(APSigningContextStorage, v18, v27, v19);
  v23 = objc_msgSend_lock(APSigningContextStorage, v20, v21, v22);
  objc_msgSend_unlock(v23, v24, v25, v26);
}

+ (void)removeContextForPool:(id)a3 contextIdentifier:(void *)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34 = a4;
  v11 = objc_msgSend__contextsForPool_(APSigningContextStorage, v6, v5, v7);
  if (v11)
  {
    v12 = objc_msgSend_lock(APSigningContextStorage, v8, v9, v10);
    objc_msgSend_lock(v12, v13, v14, v15);

    v16 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v36 = a4;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_INFO, "Removing context %p from pool %@", buf, 0x16u);
    }

    v19 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v17, a4, v18);
    objc_msgSend_removeObjectForKey_(v11, v20, v19, v21);

    if (objc_msgSend_FPDIDestroyContext_(APFPDIWrapper, v22, &v34, v23))
    {
      v25 = APLogForCategory(0x30uLL);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v36 = v34;
        _os_log_impl(&dword_1BADC1000, v25, OS_LOG_TYPE_ERROR, "Unable to destroy FPDI context %p.", buf, 0xCu);
      }
    }

    objc_msgSend__setContextsForPool_contexts_(APSigningContextStorage, v24, v5, v11);
    v29 = objc_msgSend_lock(APSigningContextStorage, v26, v27, v28);
    objc_msgSend_unlock(v29, v30, v31, v32);
  }

  else
  {
    v29 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v5;
      _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_ERROR, "Unable to find context dictionary for pool %@", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

+ (id)_retrieveStashedContextsForPool:(id)a3 includeAssigned:(BOOL)a4
{
  v5 = a3;
  v9 = objc_msgSend_lock(APSigningContextStorage, v6, v7, v8);
  objc_msgSend_lock(v9, v10, v11, v12);

  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1BAF2AF40;
  v39 = sub_1BAF2AF50;
  v40 = objc_msgSend_array(MEMORY[0x1E695DF70], v13, v14, v15);
  v18 = objc_msgSend__contextsForPool_(APSigningContextStorage, v16, v5, v17);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1BAF2AF58;
  v33[3] = &unk_1E7F1D620;
  v34 = a4;
  v33[4] = &v35;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v18, v19, v33, v20);
  v24 = objc_msgSend_lock(APSigningContextStorage, v21, v22, v23);
  objc_msgSend_unlock(v24, v25, v26, v27);

  v31 = objc_msgSend_copy(v36[5], v28, v29, v30);
  _Block_object_dispose(&v35, 8);

  return v31;
}

+ (void)destroyAndClearAllContextsForPool:(id)a3
{
  v3 = a3;
  v6 = objc_msgSend__contextsForPool_(APSigningContextStorage, v4, v3, v5);
  v10 = objc_msgSend_lock(APSigningContextStorage, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13);

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1BAF2B154;
  v28[3] = &unk_1E7F1D648;
  v29 = v3;
  v14 = v3;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v15, v28, v16);
  objc_msgSend_removeAllObjects(v6, v17, v18, v19);
  objc_msgSend__setContextsForPool_contexts_(APSigningContextStorage, v20, v14, v6);
  v24 = objc_msgSend_lock(APSigningContextStorage, v21, v22, v23);
  objc_msgSend_unlock(v24, v25, v26, v27);
}

+ (void)destroyAndClearAllPreviousLaunchContextsForPool:(id)a3
{
  v3 = a3;
  v7 = objc_msgSend_lock(APSigningContextStorage, v4, v5, v6);
  objc_msgSend_lock(v7, v8, v9, v10);

  v14 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v11, v12, v13);
  v18 = objc_msgSend_contextDictionaries(APSigningContextStorage, v15, v16, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(v18, v19, v3, v20);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1BAF2B37C;
  v33[3] = &unk_1E7F1D670;
  v34 = v14;
  v22 = v14;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v23, v33, v24);

  objc_msgSend__setContextsForPool_contexts_(APSigningContextStorage, v25, v3, v22);
  v29 = objc_msgSend_lock(APSigningContextStorage, v26, v27, v28);
  objc_msgSend_unlock(v29, v30, v31, v32);
}

+ (void)destroyAndClearAllPreviousLaunchContexts
{
  v4 = objc_msgSend_lock(APSigningContextStorage, a2, v2, v3);
  objc_msgSend_lock(v4, v5, v6, v7);

  v11 = objc_msgSend_contextDictionaries(APSigningContextStorage, v8, v9, v10);
  v24 = objc_msgSend_copy(v11, v12, v13, v14);

  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v24, v15, &unk_1F38F4A40, v16);
  v20 = objc_msgSend_lock(APSigningContextStorage, v17, v18, v19);
  objc_msgSend_unlock(v20, v21, v22, v23);
}

+ (NSMutableArray)assignedContexts
{
  if (qword_1EDBA4168 != -1)
  {
    sub_1BAF8E2F4();
  }

  v3 = qword_1EDBA4170;

  return v3;
}

+ (BOOL)_isContextAssigned:(void *)a3
{
  v5 = objc_msgSend_lock(APSigningContextStorage, a2, a3, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v12 = objc_msgSend_assignedContexts(APSigningContextStorage, v9, v10, v11);
  v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v13, a3, v14);
  v18 = objc_msgSend_containsObject_(v12, v16, v15, v17);

  v22 = objc_msgSend_lock(APSigningContextStorage, v19, v20, v21);
  objc_msgSend_unlock(v22, v23, v24, v25);

  return v18;
}

+ (NSString)launchID
{
  v4 = qword_1EDBA41B8;
  if (!qword_1EDBA41B8)
  {
    v5 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2, v3);
    v9 = objc_msgSend_UUIDString(v5, v6, v7, v8);
    v10 = qword_1EDBA41B8;
    qword_1EDBA41B8 = v9;

    v4 = qword_1EDBA41B8;
  }

  return v4;
}

- (NSArray)propertyArray
{
  v5 = MEMORY[0x1E695DEC8];
  v6 = objc_msgSend_sessionIdentifier(self, a2, v2, v3);
  v7 = MEMORY[0x1E696AD98];
  v11 = objc_msgSend_stashed(self, v8, v9, v10);
  v14 = objc_msgSend_numberWithBool_(v7, v12, v11, v13);
  v15 = MEMORY[0x1E696AD98];
  v19 = objc_msgSend_used(self, v16, v17, v18);
  v22 = objc_msgSend_numberWithBool_(v15, v20, v19, v21);
  v26 = objc_msgSend_poolName(self, v23, v24, v25);
  v29 = objc_msgSend_arrayWithObjects_(v5, v27, v6, v28, v14, v22, v26, 0);

  return v29;
}

- (void)save
{
  v5 = objc_msgSend_lock(APSigningContextStorage, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v12 = objc_msgSend_poolName(self, v9, v10, v11);
  v40 = objc_msgSend__contextsForPool_(APSigningContextStorage, v13, v12, v14);

  if (!v40)
  {
    v40 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v15, v16, v17);
  }

  v18 = objc_msgSend_propertyArray(self, v15, v16, v17);
  v19 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_contextRef(self, v20, v21, v22);
  v26 = objc_msgSend_numberWithUnsignedLongLong_(v19, v24, v23, v25);
  objc_msgSend_setObject_forKey_(v40, v27, v18, v26);

  v31 = objc_msgSend_poolName(self, v28, v29, v30);
  objc_msgSend__setContextsForPool_contexts_(APSigningContextStorage, v32, v31, v40);

  v36 = objc_msgSend_lock(APSigningContextStorage, v33, v34, v35);
  objc_msgSend_unlock(v36, v37, v38, v39);
}

- (APSigningContextStorage)initWithContextRef:(void *)a3 poolName:(id)a4 stashed:(BOOL)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v30.receiver = self;
  v30.super_class = APSigningContextStorage;
  v10 = [(APSigningContextStorage *)&v30 init];
  v14 = v10;
  if (v10)
  {
    v10->_contextRef = a3;
    v10->_stashed = a5;
    v15 = objc_msgSend_launchID(APSigningContextStorage, v11, v12, v13);
    sessionIdentifier = v14->_sessionIdentifier;
    v14->_sessionIdentifier = v15;

    v14->_used = 1;
    objc_storeStrong(&v14->_poolName, a4);
    objc_msgSend_save(v14, v17, v18, v19);
    objc_msgSend_assign(v14, v20, v21, v22);
    v23 = APLogForCategory(0x30uLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v27 = objc_msgSend_contextRef(v14, v24, v25, v26);
      *buf = 134217984;
      v32 = v27;
      _os_log_impl(&dword_1BADC1000, v23, OS_LOG_TYPE_INFO, "Created signing context with reference %p", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)reconstructFromStorage:(id)a3 contextRef:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(APSigningContextStorage);
  v11 = objc_msgSend_longLongValue(v5, v8, v9, v10);

  v7->_contextRef = v11;
  v14 = objc_msgSend_objectAtIndexedSubscript_(v6, v12, 1, v13);
  v7->_stashed = objc_msgSend_BOOLValue(v14, v15, v16, v17);

  v20 = objc_msgSend_objectAtIndexedSubscript_(v6, v18, 0, v19);
  sessionIdentifier = v7->_sessionIdentifier;
  v7->_sessionIdentifier = v20;

  v24 = objc_msgSend_objectAtIndexedSubscript_(v6, v22, 2, v23);
  v7->_used = objc_msgSend_BOOLValue(v24, v25, v26, v27);

  v30 = objc_msgSend_objectAtIndexedSubscript_(v6, v28, 3, v29);

  poolName = v7->_poolName;
  v7->_poolName = v30;

  return v7;
}

- (void)stashed:(BOOL)a3
{
  v3 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_contextRef(self, v6, v7, v8);
    v13 = objc_msgSend_stashed(self, v10, v11, v12);
    v14 = @"no";
    if (v13)
    {
      v15 = @"yes";
    }

    else
    {
      v15 = @"no";
    }

    v20 = 134218498;
    v21 = v9;
    v22 = 2112;
    v23 = v15;
    if (v3)
    {
      v14 = @"yes";
    }

    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Change stashed state of context ref %p from %@ to %@", &v20, 0x20u);
  }

  self->_stashed = v3;
  objc_msgSend_save(self, v16, v17, v18);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)setPoolName:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_contextRef(self, v6, v7, v8);
    v13 = objc_msgSend_poolName(self, v10, v11, v12);
    v19 = 134218498;
    v20 = v9;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_1BADC1000, v5, OS_LOG_TYPE_INFO, "Change poolName of context ref %p from %@ to %@", &v19, 0x20u);
  }

  poolName = self->_poolName;
  self->_poolName = v4;

  objc_msgSend_save(self, v15, v16, v17);
  v18 = *MEMORY[0x1E69E9840];
}

- (void)assign
{
  v5 = objc_msgSend_lock(APSigningContextStorage, a2, v2, v3);
  objc_msgSend_lock(v5, v6, v7, v8);

  v12 = objc_msgSend_contextRef(self, v9, v10, v11);
  if ((objc_msgSend__isContextAssigned_(APSigningContextStorage, v13, v12, v14) & 1) == 0)
  {
    v18 = objc_msgSend_assignedContexts(APSigningContextStorage, v15, v16, v17);
    v19 = MEMORY[0x1E696AD98];
    v23 = objc_msgSend_contextRef(self, v20, v21, v22);
    v26 = objc_msgSend_numberWithUnsignedLongLong_(v19, v24, v23, v25);
    objc_msgSend_addObject_(v18, v27, v26, v28);
  }

  v32 = objc_msgSend_lock(APSigningContextStorage, v15, v16, v17);
  objc_msgSend_unlock(v32, v29, v30, v31);
}

@end