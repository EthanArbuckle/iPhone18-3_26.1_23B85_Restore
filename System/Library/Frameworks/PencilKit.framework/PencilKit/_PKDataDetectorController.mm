@interface _PKDataDetectorController
- (_PKDataDetectorController)init;
- (_PKDataDetectorControllerDelegate)delegate;
- (id)dataDetectorItemAllItems:(id)a3;
- (id)hitTest:(CGPoint)a3;
- (void)_foundDataDetectorItems:(uint64_t)a1;
- (void)setDelegate:(id)a3;
@end

@implementation _PKDataDetectorController

- (_PKDataDetectorController)init
{
  v6.receiver = self;
  v6.super_class = _PKDataDetectorController;
  v2 = [(_PKDataDetectorController *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA8] set];
    currentDataDetectorItems = v2->_currentDataDetectorItems;
    v2->_currentDataDetectorItems = v3;
  }

  return v2;
}

- (id)hitTest:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_currentDataDetectorItems;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 _hitTest:{x, y, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  v5 = objc_opt_respondsToSelector();

  *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | v5 & 1;
}

- (void)_foundDataDetectorItems:(uint64_t)a1
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = MEMORY[0x1E695E0F0];
    }

    v4 = [MEMORY[0x1E695DFA8] setWithArray:v3];
    v5 = [*(a1 + 8) mutableCopy];
    [v5 minusSet:v4];
    v6 = [v4 mutableCopy];
    [v6 minusSet:*(a1 + 8)];
    if ([v5 count])
    {
      v7 = os_log_create("com.apple.pencilkit", "DataDetectorController");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v32 = [v5 count];
        _os_log_impl(&dword_1C7CCA000, v7, OS_LOG_TYPE_INFO, "removed items: %lu", buf, 0xCu);
      }
    }

    if ([v6 count])
    {
      v8 = os_log_create("com.apple.pencilkit", "DataDetectorController");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 count];
        *buf = 134217984;
        v32 = v9;
        _os_log_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_INFO, "added items: %lu", buf, 0xCu);
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v25 + 1) + 8 * i) setDelegate:0];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v21 + 1) + 8 * j) setDelegate:{a1, v21}];
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    [*(a1 + 8) minusSet:v10];
    [*(a1 + 8) unionSet:v15];
    if ([v15 count] || objc_msgSend(v10, "count")) && (*(a1 + 16))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 24));
      [WeakRetained _dataDetectorControllerItemsDidChange:a1];
    }
  }
}

- (id)dataDetectorItemAllItems:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableSet *)self->_currentDataDetectorItems count])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableSet count](self->_currentDataDetectorItems, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_currentDataDetectorItems;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) coreResult];
          if (v11)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
  }

  else
  {
    v13 = [v4 coreResult];
    if (v13)
    {
      v19 = v13;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (_PKDataDetectorControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end