@interface MPVolumeControllerRouteDataSource
- (MPVolumeControllerDataSourceDelegate)delegate;
- (MPVolumeControllerRouteDataSource)initWithGroupRoute:(id)route outputDeviceRoute:(id)deviceRoute;
- (NSString)description;
- (NSString)volumeControlLabel;
- (void)_initializeVolume;
- (void)_routeVolumeControlCapabilitiesDidChangeNotification:(id)notification;
- (void)_routeVolumeDidChangeNotification:(id)notification;
- (void)_routeVolumeMutedDidChangeNotification:(id)notification;
- (void)_routeWasAddedOrRemovedFromGroupRouteNotification:(id)notification;
- (void)_sendVolumeButtonEventWithUsagePage:(unsigned int)page usage:(unsigned int)usage down:(BOOL)down;
- (void)_setPendingVolumeIfNeeded;
- (void)_updateMuted:(BOOL)muted;
- (void)_updateVolume:(float)volume;
- (void)_updateVolumeControlCapabilities:(unsigned int)capabilities;
- (void)adjustVolumeValue:(float)value;
- (void)beginDecreasingRelativeVolume;
- (void)beginIncreasingRelativeVolume;
- (void)dealloc;
- (void)endDecreasingRelativeVolume;
- (void)endIncreasingRelativeVolume;
- (void)getVolumeValueWithCompletion:(id)completion;
- (void)initializeVolume;
- (void)reload;
- (void)setMuted:(BOOL)muted;
- (void)setVolume:(float)volume;
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
  endpointWrapper = [(MPAVRoute *)v6 endpointWrapper];
  unwrappedValue = [endpointWrapper unwrappedValue];

  if (v7)
  {
    if (unwrappedValue)
    {
      dispatch_group_enter(v8);
      endpointWrapper2 = [(MPAVRoute *)v6 endpointWrapper];
      [endpointWrapper2 unwrappedValue];
      [(MPAVRoute *)v7 logicalLeaderOutputDevice];
      v45 = MEMORY[0x1E69E9820];
      v46 = 3221225472;
      v47 = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_4;
      v48 = &unk_1E7676EA0;
      v51 = v4;
      selfCopy = self;
      v50 = v8;
      MRAVEndpointGetOutputDeviceVolumeControlCapabilities();
    }

    endpointWrapper3 = [(MPAVRoute *)v6 endpointWrapper];
    unwrappedValue2 = [endpointWrapper3 unwrappedValue];

    if (unwrappedValue2)
    {
      dispatch_group_enter(v8);
      endpointWrapper4 = [(MPAVRoute *)v6 endpointWrapper];
      [endpointWrapper4 unwrappedValue];
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
      endpointObject = [(MPAVRoute *)v6 endpointObject];

      if (endpointObject)
      {
        v26 = v3;
        dispatch_group_enter(v8);
        endpointObject2 = [(MPAVRoute *)v6 endpointObject];
        routeUID = [(MPAVRoute *)v7 routeUID];
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
        [endpointObject2 outputDeviceVolumeMuted:routeUID queue:MEMORY[0x1E69E96A0] completion:v40];

LABEL_16:
        v5 = v19;
        v3 = v26;
      }
    }
  }

  else
  {
    if (unwrappedValue)
    {
      dispatch_group_enter(v8);
      endpointWrapper5 = [(MPAVRoute *)v6 endpointWrapper];
      [endpointWrapper5 unwrappedValue];
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __54__MPVolumeControllerRouteDataSource__initializeVolume__block_invoke_53;
      v36 = &unk_1E7676EA0;
      v39 = v4;
      selfCopy2 = self;
      v38 = v8;
      MRAVEndpointGetVolumeControlCapabilities();
    }

    endpointWrapper6 = [(MPAVRoute *)v6 endpointWrapper];
    unwrappedValue3 = [endpointWrapper6 unwrappedValue];

    if (unwrappedValue3)
    {
      dispatch_group_enter(v8);
      endpointWrapper7 = [(MPAVRoute *)v6 endpointWrapper];
      [endpointWrapper7 unwrappedValue];
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
      endpointObject3 = [(MPAVRoute *)v6 endpointObject];

      if (endpointObject3)
      {
        v26 = v3;
        dispatch_group_enter(v8);
        endpointObject2 = [(MPAVRoute *)v6 endpointObject];
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
        [endpointObject2 volumeMutedOnQueue:MEMORY[0x1E69E96A0] completion:v28];
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
  routeName = [(MPAVRoute *)self->_groupRoute routeName];
  v6 = routeName;
  if (outputDeviceRoute)
  {
    routeName2 = [(MPAVRoute *)self->_outputDeviceRoute routeName];
    v8 = [v3 stringWithFormat:@"Endpoint: %@ OutputDevice: %@", v6, routeName2];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"Endpoint: %@", routeName];
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

- (void)_routeWasAddedOrRemovedFromGroupRouteNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  endpointObject = [(MPAVRoute *)self->_groupRoute endpointObject];
  logicalLeaderOutputDevice = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  uniqueIdentifier = [endpointObject uniqueIdentifier];
  v12 = [uniqueIdentifier isEqualToString:v6];

  v13 = [logicalLeaderOutputDevice uid];
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

- (void)_routeVolumeMutedDidChangeNotification:(id)notification
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__MPVolumeControllerRouteDataSource__routeVolumeMutedDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E7679340;
  aBlock[4] = self;
  notificationCopy = notification;
  v5 = _Block_copy(aBlock);
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  userInfo3 = [notificationCopy userInfo];

  v11 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69B08A0]];
  bOOLValue = [v11 BOOLValue];

  routeUID = [(MPAVRoute *)self->_groupRoute routeUID];
  v14 = [routeUID isEqualToString:v7];

  logicalLeaderOutputDevice = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v16 = [logicalLeaderOutputDevice uid];
  v17 = [v16 isEqual:v9];

  if (((self->_outputDeviceRoute | v9) == 0) | v17 & 1 && v14)
  {
    v5[2](v5, bOOLValue);
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

- (void)_routeVolumeControlCapabilitiesDidChangeNotification:(id)notification
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__MPVolumeControllerRouteDataSource__routeVolumeControlCapabilitiesDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E7676E78;
  aBlock[4] = self;
  notificationCopy = notification;
  v5 = _Block_copy(aBlock);
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  userInfo3 = [notificationCopy userInfo];

  v11 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69B0B50]];
  intValue = [v11 intValue];

  routeUID = [(MPAVRoute *)self->_groupRoute routeUID];
  v14 = [routeUID isEqualToString:v7];

  logicalLeaderOutputDevice = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v16 = [logicalLeaderOutputDevice uid];
  v17 = [v16 isEqual:v9];

  if (((self->_outputDeviceRoute | v9) == 0) | v17 & 1 && v14)
  {
    v5[2](v5, intValue);
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

- (void)_routeVolumeDidChangeNotification:(id)notification
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__MPVolumeControllerRouteDataSource__routeVolumeDidChangeNotification___block_invoke;
  aBlock[3] = &unk_1E76792C8;
  aBlock[4] = self;
  notificationCopy = notification;
  v5 = _Block_copy(aBlock);
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69B0B58]];
  [v7 floatValue];
  v9 = v8;

  userInfo2 = [notificationCopy userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E69B0B30]];

  userInfo3 = [notificationCopy userInfo];

  v13 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E69B0B38]];

  routeUID = [(MPAVRoute *)self->_groupRoute routeUID];
  v15 = [routeUID isEqualToString:v11];

  logicalLeaderOutputDevice = [(MPAVRoute *)self->_outputDeviceRoute logicalLeaderOutputDevice];
  v17 = [logicalLeaderOutputDevice uid];
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

