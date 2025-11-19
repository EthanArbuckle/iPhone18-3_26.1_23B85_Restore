@interface PKTextEffectsWindowObserver
- (id)keyWindow;
- (void)_handleKeyWindowDidChangeNotification:(id)a3;
- (void)_handleSceneDidActivateNotification:(id)a3;
- (void)_installColorAppearanceTraitObserver:(void *)a1;
- (void)_updateCachedKeyWindowBounds;
- (void)dealloc;
- (void)initWithTextEffectsWindow:(void *)a1;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation PKTextEffectsWindowObserver

- (void)initWithTextEffectsWindow:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = PKTextEffectsWindowObserver;
    v4 = objc_msgSendSuper2(&v15, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 7, v3);
      v5 = [(PKTextEffectsWindowObserver *)a1 keyWindow];
      [v5 bounds];
      a1[1] = v6;
      a1[2] = v7;
      a1[3] = v8;
      a1[4] = v9;
      v10 = [v5 traitCollection];
      a1[5] = [v10 userInterfaceStyle];

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 addObserver:a1 selector:sel__handleTextEffectsWindowDidRotateNotification_ name:*MEMORY[0x1E69DE5A0] object:v3];
      [v11 addObserver:a1 selector:sel__handleKeyWindowDidChangeNotification_ name:*MEMORY[0x1E69DE7B0] object:0];
      v12 = *MEMORY[0x1E69DE338];
      v13 = [v5 windowScene];
      [v11 addObserver:a1 selector:sel__handleSceneDidActivateNotification_ name:v12 object:v13];

      [(PKTextEffectsWindowObserver *)a1 _installColorAppearanceTraitObserver:v3];
      [(PKTextEffectsWindowObserver *)a1 _installColorAppearanceTraitObserver:v5];
    }
  }

  return a1;
}

- (id)keyWindow
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v2 = [WeakRetained windowScene];
    v3 = [v2 _visibleWindows];

    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if ([v7 isKeyWindow])
          {
            v4 = v7;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_installColorAppearanceTraitObserver:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    objc_initWeak(&location, a1);
    v4 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PKTextEffectsWindowObserver__installColorAppearanceTraitObserver___block_invoke;
    v6[3] = &unk_1E82D7FB0;
    objc_copyWeak(&v7, &location);
    v5 = [v3 registerForTraitChanges:v4 withHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_updateCachedKeyWindowBounds
{
  if (a1)
  {
    v15 = [(PKTextEffectsWindowObserver *)a1 keyWindow];
    [v15 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v17.origin.x = v2;
    v17.origin.y = v4;
    v17.size.width = v6;
    v17.size.height = v8;
    if (!CGRectEqualToRect(*(a1 + 8), v17))
    {
      *(a1 + 8) = v3;
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      *(a1 + 32) = v9;
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      if (WeakRetained)
      {
        v11 = WeakRetained;
        v12 = objc_loadWeakRetained((a1 + 48));
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = objc_loadWeakRetained((a1 + 48));
          [v14 textEffectsWindowDidChangeKeyWindowBounds:a1];
        }
      }
    }
  }
}

- (void)_handleKeyWindowDidChangeNotification:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = v4;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "key window did change: %{private}@", &v7, 0xCu);
  }

  v6 = [(PKTextEffectsWindowObserver *)self keyWindow];
  [(PKTextEffectsWindowObserver *)self _installColorAppearanceTraitObserver:v6];
}

- (void)_handleSceneDidActivateNotification:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = v4;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "scene did activate: %{private}@", &v6, 0xCu);
  }

  [(PKTextEffectsWindowObserver *)self _updateCachedKeyWindowBounds];
}

void __68__PKTextEffectsWindowObserver__installColorAppearanceTraitObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v2 = [(PKTextEffectsWindowObserver *)WeakRetained keyWindow];
    v3 = [v2 traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (*(v10 + 5) != v4)
    {
      *(v10 + 5) = v4;
      v5 = objc_loadWeakRetained(v10 + 6);
      if (v5)
      {
        v6 = v5;
        v7 = objc_loadWeakRetained(v10 + 6);
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          v9 = objc_loadWeakRetained(v10 + 6);
          [v9 textEffectsWindowDidChangeKeyWindowUserInterfaceStyle:v10];
        }
      }
    }

    WeakRetained = v10;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (kKVOContext != a6)
  {
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textEffectsWindow);
  if (WeakRetained != v11 || ![v10 isEqualToString:@"frame"] || (v14 = objc_loadWeakRetained(&self->_delegate)) == 0)
  {

    goto LABEL_8;
  }

  v15 = v14;
  v16 = objc_loadWeakRetained(&self->_delegate);
  v17 = objc_opt_respondsToSelector();

  if ((v17 & 1) == 0)
  {
LABEL_8:
    v19.receiver = self;
    v19.super_class = PKTextEffectsWindowObserver;
    [(PKTextEffectsWindowObserver *)&v19 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_9;
  }

  v18 = objc_loadWeakRetained(&self->_delegate);
  [v18 textEffectsWindowDidChangeWindowBounds:self];

LABEL_9:
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_textEffectsWindow);
  [WeakRetained removeObserver:self forKeyPath:@"frame" context:kKVOContext];

  v4.receiver = self;
  v4.super_class = PKTextEffectsWindowObserver;
  [(PKTextEffectsWindowObserver *)&v4 dealloc];
}

@end