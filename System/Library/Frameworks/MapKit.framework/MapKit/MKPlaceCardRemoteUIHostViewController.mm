@interface MKPlaceCardRemoteUIHostViewController
- (MKPlaceCardContentSizeDelegate)placeCardContentSizeDelegate;
- (MKPlaceCardRemoteUIHostViewController)initWithSceneIdentifier:(id)a3 remoteObjectInterface:(id)a4 placeholderView:(id)a5;
- (int64_t)_mapkit_userInterfaceStyle;
- (void)_resolvePreferredContentSizeIfNeeded;
- (void)_startSession;
- (void)_updatePreferredWidthFromLayout;
- (void)dealloc;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation MKPlaceCardRemoteUIHostViewController

- (MKPlaceCardContentSizeDelegate)placeCardContentSizeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardContentSizeDelegate);

  return WeakRetained;
}

- (int64_t)_mapkit_userInterfaceStyle
{
  v2 = [(MKPlaceCardRemoteUIHostViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 != 1);
  }
}

- (void)traitEnvironment:(id)a3 didChangeTraitCollection:(id)a4
{
  v13 = a3;
  v6 = [a4 userInterfaceStyle];
  v7 = [(MKPlaceCardRemoteUIHostViewController *)self traitCollection];
  v8 = [v7 userInterfaceStyle];

  if (v6 != v8)
  {
    v9 = [v13 traitCollection];
    v10 = [v9 userInterfaceStyle];

    if (v10 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2 * (v10 != 1);
    }

    v12 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v12 updateInterfaceStyle:v11];
  }
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v5 = MKGetMKRemoteUILog_23452();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_1A2EA0000, v5, OS_LOG_TYPE_DEBUG, "host connection invalidate: VC will deactivate", v7, 2u);
  }

  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (void)hostViewControllerDidActivate:(id)a3
{
  v3 = MKGetMKRemoteUILog_23452();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "host VC did activate", v4, 2u);
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKPlaceCardRemoteUIHostViewController;
  [(MKPlaceCardRemoteUIHostViewController *)&v3 viewDidLayoutSubviews];
  [(MKPlaceCardRemoteUIHostViewController *)self _updatePreferredWidthFromLayout];
}

- (void)_updatePreferredWidthFromLayout
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = MKGetMKRemoteUILog_23452();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(MKPlaceCardRemoteUIHostViewController *)self view];
    [v4 bounds];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", v5, v6];
    *buf = 138412290;
    v18 = *&v7;
    _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "host view did layout for size: %@", buf, 0xCu);
  }

  if (self->_preferredWidth <= 0.0)
  {
    v16 = [(MKPlaceCardRemoteUIHostViewController *)self view];
    [v16 bounds];
    self->_preferredWidth = CGRectGetWidth(v22);

    [(MKPlaceCardRemoteUIHostViewController *)self _resolvePreferredContentSizeIfNeeded];
  }

  else
  {
    v8 = MKGetMKRemoteUILog_23452();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      preferredWidth = self->_preferredWidth;
      v10 = [(MKPlaceCardRemoteUIHostViewController *)self view];
      [v10 bounds];
      v12 = vabdd_f64(preferredWidth, v11);

      if (v12 < 0.00000011920929)
      {
        return;
      }

      v8 = MKGetMKRemoteUILog_23452();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v13 = self->_preferredWidth;
        v14 = [(MKPlaceCardRemoteUIHostViewController *)self view];
        [v14 bounds];
        *buf = 134218240;
        v18 = v13;
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_1A2EA0000, v8, OS_LOG_TYPE_INFO, "ignoring width change: %f -> %f", buf, 0x16u);
      }
    }
  }
}

