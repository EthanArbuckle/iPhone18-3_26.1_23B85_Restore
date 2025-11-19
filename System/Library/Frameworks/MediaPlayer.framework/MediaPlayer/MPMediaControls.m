@interface MPMediaControls
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MPMediaControls)init;
- (MPMediaControls)initWithConfiguration:(id)a3 shouldObserveRoutingContextUIDChanges:(BOOL)a4;
- (MPMediaControls)initWithRouteSharingPolicy:(unint64_t)a3 routingContextUID:(id)a4;
- (NSXPCListener)listener;
- (id)_dismissalReasonString:(unint64_t)a3;
- (int64_t)_mediaControlsStyleForRouteSharingPolicy:(unint64_t)a3;
- (unint64_t)_MPRouteSharingPolicyToAVRouteSharingPolicy:(unint64_t)a3;
- (void)_audioSessionRoutingContextDidChangeNotification;
- (void)_reset;
- (void)_updateAudioSessionRoutingContext;
- (void)addCustomRowWithType:(id)a3 titleOverride:(id)a4 identifier:(id)a5;
- (void)dealloc;
- (void)didEnterBackground:(id)a3;
- (void)dismiss;
- (void)openConnection;
- (void)present;
- (void)setDismissalReason:(unint64_t)a3;
- (void)setRouteUID:(id)a3;
- (void)setSourceView:(id)a3;
- (void)setTappedCustomRowIdentifier:(id)a3;
- (void)startPrewarming;
- (void)stopPrewarming;
- (void)updateUserInterfaceStyle;
@end

@implementation MPMediaControls

- (id)_dismissalReasonString:(unint64_t)a3
{
  if (a3)
  {
    return @"MPMediaControlsDismissalReasonUserCancelled";
  }

  else
  {
    return @"MPMediaControlsDismissalReasonUnknown";
  }
}

- (unint64_t)_MPRouteSharingPolicyToAVRouteSharingPolicy:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

- (int64_t)_mediaControlsStyleForRouteSharingPolicy:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 infoDictionary];
  v7 = [v6 objectForKeyedSubscript:@"SupportsSharedQueue"];
  v8 = [v7 BOOLValue];

  if ([(MPMediaControls *)self _shouldUpdateStyleForCurrentConfigurationStyle:[(MPMediaControlsConfiguration *)self->_configuration style]])
  {
    v9 = 2;
    if (v8)
    {
      v9 = 3;
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      return v9;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    configuration = self->_configuration;

    return [(MPMediaControlsConfiguration *)configuration style];
  }
}

- (void)_audioSessionRoutingContextDidChangeNotification
{
  v8 = *MEMORY[0x1E69E9840];
  [(MPMediaControls *)self _updateAudioSessionRoutingContext];
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "Updating remote view controller routing context UID : %{public}@", &v6, 0xCu);
  }

  v5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v5 updateMediaControlsWithConfiguration:self->_configuration];
}

- (void)_updateAudioSessionRoutingContext
{
  v4 = [MEMORY[0x1E6958460] sharedInstance];
  v3 = [v4 routingContextUID];
  [(MPMediaControlsConfiguration *)self->_configuration setRoutingContextUID:v3];

  -[MPMediaControlsConfiguration setStyle:](self->_configuration, "setStyle:", -[MPMediaControls _mediaControlsStyleForRouteSharingPolicy:](self, "_mediaControlsStyleForRouteSharingPolicy:", [v4 routeSharingPolicy]));
}

- (void)_reset
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E6958240] object:0];

  dismissHandler = self->_dismissHandler;
  if (dismissHandler)
  {
    dispatch_async(MEMORY[0x1E69E96A0], dismissHandler);
  }

  if (self->_dismissHandlerWithReason)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__MPMediaControls__reset__block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (self->_customRowDidTapHandler && self->_tappedCustomRowIdentifier)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      tappedCustomRowIdentifier = self->_tappedCustomRowIdentifier;
      *buf = 138412290;
      v10 = tappedCustomRowIdentifier;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "MediaControls custom row did tap, rowIdentifier: %@", buf, 0xCu);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __25__MPMediaControls__reset__block_invoke_76;
    v7[3] = &unk_1E7682518;
    v7[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }
}

- (void)updateUserInterfaceStyle
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(UIView *)self->_sourceView traitCollection];
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "userInterfaceStyle")}];
  [(MPMediaControlsConfiguration *)self->_configuration setUserInterfaceStyle:v5];

  v6 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v6 updateMediaControlsWithConfiguration:self->_configuration];
}

- (void)setTappedCustomRowIdentifier:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "MediaControls dismissed with tapped custom row identifier : %@", &v7, 0xCu);
  }

  tappedCustomRowIdentifier = self->_tappedCustomRowIdentifier;
  self->_tappedCustomRowIdentifier = v4;
}

