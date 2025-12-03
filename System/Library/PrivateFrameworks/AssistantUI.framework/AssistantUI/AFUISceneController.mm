@interface AFUISceneController
- (AFUISceneControllerDelegate)delegate;
- (NSString)description;
- (id)_currentConfiguration;
- (void)dealloc;
- (void)invalidateSceneForReason:(unint64_t)reason explanation:(id)explanation;
- (void)requestSceneWithConfiguration:(id)configuration completionBlock:(id)block;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)updateSceneViewWithConfiguration:(id)configuration;
@end

@implementation AFUISceneController

- (AFUISceneControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(FBScene *)self->_scene identifier];
  v5 = [v3 stringWithFormat:@"AFUISceneController(%p): <Scene (sceneID: %@, sceneState: %zd) (%@)>", self, identifier, -[FBScene contentState](self->_scene, "contentState"), self->_scene];

  return v5;
}

- (void)dealloc
{
  if ([(FBScene *)self->_scene isActive])
  {
    [(AFUISceneController *)self invalidateSceneForReason:2 explanation:@"#sceneHosting Invalidating scene because [AFUISceneController dealloc]"];
  }

  v3.receiver = self;
  v3.super_class = AFUISceneController;
  [(AFUISceneController *)&v3 dealloc];
}

- (void)requestSceneWithConfiguration:(id)configuration completionBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  blockCopy = block;
  if (!blockCopy)
  {
    [AFUISceneController requestSceneWithConfiguration:a2 completionBlock:self];
  }

  p_scene = &self->_scene;
  scene = self->_scene;
  if (scene)
  {
    settings = [(FBScene *)scene settings];
    displayIdentity = [settings displayIdentity];
    sceneParameters = [configurationCopy sceneParameters];
    settings2 = [sceneParameters settings];
    displayIdentity2 = [settings2 displayIdentity];
    v16 = [displayIdentity isEqual:displayIdentity2];

    if ((v16 & 1) == 0)
    {
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      settings3 = [(FBScene *)*p_scene settings];
      displayIdentity3 = [settings3 displayIdentity];
      sceneParameters2 = [configurationCopy sceneParameters];
      settings4 = [sceneParameters2 settings];
      displayIdentity4 = [settings4 displayIdentity];
      v23 = [v17 initWithFormat:@"#sceneHosting Invalidating scene because displayIdentity changed from %@ to %@ for _scene:%@", displayIdentity3, displayIdentity4, 0];

      v24 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v56 = "[AFUISceneController requestSceneWithConfiguration:completionBlock:]";
        v57 = 2112;
        v58 = v23;
        _os_log_impl(&dword_241432000, v24, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
      }

      [(AFUISceneController *)self invalidateSceneForReason:3 explanation:v23];
    }
  }

  [(AFUISceneController *)self _recordSceneCreateBegin];
  v25 = self->_scene;
  if (v25)
  {
    v26 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v27 = *p_scene;
      v28 = v26;
      identifier = [(FBScene *)v27 identifier];
      *buf = 136315650;
      v56 = "[AFUISceneController requestSceneWithConfiguration:completionBlock:]";
      v57 = 2112;
      v58 = identifier;
      v59 = 2112;
      v60 = configurationCopy;
      _os_log_impl(&dword_241432000, v28, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting Starting scene update for %@ with configuration %@", buf, 0x20u);
    }
  }

  else
  {
    sceneDefinition = [configurationCopy sceneDefinition];
    mEMORY[0x277D0AAD8] = [MEMORY[0x277D0AAD8] sharedInstance];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke;
    v52[3] = &unk_278CD6200;
    v32 = sceneDefinition;
    v53 = v32;
    v33 = configurationCopy;
    v54 = v33;
    v34 = [mEMORY[0x277D0AAD8] createScene:v52];

    [v34 addObserver:self];
    objc_storeStrong(&self->_scene, v34);
    v35 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      identifier2 = [v34 identifier];
      *buf = 136315650;
      v56 = "[AFUISceneController requestSceneWithConfiguration:completionBlock:]";
      v57 = 2112;
      v58 = identifier2;
      v59 = 2112;
      v60 = v33;
      _os_log_impl(&dword_241432000, v36, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting Starting scene request for %@ with configuration %@", buf, 0x20u);
    }
  }

  v38 = objc_alloc_init(MEMORY[0x277D0AAA8]);
  [v38 setLaunchIntent:{objc_msgSend(configurationCopy, "launchIntent")}];
  objc_initWeak(&location, self);
  v39 = self->_scene;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_78;
  v48[3] = &unk_278CD6228;
  v40 = configurationCopy;
  v49 = v40;
  v41 = v38;
  v50 = v41;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_2_80;
  v44[3] = &unk_278CD6250;
  objc_copyWeak(&v46, &location);
  v47 = v25 == 0;
  v42 = blockCopy;
  v45 = v42;
  [(FBScene *)v39 performUpdate:v48 withCompletion:v44];
  v43 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v56 = "[AFUISceneController requestSceneWithConfiguration:completionBlock:]";
    _os_log_impl(&dword_241432000, v43, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting started FBScene performUpdate", buf, 0xCu);
  }

  objc_destroyWeak(&v46);
  objc_destroyWeak(&location);
}