- (void)_resolvePreferredContentSizeIfNeeded
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_preferredWidth > 0.0 && self->_connection)
  {
    v3 = MKGetMKRemoteUILog_23452();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      preferredWidth = self->_preferredWidth;
      *buf = 134217984;
      v10 = preferredWidth;
      _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_DEBUG, "host connection resolve preferred content size %f", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v6 = self->_preferredWidth;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __77__MKPlaceCardRemoteUIHostViewController__resolvePreferredContentSizeIfNeeded__block_invoke;
    v7[3] = &unk_1E76C9938;
    objc_copyWeak(&v8, buf);
    [v5 fetchPreferredContentSizeForWidth:v7 completionHandler:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

void __77__MKPlaceCardRemoteUIHostViewController__resolvePreferredContentSizeIfNeeded__block_invoke(uint64_t a1, double a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = MKGetMKRemoteUILog_23452();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", *&a2, *&a3];
    *buf = 138412290;
    v11 = v7;
    _os_log_impl(&dword_1A2EA0000, v6, OS_LOG_TYPE_DEBUG, "host connection content size completion %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__MKPlaceCardRemoteUIHostViewController__resolvePreferredContentSizeIfNeeded__block_invoke_12;
  block[3] = &unk_1E76C9910;
  objc_copyWeak(v9, (a1 + 32));
  v9[1] = *&a2;
  v9[2] = *&a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v9);
}

void __77__MKPlaceCardRemoteUIHostViewController__resolvePreferredContentSizeIfNeeded__block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained placeCardContentSizeDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v3 placeCardContentSizeDelegate];
      [v6 placeCardPreferredContentSizeDidChange:{*(a1 + 40), *(a1 + 48)}];
    }

    v7 = MKGetMKRemoteUILog_23452();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_DEBUG, "host set session", v8, 2u);
    }

    [v3 setSession:v3[134]];
  }
}

- (void)_startSession
{
  v3 = [MEMORY[0x1E6966CB0] mkRemoteUIIdentity];
  if (v3)
  {
    objc_initWeak(location, self);
    v4 = [objc_alloc(MEMORY[0x1E6966CC8]) initWithExtensionIdentity:v3];
    v5 = [objc_alloc(MEMORY[0x1E6966D68]) initWithSceneIdentifier:self->_sceneIdentifier];
    [v5 setInvalidationHandler:&__block_literal_global_23479];
    v6 = MEMORY[0x1E6966D60];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__MKPlaceCardRemoteUIHostViewController__startSession__block_invoke_10;
    v8[3] = &unk_1E76C98E8;
    objc_copyWeak(&v9, location);
    [v6 sessionWithProcessConfiguration:v4 configuration:v5 completion:v8];
    objc_destroyWeak(&v9);

    objc_destroyWeak(location);
  }

  else
  {
    v7 = MKGetMKRemoteUILog_23452();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "host connection identity crisis", location, 2u);
    }
  }
}

void __54__MKPlaceCardRemoteUIHostViewController__startSession__block_invoke_10(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 134, a2);
    v13 = 0;
    v7 = [v4 _makeXPCConnectionWithError:&v13];
    v8 = v13;
    v9 = v8;
    if (!v7 || v8)
    {
      v12 = MKGetMKRemoteUILog_23452();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v9;
        _os_log_impl(&dword_1A2EA0000, v12, OS_LOG_TYPE_ERROR, "host connection error: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      [v7 setRemoteObjectInterface:v6[132]];
      objc_storeStrong(v6 + 135, v7);
      v10 = MKGetMKRemoteUILog_23452();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "host connection resume", buf, 2u);
      }

      [v7 resume];
      v11 = MKGetMKRemoteUILog_23452();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2EA0000, v11, OS_LOG_TYPE_INFO, "host connection _configureConnection", buf, 2u);
      }

      [v6 _configureConnection:v7];
      [v6 _resolvePreferredContentSizeIfNeeded];
    }
  }
}

void __54__MKPlaceCardRemoteUIHostViewController__startSession__block_invoke()
{
  v0 = MKGetMKRemoteUILog_23452();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A2EA0000, v0, OS_LOG_TYPE_INFO, "host connection session invalidated", v1, 2u);
  }
}

- (void)dealloc
{
  [(_EXHostViewController *)self setSession:0];
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = MKPlaceCardRemoteUIHostViewController;
  [(_EXHostViewController *)&v3 dealloc];
}

- (MKPlaceCardRemoteUIHostViewController)initWithSceneIdentifier:(id)a3 remoteObjectInterface:(id)a4 placeholderView:(id)a5
{
  v18[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = MKPlaceCardRemoteUIHostViewController;
  v12 = [(_EXHostViewController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sceneIdentifier, a3);
    objc_storeStrong(&v13->_remoteObjectInterface, a4);
    [(_EXHostViewController *)v13 setDelegate:v13];
    [(_EXHostViewController *)v13 setPlaceholderView:v11];
    v18[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v15 = [(MKPlaceCardRemoteUIHostViewController *)v13 registerForTraitChanges:v14 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    [(MKPlaceCardRemoteUIHostViewController *)v13 _startSession];
  }

  return v13;
}

@end