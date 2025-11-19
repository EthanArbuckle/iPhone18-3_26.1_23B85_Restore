@interface MPVolumeControllerRouteDataSource
- (MPVolumeControllerDataSourceDelegate)delegate;
- (MPVolumeControllerRouteDataSource)initWithGroupRoute:(id)a3 outputDeviceRoute:(id)a4;
- (NSString)description;
- (NSString)volumeControlLabel;
- (void)_initializeVolume;
- (void)_routeVolumeControlCapabilitiesDidChangeNotification:(id)a3;
- (void)_routeVolumeDidChangeNotification:(id)a3;
- (void)_routeVolumeMutedDidChangeNotification:(id)a3;
- (void)_routeWasAddedOrRemovedFromGroupRouteNotification:(id)a3;
- (void)_sendVolumeButtonEventWithUsagePage:(unsigned int)a3 usage:(unsigned int)a4 down:(BOOL)a5;
- (void)_setPendingVolumeIfNeeded;
- (void)_updateMuted:(BOOL)a3;
- (void)_updateVolume:(float)a3;
- (void)_updateVolumeControlCapabilities:(unsigned int)a3;
- (void)adjustVolumeValue:(float)a3;
- (void)beginDecreasingRelativeVolume;
- (void)beginIncreasingRelativeVolume;
- (void)dealloc;
- (void)endDecreasingRelativeVolume;
- (void)endIncreasingRelativeVolume;
- (void)getVolumeValueWithCompletion:(id)a3;
- (void)initializeVolume;
- (void)reload;
- (void)setMuted:(BOOL)a3;
- (void)setVolume:(float)a3;
@end

@implementation MPVolumeControllerRouteDataSource

- (void)initializeVolume
{
  if (self->_reloading)
  {
    self->_needsReloading = 1;
  }

  else
  {
    [(MPVolumeControllerRouteDataSource *)self _initializeVolume];
  }
}

