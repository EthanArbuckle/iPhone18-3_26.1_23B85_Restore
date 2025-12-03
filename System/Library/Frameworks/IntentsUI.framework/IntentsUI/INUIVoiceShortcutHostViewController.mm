@interface INUIVoiceShortcutHostViewController
+ (id)_voiceShortcutUIExtension;
+ (void)getViewControllerCompletion:(id)completion;
+ (void)getViewControllerForAddingShortcut:(id)shortcut completion:(id)completion;
+ (void)getViewControllerForEditingVoiceShortcut:(id)shortcut completion:(id)completion;
+ (void)initialize;
- (INUIVoiceShortcutRemoteViewControllerDelegate)delegate;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error;
- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier;
- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error;
- (void)setServiceContext:(id)context;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation INUIVoiceShortcutHostViewController

- (INUIVoiceShortcutRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerDidCancel
{
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidCancel];
  }
}

- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:identifierCopy];
  }
}

- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error
{
  shortcutCopy = shortcut;
  errorCopy = error;
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidUpdateVoiceShortcut:shortcutCopy error:errorCopy];
  }
}

- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error
{
  shortcutCopy = shortcut;
  errorCopy = error;
  delegate = [(INUIVoiceShortcutHostViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteViewControllerDidCreateVoiceShortcut:shortcutCopy error:errorCopy];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  v16 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  mode = [(INUIVoiceShortcutHostViewController *)self mode];
  v6 = @"Unknown";
  if (mode == 1)
  {
    v6 = @"Add";
  }

  if (mode == 2)
  {
    v6 = @"Edit";
  }

  v7 = v6;
  v8 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315650;
    v11 = "[INUIVoiceShortcutHostViewController viewServiceDidTerminateWithError:]";
    v12 = 2112;
    v13 = v7;
    v14 = 2114;
    v15 = errorCopy;
    _os_log_impl(&dword_22CA36000, v8, OS_LOG_TYPE_INFO, "%s VoiceShortcutUIExtension view service (for %@) terminated with error=%{public}@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setServiceContext:(id)context
{
  contextCopy = context;
  [(INUIVoiceShortcutHostContext *)self->_serviceContext setDelegate:0];
  serviceContext = self->_serviceContext;
  self->_serviceContext = contextCopy;
  v6 = contextCopy;

  [(INUIVoiceShortcutHostContext *)self->_serviceContext setDelegate:self];
}

+ (void)getViewControllerCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _voiceShortcutUIExtension = [self _voiceShortcutUIExtension];
  if (_voiceShortcutUIExtension)
  {
    v6 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]";
      v24 = 2114;
      v25 = _voiceShortcutUIExtension;
      _os_log_impl(&dword_22CA36000, v6, OS_LOG_TYPE_INFO, "%s Instantiating view controller from extension: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
    v9 = [bundleRecordForCurrentProcess URL];

    v10 = *MEMORY[0x277D861B8];
    path = [v9 path];
    [path UTF8String];
    v12 = sandbox_extension_issue_file();

    v20[0] = @"INUIVoiceShortcutExtensionItemBundleURL";
    v20[1] = @"INUIVoiceShortcutExtensionItemSandboxExtensionData";
    v21[0] = v9;
    v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v12 length:strlen(v12) + 1];
    v21[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    [v7 setUserInfo:v14];

    v19 = v7;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__INUIVoiceShortcutHostViewController_getViewControllerCompletion___block_invoke;
    v17[3] = &unk_27872BCA0;
    v18 = completionCopy;
    [_voiceShortcutUIExtension instantiateViewControllerWithInputItems:v15 listenerEndpoint:0 connectionHandler:v17];
  }

  else
  {
    v7 = INIntentError();
    (*(completionCopy + 2))(completionCopy, 0, v7);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __67__INUIVoiceShortcutHostViewController_getViewControllerCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v12 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]_block_invoke";
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&dword_22CA36000, v12, OS_LOG_TYPE_ERROR, "%s Failed to instantiate view service: %{public}@", buf, 0x16u);
    }

    v13 = *(a1 + 32);
    v14 = INIntentError();
    (*(v13 + 16))(v13, 0, v14);
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = *MEMORY[0x277CD38C8];
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]_block_invoke";
      v20 = 2114;
      v21 = v8;
      _os_log_error_impl(&dword_22CA36000, v11, OS_LOG_TYPE_ERROR, "%s Unexpected remoteViewController class: %{public}@", buf, 0x16u);
    }

    v15 = *(a1 + 32);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected remoteViewController class: %@", v8];
    v16 = INIntentError();
    (*(v15 + 16))(v15, 0, v16);

