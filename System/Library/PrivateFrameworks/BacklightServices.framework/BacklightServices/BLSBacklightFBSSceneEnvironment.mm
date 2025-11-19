@interface BLSBacklightFBSSceneEnvironment
- (BLSAlwaysOnFrameSpecifier)frameSpecifier;
- (BLSBacklightFBSSceneEnvironment)initWithFBSScene:(id)a3;
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
- (id)frameSpecifierForSettings:(id)a1;
- (void)invalidateAllTimelinesForReason:(id)a3;
- (void)setAlwaysOnContentIs1hz:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setOptsOutOfProcessAssertions:(BOOL)a3;
- (void)setSupportsAlwaysOn:(BOOL)a3;
- (void)setUpdater:(id)a3;
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
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 identifier];

  return v3;
}

- (FBSScene)_FBSScene
{
  WeakRetained = objc_loadWeakRetained(&self->_fbsScene);

  return WeakRetained;
}

- (BLSAlwaysOnFrameSpecifier)frameSpecifier
{
  v3 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v4 = [v3 settings];
  v5 = [(BLSBacklightFBSSceneEnvironment *)self frameSpecifierForSettings:v4];

  return v5;
}

- (NSDate)presentationDate
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 bls_presentationDate];

  return v4;
}

- (NSString)description
{
  v3 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v4 = [v3 settings];
  v5 = [v3 clientSettings];
  v6 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = [(BLSBacklightFBSSceneEnvironment *)self identifier];
  [v6 appendString:v7 withName:@"identifier"];

  v8 = [v6 appendBool:objc_msgSend(v4 withName:{"bls_isDelegateActive"), @"active"}];
  v9 = [v6 appendBool:-[BLSBacklightFBSSceneEnvironment isAnimatingVisualState](self withName:"isAnimatingVisualState") ifEqualTo:{@"animatingVisualState", 1}];
  v10 = [v6 appendBool:objc_msgSend(v4 withName:{"bls_isLiveUpdating"), @"liveUpdating"}];
  v11 = [v6 appendBool:objc_msgSend(v4 withName:{"bls_hasUnrestrictedFramerateUpdates"), @"unrestrictedFramerate"}];
  if ([v5 bls_supportsAlwaysOn])
  {
    v12 = [v4 bls_isAlwaysOnEnabledForEnvironment];
    v13 = @"aoEnabled";
    v14 = v6;
  }

  else
  {
    v13 = @"aoSupport";
    v14 = v6;
    v12 = 0;
  }

  v15 = [v14 appendBool:v12 withName:v13];
  v16 = [v6 appendBool:objc_msgSend(v5 withName:{"bls_alwaysOnContentIs1hz"), @"aoContentIs1hz"}];
  v17 = [v4 bls_visualState];
  v18 = [v6 appendObject:v17 withName:@"visualState"];

  v19 = [v4 bls_presentationDate];
  v20 = [v19 bls_shortLoggingString];
  v21 = [v6 appendObject:v20 withName:@"presentationDate" skipIfNil:0];

  v22 = [(BLSBacklightFBSSceneEnvironment *)self frameSpecifierForSettings:v4];
  v23 = [v6 appendObject:v22 withName:@"frameSpecifier" skipIfNil:1];

  v24 = [v6 appendBool:-[BLSBacklightFBSSceneEnvironment optsOutOfProcessAssertions](self withName:"optsOutOfProcessAssertions") ifEqualTo:{@"optsOutOfProcessAssertions", 1}];
  v25 = [v6 build];

  return v25;
}

- (BOOL)optsOutOfProcessAssertions
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 clientSettings];
  v4 = [v3 bls_optsOutOfProcessAssertions];

  return v4;
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
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 bls_visualState];

  return v4;
}

- (BLSBacklightFBSSceneEnvironment)initWithFBSScene:(id)a3
{
  v4 = a3;
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
      [(BLSBacklightFBSSceneEnvironment *)v6 initWithFBSScene:v4];
    }

    v8 = [[BLSBacklightSceneEnvironmentUpdater alloc] initWithEnvironment:v6];
    updater = v6->_updater;
    v6->_updater = v8;

    [(BLSBacklightFBSSceneEnvironment *)v6 _setFBSScene:v4];
  }

  return v6;
}

