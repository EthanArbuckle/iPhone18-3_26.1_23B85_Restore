@interface AXSiriShortcutsManager
+ (id)shortcutsManagerForSource:(unint64_t)source;
- (AXSiriShortcutsManager)initWithSource:(unint64_t)source;
- (NSArray)shortcuts;
- (id)registerShortcutsDidChangeBlock:(id)block;
- (id)shortcutForIdentifier:(id)identifier;
- (void)_loadShortcuts;
- (void)_queue_loadShortcuts;
- (void)observableResultDidChange:(id)change;
- (void)performShortcut:(id)shortcut;
- (void)unregisterShortcutsDidChangeBlock:(id)block;
- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled;
- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress;
@end

@implementation AXSiriShortcutsManager

+ (id)shortcutsManagerForSource:(unint64_t)source
{
  if (shortcutsManagerForSource__onceToken != -1)
  {
    +[AXSiriShortcutsManager shortcutsManagerForSource:];
  }

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:source];
  v5 = [shortcutsManagerForSource__ShortcutManagers objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [[AXSiriShortcutsManager alloc] initWithSource:source];
    [shortcutsManagerForSource__ShortcutManagers setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

uint64_t __52__AXSiriShortcutsManager_shortcutsManagerForSource___block_invoke()
{
  v0 = objc_opt_new();
  v1 = shortcutsManagerForSource__ShortcutManagers;
  shortcutsManagerForSource__ShortcutManagers = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (AXSiriShortcutsManager)initWithSource:(unint64_t)source
{
  v19.receiver = self;
  v19.super_class = AXSiriShortcutsManager;
  v4 = [(AXSiriShortcutsManager *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_source = source;
    v6 = dispatch_queue_create("AXSiriShortcutsUpdateQueue", 0);
    queue = v5->_queue;
    v5->_queue = v6;

    v8 = objc_opt_new();
    updateBlocks = v5->_updateBlocks;
    v5->_updateBlocks = v8;

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v10 = getVCVoiceShortcutClientClass_softClass;
    v24 = getVCVoiceShortcutClientClass_softClass;
    if (!getVCVoiceShortcutClientClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getVCVoiceShortcutClientClass_block_invoke;
      location[3] = &unk_1E71E9A80;
      location[4] = &v21;
      __getVCVoiceShortcutClientClass_block_invoke(location);
      v10 = v22[3];
    }

    v11 = v10;
    _Block_object_dispose(&v21, 8);
    standardClient = [v10 standardClient];
    [(AXSiriShortcutsManager *)v5 setShortcutClient:standardClient];

    [(AXSiriShortcutsManager *)v5 _loadShortcuts];
    if (MKBDeviceFormattedForContentProtection())
    {
      objc_initWeak(location, v5);
      v13 = *MEMORY[0x1E69B1A70];
      v14 = MEMORY[0x1E69E96A0];
      v15 = MEMORY[0x1E69E96A0];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__AXSiriShortcutsManager_initWithSource___block_invoke;
      v17[3] = &unk_1E71ECB50;
      objc_copyWeak(&v18, location);
      notify_register_dispatch(v13, &v5->_contentProtectionNotifyToken, v14, v17);

      objc_destroyWeak(&v18);
      objc_destroyWeak(location);
    }
  }

  return v5;
}

void __41__AXSiriShortcutsManager_initWithSource___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_18B15E000, v2, OS_LOG_TYPE_DEFAULT, "Auth state changed so reloading siri shortcuts", v3, 2u);
    }

    [WeakRetained _loadShortcuts];
  }
}

- (NSArray)shortcuts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__14;
  v11 = __Block_byref_object_dispose__14;
  v12 = 0;
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__AXSiriShortcutsManager_shortcuts__block_invoke;
  v6[3] = &unk_1E71EA1D8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v3 = v8[5];
  if (!v3)
  {
    v8[5] = MEMORY[0x1E695E0F0];

    v3 = v8[5];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__AXSiriShortcutsManager_shortcuts__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:*(*(a1 + 32) + 16) copyItems:1];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (void)observableResultDidChange:(id)change
{
  v4 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B15E000, v4, OS_LOG_TYPE_INFO, "shortcuts did change!", v5, 2u);
  }

  [(AXSiriShortcutsManager *)self _loadShortcuts];
}

- (id)registerShortcutsDidChangeBlock:(id)block
{
  blockCopy = block;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__14;
  v17 = __Block_byref_object_dispose__14;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AXSiriShortcutsManager_registerShortcutsDidChangeBlock___block_invoke;
  block[3] = &unk_1E71ECB78;
  v11 = blockCopy;
  v12 = &v13;
  block[4] = self;
  v7 = blockCopy;
  dispatch_async(queue, block);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __58__AXSiriShortcutsManager_registerShortcutsDidChangeBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 40) copy];
  v2 = _Block_copy(v3);
  [*(*(a1 + 32) + 32) setObject:v2 forKeyedSubscript:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)unregisterShortcutsDidChangeBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__AXSiriShortcutsManager_unregisterShortcutsDidChangeBlock___block_invoke;
    v7[3] = &unk_1E71EA128;
    v7[4] = self;
    v8 = blockCopy;
    dispatch_async(queue, v7);
  }
}