void __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identity];
  [v4 setIdentity:v5];

  v6 = [*(a1 + 32) specification];
  [v4 setSpecification:v6];

  v7 = [*(a1 + 32) clientIdentity];
  [v4 setClientIdentity:v7];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_2;
  v8[3] = &unk_278CD61D8;
  v9 = *(a1 + 40);
  [v4 configureParameters:v8];
}

void __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_3;
  v3[3] = &unk_278CD61B0;
  v4 = *(a1 + 32);
  [a2 updateSettingsWithBlock:v3];
}

void __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 addPropagatedProperty:sel_cornerRadiusConfiguration];
  [*(a1 + 32) configureMutableSceneSettings:v3];
}

void __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_78(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) configureMutableSceneSettings:a2];
  v5 = v6;
  if (v6)
  {
    [v6 setExecutionContext:*(a1 + 40)];
    v5 = v6;
  }
}

void __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_2_80(uint64_t a1, char a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = *MEMORY[0x277CEF098];
    v8 = *MEMORY[0x277CEF098];
    if (a2)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = @"update";
        if (*(a1 + 48))
        {
          v9 = @"creation";
        }

        v12 = 136315394;
        v13 = "[AFUISceneController requestSceneWithConfiguration:completionBlock:]_block_invoke";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting scene %@ succeeded", &v12, 0x16u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __69__AFUISceneController_requestSceneWithConfiguration_completionBlock___block_invoke_2_80_cold_1(v7, v5);
      }

      v10 = *(WeakRetained + 1);
      *(WeakRetained + 1) = 0;
    }

    v11 = objc_loadWeakRetained(WeakRetained + 4);
    if (*(a1 + 48) == 1 && *(WeakRetained + 1) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 sceneController:WeakRetained didCreateSiriScene:*(WeakRetained + 1)];
    }

    [WeakRetained _recordSceneCreateEnd];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)updateSceneViewWithConfiguration:(id)configuration
{
  v29 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    scene = self->_scene;
    *buf = 136315650;
    v24 = "[AFUISceneController updateSceneViewWithConfiguration:]";
    v25 = 2112;
    v26 = scene;
    v27 = 2112;
    v28 = configurationCopy;
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting updating scene (%@) with configuration %@", buf, 0x20u);
  }

  v8 = self->_scene;
  if (v8)
  {
    if ([(FBScene *)v8 isActive])
    {
      settings = [(FBScene *)self->_scene settings];
      v10 = [AFUISceneConfiguration shouldFenceConfigurationChange:configurationCopy fromCurrentSceneSettings:settings];

      v11 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = NSStringFromBOOL();
        *buf = 136315394;
        v24 = "[AFUISceneController updateSceneViewWithConfiguration:]";
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_241432000, v12, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting fencing scene update: %@", buf, 0x16u);
      }

      v14 = self->_scene;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__AFUISceneController_updateSceneViewWithConfiguration___block_invoke;
      v20[3] = &unk_278CD6278;
      v21 = configurationCopy;
      v22 = v10;
      [(FBScene *)v14 performUpdate:v20];
      v15 = v21;
    }

    else
    {
      v17 = self->_scene;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __56__AFUISceneController_updateSceneViewWithConfiguration___block_invoke_2;
      v18[3] = &unk_278CD61B0;
      v19 = configurationCopy;
      [(FBScene *)v17 updateSettings:v18];
      v15 = v19;
    }
  }

  else
  {
    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      [AFUISceneController updateSceneViewWithConfiguration:v16];
    }
  }
}

