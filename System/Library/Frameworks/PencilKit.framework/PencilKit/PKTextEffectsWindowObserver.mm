@interface PKTextEffectsWindowObserver
- (id)keyWindow;
- (void)_handleKeyWindowDidChangeNotification:(id)notification;
- (void)_handleSceneDidActivateNotification:(id)notification;
- (void)_installColorAppearanceTraitObserver:(void *)observer;
- (void)_updateCachedKeyWindowBounds;
- (void)dealloc;
- (void)initWithTextEffectsWindow:(void *)window;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation PKTextEffectsWindowObserver

- (void)initWithTextEffectsWindow:(void *)window
{
  v3 = a2;
  if (window)
  {
    v15.receiver = window;
    v15.super_class = PKTextEffectsWindowObserver;
    v4 = objc_msgSendSuper2(&v15, sel_init);
    window = v4;
    if (v4)
    {
      objc_storeWeak(v4 + 7, v3);
      keyWindow = [(PKTextEffectsWindowObserver *)window keyWindow];
      [keyWindow bounds];
      window[1] = v6;
      window[2] = v7;
      window[3] = v8;
      window[4] = v9;
      traitCollection = [keyWindow traitCollection];
      window[5] = [traitCollection userInterfaceStyle];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:window selector:sel__handleTextEffectsWindowDidRotateNotification_ name:*MEMORY[0x1E69DE5A0] object:v3];
      [defaultCenter addObserver:window selector:sel__handleKeyWindowDidChangeNotification_ name:*MEMORY[0x1E69DE7B0] object:0];
      v12 = *MEMORY[0x1E69DE338];
      windowScene = [keyWindow windowScene];
      [defaultCenter addObserver:window selector:sel__handleSceneDidActivateNotification_ name:v12 object:windowScene];

      [(PKTextEffectsWindowObserver *)window _installColorAppearanceTraitObserver:v3];
      [(PKTextEffectsWindowObserver *)window _installColorAppearanceTraitObserver:keyWindow];
    }
  }

  return window;
}

- (id)keyWindow
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    WeakRetained = objc_loadWeakRetained((self + 56));
    windowScene = [WeakRetained windowScene];
    _visibleWindows = [windowScene _visibleWindows];

    v4 = [_visibleWindows countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(_visibleWindows);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if ([v7 isKeyWindow])
          {
            v4 = v7;
            goto LABEL_12;
          }
        }

        v4 = [_visibleWindows countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)_installColorAppearanceTraitObserver:(void *)observer
{
  v3 = a2;
  if (observer)
  {
    objc_initWeak(&location, observer);
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__PKTextEffectsWindowObserver__installColorAppearanceTraitObserver___block_invoke;
    v6[3] = &unk_1E82D7FB0;
    objc_copyWeak(&v7, &location);
    v5 = [v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_updateCachedKeyWindowBounds
{
  if (self)
  {
    keyWindow = [(PKTextEffectsWindowObserver *)self keyWindow];
    [keyWindow bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v17.origin.x = v2;
    v17.origin.y = v4;
    v17.size.width = v6;
    v17.size.height = v8;
    if (!CGRectEqualToRect(*(self + 8), v17))
    {
      *(self + 8) = v3;
      *(self + 16) = v5;
      *(self + 24) = v7;
      *(self + 32) = v9;
      WeakRetained = objc_loadWeakRetained((self + 48));
      if (WeakRetained)
      {
        v11 = WeakRetained;
        v12 = objc_loadWeakRetained((self + 48));
        v13 = objc_opt_respondsToSelector();

        if (v13)
        {
          v14 = objc_loadWeakRetained((self + 48));
          [v14 textEffectsWindowDidChangeKeyWindowBounds:self];
        }
      }
    }
  }
}

- (void)_handleKeyWindowDidChangeNotification:(id)notification
{
  v9 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138477827;
    v8 = notificationCopy;
    _os_log_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_DEFAULT, "key window did change: %{private}@", &v7, 0xCu);
  }

  keyWindow = [(PKTextEffectsWindowObserver *)self keyWindow];
  [(PKTextEffectsWindowObserver *)self _installColorAppearanceTraitObserver:keyWindow];
}

- (void)_handleSceneDidActivateNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = os_log_create("com.apple.pencilkit", "PencilSqueeze");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138477827;
    v7 = notificationCopy;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (kKVOContext != context)
  {
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_textEffectsWindow);
  if (WeakRetained != objectCopy || ![pathCopy isEqualToString:@"frame"] || (v14 = objc_loadWeakRetained(&self->_delegate)) == 0)
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
    [(PKTextEffectsWindowObserver *)&v19 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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