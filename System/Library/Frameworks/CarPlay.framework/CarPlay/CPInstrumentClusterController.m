@interface CPInstrumentClusterController
+ (id)_clusterProvidingInterface;
- (id)_init;
- (id)delegate;
- (void)_connectToListenerEndpoint:(id)a3;
- (void)_invalidate;
- (void)_sceneConnect:(id)a3;
- (void)setAttributedInactiveDescriptionVariants:(NSArray *)attributedInactiveDescriptionVariants;
- (void)setCompassSetting:(unint64_t)a3;
- (void)setDelegate:(id)delegate;
- (void)setInactiveDescriptionVariants:(NSArray *)inactiveDescriptionVariants;
- (void)setInstrumentClusterWindow:(id)a3;
- (void)setSpeedLimitSetting:(unint64_t)a3;
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

- (void)setInstrumentClusterWindow:(id)a3
{
  v5 = a3;
  p_instrumentClusterWindow = &self->_instrumentClusterWindow;
  if (self->_instrumentClusterWindow != v5)
  {
    v10 = v5;
    objc_storeStrong(p_instrumentClusterWindow, a3);
    instrumentClusterWindow = self->_instrumentClusterWindow;
    v8 = [(CPInstrumentClusterController *)self delegate];
    v9 = v8;
    if (instrumentClusterWindow)
    {
      [v8 instrumentClusterControllerDidConnectWindow:v10];
    }

    else
    {
      [v8 instrumentClusterControllerDidDisconnectWindow:v10];
    }

    v5 = v10;
  }

  MEMORY[0x2821F96F8](p_instrumentClusterWindow, v5);
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

- (void)setSpeedLimitSetting:(unint64_t)a3
{
  if (self->_speedLimitSetting != a3)
  {
    self->_speedLimitSetting = a3;
    v6 = [(CPInstrumentClusterController *)self delegate];
    [v6 instrumentClusterController:self didChangeSpeedLimitSetting:a3];
  }
}

- (void)setCompassSetting:(unint64_t)a3
{
  if (self->_compassSetting != a3)
  {
    self->_compassSetting = a3;
    v6 = [(CPInstrumentClusterController *)self delegate];
    [v6 instrumentClusterController:self didChangeCompassSetting:a3];
  }
}

- (void)setInactiveDescriptionVariants:(NSArray *)inactiveDescriptionVariants
{
  v4 = [(NSArray *)inactiveDescriptionVariants copy];
  v5 = self->_inactiveDescriptionVariants;
  self->_inactiveDescriptionVariants = v4;

  v6 = [(CPInstrumentClusterController *)self instrumentClusterProvider];
  [v6 hostSetInactiveVariants:self->_inactiveDescriptionVariants];
}

- (void)setAttributedInactiveDescriptionVariants:(NSArray *)attributedInactiveDescriptionVariants
{
  v4 = [(NSArray *)attributedInactiveDescriptionVariants copy];
  v5 = self->_attributedInactiveDescriptionVariants;
  self->_attributedInactiveDescriptionVariants = v4;

  v6 = [(CPInstrumentClusterController *)self instrumentClusterProvider];
  [v6 hostSetAttributedInactiveVariants:self->_attributedInactiveDescriptionVariants];
}

- (void)_invalidate
{
  v3 = [(CPInstrumentClusterController *)self connection];
  [v3 invalidate];

  [(CPInstrumentClusterController *)self setConnection:0];
  [(CPInstrumentClusterController *)self setInstrumentClusterProvider:0];
  v4 = [(CPInstrumentClusterController *)self instrumentClusterWindow];

  if (v4)
  {
    v6 = [(CPInstrumentClusterController *)self delegate];
    v5 = [(CPInstrumentClusterController *)self instrumentClusterWindow];
    [v6 instrumentClusterControllerDidDisconnectWindow:v5];
  }
}

- (void)_sceneConnect:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _FBSScene];
  if (CPCurrentProcessHasTemplateEntitlement() && ([v5 settings], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 _sceneIdentifier];
      v21 = 138543362;
      v22 = v9;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "Connecting to listener endpoint for scene identifier: %{public}@", &v21, 0xCu);
    }

    v10 = objc_alloc_init(MEMORY[0x277CCAEA0]);
    v11 = [v5 settings];
    v12 = [v11 templateEndpoint];
    [v10 _setEndpoint:v12];

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

- (void)_connectToListenerEndpoint:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v4];
  v6 = [objc_opt_class() _clusterProvidingInterface];
  [v5 setRemoteObjectInterface:v6];
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
  v7 = [v5 remoteObjectProxy];
  [(CPInstrumentClusterController *)self setInstrumentClusterProvider:v7];

  v8 = [(CPInstrumentClusterController *)self instrumentClusterProvider];
  [v8 hostConnectToClient];

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