- (void)setDismissalReason:(unint64_t)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MPMediaControls *)self _dismissalReasonString:a3];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "MediaControls dismissed with reason : %@", &v7, 0xCu);
  }

  self->_dismissalReason = a3;
}

- (void)openConnection
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_INFO, "Connection established to remote view controller.", v3, 2u);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_INFO, "Received request to accept new connection.", buf, 2u);
  }

  objc_storeStrong(&self->_connection, a4);
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA4D0];
  [v7 setRemoteObjectInterface:v9];

  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F158C650];
  [v7 setExportedInterface:v10];

  [v7 setExportedObject:self];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MPMediaControls_listener_shouldAcceptNewConnection___block_invoke;
  v12[3] = &unk_1E76825E8;
  objc_copyWeak(&v13, buf);
  [v7 setInvalidationHandler:v12];
  [v7 resume];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return 1;
}

void __54__MPMediaControls_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_INFO, "Connection to remote view controller invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reset];
}

- (NSXPCListener)listener
{
  listener = self->_listener;
  if (!listener)
  {
    v4 = [MEMORY[0x1E696B0D8] anonymousListener];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener activate];
    listener = self->_listener;
  }

  return listener;
}

- (void)didEnterBackground:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.MediaRemoteUI"];

  v6 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "App is MediaRemoteUI Not dismissing remote view controller for entering background.", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "Dismissing remote view controller due to app entering background.", v8, 2u);
    }

    MRMediaRemoteDismissMediaControlsCommand();
  }
}

- (void)dismiss
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Dismissing remote view controller at app's request.", v3, 2u);
  }

  MRMediaRemoteDismissMediaControlsCommand();
}

- (void)present
{
  v3 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_DEFAULT, "Present remote view controller.", buf, 2u);
  }

  [(MPMediaControls *)self startPrewarming];
  MRMediaRemotePresentMediaControlsCommand();
}

uint64_t __26__MPMediaControls_present__block_invoke(uint64_t result, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = result;
    v4 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "Error occurred while attempting to present remote view controller. %@", &v5, 0xCu);
    }

    return [*(v3 + 32) _reset];
  }

  return result;
}

- (void)stopPrewarming
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Stop prewarming remote view controller.", v3, 2u);
  }

  MRMediaRemoteDismissMediaControlsCommand();
}

- (void)startPrewarming
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_shouldObserveRoutingContextUIDChanges)
  {
    [(MPMediaControls *)self _updateAudioSessionRoutingContext];
  }

  [(MPMediaControlsConfiguration *)self->_configuration sourceRect];
  if (CGRectEqualToRect(v32, *MEMORY[0x1E695F058]) || ([(MPMediaControlsConfiguration *)self->_configuration sourceRect], CGRectEqualToRect(v33, *MEMORY[0x1E695F050])))
  {
    v3 = [(UIView *)self->_sourceView superview];
    [(UIView *)self->_sourceView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(UIView *)self->_sourceView window];
    v13 = [v12 screen];
    v14 = [v13 coordinateSpace];
    [v3 convertRect:v14 toCoordinateSpace:{v5, v7, v9, v11}];
    [(MPMediaControlsConfiguration *)self->_configuration setSourceRect:?];
  }

  if (self->_sourceView)
  {
    v15 = [(MPMediaControlsConfiguration *)self->_configuration userInterfaceStyle];

    if (!v15)
    {
      v16 = MEMORY[0x1E696AD98];
      v17 = [(UIView *)self->_sourceView traitCollection];
      v18 = [v16 numberWithInteger:{objc_msgSend(v17, "userInterfaceStyle")}];
      [(MPMediaControlsConfiguration *)self->_configuration setUserInterfaceStyle:v18];
    }
  }

  v19 = MEMORY[0x1E696ACC8];
  v20 = [(MPMediaControls *)self configuration];
  v21 = [v19 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];

  v22 = [(MPMediaControls *)self configuration];
  [v22 style];

  v23 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(MPMediaControls *)self configuration];
    v25 = [v24 description];
    v29 = 138543362;
    v30 = v25;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "Start prewarming remote view controller. Configuration : %{public}@", &v29, 0xCu);
  }

  v26 = [(MPMediaControls *)self listener];
  v27 = [v26 endpoint];
  v28 = [v27 _endpoint];
  MRMediaRemotePrewarmMediaControlsCommand();
}

- (void)setSourceView:(id)a3
{
  v10 = a3;
  if (self->_traitChangeRegistration)
  {
    [(UIView *)self->_sourceView unregisterForTraitChanges:?];
  }

  objc_storeStrong(&self->_sourceView, a3);
  if (self->_sourceView)
  {
    v5 = [(MPMediaControlsConfiguration *)self->_configuration userInterfaceStyle];

    if (!v5)
    {
      sourceView = self->_sourceView;
      v7 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v8 = [(UIView *)sourceView registerForTraitChanges:v7 withTarget:self action:sel_updateUserInterfaceStyle];
      traitChangeRegistration = self->_traitChangeRegistration;
      self->_traitChangeRegistration = v8;
    }
  }
}

