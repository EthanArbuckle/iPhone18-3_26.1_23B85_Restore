@interface MPMediaControls
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MPMediaControls)init;
- (MPMediaControls)initWithConfiguration:(id)configuration shouldObserveRoutingContextUIDChanges:(BOOL)changes;
- (MPMediaControls)initWithRouteSharingPolicy:(unint64_t)policy routingContextUID:(id)d;
- (NSXPCListener)listener;
- (id)_dismissalReasonString:(unint64_t)string;
- (int64_t)_mediaControlsStyleForRouteSharingPolicy:(unint64_t)policy;
- (unint64_t)_MPRouteSharingPolicyToAVRouteSharingPolicy:(unint64_t)policy;
- (void)_audioSessionRoutingContextDidChangeNotification;
- (void)_reset;
- (void)_updateAudioSessionRoutingContext;
- (void)addCustomRowWithType:(id)type titleOverride:(id)override identifier:(id)identifier;
- (void)dealloc;
- (void)didEnterBackground:(id)background;
- (void)dismiss;
- (void)openConnection;
- (void)present;
- (void)setDismissalReason:(unint64_t)reason;
- (void)setRouteUID:(id)d;
- (void)setSourceView:(id)view;
- (void)setTappedCustomRowIdentifier:(id)identifier;
- (void)startPrewarming;
- (void)stopPrewarming;
- (void)updateUserInterfaceStyle;
@end

@implementation MPMediaControls

- (id)_dismissalReasonString:(unint64_t)string
{
  if (string)
  {
    return @"MPMediaControlsDismissalReasonUserCancelled";
  }

  else
  {
    return @"MPMediaControlsDismissalReasonUnknown";
  }
}

- (unint64_t)_MPRouteSharingPolicyToAVRouteSharingPolicy:(unint64_t)policy
{
  if (policy == 2)
  {
    return 2;
  }

  else
  {
    return policy == 1;
  }
}

- (int64_t)_mediaControlsStyleForRouteSharingPolicy:(unint64_t)policy
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v7 = [infoDictionary objectForKeyedSubscript:@"SupportsSharedQueue"];
  bOOLValue = [v7 BOOLValue];

  if ([(MPMediaControls *)self _shouldUpdateStyleForCurrentConfigurationStyle:[(MPMediaControlsConfiguration *)self->_configuration style]])
  {
    v9 = 2;
    if (bOOLValue)
    {
      v9 = 3;
    }

    if ((policy & 0xFFFFFFFFFFFFFFFDLL) == 1)
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
    routingContextUID = [(MPMediaControlsConfiguration *)self->_configuration routingContextUID];
    v6 = 138543362;
    v7 = routingContextUID;
    _os_log_impl(&dword_1A238D000, v3, OS_LOG_TYPE_INFO, "Updating remote view controller routing context UID : %{public}@", &v6, 0xCu);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy updateMediaControlsWithConfiguration:self->_configuration];
}

- (void)_updateAudioSessionRoutingContext
{
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  routingContextUID = [mEMORY[0x1E6958460] routingContextUID];
  [(MPMediaControlsConfiguration *)self->_configuration setRoutingContextUID:routingContextUID];

  -[MPMediaControlsConfiguration setStyle:](self->_configuration, "setStyle:", -[MPMediaControls _mediaControlsStyleForRouteSharingPolicy:](self, "_mediaControlsStyleForRouteSharingPolicy:", [mEMORY[0x1E6958460] routeSharingPolicy]));
}

- (void)_reset
{
  v11 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6958240] object:0];

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
  traitCollection = [(UIView *)self->_sourceView traitCollection];
  v5 = [v3 numberWithInteger:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
  [(MPMediaControlsConfiguration *)self->_configuration setUserInterfaceStyle:v5];

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy updateMediaControlsWithConfiguration:self->_configuration];
}

- (void)setTappedCustomRowIdentifier:(id)identifier
{
  v9 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "MediaControls dismissed with tapped custom row identifier : %@", &v7, 0xCu);
  }

  tappedCustomRowIdentifier = self->_tappedCustomRowIdentifier;
  self->_tappedCustomRowIdentifier = identifierCopy;
}