- (void)_initializeVolume
{
  *&self->_volumeInitialized = 0;
  self->_mutedInitialized = ![(MPVolumeControllerRouteDataSource *)self _supportsNativeMute];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke;
  aBlock[3] = &unk_1E76792C8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_2;
  v53[3] = &unk_1E7676E78;
  v53[4] = self;
  v4 = _Block_copy(v53);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_3;
  v52[3] = &unk_1E7679340;
  v52[4] = self;
  v5 = _Block_copy(v52);
  v6 = self->_groupRoute;
  v7 = self->_outputDeviceRoute;
  v8 = dispatch_group_create();
  v9 = [(MPAVRoute *)v6 endpointWrapper];
  v10 = [v9 unwrappedValue];

  if (v7)
  {
    if (v10)
    {
      dispatch_group_enter(v8);
      v11 = [(MPAVRoute *)v6 endpointWrapper];
      [v11 unwrappedValue];
      [(MPAVRoute *)v7 logicalLeaderOutputDevice];
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_4;
      v48 = &unk_1E7676EA0;
      v51 = v4;
      v49 = self;
      v50 = v8;
      MRAVEndpointGetOutputDeviceVolumeControlCapabilities();
    }

    v12 = [(MPAVRoute *)v6 endpointWrapper];
    v13 = [v12 unwrappedValue];

    if (v13)
    {
      dispatch_group_enter(v8);
      v14 = [(MPAVRoute *)v6 endpointWrapper];
      [v14 unwrappedValue];
      [(MPAVRoute *)v7 logicalLeaderOutputDevice];
      v42[1] = MEMORY[0x1E69E9820];
      v42[2] = 3221225472;
      v42[3] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_49;
      v42[4] = &unk_1E7676EC8;
      v44 = v3;
      v42[5] = self;
      v43 = v8;
      MRAVEndpointGetOutputDeviceVolume();
    }

    if ([(MPVolumeControllerRouteDataSource *)self _supportsNativeMute])
    {
      v15 = [(MPAVRoute *)v6 endpointObject];

      if (v15)
      {
        v26 = v3;
        dispatch_group_enter(v8);
        v16 = [(MPAVRoute *)v6 endpointObject];
        v17 = [(MPAVRoute *)v7 routeUID];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_51;
        v40[3] = &unk_1E76798D8;
        v18 = v42;
        v19 = v5;
        v42[0] = v5;
        v40[4] = self;
        v20 = &v41;
        v41 = v8;
        [v16 outputDeviceVolumeMuted:v17 queue:MEMORY[0x1E69E96A0] completion:v40];

LABEL_16:
        v5 = v19;
        v3 = v26;
      }
    }
  }

  else
  {
    if (v10)
    {
      dispatch_group_enter(v8);
      v21 = [(MPAVRoute *)v6 endpointWrapper];
      [v21 unwrappedValue];
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_53;
      v36 = &unk_1E7676EA0;
      v39 = v4;
      v37 = self;
      v38 = v8;
      MRAVEndpointGetVolumeControlCapabilities();
    }

    v22 = [(MPAVRoute *)v6 endpointWrapper];
    v23 = [v22 unwrappedValue];

    if (v23)
    {
      dispatch_group_enter(v8);
      v24 = [(MPAVRoute *)v6 endpointWrapper];
      [v24 unwrappedValue];
      v30[1] = MEMORY[0x1E69E9820];
      v30[2] = 3221225472;
      v30[3] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_54;
      v30[4] = &unk_1E7676EC8;
      v32 = v3;
      v30[5] = self;
      v31 = v8;
      MRAVEndpointGetVolume();
    }

    if ([(MPVolumeControllerRouteDataSource *)self _supportsNativeMute])
    {
      v25 = [(MPAVRoute *)v6 endpointObject];

      if (v25)
      {
        v26 = v3;
        dispatch_group_enter(v8);
        v16 = [(MPAVRoute *)v6 endpointObject];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_55;
        v28[3] = &unk_1E76798D8;
        v18 = v30;
        v19 = v5;
        v30[0] = v5;
        v28[4] = self;
        v20 = &v29;
        v29 = v8;
        [v16 volumeMutedOnQueue:MEMORY[0x1E69E96A0] completion:v28];
        goto LABEL_16;
      }
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_56;
  block[3] = &unk_1E7682518;
  block[4] = self;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  outputDeviceRoute = self->_outputDeviceRoute;
  v5 = [(MPAVRoute *)self->_groupRoute routeName];
  v6 = v5;
  if (outputDeviceRoute)
  {
    v7 = [(MPAVRoute *)self->_outputDeviceRoute routeName];
    v8 = [v3 stringWithFormat:@"Endpoint: %@ OutputDevice: %@", v6, v7];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"Endpoint: %@", v5];
  }

  v9 = MEMORY[0x1E696AEC0];
  v10 = objc_opt_class();
  if (self->_volumeControlAvailable)
  {
    v11 = @"available";
  }

  else
  {
    v11 = @"not available";
  }

  v12 = [v9 stringWithFormat:@"<%@: %p %@ volume control %@>", v10, self, v8, v11];

  return v12;
}

- (void)reload
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (self->_volumeCapabilitiesInitialized)
  {
    [WeakRetained volumeControllerDataSource:self didChangeVolumeControlAvailability:self->_volumeControlAvailable];
  }

  if (self->_volumeInitialized)
  {
    *&v3 = self->_volume;
    [WeakRetained volumeControllerDataSource:self didChangeVolume:v3];
  }

  if ([(MPVolumeControllerRouteDataSource *)self _supportsNativeMute]&& self->_mutedInitialized)
  {
    [WeakRetained volumeControllerDataSource:self didChangeMuted:self->_muted];
  }
}

uint64_t __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_56(uint64_t result)
{
  *(*(result + 32) + 17) = 0;
  v1 = *(result + 32);
  if (*(v1 + 18) == 1)
  {
    *(v1 + 18) = 0;
    return [*(result + 32) reload];
  }

  return result;
}

void __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_53(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 48) + 16))();
  if (a3)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = a3;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%@ initializeVolume - Error getting group volume control capabilities: %{public}@", &v7, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

_BYTE *__54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[15] & 1) == 0)
  {
    return [result _updateVolumeControlCapabilities:a2];
  }

  return result;
}

_BYTE *__54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[14] & 1) == 0)
  {
    return [result _updateVolume:?];
  }

  return result;
}

