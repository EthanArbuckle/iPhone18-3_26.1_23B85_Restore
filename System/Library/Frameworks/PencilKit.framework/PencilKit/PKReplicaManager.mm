@interface PKReplicaManager
+ (id)sharedReplicaManager;
- (PKReplicaManager)init;
- (id)checkoutReplicaUUIDForDrawing:(id)a3;
- (void)_applicationWillTerminate;
- (void)_loadState;
- (void)_resetAllReplicaUUIDs;
- (void)_saveStateImmediately;
- (void)_scheduleSaveState;
- (void)_setReplicasDirtyToken;
- (void)persistIfNeeded;
- (void)returnReplicaForDrawing:(id)a3;
- (void)setTestMode:(BOOL)a3;
- (void)updateVersionForDrawing:(id)a3;
@end

@implementation PKReplicaManager

- (void)setTestMode:(BOOL)a3
{
  self->_testMode = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    replicaManagerErrors = self->_replicaManagerErrors;
    self->_replicaManagerErrors = v4;
  }
}

+ (id)sharedReplicaManager
{
  if (_MergedGlobals_175 != -1)
  {
    dispatch_once(&_MergedGlobals_175, &__block_literal_global_97);
  }

  v3 = qword_1ED6A55B8;

  return v3;
}

void __40__PKReplicaManager_sharedReplicaManager__block_invoke()
{
  v0 = objc_alloc_init(PKReplicaManager);
  v1 = qword_1ED6A55B8;
  qword_1ED6A55B8 = v0;
}

- (PKReplicaManager)init
{
  v7.receiver = self;
  v7.super_class = PKReplicaManager;
  v2 = [(PKReplicaManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.PencilKit.replicas", 0);
    uuidAccessQueue = v2->_uuidAccessQueue;
    v2->_uuidAccessQueue = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__applicationWillTerminate name:*MEMORY[0x1E69DDBD0] object:0];
  }

  return v2;
}

- (void)_applicationWillTerminate
{
  uuidAccessQueue = self->_uuidAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__PKReplicaManager__applicationWillTerminate__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_sync(uuidAccessQueue, block);
}

void *__45__PKReplicaManager__applicationWillTerminate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 40);
  if (result)
  {
    dispatch_block_cancel(result);
    v3 = *(a1 + 32);

    return [v3 _saveStateImmediately];
  }

  return result;
}

