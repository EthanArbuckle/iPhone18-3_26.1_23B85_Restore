@interface _CPInhibitorManager
+ (id)sharedInstance;
- (_CPInhibitorManager)init;
- (id)popAssertionWithIdentifier:(id)a3;
- (id)startAnInhibitor;
- (void)pushAssertion:(id)a3 withIdentifier:(id)a4;
- (void)startAnInhibitor;
- (void)stopInhibitorWithIdentifier:(id)a3;
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
      v11 = [v9 currentProcess];
      if ([v11 isManaged])
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
        v14 = [v12 currentProcess];
        runningBoardTarget = v2->_runningBoardTarget;
        v2->_runningBoardTarget = v14;

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
    v6 = [(_CPInhibitorManager *)self runningBoardTarget];
    v7 = [(_CPInhibitorManager *)self runningBoardAttributes];
    v8 = [v5 initWithExplanation:@"AppSupport sqlite connection lock" target:v6 attributes:v7];

    v14 = 0;
    LODWORD(v7) = [v8 acquireWithError:&v14];
    v9 = v14;
    if (v7)
    {
      v10 = [MEMORY[0x1E696AFB0] UUID];
      v11 = [v10 UUIDString];

      [(_CPInhibitorManager *)self pushAssertion:v8 withIdentifier:v11];
    }

    else
    {
      v12 = [(_CPInhibitorManager *)self os_log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_CPInhibitorManager startAnInhibitor];
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)stopInhibitorWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_CPInhibitorManager *)self popAssertionWithIdentifier:v4];
    v6 = v5;
    if (v5)
    {
      [v5 invalidate];
    }

    else
    {
      v7 = [(_CPInhibitorManager *)self os_log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [_CPInhibitorManager stopInhibitorWithIdentifier:];
      }
    }
  }
}

- (void)pushAssertion:(id)a3 withIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CPInhibitorManager *)self os_log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_CPInhibitorManager pushAssertion:withIdentifier:];
  }

  v9 = [(_CPInhibitorManager *)self inhibitorMapLock];
  [v9 lock];

  v10 = [(_CPInhibitorManager *)self inhibitorMap];
  [v10 setObject:v7 forKey:v6];

  v11 = [(_CPInhibitorManager *)self inhibitorMapLock];
  [v11 unlock];
}

- (id)popAssertionWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_CPInhibitorManager *)self os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_CPInhibitorManager popAssertionWithIdentifier:];
  }

  v6 = [(_CPInhibitorManager *)self inhibitorMapLock];
  [v6 lock];

  v7 = [(_CPInhibitorManager *)self inhibitorMap];
  v8 = [v7 objectForKey:v4];

  v9 = [(_CPInhibitorManager *)self inhibitorMap];
  [v9 removeObjectForKey:v4];

  v10 = [(_CPInhibitorManager *)self inhibitorMapLock];
  [v10 unlock];

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