void __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_54(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 48) + 16))();
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%@ initializeVolume - Error getting master volume: %{public}@", &v6, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (MPVolumeControllerDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_routeWasAddedOrRemovedFromGroupRouteNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  v9 = [(MPAVRoute *)self->_groupRoute endpointObject];
  v10 = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v11 = [v9 uniqueIdentifier];
  v12 = [v11 isEqualToString:v6];

  v13 = [v10 uid];
  v14 = [v13 isEqual:v8];

  if (v12)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__MPVolumeControllerRouteDataSource__routeWasAddedOrRemovedFromGroupRouteNotification___block_invoke;
    block[3] = &unk_1E7682518;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_routeVolumeMutedDidChangeNotification:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__MPVolumeControllerRouteDataSource__routeVolumeMutedDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E7679340;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  v10 = [v4 userInfo];

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B08A0]];
  v12 = [v11 BOOLValue];

  v13 = [(MPAVRoute *)self->_groupRoute routeUID];
  v14 = [v13 isEqualToString:v7];

  v15 = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v16 = [v15 uid];
  v17 = [v16 isEqual:v9];

  if (((self->_outputDeviceRoute | v9) == 0) | v17 & 1 && v14)
  {
    v5[2](v5, v12);
  }
}

void __76__MPVolumeControllerRouteDataSource__routeVolumeMutedDidChangeNotification___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __76__MPVolumeControllerRouteDataSource__routeVolumeMutedDidChangeNotification___block_invoke_2;
  v2[3] = &unk_1E7682280;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)_routeVolumeControlCapabilitiesDidChangeNotification:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__MPVolumeControllerRouteDataSource__routeVolumeControlCapabilitiesDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E7676E78;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  v10 = [v4 userInfo];

  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B0B50]];
  v12 = [v11 intValue];

  v13 = [(MPAVRoute *)self->_groupRoute routeUID];
  v14 = [v13 isEqualToString:v7];

  v15 = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v16 = [v15 uid];
  v17 = [v16 isEqual:v9];

  if (((self->_outputDeviceRoute | v9) == 0) | v17 & 1 && v14)
  {
    v5[2](v5, v12);
  }
}

void __90__MPVolumeControllerRouteDataSource__routeVolumeControlCapabilitiesDidChangeNotification___block_invoke(uint64_t a1, int a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __90__MPVolumeControllerRouteDataSource__routeVolumeControlCapabilitiesDidChangeNotification___block_invoke_2;
  v2[3] = &unk_1E76811D8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)_routeVolumeDidChangeNotification:(id)a3
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MPVolumeControllerRouteDataSource__routeVolumeDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E76792C8;
  aBlock[4] = self;
  v4 = a3;
  v5 = _Block_copy(aBlock);
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E69B0B58]];
  [v7 floatValue];
  v9 = v8;

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  v12 = [v4 userInfo];

  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  v14 = [(MPAVRoute *)self->_groupRoute routeUID];
  v15 = [v14 isEqualToString:v11];

  v16 = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v17 = [v16 uid];
  v18 = [v17 isEqual:v13];

  if ((((self->_outputDeviceRoute | v13) == 0) & v15) != 0 || v18)
  {
    v5[2](v5, v9);
  }
}

void __71__MPVolumeControllerRouteDataSource__routeVolumeDidChangeNotification___block_invoke(uint64_t a1, float a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __71__MPVolumeControllerRouteDataSource__routeVolumeDidChangeNotification___block_invoke_2;
  v2[3] = &unk_1E76811D8;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

- (void)getVolumeValueWithCompletion:(id)a3
{
  v4 = a3;
  groupRoute = self->_groupRoute;
  outputDeviceRoute = self->_outputDeviceRoute;
  v7 = outputDeviceRoute;
  v8 = groupRoute;
  v9 = [(MPAVRoute *)v8 endpointWrapper];
  [v9 unwrappedValue];
  if (outputDeviceRoute)
  {
    [(MPAVRoute *)v7 logicalLeaderOutputDevice];
    v10 = dispatch_get_global_queue(21, 0);
    v12[1] = MEMORY[0x1E69E9820];
    v12[2] = 3221225472;
    v12[3] = __66__MPVolumeControllerRouteDataSource_getVolumeValueWithCompletion___block_invoke;
    v12[4] = &unk_1E7676EF0;
    v12[5] = self;
    v11 = &v13;
    v13 = v4;
    MRAVEndpointGetOutputDeviceVolume();
  }

  else
  {
    v10 = dispatch_get_global_queue(21, 0);
    v11 = v12;
    v12[0] = v4;
    MRAVEndpointGetVolume();
  }
}

uint64_t __66__MPVolumeControllerRouteDataSource_getVolumeValueWithCompletion___block_invoke(uint64_t a1, uint64_t a2, float a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%@ Error getting output device volume: %{public}@", &v9, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))(a3);
}

uint64_t __66__MPVolumeControllerRouteDataSource_getVolumeValueWithCompletion___block_invoke_58(uint64_t a1, uint64_t a2, float a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2114;
      v12 = a2;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_ERROR, "%@ Error getting master volume: %{public}@", &v9, 0x16u);
    }
  }

  return (*(*(a1 + 40) + 16))(a3);
}