- (id)checkoutReplicaUUIDForDrawing:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  uuidAccessQueue = self->_uuidAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PKReplicaManager_checkoutReplicaUUIDForDrawing___block_invoke;
  block[3] = &unk_1E82DA298;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(uuidAccessQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __50__PKReplicaManager_checkoutReplicaUUIDForDrawing___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    [v2 _loadState];
    v2 = *(a1 + 32);
  }

  v3 = v2[3];
  v4 = [*(a1 + 40) nsuuid];
  v5 = [v3 objectForKey:v4];

  v41 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = *(*(a1 + 32) + 24);
    v8 = [*(a1 + 40) nsuuid];
    [v7 setObject:v6 forKey:v8];

    v41 = v6;
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v9 = *(*(a1 + 32) + 16);
  v10 = [(PKReplicaEntry *)v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v10)
  {
    v40 = *v47;
    obj = v9;
    while (1)
    {
      v39 = v10;
      v11 = 0;
LABEL_8:
      if (*v47 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v46 + 1) + 8 * v11);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v13 = v41;
      v14 = [(PKReplicaEntry *)v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (!v14)
      {
        break;
      }

      v15 = *v43;
LABEL_12:
      v16 = 0;
      while (1)
      {
        if (*v43 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v42 + 1) + 8 * v16);
        v18 = [*(*(a1 + 32) + 16) objectAtIndex:{objc_msgSend(v17, "replicaUUIDIndex")}];
        if ([v18 isEqual:v12])
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [(PKReplicaEntry *)v13 countByEnumeratingWithState:&v42 objects:v52 count:16];
          if (v14)
          {
            goto LABEL_12;
          }

          goto LABEL_36;
        }
      }

      if (([v17 inUse] & 1) == 0)
      {
        v19 = [*(a1 + 40) version];
        v20 = [v19 clockElementForUUID:v12];

        v21 = [v20 clock];
        v22 = [v17 clock];
        v23 = [v20 clock];
        if (v23 == [v17 clock])
        {
          v24 = [v20 subclock];
          v25 = v24 > [v17 subclock];
        }

        else
        {
          v25 = 0;
        }

        if (v21 > v22 || v25)
        {
          v26 = MEMORY[0x1E696AEC0];
          v27 = [*(a1 + 40) uuid];
          v28 = [v26 stringWithFormat:@"Replica Manager Error: Invalid entry for drawing with UUID: %@ (%p) and replica UUID: %@", v27, *(a1 + 40), v12];

          v29 = os_log_create("com.apple.pencilkit", "");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v51 = v28;
            _os_log_error_impl(&dword_1C7CCA000, v29, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          if ([*(a1 + 32) testMode])
          {
            [*(*(a1 + 32) + 32) addObject:v28];
          }
        }

        v30 = [v20 clock];
        if (v30 == [v17 clock])
        {
          v31 = [v20 subclock];
          if (v31 == [v17 subclock])
          {
            [v17 setDrawing:*(a1 + 40)];
            [v17 setInUse:1];
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
            goto LABEL_40;
          }
        }
      }

      if (++v11 != v39)
      {
        goto LABEL_8;
      }

      v9 = obj;
      v10 = [(PKReplicaEntry *)obj countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (!v10)
      {
        goto LABEL_35;
      }
    }

LABEL_36:

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
    v36 = -[PKReplicaEntry initWithReplicaUUIDIndex:clock:subclock:inUse:forDrawing:]([PKReplicaEntry alloc], "initWithReplicaUUIDIndex:clock:subclock:inUse:forDrawing:", [*(*(a1 + 32) + 16) indexOfObject:*(*(*(a1 + 48) + 8) + 40)], 0, 0, 1, *(a1 + 40));
    [(PKReplicaEntry *)v13 addObject:v36];
    if ([(PKReplicaEntry *)v13 count]< 4)
    {
      v13 = v36;
    }

    else
    {
      v20 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v37 = [(PKReplicaEntry *)v13 count];
        *buf = 134217984;
        v51 = v37;
        _os_log_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_INFO, "Drawing has claimed %ld replicas.", buf, 0xCu);
      }

      v18 = v20;
      v13 = v36;
LABEL_40:
    }

    v35 = obj;
  }

  else
  {
LABEL_35:

    v32 = [MEMORY[0x1E696AFB0] UUID];
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    [*(*(a1 + 32) + 16) addObject:*(*(*(a1 + 48) + 8) + 40)];
    v35 = -[PKReplicaEntry initWithReplicaUUIDIndex:clock:subclock:inUse:forDrawing:]([PKReplicaEntry alloc], "initWithReplicaUUIDIndex:clock:subclock:inUse:forDrawing:", [*(*(a1 + 32) + 16) indexOfObject:*(*(*(a1 + 48) + 8) + 40)], 0, 0, 1, *(a1 + 40));
    [v41 addObject:v35];
  }
}

- (void)updateVersionForDrawing:(id)a3
{
  v4 = a3;
  uuidAccessQueue = self->_uuidAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PKReplicaManager_updateVersionForDrawing___block_invoke;
  v7[3] = &unk_1E82D6890;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(uuidAccessQueue, v7);
}

