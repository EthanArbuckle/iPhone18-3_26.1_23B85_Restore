@interface AXSSDatabaseManager
+ (id)sharedDatabase;
- (AXSSDatabaseManager)init;
- (BOOL)canSave;
- (BOOL)saveIfPossible:(id *)possible;
- (id)apsConnectionMachServiceName;
- (id)cloudKitContainer;
- (id)cloudObjectFromLocalObjects:(id)objects withTable:(id)table andObjectID:(id)d;
- (id)containerIdentifier;
- (id)databaseFilePath;
- (id)managedObjectModelName;
- (void)_contentDidUpdate:(id)update;
- (void)_identityDidChange:(id)change;
- (void)_storesWillChange:(id)change;
- (void)dealloc;
- (void)setupDatabase;
- (void)userAuthChanged;
@end

@implementation AXSSDatabaseManager

- (BOOL)canSave
{
  if (self->_isScreenedLocked)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    v3 = [mEMORY[0x1E69ADFB8] isPasscodeSet] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

uint64_t __27__AXSSDatabaseManager_init__block_invoke(uint64_t a1)
{
  state64 = 0;
  result = notify_get_state(*(*(a1 + 32) + 8), &state64);
  *(*(a1 + 32) + 12) = state64 == 1;
  return result;
}

- (AXSSDatabaseManager)init
{
  v16.receiver = self;
  v16.super_class = AXSSDatabaseManager;
  v2 = [(AXSSDatabaseManager *)&v16 init];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, userAuthDidChange, *MEMORY[0x1E69E4CA0], 0, 0);
  v4 = objc_alloc(MEMORY[0x1E6988780]);
  v5 = [v4 initWithTargetSerialQueue:MEMORY[0x1E69E96A0]];
  identityChangeTimer = v2->_identityChangeTimer;
  v2->_identityChangeTimer = v5;

  [(AXDispatchTimer *)v2->_identityChangeTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
  v2->_lockNotificationToken = -1;
  p_lockNotificationToken = &v2->_lockNotificationToken;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v8 = getkSBSLockStateNotifyKeySymbolLoc_ptr;
  v21 = getkSBSLockStateNotifyKeySymbolLoc_ptr;
  if (!getkSBSLockStateNotifyKeySymbolLoc_ptr)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __getkSBSLockStateNotifyKeySymbolLoc_block_invoke;
    v17[3] = &unk_1E8134F10;
    v17[4] = &v18;
    __getkSBSLockStateNotifyKeySymbolLoc_block_invoke(v17);
    v8 = v19[3];
  }

  _Block_object_dispose(&v18, 8);
  if (!v8)
  {
    v13 = +[AXSSMotionTrackingCameraInput motionTrackingCameraInputWithAVCaptureDevice:];
    _Block_object_dispose(&v18, 8);
    _Unwind_Resume(v13);
  }

  v9 = *v8;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __27__AXSSDatabaseManager_init__block_invoke;
  v14[3] = &unk_1E8135DA8;
  v10 = v2;
  v15 = v10;
  v11 = MEMORY[0x1E69E96A0];
  notify_register_dispatch(v9, p_lockNotificationToken, MEMORY[0x1E69E96A0], v14);

  return v10;
}

- (id)databaseFilePath
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  lastObject = [v3 lastObject];

  v5 = [lastObject stringByAppendingPathComponent:@"Accessibility"];
  managedObjectModelName = [(AXSSDatabaseManager *)self managedObjectModelName];
  v7 = [v5 stringByAppendingPathComponent:managedObjectModelName];
  v8 = [v7 stringByAppendingPathExtension:@"sqlite"];

  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];

  return v9;
}

- (void)setupDatabase
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C0E8A000, log, OS_LOG_TYPE_ERROR, "Could not make directory: %@. error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void __36__AXSSDatabaseManager_setupDatabase__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__AXSSDatabaseManager_setupDatabase__block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)dealloc
{
  notify_cancel(self->_lockNotificationToken);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXSSDatabaseManager;
  [(AXSSDatabaseManager *)&v4 dealloc];
}