- (void)_updateMuted:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!self->_mutedInitialized || self->_muted != v3)
  {
    self->_mutedInitialized = 1;
    self->_muted = v3;
    v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      muted = self->_muted;
      v8 = 138412546;
      v9 = self;
      v10 = 1024;
      v11 = muted;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ MPLogVolume muted:%{BOOL}u", &v8, 0x12u);
    }

    [WeakRetained volumeControllerDataSource:self didChangeMuted:v3];
  }
}

- (void)_updateVolume:(float)a3
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_volumeInitialized = 1;
  self->_volume = a3;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ MPLogVolume volume: %lf", &v9, 0x16u);
  }

  if (!self->_hasVolumeInFlight)
  {
    *&v7 = a3;
    [WeakRetained volumeControllerDataSource:self didChangeVolume:v7];
  }

  if (![(MPVolumeControllerRouteDataSource *)self _supportsNativeMute])
  {
    v8 = a3 == 0.0;
    if (self->_muted != v8)
    {
      self->_muted = v8;
      [WeakRetained volumeControllerDataSource:self didChangeMuted:a3 == 0.0];
    }
  }
}

- (void)_updateVolumeControlCapabilities:(unsigned int)a3
{
  v3 = *&a3;
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if ((!self->_volumeCapabilitiesInitialized || ((v3 >> 1) & 1) != self->_volumeControlAvailable) && (self->_volumeControlAvailable = (v3 & 2) >> 1, [WeakRetained volumeControllerDataSource:self didChangeVolumeControlAvailability:(v3 & 2) != 0], !self->_volumeCapabilitiesInitialized) || self->_volumeControlCapabilities != v3)
  {
    self->_volumeCapabilitiesInitialized = 1;
    self->_volumeControlCapabilities = v3;
    v7 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
      v9 = 138412546;
      v10 = self;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "%@ MPLogVolume capabilities: %{public}@", &v9, 0x16u);
    }

    [v6 volumeControllerDataSource:self didChangeVolumeCapabilities:v3];
  }
}

_BYTE *__54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if ((result[16] & 1) == 0)
  {
    return [result _updateMuted:a2];
  }

  return result;
}

void __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 48) + 16))();
  if (a3)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = a3;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%@ initializeVolume - Error getting output device volume control capabilities: %{public}@", &v7, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_49(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  (*(*(a1 + 48) + 16))();
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%@ initializeVolume - Error getting output device volume: %{public}@", &v6, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  (*(*(a1 + 48) + 16))();
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%@ initializeVolume - Error getting output device mute: %{public}@", &v7, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  (*(*(a1 + 48) + 16))();
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_ERROR, "%@ initializeVolume - Error getting output device mute: %{public}@", &v7, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)adjustVolumeValue:(float)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3 * 100000.0;
  v5 = floorf(v4) * 0.00001;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Adjusting endpoint volume by: %f", &v8, 0x16u);
  }

  v7 = fmax(fmin((self->_volume + v5), 1.0), 0.0);
  *&v7 = v7;
  [(MPVolumeControllerRouteDataSource *)self setVolume:v7];
}

- (void)_sendVolumeButtonEventWithUsagePage:(unsigned int)a3 usage:(unsigned int)a4 down:(BOOL)a5
{
  groupRoute = self->_groupRoute;
  if (groupRoute)
  {
    v6 = a5;
    v7 = *&a4;
    [(MPAVRoute *)groupRoute endpoint];
    ExternalDevice = MRAVEndpointGetExternalDevice();

    MEMORY[0x1EEE1CE68](ExternalDevice, a3 | (v7 << 32), v6);
  }
}

- (void)endIncreasingRelativeVolume
{
  volumeControlCapabilities = self->_volumeControlCapabilities;
  if ((volumeControlCapabilities & 4) != 0)
  {
    groupRoute = self->_groupRoute;
    v5 = self->_outputDeviceRoute;
    v8 = groupRoute;
    v6 = [(MPAVRoute *)v8 endpointObject];
    v7 = [(MPAVRoute *)v5 routeUID];

    [v6 adjustOutputDeviceVolume:2 outputDevice:v7 queue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_44];
  }

  else if (volumeControlCapabilities)
  {

    [(MPVolumeControllerRouteDataSource *)self _sendVolumeButtonEventWithUsagePage:12 usage:233 down:0];
  }
}