void __44__PKReplicaManager_updateVersionForDrawing___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) nsuuid];
  v4 = [v2 objectForKey:v3];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = *v30;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = [*(*(a1 + 32) + 16) objectAtIndex:{objc_msgSend(v9, "replicaUUIDIndex")}];
        v11 = [*(a1 + 40) replicaUUID];
        v12 = [v11 isEqual:v10];

        if (v12)
        {
          if (([v9 inUse] & 1) == 0)
          {
            v13 = MEMORY[0x1E696AEC0];
            v14 = [*(a1 + 40) replicaUUID];
            v15 = [*(a1 + 40) uuid];
            v16 = [v13 stringWithFormat:@"Replica Manager Error: Attempt to update version of replica UUID %@ for drawing with UUID: %@ (%p)", v14, v15, *(a1 + 40)];

            v17 = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v16;
              _os_log_error_impl(&dword_1C7CCA000, v17, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            if ([*(a1 + 32) testMode])
            {
              [*(*(a1 + 32) + 32) addObject:v16];
            }
          }

          v18 = *(a1 + 40);
          v19 = [v9 drawing];
          LOBYTE(v18) = v18 == v19;

          if ((v18 & 1) == 0)
          {
            v20 = MEMORY[0x1E696AEC0];
            v21 = [*(a1 + 40) replicaUUID];
            v22 = [*(a1 + 40) uuid];
            v23 = [v9 drawing];
            v24 = [v20 stringWithFormat:@"Replica Manager Error: Attempt to update version of replica UUID %@ for drawing with UUID: %@ (%p) from invalid drawing instance (%p)", v21, v22, v23, *(a1 + 40), v29];

            v25 = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = v24;
              _os_log_error_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            if ([*(a1 + 32) testMode])
            {
              [*(*(a1 + 32) + 32) addObject:v24];
            }
          }

          v26 = [*(a1 + 40) version];
          v27 = [*(a1 + 40) replicaUUID];
          v28 = [v26 clockElementForUUID:v27];

          [v9 setClock:{objc_msgSend(v28, "clock")}];
          [v9 setSubclock:{objc_msgSend(v28, "subclock")}];

          *(*(a1 + 32) + 49) = 1;
          goto LABEL_24;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
}

- (void)persistIfNeeded
{
  uuidAccessQueue = self->_uuidAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PKReplicaManager_persistIfNeeded__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  dispatch_sync(uuidAccessQueue, block);
}

_BYTE *__35__PKReplicaManager_persistIfNeeded__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[49] == 1)
  {
    [result _setReplicasDirtyToken];
    v3 = *(a1 + 32);

    return [v3 _scheduleSaveState];
  }

  return result;
}

- (void)returnReplicaForDrawing:(id)a3
{
  v4 = a3;
  [(PKReplicaManager *)self updateVersionForDrawing:v4];
  uuidAccessQueue = self->_uuidAccessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PKReplicaManager_returnReplicaForDrawing___block_invoke;
  v7[3] = &unk_1E82D6890;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(uuidAccessQueue, v7);
}

void __44__PKReplicaManager_returnReplicaForDrawing___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  v3 = [*(a1 + 40) nsuuid];
  v4 = [v2 objectForKey:v3];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = [*(*(a1 + 32) + 16) objectAtIndex:{objc_msgSend(v8, "replicaUUIDIndex")}];
        v10 = [*(a1 + 40) replicaUUID];
        v11 = [v10 isEqual:v9];

        if (v11)
        {
          if (([v8 inUse] & 1) == 0)
          {
            v12 = MEMORY[0x1E696AEC0];
            v13 = [*(a1 + 40) replicaUUID];
            v14 = [*(a1 + 40) uuid];
            v15 = [v12 stringWithFormat:@"Replica Manager Error: Attempt to return unused replica UUID %@ for drawing with UUID: %@ (%p)", v13, v14, *(a1 + 40)];

            v16 = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v31 = v15;
              _os_log_error_impl(&dword_1C7CCA000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            if ([*(a1 + 32) testMode])
            {
              [*(*(a1 + 32) + 32) addObject:v15];
            }
          }

          v17 = *(a1 + 40);
          v18 = [v8 drawing];
          LOBYTE(v17) = v17 == v18;

          if ((v17 & 1) == 0)
          {
            v19 = MEMORY[0x1E696AEC0];
            v20 = [*(a1 + 40) replicaUUID];
            v21 = [*(a1 + 40) uuid];
            v22 = [v8 drawing];
            v23 = [v19 stringWithFormat:@"Replica Manager Error: Attempt to return replica UUID %@ for drawing with UUID: %@ (%p) from invalid drawing instance (%p)", v20, v21, v22, *(a1 + 40)];

            v24 = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v31 = v23;
              _os_log_error_impl(&dword_1C7CCA000, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            }

            if ([*(a1 + 32) testMode])
            {
              [*(*(a1 + 32) + 32) addObject:v23];
            }
          }

          [v8 setInUse:0];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v5);
  }
}