- (void)setDismissalReason:(unint64_t)reason
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MPMediaControls *)self _dismissalReasonString:reason];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_INFO, "MediaControls dismissed with reason : %@", &v7, 0xCu);
  }

  self->_dismissalReason = reason;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_INFO, "Received request to accept new connection.", buf, 2u);
  }

  objc_storeStrong(&self->_connection, connection);
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15AA4D0];
  [connectionCopy setRemoteObjectInterface:v9];

  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F158C650];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:self];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MPMediaControls_listener_shouldAcceptNewConnection___block_invoke;
  v12[3] = &unk_1E76825E8;
  objc_copyWeak(&v13, buf);
  [connectionCopy setInvalidationHandler:v12];
  [connectionCopy resume];
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
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    v5 = self->_listener;
    self->_listener = anonymousListener;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener activate];
    listener = self->_listener;
  }

  return listener;
}

- (void)didEnterBackground:(id)background
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v5 = [bundleIdentifier isEqualToString:@"com.apple.MediaRemoteUI"];

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
    superview = [(UIView *)self->_sourceView superview];
    [(UIView *)self->_sourceView frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    window = [(UIView *)self->_sourceView window];
    screen = [window screen];
    coordinateSpace = [screen coordinateSpace];
    [superview convertRect:coordinateSpace toCoordinateSpace:{v5, v7, v9, v11}];
    [(MPMediaControlsConfiguration *)self->_configuration setSourceRect:?];
  }

  if (self->_sourceView)
  {
    userInterfaceStyle = [(MPMediaControlsConfiguration *)self->_configuration userInterfaceStyle];

    if (!userInterfaceStyle)
    {
      v16 = MEMORY[0x1E696AD98];
      traitCollection = [(UIView *)self->_sourceView traitCollection];
      v18 = [v16 numberWithInteger:{objc_msgSend(traitCollection, "userInterfaceStyle")}];
      [(MPMediaControlsConfiguration *)self->_configuration setUserInterfaceStyle:v18];
    }
  }

  v19 = MEMORY[0x1E696ACC8];
  configuration = [(MPMediaControls *)self configuration];
  v21 = [v19 archivedDataWithRootObject:configuration requiringSecureCoding:1 error:0];

  configuration2 = [(MPMediaControls *)self configuration];
  [configuration2 style];

  v23 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    configuration3 = [(MPMediaControls *)self configuration];
    v25 = [configuration3 description];
    v29 = 138543362;
    v30 = v25;
    _os_log_impl(&dword_1A238D000, v23, OS_LOG_TYPE_DEFAULT, "Start prewarming remote view controller. Configuration : %{public}@", &v29, 0xCu);
  }

  listener = [(MPMediaControls *)self listener];
  endpoint = [listener endpoint];
  _endpoint = [endpoint _endpoint];
  MRMediaRemotePrewarmMediaControlsCommand();
}

- (void)setSourceView:(id)view
{
  viewCopy = view;
  if (self->_traitChangeRegistration)
  {
    [(UIView *)self->_sourceView unregisterForTraitChanges:?];
  }

  objc_storeStrong(&self->_sourceView, view);
  if (self->_sourceView)
  {
    userInterfaceStyle = [(MPMediaControlsConfiguration *)self->_configuration userInterfaceStyle];

    if (!userInterfaceStyle)
    {
      sourceView = self->_sourceView;
      systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
      v8 = [(UIView *)sourceView registerForTraitChanges:systemTraitsAffectingColorAppearance withTarget:self action:sel_updateUserInterfaceStyle];
      traitChangeRegistration = self->_traitChangeRegistration;
      self->_traitChangeRegistration = v8;
    }
  }
}

- (void)addCustomRowWithType:(id)type titleOverride:(id)override identifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  overrideCopy = override;
  identifierCopy = identifier;
  v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412802;
    v18 = typeCopy;
    v19 = 2112;
    v20 = overrideCopy;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_DEFAULT, "MediaControls - Adding Custom Row with type:%@, titleOverride: %@, identifier: %@", &v17, 0x20u);
  }

  customRows = [(MPMediaControlsConfiguration *)self->_configuration customRows];

  if (!customRows)
  {
    configuration = self->_configuration;
    array = [MEMORY[0x1E695DF70] array];
    [(MPMediaControlsConfiguration *)configuration setCustomRows:array];
  }

  v15 = [MPMediaControlsCustomRow rowWithType:typeCopy titleOverride:overrideCopy identifier:identifierCopy];
  customRows2 = [(MPMediaControlsConfiguration *)self->_configuration customRows];
  [customRows2 addObject:v15];
}

