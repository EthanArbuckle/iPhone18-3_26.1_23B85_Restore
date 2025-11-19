@interface AXSharedDisplayManager
@end

@implementation AXSharedDisplayManager

void ___AXSharedDisplayManager_block_invoke()
{
  if (_AXSCurrentProcessIsWebContent())
  {
    _AXSharedDisplayManager_CanAccessDisplayManager = 1;
  }

  else
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2050000000;
    v0 = getAXMDisplayManagerClass_softClass;
    v8 = getAXMDisplayManagerClass_softClass;
    if (!getAXMDisplayManagerClass_softClass)
    {
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __getAXMDisplayManagerClass_block_invoke;
      v4[3] = &unk_1E71E9A80;
      v4[4] = &v5;
      __getAXMDisplayManagerClass_block_invoke(v4);
      v0 = v6[3];
    }

    v1 = v0;
    _Block_object_dispose(&v5, 8);
    v2 = [[v0 alloc] initWithCompletion:&__block_literal_global_303];
    v3 = _AXSharedDisplayManager__Shared;
    _AXSharedDisplayManager__Shared = v2;
  }
}

void ___AXSharedDisplayManager_block_invoke_3()
{
  v5 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x18CFF15A0]())
  {
    v0 = AXLogDisplay();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = _AXSharedDisplayManager();
      v2 = [v1 coreAnimationMainDisplay];
      v3 = 138412290;
      v4 = v2;
      _os_log_impl(&dword_18B15E000, v0, OS_LOG_TYPE_DEFAULT, "Did finish initializing AX DisplayManager: %@", &v3, 0xCu);
    }
  }
}

@end