LABEL_12:
    goto LABEL_13;
  }

  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v19 = "+[INUIVoiceShortcutHostViewController getViewControllerCompletion:]_block_invoke";
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_22CA36000, v11, OS_LOG_TYPE_INFO, "%s Got view controller %{public}@ identifier=%{public}@", buf, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)getViewControllerForEditingVoiceShortcut:(id)shortcut completion:(id)completion
{
  shortcutCopy = shortcut;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__INUIVoiceShortcutHostViewController_getViewControllerForEditingVoiceShortcut_completion___block_invoke;
  v10[3] = &unk_27872B938;
  v11 = shortcutCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = shortcutCopy;
  [self getViewControllerCompletion:v10];
}

void __91__INUIVoiceShortcutHostViewController_getViewControllerForEditingVoiceShortcut_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    [v3 setMode:2];
    v4 = [v5 remoteViewControllerProxy];
    [v4 buildForEditingVoiceShortcut:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)getViewControllerForAddingShortcut:(id)shortcut completion:(id)completion
{
  shortcutCopy = shortcut;
  completionCopy = completion;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy_;
  v36[4] = __Block_byref_object_dispose_;
  v8 = shortcutCopy;
  v37 = v8;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy_;
  v34[4] = __Block_byref_object_dispose_;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy_;
  v32[4] = __Block_byref_object_dispose_;
  v33 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke;
  v27 = &unk_27872B8C0;
  v10 = v8;
  v28 = v10;
  v30 = v32;
  v31 = v36;
  v29 = v9;
  v11 = *MEMORY[0x277CD3840];
  v12 = *(MEMORY[0x277CD3840] + 8);
  INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler();
  dispatch_group_enter(v29);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_4;
  v20[3] = &unk_27872B8E8;
  v22 = v32;
  v23 = v34;
  v13 = v29;
  v21 = v13;
  [self getViewControllerCompletion:v20];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_6;
  block[3] = &unk_27872B910;
  v16 = completionCopy;
  v17 = v34;
  v18 = v36;
  v19 = v32;
  v14 = completionCopy;
  dispatch_group_notify(v13, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
}

void __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = 136315650;
      v13 = "+[INUIVoiceShortcutHostViewController getViewControllerForAddingShortcut:completion:]_block_invoke";
      v14 = 2112;
      v15 = v11;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_22CA36000, v8, OS_LOG_TYPE_ERROR, "%s Error injecting image proxies into %{publc}@: %{public}@", &v12, 0x20u);
    }

    v9 = 48;
    v4 = a3;
  }

  else
  {
    v9 = 56;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), v4);
  dispatch_group_leave(*(a1 + 40));

  v10 = *MEMORY[0x277D85DE8];
}

void __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "+[INUIVoiceShortcutHostViewController getViewControllerForAddingShortcut:completion:]_block_invoke";
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_22CA36000, v7, OS_LOG_TYPE_ERROR, "%s Error getting hosted view controller, error: %{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_group_leave(*(a1 + 32));
  v11 = *MEMORY[0x277D85DE8];
}

void __85__INUIVoiceShortcutHostViewController_getViewControllerForAddingShortcut_completion___block_invoke_6(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    [v2 setMode:1];
    v3 = [*(*(a1[5] + 8) + 40) remoteViewControllerProxy];
    [v3 buildForAddingShortcut:*(*(a1[6] + 8) + 40)];

    v4 = *(*(a1[5] + 8) + 40);
  }

  else
  {
    v5 = *(*(a1[7] + 8) + 40);
  }

  (*(a1[4] + 16))();
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

+ (id)_voiceShortcutUIExtension
{
  if (_voiceShortcutUIExtension_onceToken != -1)
  {
    dispatch_once(&_voiceShortcutUIExtension_onceToken, &__block_literal_global);
  }

  v3 = _voiceShortcutUIExtension_extension;

  return v3;
}

void __64__INUIVoiceShortcutHostViewController__voiceShortcutUIExtension__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v0 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.WorkflowUI.AddShortcutExtension" error:&v5];
  v1 = v5;
  v2 = _voiceShortcutUIExtension_extension;
  _voiceShortcutUIExtension_extension = v0;

  if (!_voiceShortcutUIExtension_extension)
  {
    v3 = *MEMORY[0x277CD38C8];
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "+[INUIVoiceShortcutHostViewController _voiceShortcutUIExtension]_block_invoke";
      v8 = 2112;
      v9 = v1;
      _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Could not get VoiceShortcutUI extension: %@", buf, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x282122D80]();
  }
}

@end