- (void)setDelegate:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_delegate, a3);
  os_unfair_lock_unlock(&self->_lock);
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
    }

    else
    {
      v8 = @"NULL";
    }

    v9 = [(BLSBacklightFBSSceneEnvironment *)self identifier];
    *buf = 134219010;
    v15 = self;
    v16 = 2048;
    v17 = v5;
    v18 = 2114;
    v19 = v8;
    v20 = 1024;
    v21 = v5 != 0;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_21FE25000, v6, OS_LOG_TYPE_DEFAULT, "%p setDelegate:<%p %{public}@> hasDelegate:%{BOOL}u for environment:%{public}@", buf, 0x30u);
    if (v5)
    {
    }
  }

  v10 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__BLSBacklightFBSSceneEnvironment_setDelegate___block_invoke;
  v12[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v13 = v5 != 0;
  [v10 updateClientSettingsWithBlock:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setUpdater:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_updater, a3);
  os_unfair_lock_unlock(&self->_lock);
  v6 = bls_scenes_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BLSBacklightFBSSceneEnvironment *)self setUpdater:v5, v6];
  }
}

- (BOOL)isDelegateActive
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 bls_isDelegateActive];

  return v4;
}

- (BOOL)isLiveUpdating
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 bls_isLiveUpdating];

  return v4;
}

- (BOOL)hasUnrestrictedFramerateUpdates
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 settings];
  v4 = [v3 bls_hasUnrestrictedFramerateUpdates];

  return v4;
}

- (BOOL)supportsAlwaysOn
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 clientSettings];
  v4 = [v3 bls_supportsAlwaysOn];

  return v4;
}

- (void)setSupportsAlwaysOn:(BOOL)a3
{
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironment setSupportsAlwaysOn:?];
  }

  v6 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__BLSBacklightFBSSceneEnvironment_setSupportsAlwaysOn___block_invoke;
  v7[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v8 = a3;
  [v6 updateClientSettingsWithBlock:v7];
}

- (BOOL)alwaysOnContentIs1hz
{
  v2 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v3 = [v2 clientSettings];
  v4 = [v3 bls_alwaysOnContentIs1hz];

  return v4;
}

- (void)setAlwaysOnContentIs1hz:(BOOL)a3
{
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironment setAlwaysOnContentIs1hz:?];
  }

  v6 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BLSBacklightFBSSceneEnvironment_setAlwaysOnContentIs1hz___block_invoke;
  v7[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v8 = a3;
  [v6 updateClientSettingsWithBlock:v7];
}

- (void)setOptsOutOfProcessAssertions:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(BLSBacklightFBSSceneEnvironment *)self identifier];
    *buf = 134218498;
    v12 = self;
    v13 = 1024;
    v14 = v3;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_21FE25000, v5, OS_LOG_TYPE_INFO, "%p setOptsOutOfProcessAssertions:%{BOOL}u for environment:%{public}@", buf, 0x1Cu);
  }

  v7 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__BLSBacklightFBSSceneEnvironment_setOptsOutOfProcessAssertions___block_invoke;
  v9[3] = &__block_descriptor_33_e39_v16__0__FBSMutableSceneClientSettings_8l;
  v10 = v3;
  [v7 updateClientSettingsWithBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAllTimelinesForReason:(id)a3
{
  v4 = a3;
  v5 = bls_scenes_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSBacklightFBSSceneEnvironment invalidateAllTimelinesForReason:?];
  }

  v6 = [[BLSInvalidateFrameSpecifiersAction alloc] initWithReason:v4];
  v7 = [(BLSBacklightFBSSceneEnvironment *)self _FBSScene];
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [v7 sendActions:v8];
}

- (id)frameSpecifierForSettings:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [a2 bls_presentationDate];
    v4 = [v2 alwaysOnSession];
    v2 = [v4 specifierForPresentationDate:v3];
  }

  return v2;
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