- (void)setRouteUID:(id)d
{
  objc_storeStrong(&self->_routeUID, d);
  dCopy = d;
  [(MPMediaControlsConfiguration *)self->_configuration setRouteUID:dCopy];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = MPMediaControls;
  [(MPMediaControls *)&v3 dealloc];
}

- (MPMediaControls)initWithConfiguration:(id)configuration shouldObserveRoutingContextUIDChanges:(BOOL)changes
{
  v24 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = MPMediaControls;
  v7 = [(MPMediaControls *)&v21 init];
  if (v7)
  {
    v8 = [configurationCopy copy];
    configuration = v7->_configuration;
    v7->_configuration = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
    {
    }

    else
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      v15 = [bundleIdentifier2 isEqualToString:@"com.apple.MediaRemoteUI"];

      if ((v15 & 1) == 0)
      {
        v7->_shouldObserveRoutingContextUIDChanges = changes;
      }
    }

    if (v7->_shouldObserveRoutingContextUIDChanges)
    {
      v16 = os_log_create("com.apple.amp.mediaplayer", "RemoteControl");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        configuration = [(MPMediaControls *)v7 configuration];
        presentingAppBundleID = [configuration presentingAppBundleID];
        *buf = 138543362;
        v23 = presentingAppBundleID;
        _os_log_impl(&dword_1A238D000, v16, OS_LOG_TYPE_INFO, "Started observing routing context UID changes for app bundle: %{public}@", buf, 0xCu);
      }

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:v7 selector:sel__audioSessionRoutingContextDidChangeNotification name:*MEMORY[0x1E6958240] object:0];
    }
  }

  return v7;
}

- (MPMediaControls)initWithRouteSharingPolicy:(unint64_t)policy routingContextUID:(id)d
{
  dCopy = d;
  v7 = [(MPMediaControls *)self _MPRouteSharingPolicyToAVRouteSharingPolicy:policy];
  v8 = objc_alloc_init(MPMediaControlsConfiguration);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(MPMediaControlsConfiguration *)v8 setPresentingAppBundleID:bundleIdentifier];

  [(MPMediaControlsConfiguration *)v8 setRoutingContextUID:dCopy];
  [(MPMediaControlsConfiguration *)v8 setStyle:[(MPMediaControls *)self _mediaControlsStyleForRouteSharingPolicy:v7]];
  [(MPMediaControlsConfiguration *)v8 setSurface:7];
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  -[MPMediaControlsConfiguration setAudioSessionID:](v8, "setAudioSessionID:", [mEMORY[0x1E6958460] opaqueSessionID]);
  v12 = [(MPMediaControls *)self initWithConfiguration:v8 shouldObserveRoutingContextUIDChanges:0];

  return v12;
}

- (MPMediaControls)init
{
  v3 = objc_alloc_init(MPMediaControlsConfiguration);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(MPMediaControlsConfiguration *)v3 setPresentingAppBundleID:bundleIdentifier];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  -[MPMediaControlsConfiguration setPresentingAppProcessIdentifier:](v3, "setPresentingAppProcessIdentifier:", [processInfo processIdentifier]);

  [(MPMediaControlsConfiguration *)v3 setSurface:7];
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  routingContextUID = [mEMORY[0x1E6958460] routingContextUID];
  [(MPMediaControlsConfiguration *)v3 setRoutingContextUID:routingContextUID];

  -[MPMediaControlsConfiguration setStyle:](v3, "setStyle:", -[MPMediaControls _mediaControlsStyleForRouteSharingPolicy:](self, "_mediaControlsStyleForRouteSharingPolicy:", [mEMORY[0x1E6958460] routeSharingPolicy]));
  -[MPMediaControlsConfiguration setAudioSessionID:](v3, "setAudioSessionID:", [mEMORY[0x1E6958460] opaqueSessionID]);
  v9 = [(MPMediaControls *)self initWithConfiguration:v3 shouldObserveRoutingContextUIDChanges:1];

  return v9;
}

@end