- (void)beginIncreasingRelativeVolume
{
  if ((self->_volumeControlCapabilities & 5) == 1)
  {
    [(MPVolumeControllerRouteDataSource *)self _sendVolumeButtonEventWithUsagePage:12 usage:233 down:1];
  }
}

- (void)endDecreasingRelativeVolume
{
  volumeControlCapabilities = self->_volumeControlCapabilities;
  if ((volumeControlCapabilities & 4) != 0)
  {
    groupRoute = self->_groupRoute;
    v5 = self->_outputDeviceRoute;
    v8 = groupRoute;
    v6 = [(MPAVRoute *)v8 endpointObject];
    v7 = [(MPAVRoute *)v5 routeUID];

    [v6 adjustOutputDeviceVolume:5 outputDevice:v7 queue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_8217];
  }

  else if (volumeControlCapabilities)
  {

    [(MPVolumeControllerRouteDataSource *)self _sendVolumeButtonEventWithUsagePage:12 usage:234 down:0];
  }
}

- (void)beginDecreasingRelativeVolume
{
  if ((self->_volumeControlCapabilities & 5) == 1)
  {
    [(MPVolumeControllerRouteDataSource *)self _sendVolumeButtonEventWithUsagePage:12 usage:234 down:1];
  }
}

- (void)setMuted:(BOOL)a3
{
  if (self->_muted != a3)
  {
    v3 = a3;
    self->_muted = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained volumeControllerDataSource:self didChangeMuted:v3];

    if ([(MPVolumeControllerRouteDataSource *)self _supportsNativeMute])
    {
      groupRoute = self->_groupRoute;
      outputDeviceRoute = self->_outputDeviceRoute;
      v8 = outputDeviceRoute;
      v9 = groupRoute;
      v10 = [(MPAVRoute *)v9 endpointObject];
      v11 = v10;
      if (outputDeviceRoute)
      {
        v12 = [(MPAVRoute *)self->_outputDeviceRoute routeUID];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __46__MPVolumeControllerRouteDataSource_setMuted___block_invoke;
        v15[3] = &unk_1E767D2A0;
        v15[4] = self;
        [v11 muteOutputDeviceVolume:v3 outputDevice:v12 queue:MEMORY[0x1E69E96A0] completion:v15];
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __46__MPVolumeControllerRouteDataSource_setMuted___block_invoke_42;
        v14[3] = &unk_1E767D2A0;
        v14[4] = self;
        [v10 muteVolume:v3 queue:MEMORY[0x1E69E96A0] completion:v14];
      }
    }

    else
    {
      v13 = 0.0;
      if (!v3)
      {
        *&v13 = self->_volume;
      }

      [(MPVolumeControllerRouteDataSource *)self setVolume:v13];
    }
  }
}

void __46__MPVolumeControllerRouteDataSource_setMuted___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%@ Error setting output device mute: %{public}@", &v6, 0x16u);
    }
  }
}

void __46__MPVolumeControllerRouteDataSource_setMuted___block_invoke_42(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%@ Error setting mute: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)_setPendingVolumeIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_hasPendingVolume && !self->_hasVolumeInFlight)
  {
    *&self->_hasPendingVolume = 256;
    v3 = self->_groupRoute;
    v4 = self->_outputDeviceRoute;
    v5 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        [(MPAVRoute *)v4 logicalLeaderOutputDevice];
        v7 = MRAVOutputDeviceCopyUniqueIdentifier();
        *&v8 = self->_pendingVolume;
        v9 = [(MPAVRoute *)v3 endpointWrapper];
        *buf = 138413058;
        v14 = self;
        v15 = 2112;
        v16 = *&v7;
        v17 = 2048;
        v18 = v8;
        v19 = 2112;
        v20 = [v9 unwrappedValue];
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%@ setOutputDeviceVolume: %@ to: %f for endpoint: %@", buf, 0x2Au);
      }

      v10 = [(MPAVRoute *)v3 endpointWrapper];
      [v10 unwrappedValue];
      [(MPAVRoute *)v4 logicalLeaderOutputDevice];
      MRAVEndpointSetOutputDeviceVolume();
    }

    else
    {
      if (v6)
      {
        pendingVolume = self->_pendingVolume;
        v12 = [(MPAVRoute *)v3 endpointWrapper];
        *buf = 138412802;
        v14 = self;
        v15 = 2048;
        v16 = pendingVolume;
        v17 = 2112;
        v18 = [v12 unwrappedValue];
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%@ setVolume to: %f endpoint: %@", buf, 0x20u);
      }

      v10 = [(MPAVRoute *)v3 endpointWrapper];
      [v10 unwrappedValue];
      MRAVEndpointSetVolume();
    }
  }
}

