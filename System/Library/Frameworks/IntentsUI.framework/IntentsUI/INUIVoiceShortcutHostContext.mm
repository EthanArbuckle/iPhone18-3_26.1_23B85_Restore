@interface INUIVoiceShortcutHostContext
+ (id)_allowedItemPayloadClasses;
- (INUIVoiceShortcutRemoteHostingInterface)delegate;
- (void)remoteViewControllerDidCancel;
- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error;
- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier;
- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error;
@end

@implementation INUIVoiceShortcutHostContext

+ (id)_allowedItemPayloadClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (INUIVoiceShortcutRemoteHostingInterface)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__INUIVoiceShortcutHostContext_remoteViewControllerDidDeleteVoiceShortcutWithIdentifier___block_invoke;
  v6[3] = &unk_27872BF30;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __89__INUIVoiceShortcutHostContext_remoteViewControllerDidDeleteVoiceShortcutWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerDidDeleteVoiceShortcutWithIdentifier:*(a1 + 40)];
}

- (void)remoteViewControllerDidUpdateVoiceShortcut:(id)shortcut error:(id)error
{
  shortcutCopy = shortcut;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__INUIVoiceShortcutHostContext_remoteViewControllerDidUpdateVoiceShortcut_error___block_invoke;
  block[3] = &unk_27872BAE0;
  block[4] = self;
  v11 = shortcutCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = shortcutCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __81__INUIVoiceShortcutHostContext_remoteViewControllerDidUpdateVoiceShortcut_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerDidUpdateVoiceShortcut:*(a1 + 40) error:*(a1 + 48)];
}

- (void)remoteViewControllerDidCreateVoiceShortcut:(id)shortcut error:(id)error
{
  shortcutCopy = shortcut;
  errorCopy = error;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__INUIVoiceShortcutHostContext_remoteViewControllerDidCreateVoiceShortcut_error___block_invoke;
  block[3] = &unk_27872BAE0;
  block[4] = self;
  v11 = shortcutCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = shortcutCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __81__INUIVoiceShortcutHostContext_remoteViewControllerDidCreateVoiceShortcut_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 remoteViewControllerDidCreateVoiceShortcut:*(a1 + 40) error:*(a1 + 48)];
}

- (void)remoteViewControllerDidCancel
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__INUIVoiceShortcutHostContext_remoteViewControllerDidCancel__block_invoke;
  block[3] = &unk_27872BEE0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __61__INUIVoiceShortcutHostContext_remoteViewControllerDidCancel__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 remoteViewControllerDidCancel];
}

@end