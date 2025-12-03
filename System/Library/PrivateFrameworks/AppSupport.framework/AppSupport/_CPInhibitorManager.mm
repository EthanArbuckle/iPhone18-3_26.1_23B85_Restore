@interface _CPInhibitorManager
+ (id)sharedInstance;
- (_CPInhibitorManager)init;
- (id)popAssertionWithIdentifier:(id)identifier;
- (id)startAnInhibitor;
- (void)pushAssertion:(id)assertion withIdentifier:(id)identifier;
- (void)startAnInhibitor;
- (void)stopInhibitorWithIdentifier:(id)identifier;
@end

@implementation _CPInhibitorManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[_CPInhibitorManager sharedInstance];
  }

  v3 = sharedInstance__sharedManager;

  return v3;
}

- (_CPInhibitorManager)init
{
  v37[2] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = _CPInhibitorManager;
  v2 = [(_CPInhibitorManager *)&v27 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.appsupport", "running-board-inhibitor");
    os_log = v2->_os_log;
    v2->_os_log = v3;

    if (RunningBoardServicesLibraryCore())
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      inhibitorMap = v2->_inhibitorMap;
      v2->_inhibitorMap = v5;

      v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
      inhibitorMapLock = v2->_inhibitorMapLock;
      v2->_inhibitorMapLock = v7;

      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v9 = getRBSProcessHandleClass_softClass;
      v36 = getRBSProcessHandleClass_softClass;
      if (!getRBSProcessHandleClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __getRBSProcessHandleClass_block_invoke;
        v31 = &unk_1E7450E18;
        v32 = &v33;
        __getRBSProcessHandleClass_block_invoke(buf);
        v9 = v34[3];
      }

      v10 = v9;
      _Block_object_dispose(&v33, 8);
      currentProcess = [v9 currentProcess];
      if ([currentProcess isManaged])
      {
        v2->_isProcessRunningBoardManaged = 1;
        v33 = 0;
        v34 = &v33;
        v35 = 0x2050000000;
        v12 = getRBSTargetClass_softClass;
        v36 = getRBSTargetClass_softClass;
        if (!getRBSTargetClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __getRBSTargetClass_block_invoke;
          v31 = &unk_1E7450E18;
          v32 = &v33;
          __getRBSTargetClass_block_invoke(buf);
          v12 = v34[3];
        }

        v13 = v12;
        _Block_object_dispose(&v33, 8);
        currentProcess2 = [v12 currentProcess];
        runningBoardTarget = v2->_runningBoardTarget;
        v2->_runningBoardTarget = currentProcess2;

        v33 = 0;
        v34 = &v33;
        v35 = 0x2050000000;
        v16 = getRBSDomainAttributeClass_softClass;
        v36 = getRBSDomainAttributeClass_softClass;
        if (!getRBSDomainAttributeClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __getRBSDomainAttributeClass_block_invoke;
          v31 = &unk_1E7450E18;
          v32 = &v33;
          __getRBSDomainAttributeClass_block_invoke(buf);
          v16 = v34[3];
        }

        v17 = v16;
        _Block_object_dispose(&v33, 8);
        v18 = [v16 attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
        v37[0] = v18;
        v33 = 0;
        v34 = &v33;
        v35 = 0x2050000000;
        v19 = getRBSAcquisitionCompletionAttributeClass_softClass;
        v36 = getRBSAcquisitionCompletionAttributeClass_softClass;
        if (!getRBSAcquisitionCompletionAttributeClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          v29 = 3221225472;
          v30 = __getRBSAcquisitionCompletionAttributeClass_block_invoke;
          v31 = &unk_1E7450E18;
          v32 = &v33;
          __getRBSAcquisitionCompletionAttributeClass_block_invoke(buf);
          v19 = v34[3];
        }

        v20 = v19;
        _Block_object_dispose(&v33, 8);
        v21 = [v19 attributeWithCompletionPolicy:1];
        v37[1] = v21;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
        runningBoardAttributes = v2->_runningBoardAttributes;
        v2->_runningBoardAttributes = v22;
      }
    }

    else
    {
      v24 = v2->_os_log;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_195E6C000, v24, OS_LOG_TYPE_DEFAULT, "RunningBoardServices softlink unavailable", buf, 2u);
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
  return v2;
}

- (id)startAnInhibitor
{
  if ([(_CPInhibitorManager *)self isProcessRunningBoardManaged])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v3 = getRBSAssertionClass_softClass;
    v19 = getRBSAssertionClass_softClass;
    if (!getRBSAssertionClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getRBSAssertionClass_block_invoke;
      v15[3] = &unk_1E7450E18;
      v15[4] = &v16;
      __getRBSAssertionClass_block_invoke(v15);
      v3 = v17[3];
    }

    v4 = v3;
    _Block_object_dispose(&v16, 8);
    v5 = [v3 alloc];
    runningBoardTarget = [(_CPInhibitorManager *)self runningBoardTarget];
    runningBoardAttributes = [(_CPInhibitorManager *)self runningBoardAttributes];
    v8 = [v5 initWithExplanation:@"AppSupport sqlite connection lock" target:runningBoardTarget attributes:runningBoardAttributes];

    v14 = 0;
    LODWORD(runningBoardAttributes) = [v8 acquireWithError:&v14];
    v9 = v14;
    if (runningBoardAttributes)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      [(_CPInhibitorManager *)self pushAssertion:v8 withIdentifier:uUIDString];
    }

    else
    {
      os_log = [(_CPInhibitorManager *)self os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
      {
        [_CPInhibitorManager startAnInhibitor];
      }

      uUIDString = 0;
    }
  }

  else
  {
    uUIDString = 0;
  }

  return uUIDString;
}

