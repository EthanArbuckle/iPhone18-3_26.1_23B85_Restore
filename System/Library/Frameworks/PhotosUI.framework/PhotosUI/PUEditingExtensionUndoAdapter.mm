@interface PUEditingExtensionUndoAdapter
- (PUEditingExtensionUndoAdapter)initWithButtonHost:(id)host;
- (void)_registerForUndoManagerNotifications:(id)notifications;
- (void)_unregisterForUndoManagerNotifications:(id)notifications;
- (void)_updateButtonState;
- (void)setUndoManager:(id)manager;
@end

@implementation PUEditingExtensionUndoAdapter

- (void)_updateButtonState
{
  buttonHost = [(PUEditingExtensionUndoAdapter *)self buttonHost];
  undoManager = [(PUEditingExtensionUndoAdapter *)self undoManager];
  [buttonHost setUndoEnabled:objc_msgSend(undoManager redoEnabled:{"canUndo"), objc_msgSend(undoManager, "canRedo")}];
}

- (void)_unregisterForUndoManagerNotifications:(id)notifications
{
  v4 = MEMORY[0x1E696AD88];
  notificationsCopy = notifications;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA18] object:notificationsCopy];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA30] object:notificationsCopy];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA28] object:notificationsCopy];
}

- (void)_registerForUndoManagerNotifications:(id)notifications
{
  v4 = MEMORY[0x1E696AD88];
  notificationsCopy = notifications;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateButtonState name:*MEMORY[0x1E696AA18] object:notificationsCopy];
  [defaultCenter addObserver:self selector:sel__updateButtonState name:*MEMORY[0x1E696AA30] object:notificationsCopy];
  [defaultCenter addObserver:self selector:sel__updateButtonState name:*MEMORY[0x1E696AA28] object:notificationsCopy];
}

void __44__PUEditingExtensionUndoAdapter_performRedo__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) undoManager];
  [v1 redo];
}

void __44__PUEditingExtensionUndoAdapter_performUndo__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) undoManager];
  [v1 undo];
}

- (void)setUndoManager:(id)manager
{
  managerCopy = manager;
  v6 = managerCopy;
  undoManager = self->_undoManager;
  if (undoManager != managerCopy)
  {
    v9 = managerCopy;
    if (undoManager)
    {
      [(PUEditingExtensionUndoAdapter *)self _unregisterForUndoManagerNotifications:?];
    }

    objc_storeStrong(&self->_undoManager, manager);
    buttonHost = [(PUEditingExtensionUndoAdapter *)self buttonHost];
    [buttonHost setShowUndoRedo:v9 != 0];

    managerCopy = [(PUEditingExtensionUndoAdapter *)self _updateButtonState];
    v6 = v9;
    if (v9)
    {
      managerCopy = [(PUEditingExtensionUndoAdapter *)self _registerForUndoManagerNotifications:v9];
      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](managerCopy, v6);
}

- (PUEditingExtensionUndoAdapter)initWithButtonHost:(id)host
{
  hostCopy = host;
  v9.receiver = self;
  v9.super_class = PUEditingExtensionUndoAdapter;
  v6 = [(PUEditingExtensionUndoAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buttonHost, host);
  }

  return v7;
}

@end