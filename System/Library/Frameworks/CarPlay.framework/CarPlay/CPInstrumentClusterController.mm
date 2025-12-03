@interface CPInstrumentClusterController
+ (id)_clusterProvidingInterface;
- (id)_init;
- (id)delegate;
- (void)_connectToListenerEndpoint:(id)endpoint;
- (void)_invalidate;
- (void)_sceneConnect:(id)connect;
- (void)setAttributedInactiveDescriptionVariants:(NSArray *)attributedInactiveDescriptionVariants;
- (void)setCompassSetting:(unint64_t)setting;
- (void)setDelegate:(id)delegate;
- (void)setInactiveDescriptionVariants:(NSArray *)inactiveDescriptionVariants;
- (void)setInstrumentClusterWindow:(id)window;
- (void)setSpeedLimitSetting:(unint64_t)setting;
@end

@implementation CPInstrumentClusterController

+ (id)_clusterProvidingInterface
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284A2A990];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_hostSetAttributedInactiveVariants_ argumentIndex:0 ofReply:0];

  return v2;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CPInstrumentClusterController;
  return [(CPInstrumentClusterController *)&v3 init];
}

- (void)setInstrumentClusterWindow:(id)window
{
  windowCopy = window;
  p_instrumentClusterWindow = &self->_instrumentClusterWindow;
  if (self->_instrumentClusterWindow != windowCopy)
  {
    v10 = windowCopy;
    objc_storeStrong(p_instrumentClusterWindow, window);
    instrumentClusterWindow = self->_instrumentClusterWindow;
    delegate = [(CPInstrumentClusterController *)self delegate];
    v9 = delegate;
    if (instrumentClusterWindow)
    {
      [delegate instrumentClusterControllerDidConnectWindow:v10];
    }

    else
    {
      [delegate instrumentClusterControllerDidDisconnectWindow:v10];
    }

    windowCopy = v10;
  }

  MEMORY[0x2821F96F8](p_instrumentClusterWindow, windowCopy);
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (self->_instrumentClusterWindow)
    {
      [obj instrumentClusterControllerDidConnectWindow:?];
    }
  }
}

- (void)setSpeedLimitSetting:(unint64_t)setting
{
  if (self->_speedLimitSetting != setting)
  {
    self->_speedLimitSetting = setting;
    delegate = [(CPInstrumentClusterController *)self delegate];
    [delegate instrumentClusterController:self didChangeSpeedLimitSetting:setting];
  }
}

- (void)setCompassSetting:(unint64_t)setting
{
  if (self->_compassSetting != setting)
  {
    self->_compassSetting = setting;
    delegate = [(CPInstrumentClusterController *)self delegate];
    [delegate instrumentClusterController:self didChangeCompassSetting:setting];
  }
}

- (void)setInactiveDescriptionVariants:(NSArray *)inactiveDescriptionVariants
{
  v4 = [(NSArray *)inactiveDescriptionVariants copy];
  v5 = self->_inactiveDescriptionVariants;
  self->_inactiveDescriptionVariants = v4;

  instrumentClusterProvider = [(CPInstrumentClusterController *)self instrumentClusterProvider];
  [instrumentClusterProvider hostSetInactiveVariants:self->_inactiveDescriptionVariants];
}

- (void)setAttributedInactiveDescriptionVariants:(NSArray *)attributedInactiveDescriptionVariants
{
  v4 = [(NSArray *)attributedInactiveDescriptionVariants copy];
  v5 = self->_attributedInactiveDescriptionVariants;
  self->_attributedInactiveDescriptionVariants = v4;

  instrumentClusterProvider = [(CPInstrumentClusterController *)self instrumentClusterProvider];
  [instrumentClusterProvider hostSetAttributedInactiveVariants:self->_attributedInactiveDescriptionVariants];
}

- (void)_invalidate
{
  connection = [(CPInstrumentClusterController *)self connection];
  [connection invalidate];

  [(CPInstrumentClusterController *)self setConnection:0];
  [(CPInstrumentClusterController *)self setInstrumentClusterProvider:0];
  instrumentClusterWindow = [(CPInstrumentClusterController *)self instrumentClusterWindow];

  if (instrumentClusterWindow)
  {
    delegate = [(CPInstrumentClusterController *)self delegate];
    instrumentClusterWindow2 = [(CPInstrumentClusterController *)self instrumentClusterWindow];
    [delegate instrumentClusterControllerDidDisconnectWindow:instrumentClusterWindow2];
  }
}

- (void)_sceneConnect:(id)connect
{
  v23 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  _FBSScene = [connectCopy _FBSScene];
  if (CPCurrentProcessHasTemplateEntitlement() && ([_FBSScene settings], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      _sceneIdentifier = [connectCopy _sceneIdentifier];
      v21 = 138543362;
      v22 = _sceneIdentifier;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "Connecting to listener endpoint for scene identifier: %{public}@", &v21, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    settings = [_FBSScene settings];
    templateEndpoint = [settings templateEndpoint];
    [v10 _setEndpoint:templateEndpoint];

    [(CPInstrumentClusterController *)self _connectToListenerEndpoint:v10];
  }

  else
  {
    v10 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CPInstrumentClusterController *)v10 _sceneConnect:v13, v14, v15, v16, v17, v18, v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_connectToListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:endpointCopy];
  _clusterProvidingInterface = [objc_opt_class() _clusterProvidingInterface];
  [v5 setRemoteObjectInterface:_clusterProvidingInterface];
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__CPInstrumentClusterController__connectToListenerEndpoint___block_invoke;
  v11[3] = &unk_278A106E0;
  objc_copyWeak(&v12, &location);
  [v5 setInterruptionHandler:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__CPInstrumentClusterController__connectToListenerEndpoint___block_invoke_56;
  v9[3] = &unk_278A106E0;
  objc_copyWeak(&v10, &location);
  [v5 setInvalidationHandler:v9];
  [v5 resume];
  [(CPInstrumentClusterController *)self setConnection:v5];
  remoteObjectProxy = [v5 remoteObjectProxy];
  [(CPInstrumentClusterController *)self setInstrumentClusterProvider:remoteObjectProxy];

  instrumentClusterProvider = [(CPInstrumentClusterController *)self instrumentClusterProvider];
  [instrumentClusterProvider hostConnectToClient];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __60__CPInstrumentClusterController__connectToListenerEndpoint___block_invoke(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__CPInstrumentClusterController__connectToListenerEndpoint___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __60__CPInstrumentClusterController__connectToListenerEndpoint___block_invoke_56(uint64_t a1)
{
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __60__CPInstrumentClusterController__connectToListenerEndpoint___block_invoke_56_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end