- (void)stopInhibitorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(_CPInhibitorManager *)self popAssertionWithIdentifier:identifierCopy];
    v6 = v5;
    if (v5)
    {
      [v5 invalidate];
    }

    else
    {
      os_log = [(_CPInhibitorManager *)self os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
      {
        [_CPInhibitorManager stopInhibitorWithIdentifier:];
      }
    }
  }
}

- (void)pushAssertion:(id)assertion withIdentifier:(id)identifier
{
  identifierCopy = identifier;
  assertionCopy = assertion;
  os_log = [(_CPInhibitorManager *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [_CPInhibitorManager pushAssertion:withIdentifier:];
  }

  inhibitorMapLock = [(_CPInhibitorManager *)self inhibitorMapLock];
  [inhibitorMapLock lock];

  inhibitorMap = [(_CPInhibitorManager *)self inhibitorMap];
  [inhibitorMap setObject:assertionCopy forKey:identifierCopy];

  inhibitorMapLock2 = [(_CPInhibitorManager *)self inhibitorMapLock];
  [inhibitorMapLock2 unlock];
}

- (id)popAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_log = [(_CPInhibitorManager *)self os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
  {
    [_CPInhibitorManager popAssertionWithIdentifier:];
  }

  inhibitorMapLock = [(_CPInhibitorManager *)self inhibitorMapLock];
  [inhibitorMapLock lock];

  inhibitorMap = [(_CPInhibitorManager *)self inhibitorMap];
  v8 = [inhibitorMap objectForKey:identifierCopy];

  inhibitorMap2 = [(_CPInhibitorManager *)self inhibitorMap];
  [inhibitorMap2 removeObjectForKey:identifierCopy];

  inhibitorMapLock2 = [(_CPInhibitorManager *)self inhibitorMapLock];
  [inhibitorMapLock2 unlock];

  return v8;
}

- (void)startAnInhibitor
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_195E6C000, v0, OS_LOG_TYPE_ERROR, "Failed to take assertion, error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)stopInhibitorWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_195E6C000, v0, OS_LOG_TYPE_ERROR, "Failed to pop and invalidate assertion %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)pushAssertion:withIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_195E6C000, v0, OS_LOG_TYPE_DEBUG, "Push assertion %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)popAssertionWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_195E6C000, v0, OS_LOG_TYPE_DEBUG, "Pop assertion %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end