- (id)cloudObjectFromLocalObjects:(id)objects withTable:(id)table andObjectID:(id)d
{
  v40 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  tableCopy = table;
  dCopy = d;
  v11 = [MEMORY[0x1E695DFA8] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = objectsCopy;
  v32 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v32)
  {
    v12 = *v36;
    v29 = *v36;
    v30 = v11;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:tableCopy];
        v33 = v14;
        v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ = %@", dCopy, v14];
        [v15 setPredicate:v16];

        [v15 setReturnsObjectsAsFaults:0];
        managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
        v34 = 0;
        v18 = [managedObjectContext executeFetchRequest:v15 error:&v34];
        v19 = v34;

        lastObject = [v18 lastObject];
        if (lastObject)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 0;
        }

        if (!v21)
        {
          v22 = MEMORY[0x1E695D5B8];
          [(AXSSDatabaseManager *)self managedObjectContext];
          v23 = dCopy;
          v25 = v24 = self;
          v26 = [v22 insertNewObjectForEntityForName:tableCopy inManagedObjectContext:v25];

          self = v24;
          dCopy = v23;
          v12 = v29;
          [v26 setValue:v33 forKey:dCopy];
          lastObject = v26;
          v11 = v30;
        }

        [v11 addObject:lastObject];
      }

      v32 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v32);
  }

  v27 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_identityDidChange:(id)change
{
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AXSSDatabaseManager__identityDidChange___block_invoke;
  v7[3] = &unk_1E8134950;
  v8 = persistentStoreCoordinator;
  selfCopy = self;
  v6 = persistentStoreCoordinator;
  [v6 performBlock:v7];
}

void __42__AXSSDatabaseManager__identityDidChange___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) databaseFilePath];
  v4 = [v2 persistentStoreForURL:v3];

  [*(a1 + 32) removePersistentStore:v4 error:0];
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AXSSDatabaseManager__identityDidChange___block_invoke_2;
  v7[3] = &unk_1E8134870;
  v7[4] = v5;
  [v6 afterDelay:v7 processBlock:0.25];
}

- (void)_storesWillChange:(id)change
{
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__AXSSDatabaseManager__storesWillChange___block_invoke;
  v5[3] = &unk_1E8134870;
  v5[4] = self;
  [managedObjectContext performBlock:v5];
}

void __41__AXSSDatabaseManager__storesWillChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 hasChanges];

  v4 = *(a1 + 32);
  if (v3)
  {
    v11 = 0;
    v5 = [v4 saveIfPossible:&v11];
    v6 = v11;
    if ((v5 & 1) == 0)
    {
      v7 = AXLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1C0E8A000, v7, OS_LOG_TYPE_DEFAULT, "Failed to save database due to storesWillChange: %@", buf, 0xCu);
      }
    }

    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = [v4 managedObjectContext];
    [v10 reset];
    v9 = *MEMORY[0x1E69E9840];
  }
}

- (void)_contentDidUpdate:(id)update
{
  updateCopy = update;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AXSSDatabaseManager__contentDidUpdate___block_invoke;
  v7[3] = &unk_1E8134950;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  [managedObjectContext performBlock:v7];
}

void __41__AXSSDatabaseManager__contentDidUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  [v2 mergeChangesFromContextDidSaveNotification:*(a1 + 40)];
}

- (BOOL)saveIfPossible:(id *)possible
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  managedObjectContext = [(AXSSDatabaseManager *)self managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__AXSSDatabaseManager_saveIfPossible___block_invoke;
  v8[3] = &unk_1E8135DF0;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = &v15;
  [managedObjectContext performBlockAndWait:v8];

  if (possible)
  {
    *possible = v10[5];
  }

  v6 = *(v16 + 24);
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void __38__AXSSDatabaseManager_saveIfPossible___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canSave])
  {
    v2 = [*(a1 + 32) managedObjectContext];
    v3 = [v2 persistentStoreCoordinator];
    v4 = [v3 persistentStores];
    v5 = [v4 count];

    if (v5)
    {
      v6 = [*(a1 + 32) managedObjectContext];
      v7 = *(*(a1 + 40) + 8);
      obj = *(v7 + 40);
      [v6 save:&obj];
      objc_storeStrong((v7 + 40), obj);

      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 40) == 0;
    }
  }
}

+ (id)sharedDatabase
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)managedObjectModelName
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)cloudKitContainer
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)containerIdentifier
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)apsConnectionMachServiceName
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)userAuthChanged
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_3();

  NSRequestConcreteImplementation();
}

void __36__AXSSDatabaseManager_setupDatabase__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1C0E8A000, a2, OS_LOG_TYPE_ERROR, "DB err: resetting storage coordinator %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end