- (void)getVolumeValueWithCompletion:(id)completion
{
  completionCopy = completion;
  groupRoute = self->_groupRoute;
  outputDeviceRoute = self->_outputDeviceRoute;
  v7 = outputDeviceRoute;
  v8 = groupRoute;
  endpointWrapper = [(MPAVRoute *)v8 endpointWrapper];
  [endpointWrapper unwrappedValue];
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
    v13 = completionCopy;
    MRAVEndpointGetOutputDeviceVolume();
  }

  else
  {
    v10 = dispatch_get_global_queue(21, 0);
    v11 = v12;
    v12[0] = completionCopy;
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

- (void)_updateMuted:(BOOL)muted
{
  mutedCopy = muted;
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!self->_mutedInitialized || self->_muted != mutedCopy)
  {
    self->_mutedInitialized = 1;
    self->_muted = mutedCopy;
    v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      muted = self->_muted;
      v8 = 138412546;
      selfCopy = self;
      v10 = 1024;
      mutedCopy2 = muted;
      _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ MPLogVolume muted:%{BOOL}u", &v8, 0x12u);
    }

    [WeakRetained volumeControllerDataSource:self didChangeMuted:mutedCopy];
  }
}

- (void)_updateVolume:(float)volume
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  self->_volumeInitialized = 1;
  self->_volume = volume;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2048;
    volumeCopy = volume;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%@ MPLogVolume volume: %lf", &v9, 0x16u);
  }

  if (!self->_hasVolumeInFlight)
  {
    *&v7 = volume;
    [WeakRetained volumeControllerDataSource:self didChangeVolume:v7];
  }

  if (![(MPVolumeControllerRouteDataSource *)self _supportsNativeMute])
  {
    v8 = volume == 0.0;
    if (self->_muted != v8)
    {
      self->_muted = v8;
      [WeakRetained volumeControllerDataSource:self didChangeMuted:volume == 0.0];
    }
  }
}

