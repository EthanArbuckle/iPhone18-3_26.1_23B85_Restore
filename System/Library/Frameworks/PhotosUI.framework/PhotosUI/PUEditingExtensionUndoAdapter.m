@interface PUEditingExtensionUndoAdapter
- (PUEditingExtensionUndoAdapter)initWithButtonHost:(id)a3;
- (void)_registerForUndoManagerNotifications:(id)a3;
- (void)_unregisterForUndoManagerNotifications:(id)a3;
- (void)_updateButtonState;
- (void)setUndoManager:(id)a3;
@end

@implementation PUEditingExtensionUndoAdapter

- (void)_updateButtonState
{
  v4 = [(PUEditingExtensionUndoAdapter *)self buttonHost];
  v3 = [(PUEditingExtensionUndoAdapter *)self undoManager];
  [v4 setUndoEnabled:objc_msgSend(v3 redoEnabled:{"canUndo"), objc_msgSend(v3, "canRedo")}];
}

- (void)_unregisterForUndoManagerNotifications:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E696AA18] object:v5];
  [v6 removeObserver:self name:*MEMORY[0x1E696AA30] object:v5];
  [v6 removeObserver:self name:*MEMORY[0x1E696AA28] object:v5];
}

- (void)_registerForUndoManagerNotifications:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel__updateButtonState name:*MEMORY[0x1E696AA18] object:v5];
  [v6 addObserver:self selector:sel__updateButtonState name:*MEMORY[0x1E696AA30] object:v5];
  [v6 addObserver:self selector:sel__updateButtonState name:*MEMORY[0x1E696AA28] object:v5];
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

- (void)setUndoManager:(id)a3
{
  v5 = a3;
  v6 = v5;
  undoManager = self->_undoManager;
  if (undoManager != v5)
  {
    v9 = v5;
    if (undoManager)
    {
      [(PUEditingExtensionUndoAdapter *)self _unregisterForUndoManagerNotifications:?];
    }

    objc_storeStrong(&self->_undoManager, a3);
    v8 = [(PUEditingExtensionUndoAdapter *)self buttonHost];
    [v8 setShowUndoRedo:v9 != 0];

    v5 = [(PUEditingExtensionUndoAdapter *)self _updateButtonState];
    v6 = v9;
    if (v9)
    {
      v5 = [(PUEditingExtensionUndoAdapter *)self _registerForUndoManagerNotifications:v9];
      v6 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (PUEditingExtensionUndoAdapter)initWithButtonHost:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUEditingExtensionUndoAdapter;
  v6 = [(PUEditingExtensionUndoAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_buttonHost, a3);
  }

  return v7;
}

@end