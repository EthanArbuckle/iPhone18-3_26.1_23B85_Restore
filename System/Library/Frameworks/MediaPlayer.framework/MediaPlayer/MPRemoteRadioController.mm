@interface MPRemoteRadioController
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MPRemoteRadioController)init;
- (void)_addConnection:(id)connection;
- (void)_handleRecentStationsControllerDidChange;
- (void)_playActivityReportingControllerDidFlushEventsNotification:(id)notification;
- (void)_radioAvailabilityControllerRadioAvailableDidChangeNotification:(id)notification;
- (void)_removeConnection:(id)connection;
- (void)dealloc;
- (void)serviceRadioControllerGetRecentStationGroupsWithCompletionHandler:(id)handler;
- (void)start;
@end

@implementation MPRemoteRadioController

- (MPRemoteRadioController)init
{
  v25.receiver = self;
  v25.super_class = MPRemoteRadioController;
  v2 = [(MPRemoteRadioController *)&v25 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v2->_lock._os_unfair_lock_opaque = 0;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v5 = getRadioAvailabilityControllerClass_softClass;
  v34 = getRadioAvailabilityControllerClass_softClass;
  if (!getRadioAvailabilityControllerClass_softClass)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getRadioAvailabilityControllerClass_block_invoke;
    v29 = &unk_1E7680410;
    v30 = &v31;
    __getRadioAvailabilityControllerClass_block_invoke(&v26);
    v5 = v32[3];
  }

  v6 = v5;
  _Block_object_dispose(&v31, 8);
  v7 = objc_alloc_init(v5);
  availabilityController = v3->_availabilityController;
  v3->_availabilityController = v7;

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v9 = getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_ptr;
  v34 = getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_ptr;
  if (!getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_ptr)
  {
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_block_invoke;
    v29 = &unk_1E7680410;
    v30 = &v31;
    v10 = RadioLibrary();
    v11 = dlsym(v10, "RadioAvailabilityControllerRadioAvailableDidChangeNotification");
    *(v30[1] + 24) = v11;
    getRadioAvailabilityControllerRadioAvailableDidChangeNotificationSymbolLoc_ptr = *(v30[1] + 24);
    v9 = v32[3];
  }

  _Block_object_dispose(&v31, 8);
  if (v9)
  {
    [defaultCenter addObserver:v3 selector:sel__radioAvailabilityControllerRadioAvailableDidChangeNotification_ name:*v9 object:v3->_availabilityController];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v12 = getRadioRecentStationsControllerClass_softClass;
    v34 = getRadioRecentStationsControllerClass_softClass;
    if (!getRadioRecentStationsControllerClass_softClass)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getRadioRecentStationsControllerClass_block_invoke;
      v29 = &unk_1E7680410;
      v30 = &v31;
      __getRadioRecentStationsControllerClass_block_invoke(&v26);
      v12 = v32[3];
    }

    v13 = v12;
    _Block_object_dispose(&v31, 8);
    v14 = objc_alloc_init(v12);
    recentStationsController = v3->_recentStationsController;
    v3->_recentStationsController = v14;

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v16 = getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_ptr;
    v34 = getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_ptr;
    if (!getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_ptr)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_block_invoke;
      v29 = &unk_1E7680410;
      v30 = &v31;
      v17 = RadioLibrary();
      v18 = dlsym(v17, "RadioRecentStationsControllerStationsDidChangeNotification");
      *(v30[1] + 24) = v18;
      getRadioRecentStationsControllerStationsDidChangeNotificationSymbolLoc_ptr = *(v30[1] + 24);
      v16 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (v16)
    {
      [defaultCenter addObserver:v3 selector:sel__recentStationsControllerDidChangeStationsNotification_ name:*v16 object:v3->_recentStationsController];
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v19 = getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_ptr;
      v34 = getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_ptr;
      if (!getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_ptr)
      {
        v26 = MEMORY[0x1E69E9820];
        v27 = 3221225472;
        v28 = __getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_block_invoke;
        v29 = &unk_1E7680410;
        v30 = &v31;
        v20 = MediaPlaybackCoreLibrary();
        v21 = dlsym(v20, "MPCJinglePlayActivityReportingControllerDidFlushEventsNotification");
        *(v30[1] + 24) = v21;
        getMPCJinglePlayActivityReportingControllerDidFlushEventsNotificationSymbolLoc_ptr = *(v30[1] + 24);
        v19 = v32[3];
      }

      _Block_object_dispose(&v31, 8);
      if (v19)
      {
        [defaultCenter addObserver:v3 selector:sel__playActivityReportingControllerDidFlushEventsNotification_ name:*v19 object:0];

        return v3;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPCJinglePlayActivityReportingControllerDidFlushEventsNotification(void)"];
      [currentHandler handleFailureInFunction:v24 file:@"MPRemoteRadioController.m" lineNumber:25 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRadioRecentStationsControllerStationsDidChangeNotification(void)"];
      [currentHandler handleFailureInFunction:v24 file:@"MPRemoteRadioController.m" lineNumber:33 description:{@"%s", dlerror()}];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getRadioAvailabilityControllerRadioAvailableDidChangeNotification(void)"];
    [currentHandler handleFailureInFunction:v24 file:@"MPRemoteRadioController.m" lineNumber:32 description:{@"%s", dlerror()}];
  }

  __break(1u);
  return result;
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_listener)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.MediaPlayer.MPRadioControllerServer"];
    listener = self->_listener;
    self->_listener = v3;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener resume];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleRecentStationsControllerDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_connections copy];
  os_unfair_lock_unlock(&self->_lock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        remoteObjectProxy = [*(*(&v10 + 1) + 8 * v8) remoteObjectProxy];
        [remoteObjectProxy clientRadioControllerRecentStationsDidChange];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_removeConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_connections removeObject:connectionCopy];

  if (![(NSMutableSet *)self->_connections count])
  {
    connections = self->_connections;
    self->_connections = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_addConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  connections = self->_connections;
  if (!connections)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v6 = self->_connections;
    self->_connections = v5;

    connections = self->_connections;
  }

  [(NSMutableSet *)connections addObject:connectionCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_playActivityReportingControllerDidFlushEventsNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v6 = getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEventSymbolLoc_ptr;
  v14 = getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEventSymbolLoc_ptr;
  if (!getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEventSymbolLoc_ptr)
  {
    v7 = MediaPlaybackCoreLibrary();
    v12[3] = dlsym(v7, "MPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEvent");
    getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEventSymbolLoc_ptr = v12[3];
    v6 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v6)
  {
    v8 = [userInfo objectForKey:*v6];

    if (objc_opt_respondsToSelector())
    {
      if ([v8 BOOLValue])
      {
        [(MPRemoteRadioController *)self _handleRecentStationsControllerDidChange];
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMPCJinglePlayActivityReportingControllerUserInfoDidIncludeRadioStationStartEvent(void)"];
    [currentHandler handleFailureInFunction:v10 file:@"MPRemoteRadioController.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_radioAvailabilityControllerRadioAvailableDidChangeNotification:(id)notification
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSMutableSet *)self->_connections copy];
  os_unfair_lock_unlock(&self->_lock);
  isRadioAvailable = [(RadioAvailabilityController *)self->_availabilityController isRadioAvailable];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        remoteObjectProxy = [*(*(&v12 + 1) + 8 * v10) remoteObjectProxy];
        [remoteObjectProxy clientRadioControllerRadioAvailabilityDidChange:isRadioAvailable];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.mediaplayer.radio.private"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, connectionCopy);
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F154C308];
    [connectionCopy setRemoteObjectInterface:v10];

    [connectionCopy setExportedObject:self];
    v11 = MPServiceRadioControllerGetXPCInterface();
    [connectionCopy setExportedInterface:v11];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__MPRemoteRadioController_listener_shouldAcceptNewConnection___block_invoke;
    v19[3] = &unk_1E767D468;
    objc_copyWeak(&v20, &location);
    objc_copyWeak(&v21, &from);
    [connectionCopy setInterruptionHandler:v19];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __62__MPRemoteRadioController_listener_shouldAcceptNewConnection___block_invoke_12;
    v16 = &unk_1E767D468;
    objc_copyWeak(&v17, &location);
    objc_copyWeak(&v18, &from);
    [connectionCopy setInvalidationHandler:&v13];
    [(MPRemoteRadioController *)self _addConnection:connectionCopy, v13, v14, v15, v16];
    [connectionCopy resume];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return bOOLValue;
}

void __62__MPRemoteRadioController_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "[MPRemoteRadioController] Connection interrupted.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      [WeakRetained _removeConnection:v4];
    }
  }
}