- (void)_updateVolumeControlCapabilities:(unsigned int)capabilities
{
  v3 = *&capabilities;
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
      selfCopy = self;
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

- (void)adjustVolumeValue:(float)value
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = value * 100000.0;
  v5 = floorf(v4) * 0.00001;
  v6 = os_log_create("com.apple.amp.mediaplayer", "Volume");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_1A238D000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Adjusting endpoint volume by: %f", &v8, 0x16u);
  }

  v7 = fmax(fmin((self->_volume + v5), 1.0), 0.0);
  *&v7 = v7;
  [(MPVolumeControllerRouteDataSource *)self setVolume:v7];
}

- (void)_sendVolumeButtonEventWithUsagePage:(unsigned int)page usage:(unsigned int)usage down:(BOOL)down
{
  groupRoute = self->_groupRoute;
  if (groupRoute)
  {
    downCopy = down;
    v7 = *&usage;
    [(MPAVRoute *)groupRoute endpoint];
    ExternalDevice = MRAVEndpointGetExternalDevice();

    MEMORY[0x1EEE1CE68](ExternalDevice, page | (v7 << 32), downCopy);
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
    endpointObject = [(MPAVRoute *)v8 endpointObject];
    routeUID = [(MPAVRoute *)v5 routeUID];

    [endpointObject adjustOutputDeviceVolume:2 outputDevice:routeUID queue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_44];
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
    endpointObject = [(MPAVRoute *)v8 endpointObject];
    routeUID = [(MPAVRoute *)v5 routeUID];

    [endpointObject adjustOutputDeviceVolume:5 outputDevice:routeUID queue:MEMORY[0x1E69E96A0] completion:&__block_literal_global_8217];
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

- (void)setMuted:(BOOL)muted
{
  if (self->_muted != muted)
  {
    mutedCopy = muted;
    self->_muted = muted;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained volumeControllerDataSource:self didChangeMuted:mutedCopy];

    if ([(MPVolumeControllerRouteDataSource *)self _supportsNativeMute])
    {
      groupRoute = self->_groupRoute;
      outputDeviceRoute = self->_outputDeviceRoute;
      v8 = outputDeviceRoute;
      v9 = groupRoute;
      endpointObject = [(MPAVRoute *)v9 endpointObject];
      v11 = endpointObject;
      if (outputDeviceRoute)
      {
        routeUID = [(MPAVRoute *)self->_outputDeviceRoute routeUID];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __46__MPVolumeControllerRouteDataSource_setMuted___block_invoke;
        v15[3] = &unk_1E767D2A0;
        v15[4] = self;
        [v11 muteOutputDeviceVolume:mutedCopy outputDevice:routeUID queue:MEMORY[0x1E69E96A0] completion:v15];
      }

      else
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __46__MPVolumeControllerRouteDataSource_setMuted___block_invoke_42;
        v14[3] = &unk_1E767D2A0;
        v14[4] = self;
        [endpointObject muteVolume:mutedCopy queue:MEMORY[0x1E69E96A0] completion:v14];
      }
    }

    else
    {
      v13 = 0.0;
      if (!mutedCopy)
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
        endpointWrapper = [(MPAVRoute *)v3 endpointWrapper];
        *buf = 138413058;
        selfCopy2 = self;
        v15 = 2112;
        v16 = *&v7;
        v17 = 2048;
        unwrappedValue2 = v8;
        v19 = 2112;
        unwrappedValue = [endpointWrapper unwrappedValue];
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%@ setOutputDeviceVolume: %@ to: %f for endpoint: %@", buf, 0x2Au);
      }

      endpointWrapper2 = [(MPAVRoute *)v3 endpointWrapper];
      [endpointWrapper2 unwrappedValue];
      [(MPAVRoute *)v4 logicalLeaderOutputDevice];
      MRAVEndpointSetOutputDeviceVolume();
    }

    else
    {
      if (v6)
      {
        pendingVolume = self->_pendingVolume;
        endpointWrapper3 = [(MPAVRoute *)v3 endpointWrapper];
        *buf = 138412802;
        selfCopy2 = self;
        v15 = 2048;
        v16 = pendingVolume;
        v17 = 2112;
        unwrappedValue2 = [endpointWrapper3 unwrappedValue];
        _os_log_impl(&dword_1A238D000, v5, OS_LOG_TYPE_DEFAULT, "%@ setVolume to: %f endpoint: %@", buf, 0x20u);
      }

      endpointWrapper2 = [(MPAVRoute *)v3 endpointWrapper];
      [endpointWrapper2 unwrappedValue];
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

- (void)setVolume:(float)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
    if (![(MPVolumeControllerRouteDataSource *)self _supportsNativeMute]&& self->_volume > 0.0 && self->_muted)
    {
      self->_muted = 0;
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained volumeControllerDataSource:self didChangeMuted:0];
    }

    self->_pendingVolume = volume;
    self->_hasPendingVolume = 1;

    [(MPVolumeControllerRouteDataSource *)self _setPendingVolumeIfNeeded];
  }
}