void __56__AFUISceneController_updateSceneViewWithConfiguration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [*(a1 + 32) configureMutableSceneSettings:a2];
  v5 = v8;
  if (v8 && *(a1 + 40) == 1)
  {
    v6 = [MEMORY[0x277D75940] _synchronizedDrawingFence];
    v7 = [MEMORY[0x277D75D18] _currentAnimationSettings];
    [v8 setAnimationFence:v6];
    [v8 setAnimationSettings:v7];

    v5 = v8;
  }
}

- (void)invalidateSceneForReason:(unint64_t)reason explanation:(id)explanation
{
  v22 = *MEMORY[0x277D85DE8];
  explanationCopy = explanation;
  if ([(FBScene *)self->_scene isActive])
  {
    self->_invalidationReason = reason;
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [AFUISceneConfiguration stringForInvalidationReason:reason];
      v16 = 136315650;
      v17 = "[AFUISceneController invalidateSceneForReason:explanation:]";
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = explanationCopy;
      _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #xpcSiriApp #sceneHosting %@: %@", &v16, 0x20u);
    }

    delegate = [(AFUISceneController *)self delegate];
    if (delegate)
    {
      v11 = delegate;
      delegate2 = [(AFUISceneController *)self delegate];
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        delegate3 = [(AFUISceneController *)self delegate];
        [delegate3 sceneController:self willInvalidateScene:self->_scene forReason:self->_invalidationReason];
      }
    }

    [(FBScene *)self->_scene invalidate:0];
    [(BKSProcessAssertion *)self->_backgroundRunningAssertion invalidate];
    backgroundRunningAssertion = self->_backgroundRunningAssertion;
    self->_backgroundRunningAssertion = 0;
  }
}

- (id)_currentConfiguration
{
  delegate = [(AFUISceneController *)self delegate];
  sceneConfigurationForDelegate = [delegate sceneConfigurationForDelegate];

  return sceneConfigurationForDelegate;
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  if (self->_scene == changeCopy)
  {
    v6 = changeCopy;
    delegate = [(AFUISceneController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate sceneController:self sceneContentStateDidChange:v6];
    }

    changeCopy = v6;
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  v16 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  contextCopy = context;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[AFUISceneController sceneDidInvalidate:withContext:]";
    v14 = 2112;
    v15 = invalidateCopy;
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting scene: %@", &v12, 0x16u);
  }

  scene = self->_scene;
  if (scene == invalidateCopy)
  {
    [(FBScene *)scene removeObserver:self];
    v10 = self->_scene;
    self->_scene = 0;

    delegate = [(AFUISceneController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate sceneController:self sceneWasInvalidated:invalidateCopy forReason:self->_invalidationReason];
    }

    self->_invalidationReason = 0;
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  if (self->_scene == sceneCopy)
  {
    v9 = sceneCopy;
    uiClientSettings = [(FBScene *)sceneCopy uiClientSettings];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uiClientSettings2 = [(FBScene *)v9 uiClientSettings];

      sceneCopy = v9;
      if (!uiClientSettings2)
      {
        goto LABEL_10;
      }

      delegate = [(AFUISceneController *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate sceneController:self sceneDidUpdateClientSettings:uiClientSettings2];
      }
    }

    else
    {
      uiClientSettings2 = uiClientSettings;
    }

    sceneCopy = v9;
  }

LABEL_10:
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  connectCopy = connect;
  if (self->_scene == scene)
  {
    v13 = connectCopy;
    settings = [scene settings];
    isForeground = [settings isForeground];

    connectCopy = v13;
    if ((isForeground & 1) == 0)
    {
      v9 = objc_alloc(MEMORY[0x277CEEEA8]);
      processHandle = [v13 processHandle];
      v11 = [v9 initWithPID:objc_msgSend(processHandle flags:"pid") reason:13 name:7 withHandler:{@"siri prewarming", &__block_literal_global_4}];
      backgroundRunningAssertion = self->_backgroundRunningAssertion;
      self->_backgroundRunningAssertion = v11;

      connectCopy = v13;
    }
  }
}

void __46__AFUISceneController_scene_clientDidConnect___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[AFUISceneController scene:clientDidConnect:]_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting prewarming assertion acquired %{BOOL}i", &v4, 0x12u);
  }
}

@end