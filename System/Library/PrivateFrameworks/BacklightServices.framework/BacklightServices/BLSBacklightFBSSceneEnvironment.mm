@interface BLSBacklightFBSSceneEnvironment
- (BLSAlwaysOnFrameSpecifier)frameSpecifier;
- (BLSBacklightFBSSceneEnvironment)initWithFBSScene:(id)scene;
- (BLSBacklightSceneEnvironmentDelegate)delegate;
- (BLSBacklightSceneEnvironmentUpdating)updater;
- (BLSBacklightSceneVisualState)visualState;
- (BOOL)alwaysOnContentIs1hz;
- (BOOL)hasUnrestrictedFramerateUpdates;
- (BOOL)isDelegateActive;
- (BOOL)isLiveUpdating;
- (BOOL)optsOutOfProcessAssertions;
- (BOOL)supportsAlwaysOn;
- (FBSScene)_FBSScene;
- (NSDate)presentationDate;
- (NSString)description;
- (NSString)identifier;
- (id)frameSpecifierForSettings:(id)settings;
- (void)invalidateAllTimelinesForReason:(id)reason;
- (void)setAlwaysOnContentIs1hz:(BOOL)is1hz;
- (void)setDelegate:(id)delegate;
- (void)setOptsOutOfProcessAssertions:(BOOL)assertions;
- (void)setSupportsAlwaysOn:(BOOL)on;
- (void)setUpdater:(id)updater;
@end

@implementation BLSBacklightFBSSceneEnvironment

- (BLSBacklightSceneEnvironmentDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_delegate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)identifier
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  identifier = [_FBSScene identifier];

  return identifier;
}

- (FBSScene)_FBSScene
{
  WeakRetained = objc_loadWeakRetained(&self->_fbsScene);

  return WeakRetained;
}

- (BLSAlwaysOnFrameSpecifier)frameSpecifier
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  v5 = [(BLSBacklightFBSSceneEnvironment *)self frameSpecifierForSettings:settings];

  return v5;
}

- (NSDate)presentationDate
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  bls_presentationDate = [settings bls_presentationDate];

  return bls_presentationDate;
}

- (NSString)description
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  clientSettings = [_FBSScene clientSettings];
  v6 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(BLSBacklightFBSSceneEnvironment *)self identifier];
  [v6 appendString:identifier withName:@"identifier"];

  v8 = [v6 appendBool:objc_msgSend(settings withName:{"bls_isDelegateActive"), @"active"}];
  v9 = [v6 appendBool:-[BLSBacklightFBSSceneEnvironment isAnimatingVisualState](self withName:"isAnimatingVisualState") ifEqualTo:{@"animatingVisualState", 1}];
  v10 = [v6 appendBool:objc_msgSend(settings withName:{"bls_isLiveUpdating"), @"liveUpdating"}];
  v11 = [v6 appendBool:objc_msgSend(settings withName:{"bls_hasUnrestrictedFramerateUpdates"), @"unrestrictedFramerate"}];
  if ([clientSettings bls_supportsAlwaysOn])
  {
    bls_isAlwaysOnEnabledForEnvironment = [settings bls_isAlwaysOnEnabledForEnvironment];
    v13 = @"aoEnabled";
    v14 = v6;
  }

  else
  {
    v13 = @"aoSupport";
    v14 = v6;
    bls_isAlwaysOnEnabledForEnvironment = 0;
  }

  v15 = [v14 appendBool:bls_isAlwaysOnEnabledForEnvironment withName:v13];
  v16 = [v6 appendBool:objc_msgSend(clientSettings withName:{"bls_alwaysOnContentIs1hz"), @"aoContentIs1hz"}];
  bls_visualState = [settings bls_visualState];
  v18 = [v6 appendObject:bls_visualState withName:@"visualState"];

  bls_presentationDate = [settings bls_presentationDate];
  bls_shortLoggingString = [bls_presentationDate bls_shortLoggingString];
  v21 = [v6 appendObject:bls_shortLoggingString withName:@"presentationDate" skipIfNil:0];

  v22 = [(BLSBacklightFBSSceneEnvironment *)self frameSpecifierForSettings:settings];
  v23 = [v6 appendObject:v22 withName:@"frameSpecifier" skipIfNil:1];

  v24 = [v6 appendBool:-[BLSBacklightFBSSceneEnvironment optsOutOfProcessAssertions](self withName:"optsOutOfProcessAssertions") ifEqualTo:{@"optsOutOfProcessAssertions", 1}];
  build = [v6 build];

  return build;
}

- (BOOL)optsOutOfProcessAssertions
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  bls_optsOutOfProcessAssertions = [clientSettings bls_optsOutOfProcessAssertions];

  return bls_optsOutOfProcessAssertions;
}

- (BLSBacklightSceneEnvironmentUpdating)updater
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_updater;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BLSBacklightSceneVisualState)visualState
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  bls_visualState = [settings bls_visualState];

  return bls_visualState;
}