- (void)addCustomRowWithType:(id)a3 titleOverride:(id)a4 identifier:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "MediaControls - Adding Custom Row with type:%@, titleOverride: %@, identifier: %@", &v17, 0x20u);
  }

  v12 = [(MPMediaControlsConfiguration *)self->_configuration customRows];

  if (!v12)
  {
    configuration = self->_configuration;
    v14 = [MEMORY[0x1E695DF70] array];
    [(MPMediaControlsConfiguration *)configuration setCustomRows:v14];
  }

  v15 = [MPMediaControlsCustomRow rowWithType:v8 titleOverride:v9 identifier:v10];
  v16 = [(MPMediaControlsConfiguration *)self->_configuration customRows];
  [v16 addObject:v15];
}

- (void)setRouteUID:(id)a3
{
  objc_storeStrong(&self->_routeUID, a3);
  v5 = a3;
  [(MPMediaControlsConfiguration *)self->_configuration setRouteUID:v5];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = MPMediaControls;
  [(MPMediaControls *)&v3 dealloc];
}

- (MPMediaControls)initWithConfiguration:(id)a3 shouldObserveRoutingContextUIDChanges:(BOOL)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v21.receiver = self;
  v21.super_class = MPMediaControls;
  v7 = [(MPMediaControls *)&v21 init];
  if (v7)
  {
    v8 = [v6 copy];
    configuration = v7->_configuration;
    v7->_configuration = v8;

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = [v11 bundleIdentifier];
    if ([v12 isEqualToString:@"com.apple.springboard"])
    {
    }

    else
    {
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 bundleIdentifier];
      v15 = [v14 isEqualToString:@"com.apple.MediaRemoteUI"];

      if ((v15 & 1) == 0)
      {
        v7->_shouldObserveRoutingContextUIDChanges = a4;
      }
    }

    if (v7->_shouldObserveRoutingContextUIDChanges)
    {
      v16 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [(MPMediaControls *)v7 configuration];
        v18 = [v17 presentingAppBundleID];
        *buf = 138543362;
        v23 = v18;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_INFO, "Started observing routing context UID changes for app bundle: %{public}@", buf, 0xCu);
      }

      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 addObserver:v7 selector:sel__audioSessionRoutingContextDidChangeNotification name:*MEMORY[0x1E6958240] object:0];
    }
  }

  return v7;
}

- (MPMediaControls)initWithRouteSharingPolicy:(unint64_t)a3 routingContextUID:(id)a4
{
  v6 = a4;
  v7 = [(MPMediaControls *)self _MPRouteSharingPolicyToAVRouteSharingPolicy:a3];
  v8 = objc_alloc_init(MPMediaControlsConfiguration);
  v9 = [MEMORY[0x1E696AAE8] mainBundle];
  v10 = [v9 bundleIdentifier];
  [(MPMediaControlsConfiguration *)v8 setPresentingAppBundleID:v10];

  [(MPMediaControlsConfiguration *)v8 setRoutingContextUID:v6];
  [(MPMediaControlsConfiguration *)v8 setStyle:[(MPMediaControls *)self _mediaControlsStyleForRouteSharingPolicy:v7]];
  [(MPMediaControlsConfiguration *)v8 setSurface:7];
  v11 = [MEMORY[0x1E6958460] sharedInstance];
  -[MPMediaControlsConfiguration setAudioSessionID:](v8, "setAudioSessionID:", [v11 opaqueSessionID]);
  v12 = [(MPMediaControls *)self initWithConfiguration:v8 shouldObserveRoutingContextUIDChanges:0];

  return v12;
}

- (MPMediaControls)init
{
  v3 = objc_alloc_init(MPMediaControlsConfiguration);
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  [(MPMediaControlsConfiguration *)v3 setPresentingAppBundleID:v5];

  v6 = [MEMORY[0x1E696AE30] processInfo];
  -[MPMediaControlsConfiguration setPresentingAppProcessIdentifier:](v3, "setPresentingAppProcessIdentifier:", [v6 processIdentifier]);

  [(MPMediaControlsConfiguration *)v3 setSurface:7];
  v7 = [MEMORY[0x1E6958460] sharedInstance];
  v8 = [v7 routingContextUID];
  [(MPMediaControlsConfiguration *)v3 setRoutingContextUID:v8];

  -[MPMediaControlsConfiguration setStyle:](v3, "setStyle:", -[MPMediaControls _mediaControlsStyleForRouteSharingPolicy:](self, "_mediaControlsStyleForRouteSharingPolicy:", [v7 routeSharingPolicy]));
  -[MPMediaControlsConfiguration setAudioSessionID:](v3, "setAudioSessionID:", [v7 opaqueSessionID]);
  v9 = [(MPMediaControls *)self initWithConfiguration:v3 shouldObserveRoutingContextUIDChanges:1];

  return v9;
}

@end