- (id)shortcutForIdentifier:(id)identifier
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  shortcuts = [(AXSiriShortcutsManager *)self shortcuts];
  v6 = [shortcuts countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(shortcuts);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v16 = v10;
          goto LABEL_16;
        }
      }

      v7 = [shortcuts countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  shortcutClient = [(AXSiriShortcutsManager *)self shortcutClient];
  v19 = 0;
  v14 = [shortcutClient accessibilityWorkflowForIdentifier:identifierCopy error:&v19];
  shortcuts = v19;

  if (shortcuts)
  {
    value = AXLogSiriShortcuts();
    if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
    {
      [(AXSiriShortcutsManager *)identifierCopy shortcutForIdentifier:shortcuts, value];
    }

    v16 = 0;
  }

  else
  {
    v17 = [AXSiriShortcut alloc];
    value = [v14 value];
    v16 = [(AXSiriShortcut *)v17 initWithAccessibilityWorkflow:value];
  }

LABEL_16:

  return v16;
}

- (void)_loadShortcuts
{
  v3 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "reloading shortcuts", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__AXSiriShortcutsManager__loadShortcuts__block_invoke;
  block[3] = &unk_1E71E9B98;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_loadShortcuts
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Could not fetch siri shortcuts: %@", &v2, 0xCu);
}

AXSiriShortcut *__46__AXSiriShortcutsManager__queue_loadShortcuts__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AXSiriShortcut alloc] initWithAccessibilityWorkflow:v2];

  return v3;
}

- (void)performShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  identifier = [shortcutCopy identifier];

  if (identifier)
  {
    v6 = +[AXBackBoardServer server];
    isRestrictedForAAC = [v6 isRestrictedForAAC];

    if (isRestrictedForAAC)
    {
      v8 = AXLogSiriShortcuts();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "Could not perform shortcut during Assessment Mode.", v14, 2u);
      }

      v9 = GAXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_18B15E000, v9, OS_LOG_TYPE_DEFAULT, "Guided Access blocking attempt to perform shortcut during Assessment Mode.", v14, 2u);
      }
    }

    else
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v10 = getWFAccessibilityWorkflowRunnerClientClass_softClass;
      v18 = getWFAccessibilityWorkflowRunnerClientClass_softClass;
      if (!getWFAccessibilityWorkflowRunnerClientClass_softClass)
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __getWFAccessibilityWorkflowRunnerClientClass_block_invoke;
        v14[3] = &unk_1E71E9A80;
        v14[4] = &v15;
        __getWFAccessibilityWorkflowRunnerClientClass_block_invoke(v14);
        v10 = v16[3];
      }

      v11 = v10;
      _Block_object_dispose(&v15, 8);
      v12 = [v10 alloc];
      identifier2 = [shortcutCopy identifier];
      v9 = [v12 initWithWorkflowIdentifier:identifier2];

      [v9 setDelegate:self];
      [v9 start];
    }
  }

  else
  {
    v9 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(AXSiriShortcutsManager *)shortcutCopy performShortcut:v9];
    }
  }
}

- (void)workflowRunnerClient:(id)client didStartRunningWorkflowWithProgress:(id)progress
{
  v12 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  progressCopy = progress;
  v7 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 138412546;
    v9 = clientCopy;
    v10 = 2112;
    v11 = progressCopy;
    _os_log_impl(&dword_18B15E000, v7, OS_LOG_TYPE_INFO, "did start workflow: %@, with progress: %@", &v8, 0x16u);
  }
}

- (void)workflowRunnerClient:(id)client didFinishRunningWorkflowWithOutput:(id)output error:(id)error cancelled:(BOOL)cancelled
{
  v21 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  outputCopy = output;
  errorCopy = error;
  v11 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = NSStringFromBOOL();
    v13 = 138413058;
    v14 = clientCopy;
    v15 = 2112;
    v16 = outputCopy;
    v17 = 2112;
    v18 = errorCopy;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_INFO, "did finish running workflow: %@, with output: %@, error: %@, cancelled: %@", &v13, 0x2Au);
  }
}

- (void)shortcutForIdentifier:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_18B15E000, log, OS_LOG_TYPE_ERROR, "Could not fetch siri shortcut with identifier: %@. %@", &v3, 0x16u);
}

- (void)performShortcut:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "Could not perform short cut no identifier: %@", &v2, 0xCu);
}

@end