- (BLSBacklightFBSSceneEnvironment)initWithFBSScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = BLSBacklightFBSSceneEnvironment;
  v5 = [(BLSBacklightFBSSceneEnvironment *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = bls_scenes_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(BLSBacklightFBSSceneEnvironment *)v6 initWithFBSScene:sceneCopy];
    }

    v8 = [[BLSBacklightSceneEnvironmentUpdater alloc] initWithEnvironment:v6];
    updater = v6->_updater;
    v6->_updater = v8;

    [(BLSBacklightFBSSceneEnvironment *)v6 _setFBSScene:sceneCopy];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v24 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_delegate, delegate);
  os_unfair_lock_unlock(&self->_lock);
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (delegateCopy)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
    }

    else
    {
      v8 = @"NULL";
    }

    identifier = [(BLSBacklightFBSSceneEnvironment *)self identifier];
    *buf = 134219010;
    selfCopy = self;
    v16 = 2048;
    v17 = delegateCopy;
    v18 = 2114;
    v19 = v8;
    v20 = 1024;
    v21 = delegateCopy != 0;
    v22 = 2114;
    v23 = identifier;
    _os_log_impl(&dword_21FE25000, v6, OS_LOG_TYPE_DEFAULT, "%p setDelegate:<%p %{public}@> hasDelegate:%{BOOL}u for environment:%{public}@", buf, 0x30u);
    if (delegateCopy)
    {
    }
  }

  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__BLSBacklightFBSSceneEnvironment_setDelegate___block_invoke;
  v12[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v13 = delegateCopy != 0;
  [_FBSScene updateClientSettingsWithBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setUpdater:(id)updater
{
  updaterCopy = updater;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_updater, updater);
  os_unfair_lock_unlock(&self->_lock);
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BLSBacklightFBSSceneEnvironment *)self setUpdater:updaterCopy, v6];
  }
}

- (BOOL)isDelegateActive
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  bls_isDelegateActive = [settings bls_isDelegateActive];

  return bls_isDelegateActive;
}

- (BOOL)isLiveUpdating
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  bls_isLiveUpdating = [settings bls_isLiveUpdating];

  return bls_isLiveUpdating;
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  settings = [_FBSScene settings];
  bls_hasUnrestrictedFramerateUpdates = [settings bls_hasUnrestrictedFramerateUpdates];

  return bls_hasUnrestrictedFramerateUpdates;
}

- (BOOL)supportsAlwaysOn
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  bls_supportsAlwaysOn = [clientSettings bls_supportsAlwaysOn];

  return bls_supportsAlwaysOn;
}

- (void)setSupportsAlwaysOn:(BOOL)on
{
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironment setSupportsAlwaysOn:?];
  }

  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__BLSBacklightFBSSceneEnvironment_setSupportsAlwaysOn___block_invoke;
  v7[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  onCopy = on;
  [_FBSScene updateClientSettingsWithBlock:v7];
}

- (BOOL)alwaysOnContentIs1hz
{
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  clientSettings = [_FBSScene clientSettings];
  bls_alwaysOnContentIs1hz = [clientSettings bls_alwaysOnContentIs1hz];

  return bls_alwaysOnContentIs1hz;
}

- (void)setAlwaysOnContentIs1hz:(BOOL)is1hz
{
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironment setAlwaysOnContentIs1hz:?];
  }

  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BLSBacklightFBSSceneEnvironment_setAlwaysOnContentIs1hz___block_invoke;
  v7[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  is1hzCopy = is1hz;
  [_FBSScene updateClientSettingsWithBlock:v7];
}

- (void)setOptsOutOfProcessAssertions:(BOOL)assertions
{
  assertionsCopy = assertions;
  v17 = *MEMORY[0x277D85DE8];
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    identifier = [(BLSBacklightFBSSceneEnvironment *)self identifier];
    *buf = 134218498;
    selfCopy = self;
    v13 = 1024;
    v14 = assertionsCopy;
    v15 = 2114;
    v16 = identifier;
    _os_log_impl(&dword_21FE25000, v5, OS_LOG_TYPE_INFO, "%p setOptsOutOfProcessAssertions:%{BOOL}u for environment:%{public}@", buf, 0x1Cu);
  }

  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__BLSBacklightFBSSceneEnvironment_setOptsOutOfProcessAssertions___block_invoke;
  v9[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v10 = assertionsCopy;
  [_FBSScene updateClientSettingsWithBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAllTimelinesForReason:(id)reason
{
  reasonCopy = reason;
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironment invalidateAllTimelinesForReason:?];
  }

  v6 = [[BLSInvalidateFrameSpecifiersAction alloc] initWithReason:reasonCopy];
  _FBSScene = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [_FBSScene sendActions:v8];
}

- (id)frameSpecifierForSettings:(id)settings
{
  settingsCopy = settings;
  if (settings)
  {
    bls_presentationDate = [a2 bls_presentationDate];
    alwaysOnSession = [settingsCopy alwaysOnSession];
    settingsCopy = [alwaysOnSession specifierForPresentationDate:bls_presentationDate];
  }

  return settingsCopy;
}

- (void)initWithFBSScene:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [a2 debugDescription];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpdater:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_debug_impl(&dword_21FE25000, log, OS_LOG_TYPE_DEBUG, "%p setUpdater: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setSupportsAlwaysOn:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setAlwaysOnContentIs1hz:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAllTimelinesForReason:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

@end