void __62__MPVolumeControllerRouteDataSource__setPendingVolumeIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 13) = 0;
  [*(a1 + 32) _setPendingVolumeIfNeeded];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%@ Error setting output device volume: %{public}@", &v6, 0x16u);
    }
  }
}

void __62__MPVolumeControllerRouteDataSource__setPendingVolumeIfNeeded__block_invoke_40(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 13) = 0;
  [*(a1 + 32) _setPendingVolumeIfNeeded];
  if (a2)
  {
    v4 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = a2;
      _os_log_impl(&dword_1A238D000, v4, OS_LOG_TYPE_ERROR, "%@ Error setting group volume: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)setVolume:(float)a3
{
  if (self->_volume != a3)
  {
    self->_volume = a3;
    if (![(MPVolumeControllerRouteDataSource *)self _supportsNativeMute]&& self->_volume > 0.0 && self->_muted)
    {
      self->_muted = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained volumeControllerDataSource:self didChangeMuted:0];
    }

    self->_pendingVolume = a3;
    self->_hasPendingVolume = 1;

    [(MPVolumeControllerRouteDataSource *)self _setPendingVolumeIfNeeded];
  }
}

- (NSString)volumeControlLabel
{
  v3 = [(MPVolumeControllerRouteDataSource *)self outputDeviceRoute];

  if (v3)
  {
    [(MPVolumeControllerRouteDataSource *)self outputDeviceRoute];
  }

  else
  {
    [(MPVolumeControllerRouteDataSource *)self groupRoute];
  }
  v4 = ;
  v5 = [v4 routeName];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69B0890] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69B0888] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E69B0898] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E69B0878] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E69B0880] object:0];

  v8.receiver = self;
  v8.super_class = MPVolumeControllerRouteDataSource;
  [(MPVolumeControllerRouteDataSource *)&v8 dealloc];
}

- (MPVolumeControllerRouteDataSource)initWithGroupRoute:(id)a3 outputDeviceRoute:(id)a4
{
  v8 = a3;
  v9 = a4;
  v19.receiver = self;
  v19.super_class = MPVolumeControllerRouteDataSource;
  v10 = [(MPVolumeControllerRouteDataSource *)&v19 init];
  if (!v10)
  {
    goto LABEL_10;
  }

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:v10 file:@"MPVolumeControllerRouteDataSource.m" lineNumber:57 description:@"Group route must be an endpoint route."];

    if (v9)
    {
LABEL_5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:v10 file:@"MPVolumeControllerRouteDataSource.m" lineNumber:58 description:@"Output device route must be an output device."];
      }
    }
  }

  else if (v9)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v10->_groupRoute, a3);
  objc_storeStrong(&v10->_outputDeviceRoute, a4);
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:v10 selector:sel__routeVolumeDidChangeNotification_ name:*MEMORY[0x1E69B0890] object:0];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:v10 selector:sel__routeVolumeControlCapabilitiesDidChangeNotification_ name:*MEMORY[0x1E69B0888] object:0];

  if ([(MPVolumeControllerRouteDataSource *)v10 _supportsNativeMute])
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v10 selector:sel__routeVolumeMutedDidChangeNotification_ name:*MEMORY[0x1E69B0898] object:0];
  }

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:v10 selector:sel__routeWasAddedOrRemovedFromGroupRouteNotification_ name:*MEMORY[0x1E69B0878] object:0];

  v15 = [MEMORY[0x1E696AD88] defaultCenter];
  [v15 addObserver:v10 selector:sel__routeWasAddedOrRemovedFromGroupRouteNotification_ name:*MEMORY[0x1E69B0880] object:0];

  [(MPVolumeControllerRouteDataSource *)v10 initializeVolume];
LABEL_10:

  return v10;
}

@end