void __62__MPRemoteRadioController_listener_shouldAcceptNewConnection___block_invoke_12(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "Playback");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_ERROR, "[MPRemoteRadioController] Connection invalidated.", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    if (v4)
    {
      [WeakRetained _removeConnection:v4];
    }
  }
}

- (void)serviceRadioControllerGetRecentStationGroupsWithCompletionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_hasRefreshedStations)
  {
    self->_hasRefreshedStations = 1;
    [(RadioRecentStationsController *)self->_recentStationsController refreshWithCompletionHandler:0];
  }

  stationGroups = [(RadioRecentStationsController *)self->_recentStationsController stationGroups];
  v6 = [stationGroups copy];

  os_unfair_lock_unlock(&self->_lock);
  if (handlerCopy)
  {
    v19 = v6;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v23)
    {
      v21 = 0;
      v22 = *v29;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          stations = [v8 stations];
          v10 = [stations countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = 0;
            v13 = *v25;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(stations);
                }

                v15 = [[MPRadioStation alloc] initWithStation:*(*(&v24 + 1) + 8 * j)];
                if (v15)
                {
                  if (!v12)
                  {
                    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  [v12 addObject:v15];
                }
              }

              v11 = [stations countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v11);
          }

          else
          {
            v12 = 0;
          }

          if ([v12 count])
          {
            v16 = objc_alloc_init(MPRadioRecentStationsGroup);
            localizedTitle = [v8 localizedTitle];
            [(MPRadioRecentStationsGroup *)v16 setLocalizedTitle:localizedTitle];

            [(MPRadioRecentStationsGroup *)v16 setStations:v12];
            if (v16)
            {
              v18 = v21;
              if (!v21)
              {
                v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(obj, "count")}];
              }

              v21 = v18;
              [v18 addObject:v16];
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v23);
    }

    else
    {
      v21 = 0;
    }

    handlerCopy[2](handlerCopy, v21, 0);
    v6 = v19;
  }
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  v3.receiver = self;
  v3.super_class = MPRemoteRadioController;
  [(MPRemoteRadioController *)&v3 dealloc];
}

@end