- (NSString)volumeControlLabel
{
  outputDeviceRoute = [(MPVolumeControllerRouteDataSource *)self outputDeviceRoute];

  if (outputDeviceRoute)
  {
    [(MPVolumeControllerRouteDataSource *)self outputDeviceRoute];
  }

  else
  {
    [(MPVolumeControllerRouteDataSource *)self groupRoute];
  }
  v4 = ;
  routeName = [v4 routeName];

  return routeName;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69B0890] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x1E69B0888] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 removeObserver:self name:*MEMORY[0x1E69B0898] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 removeObserver:self name:*MEMORY[0x1E69B0878] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 removeObserver:self name:*MEMORY[0x1E69B0880] object:0];

  v8.receiver = self;
  v8.super_class = MPVolumeControllerRouteDataSource;
  [(MPVolumeControllerRouteDataSource *)&v8 dealloc];
}

- (MPVolumeControllerRouteDataSource)initWithGroupRoute:(id)route outputDeviceRoute:(id)deviceRoute
{
  routeCopy = route;
  deviceRouteCopy = deviceRoute;
  v19.receiver = self;
  v19.super_class = MPVolumeControllerRouteDataSource;
  v10 = [(MPVolumeControllerRouteDataSource *)&v19 init];
  if (!v10)
  {
    goto LABEL_10;
  }

  if (routeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:v10 file:@"MPVolumeControllerRouteDataSource.m" lineNumber:57 description:@"Group route must be an endpoint route."];

    if (deviceRouteCopy)
    {
LABEL_5:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"MPVolumeControllerRouteDataSource.m" lineNumber:58 description:@"Output device route must be an output device."];
      }
    }
  }

  else if (deviceRouteCopy)
  {
    goto LABEL_5;
  }

  objc_storeStrong(&v10->_groupRoute, route);
  objc_storeStrong(&v10->_outputDeviceRoute, deviceRoute);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v10 selector:sel__routeVolumeDidChangeNotification_ name:*MEMORY[0x1E69B0890] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:v10 selector:sel__routeVolumeControlCapabilitiesDidChangeNotification_ name:*MEMORY[0x1E69B0888] object:0];

  if ([(MPVolumeControllerRouteDataSource *)v10 _supportsNativeMute])
  {
    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v10 selector:sel__routeVolumeMutedDidChangeNotification_ name:*MEMORY[0x1E69B0898] object:0];
  }

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:v10 selector:sel__routeWasAddedOrRemovedFromGroupRouteNotification_ name:*MEMORY[0x1E69B0878] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:v10 selector:sel__routeWasAddedOrRemovedFromGroupRouteNotification_ name:*MEMORY[0x1E69B0880] object:0];

  [(MPVolumeControllerRouteDataSource *)v10 initializeVolume];
LABEL_10:

  return v10;
}

@end