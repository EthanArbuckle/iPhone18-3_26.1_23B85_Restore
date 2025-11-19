@interface AMUIDefaultSelectedPosterCoordinator
- (AMUIPosterSelectionCoordinatingDelegate)delegate;
- (id)_currentChargerIdentifier;
- (id)lastSelectedPosterConfigurationUUIDForProviderBundleIdentifier:(id)a3;
- (void)setAmbientDefaults:(id)a3;
- (void)updateLastSelectedPosterConfiguration:(id)a3 fromUserAction:(BOOL)a4;
@end

@implementation AMUIDefaultSelectedPosterCoordinator

- (void)setAmbientDefaults:(id)a3
{
  v5 = a3;
  p_ambientDefaults = &self->_ambientDefaults;
  if (self->_ambientDefaults != v5)
  {
    v9 = v5;
    objc_storeStrong(p_ambientDefaults, a3);
    v7 = [[AMUILastSelectedPosterStore alloc] initWithAmbientDefaults:self->_ambientDefaults];
    lastSelectedPosterStore = self->_lastSelectedPosterStore;
    self->_lastSelectedPosterStore = v7;

    v5 = v9;
  }

  MEMORY[0x2821F96F8](p_ambientDefaults, v5);
}

- (void)updateLastSelectedPosterConfiguration:(id)a3 fromUserAction:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  lastSelectedPosterConfiguration = self->_lastSelectedPosterConfiguration;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_lastSelectedPosterConfiguration, a3);
    if (v4)
    {
      v9 = AMUILogSwitcher();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&dword_23F38B000, v9, OS_LOG_TYPE_DEFAULT, "Selected Poster Coordinator updating selection to configuration %@", buf, 0xCu);
      }

      v10 = objc_alloc_init(MEMORY[0x277D3EA00]);
      v11 = *MEMORY[0x277D3EA30];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __93__AMUIDefaultSelectedPosterCoordinator_updateLastSelectedPosterConfiguration_fromUserAction___block_invoke;
      v18[3] = &unk_278C76450;
      v19 = v7;
      [v10 updateSelectedForRoleIdentifier:v11 newlySelectedConfiguration:v19 completion:v18];
    }

    v12 = [(AMUIDefaultSelectedPosterCoordinator *)self delegate];
    [v12 posterSelectionCoordinator:self didUpdateLastSelectedPosterConfiguration:self->_lastSelectedPosterConfiguration];
  }

  if (v4)
  {
    lastSelectedPosterStore = self->_lastSelectedPosterStore;
    v14 = [v7 serverUUID];
    v15 = [(AMUIDefaultSelectedPosterCoordinator *)self _currentChargerIdentifier];
    v16 = [v7 providerBundleIdentifier];
    [(AMUILastSelectedPosterStore *)lastSelectedPosterStore setLastSelectedConfigurationUUID:v14 forChargerIdentifier:v15 providerBundleIdentifier:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __93__AMUIDefaultSelectedPosterCoordinator_updateLastSelectedPosterConfiguration_fromUserAction___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = AMUILogSwitcher();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__AMUIDefaultSelectedPosterCoordinator_updateLastSelectedPosterConfiguration_fromUserAction___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_INFO, "Selected Poster Coordinator completed updating selection to configuration %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)lastSelectedPosterConfigurationUUIDForProviderBundleIdentifier:(id)a3
{
  lastSelectedPosterStore = self->_lastSelectedPosterStore;
  v5 = a3;
  v6 = [(AMUIDefaultSelectedPosterCoordinator *)self _currentChargerIdentifier];
  v7 = [(AMUILastSelectedPosterStore *)lastSelectedPosterStore lastSelectedConfigurationUUIDForChargerIdentifier:v6 providerBundleIdentifier:v5];

  return v7;
}

- (id)_currentChargerIdentifier
{
  v3 = [(AMUIDefaultSelectedPosterCoordinator *)self delegate];
  v4 = [v3 posterSelectionCoordinatorRequestsConnectedChargerId:self];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(none)";
  }

  v7 = v6;

  return v6;
}

- (AMUIPosterSelectionCoordinatingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __93__AMUIDefaultSelectedPosterCoordinator_updateLastSelectedPosterConfiguration_fromUserAction___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_23F38B000, log, OS_LOG_TYPE_ERROR, "Selected Poster Coordinator failed updating selection to configuration %@ with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end