- (void)_loadState
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  applicationID = [v3 bundleIdentifier];

  if ([(PKReplicaManager *)self isValidBundleIDForSaving:applicationID])
  {
    v4 = [(PKReplicaManager *)self testMode];
    v5 = applicationID;
    if (applicationID)
    {
      v6 = v4;
    }

    else
    {
      v6 = 1;
    }

    if (v6 == 1)
    {

      v5 = @"com.apple.replicas.test";
    }

    v7 = *MEMORY[0x1E695E8B8];
    v8 = *MEMORY[0x1E695E8B0];
    applicationID = v5;
    v9 = CFPreferencesCopyValue(@"com.apple.PencilKit.replicasDirtyToken", v5, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (v9)
    {
      [(PKReplicaManager *)self _resetAllReplicaUUIDs];
    }

    else
    {
      v10 = CFPreferencesCopyValue(@"com.apple.PencilKit.replicas", applicationID, v7, v8);
      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v10 error:0];
        v12 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"ReplicaUUIDs"];
        replicaUUIDs = self->_replicaUUIDs;
        self->_replicaUUIDs = v12;

        v14 = [v11 decodeObjectOfClass:objc_opt_class() forKey:@"ReplicaEntries"];
        replicaEntries = self->_replicaEntries;
        self->_replicaEntries = v14;
      }

      if (!self->_replicaUUIDs)
      {
        v16 = [MEMORY[0x1E695DFA0] orderedSet];
        v17 = self->_replicaUUIDs;
        self->_replicaUUIDs = v16;
      }

      if (!self->_replicaEntries)
      {
        v18 = [MEMORY[0x1E695DF90] dictionary];
        v19 = self->_replicaEntries;
        self->_replicaEntries = v18;
      }
    }
  }
}

- (void)_setReplicasDirtyToken
{
  if (!self->_dirtyTokenSet)
  {
    self->_dirtyTokenSet = 1;
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];

    v5 = [(PKReplicaManager *)self testMode];
    if (v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6 == 1)
    {

      v4 = @"com.apple.replicas.test";
    }

    v10 = 1;
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v10 length:1];
    v8 = *MEMORY[0x1E695E8B8];
    v9 = *MEMORY[0x1E695E8B0];
    CFPreferencesSetValue(@"com.apple.PencilKit.replicasDirtyToken", v7, v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(v4, v8, v9);
  }
}

- (void)_scheduleSaveState
{
  saveStateBlock = self->_saveStateBlock;
  if (saveStateBlock)
  {
    dispatch_block_cancel(saveStateBlock);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__PKReplicaManager__scheduleSaveState__block_invoke;
  block[3] = &unk_1E82D6388;
  block[4] = self;
  v4 = dispatch_block_create(0, block);
  v5 = self->_saveStateBlock;
  self->_saveStateBlock = v4;

  v6 = dispatch_time(0, 2500000000);
  dispatch_after(v6, self->_uuidAccessQueue, self->_saveStateBlock);
}

uint64_t __38__PKReplicaManager__scheduleSaveState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 _saveStateImmediately];
}

- (void)_saveStateImmediately
{
  if (self->_replicaUUIDs && self->_replicaEntries)
  {
    if ([(PKReplicaManager *)self testMode])
    {
      v3 = @"com.apple.replicas.test";
    }

    else
    {
      v9 = [MEMORY[0x1E696AAE8] mainBundle];
      v4 = [v9 bundleIdentifier];

      v3 = v4;
    }

    v10 = v3;
    if ([(PKReplicaManager *)self isValidBundleIDForSaving:?])
    {
      v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:0];
      [v5 encodeObject:self->_replicaUUIDs forKey:@"ReplicaUUIDs"];
      [v5 encodeObject:self->_replicaEntries forKey:@"ReplicaEntries"];
      [v5 finishEncoding];
      v6 = [v5 encodedData];
      v7 = *MEMORY[0x1E695E8B8];
      v8 = *MEMORY[0x1E695E8B0];
      CFPreferencesSetValue(@"com.apple.PencilKit.replicasDirtyToken", 0, v10, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      *&self->_dirtyTokenSet = 0;
      CFPreferencesSetValue(@"com.apple.PencilKit.replicas", v6, v10, v7, v8);
      CFPreferencesSynchronize(v10, v7, v8);
    }
  }
}

- (void)_resetAllReplicaUUIDs
{
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  replicaUUIDs = self->_replicaUUIDs;
  self->_replicaUUIDs = v3;

  v5 = [MEMORY[0x1E695DF90] dictionary];
  replicaEntries = self->_replicaEntries;
  self->_replicaEntries = v5;

  [(PKReplicaManager *)self _saveStateImmediately];
}

@end