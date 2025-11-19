@interface _GCAppClientProxy
+ (id)clientProxyWithConnection:(id)a3 server:(id)a4;
+ (id)settingsSuiteName;
- (BOOL)readBooleanValueWithName:(id)a3;
- (NSString)bundleIdentifier;
- (_GCAppClientProxy)init;
- (id)_initWithConnection:(id)a3 server:(id)a4;
- (id)addInvalidationHandler:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (int)processIdentifier;
- (void)_invalidate;
- (void)adaptiveTriggersXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)batteryXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)checkClipBufferingEnabledWithReply:(id)a3;
- (void)checkEmulatedControllerEnabledWithReply:(id)a3;
- (void)connectToAdaptiveTriggersXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToBatteryXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToControllerServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToLightXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToMotionXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToPhotoVideoXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToPlayerIndicatorXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToSettingsXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)connectToSystemGestureXPCProxyServiceWithClient:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)fetchControllerDescriptionsWithReply:(id)a3;
- (void)generateURLFor:(id)a3 withReply:(id)a4;
- (void)lightXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)motionXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onVideoRecordingStart:(id)a3;
- (void)onVideoRecordingStopWithURL:(id)a3 reply:(id)a4;
- (void)pingWithReply:(id)a3;
- (void)playerIndicatorXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)setSessionConfiguration:(id)a3;
- (void)settingsXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)systemGestureXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4;
- (void)takeScreenshotWithReply:(id)a3;
@end

@implementation _GCAppClientProxy

+ (id)clientProxyWithConnection:(id)a3 server:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] _initWithConnection:v7 server:v6];

  return v8;
}

- (id)_initWithConnection:(id)a3 server:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = _GCAppClientProxy;
  v9 = [(_GCAppClientProxy *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_server, a4);
    objc_storeStrong(&v10->_connection, a3);
    v11 = objc_opt_new();
    invalidationHandlers = v10->_invalidationHandlers;
    v10->_invalidationHandlers = v11;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48___GCAppClientProxy__initWithConnection_server___block_invoke;
    aBlock[3] = &unk_1E8418C28;
    v13 = v10;
    v21 = v13;
    v14 = _Block_copy(aBlock);
    v15 = [(_GCIPCIncomingConnection *)v10->_connection addInvalidationHandler:v14];
    connectionInvalidationRegistration = v13->_connectionInvalidationRegistration;
    v13->_connectionInvalidationRegistration = v15;

    v17 = [(_GCIPCIncomingConnection *)v10->_connection addInterruptionHandler:v14];
    connectionInterruptedRegistration = v13->_connectionInterruptedRegistration;
    v13->_connectionInterruptedRegistration = v17;

    if (gc_isInternalBuild())
    {
      [_GCAppClientProxy _initWithConnection:server:];
    }
  }

  return v10;
}

- (_GCAppClientProxy)init
{
  [(_GCAppClientProxy *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"GCAppClientProxy.m" lineNumber:109 description:{@"%@ is being deallocated, but is still valid.", a2}];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v43 = v12;
  v44 = v11;
  v42 = v10;
  if (self->_server == v11 && [v10 isEqualToString:@"activeControllerDevices"])
  {
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v14 = self;
    v15 = v13;
    if (gc_isInternalBuild())
    {
      [_GCAppClientProxy observeValueForKeyPath:ofObject:change:context:];
    }

    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = v14;
    objc_sync_enter(v17);
    publishedControllerDescriptions = v17->_publishedControllerDescriptions;
    if (publishedControllerDescriptions)
    {
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      v53 = 0u;
      v19 = [(NSMapTable *)publishedControllerDescriptions copy];
      v20 = [v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
      if (v20)
      {
        v21 = *v54;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v54 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v53 + 1) + 8 * i);
            v24 = [v15 member:v23];
            v25 = v24 == 0;

            if (v25)
            {
              v26 = [(NSMapTable *)v17->_publishedControllerDescriptions objectForKey:v23];
              if (!v26)
              {
                v41 = [MEMORY[0x1E696AAA8] currentHandler];
                v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void setActiveDevices(_GCAppClientProxy *__strong, NSSet<id<_GCDeviceControllerProviding>> *__strong)"}];
                [v41 handleFailureInFunction:v28 file:@"GCAppClientProxy.m" lineNumber:469 description:{@"Bug in %s", "setActiveDevices"}];
              }

              v27 = [v26 identifier];
              [v45 addObject:v27];

              [(NSMapTable *)v17->_publishedControllerDescriptions removeObjectForKey:v23];
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v53 objects:v58 count:16];
        }

        while (v20);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v29 = v15;
      v30 = [v29 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v30)
      {
        v31 = *v50;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v50 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v49 + 1) + 8 * j);
            v34 = [v33 makeControllerForClient:v17];
            if (v34)
            {
              [v16 addObject:v34];
              [(NSMapTable *)v17->_publishedControllerDescriptions setObject:v34 forKey:v33];
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v49 objects:v57 count:16];
        }

        while (v30);
      }

      objc_sync_exit(v17);
      if (![v45 count] && !objc_msgSend(v16, "count"))
      {
        goto LABEL_38;
      }

      v35 = v17->_controllerServiceClient;
      if (v35)
      {
        v36 = v17->_controllerServiceClientPendingUpdates + 1;
        v17->_controllerServiceClientPendingUpdates = v36;
        if (v36 <= 0x14)
        {
          v37 = v36 == 20;
          isInternalBuild = gc_isInternalBuild();
          if (v37)
          {
            if (isInternalBuild)
            {
              [_GCAppClientProxy observeValueForKeyPath:v17 ofObject:? change:? context:?];
            }

            [(GCControllerServiceRemoteClientInterface *)v35 refreshControllers];
          }

          else
          {
            if (isInternalBuild)
            {
              [_GCAppClientProxy observeValueForKeyPath:v17 ofObject:? change:? context:?];
            }

            if ([v45 count])
            {
              [(GCControllerServiceRemoteClientInterface *)v35 unpublishControllersWithIdentifiers:v45];
            }

            if ([v16 count])
            {
              [(GCControllerServiceRemoteClientInterface *)v35 publishControllers:v16];
            }

            if (v17->_controllerServiceClientPendingUpdates == 10)
            {
              connection = v17->_connection;
              v47[0] = MEMORY[0x1E69E9820];
              v47[1] = 3221225472;
              v47[2] = __setActiveDevices_block_invoke;
              v47[3] = &unk_1E8418C28;
              v48 = v17;
              [(_GCIPCIncomingConnection *)connection scheduleSendBarrierBlock:v47];
            }
          }
        }
      }
    }

    else
    {
      objc_sync_exit(v17);
      v35 = v17;
    }

LABEL_38:
    goto LABEL_35;
  }

  v46.receiver = self;
  v46.super_class = _GCAppClientProxy;
  [(_GCAppClientProxy *)&v46 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
LABEL_35:

  v39 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = atomic_load(&self->_invalid);
  if (v5)
  {
    v6 = " (invalid)";
  }

  else
  {
    v6 = "";
  }

  v7 = [(_GCIPCIncomingConnection *)self->_connection process];
  v8 = [v7 processIdentifier];
  v9 = [(_GCIPCIncomingConnection *)self->_connection process];
  v10 = [v9 bundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@%s client.pid: %i, client.bundleIdentifier: %@>", v4, v6, v8, v10];

  return v11;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = atomic_load(&self->_invalid);
  if (v5)
  {
    v6 = " (invalid)";
  }

  else
  {
    v6 = "";
  }

  v7 = [(_GCIPCIncomingConnection *)self->_connection process];
  v8 = [v7 processIdentifier];
  v9 = [(_GCIPCIncomingConnection *)self->_connection process];
  v10 = [v9 bundleIdentifier];
  v11 = [v3 stringWithFormat:@"<%@%s client.pid: %i, client.bundleIdentifier: %@>", v4, v6, v8, v10];

  return v11;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = atomic_load(&self->_invalid);
  if (v6)
  {
    v7 = " (invalid)";
  }

  else
  {
    v7 = "";
  }

  v8 = [(_GCIPCIncomingConnection *)self->_connection process];
  v9 = [v8 processIdentifier];
  v10 = [(_GCIPCIncomingConnection *)self->_connection process];
  v11 = [v10 bundleIdentifier];
  v12 = [v3 stringWithFormat:@"<%@ %p%s client.pid: %i, client.bundleIdentifier: %@>", v5, self, v7, v9, v11];

  return v12;
}

- (void)_invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_11(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)pingWithReply:(id)a3
{
  v3 = a3;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __35___GCAppClientProxy_pingWithReply___block_invoke;
  activity_block[3] = &unk_1E8419198;
  v6 = v3;
  v4 = v3;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Ping", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)setSessionConfiguration:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45___GCAppClientProxy_setSessionConfiguration___block_invoke;
  v6[3] = &unk_1E8418C50;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Set Configuration", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)connectToControllerServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __64___GCAppClientProxy_connectToControllerServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Controller Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToPlayerIndicatorXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __77___GCAppClientProxy_connectToPlayerIndicatorXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Player Indicator XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToLightXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __67___GCAppClientProxy_connectToLightXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Light XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToAdaptiveTriggersXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __78___GCAppClientProxy_connectToAdaptiveTriggersXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Adaptive Triggers XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToMotionXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __68___GCAppClientProxy_connectToMotionXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Motion XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToBatteryXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __69___GCAppClientProxy_connectToBatteryXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Battery XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToSettingsXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __70___GCAppClientProxy_connectToSettingsXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'Settings XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToSystemGestureXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __75___GCAppClientProxy_connectToSystemGestureXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'System Gesture XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)connectToPhotoVideoXPCProxyServiceWithClient:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __72___GCAppClientProxy_connectToPhotoVideoXPCProxyServiceWithClient_reply___block_invoke;
  activity_block[3] = &unk_1E841A968;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client) Connect 'PhotoVideo XPC Proxy Service'", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

+ (id)settingsSuiteName
{
  if (settingsSuiteName_onceToken != -1)
  {
    +[_GCAppClientProxy settingsSuiteName];
  }

  v3 = settingsSuiteName_suiteName;

  return v3;
}

- (NSString)bundleIdentifier
{
  v2 = [(_GCIPCIncomingConnection *)self->_connection process];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (int)processIdentifier
{
  v2 = [(_GCIPCIncomingConnection *)self->_connection process];
  v3 = [v2 processIdentifier];

  return v3;
}

- (id)addInvalidationHandler:(id)a3
{
  v4 = [a3 copy];
  v5 = self;
  objc_sync_enter(v5);
  v6 = atomic_load(&v5->_invalid);
  if (v6)
  {
    objc_sync_exit(v5);

    v7 = 0;
  }

  else
  {
    v8 = [(_GCAppClientProxy *)v5 invalidationHandlers];
    v9 = [v8 mutableCopy];

    v10 = _Block_copy(v4);
    [v9 addObject:v10];

    [(_GCAppClientProxy *)v5 setInvalidationHandlers:v9];
    objc_sync_exit(v5);

    objc_initWeak(&location, v5);
    v11 = [_GCObservation alloc];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58___GCAppClientProxy_DeviceClient__addInvalidationHandler___block_invoke;
    v13[3] = &unk_1E841A2A8;
    objc_copyWeak(&v15, &location);
    v14 = v4;
    v7 = [(_GCObservation *)v11 initWithCleanupHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)fetchControllerDescriptionsWithReply:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77___GCAppClientProxy_ControllerService__fetchControllerDescriptionsWithReply___block_invoke;
  v6[3] = &unk_1E8418BB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Controller Service Server) Fetch Controller Descriptions", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

- (void)playerIndicatorXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __111___GCAppClientProxy_PlayerIndicatorXPCProxyService__playerIndicatorXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Player Indicator XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)lightXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __91___GCAppClientProxy_LightXPCProxyService__lightXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Light XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)adaptiveTriggersXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __113___GCAppClientProxy_AdaptiveTriggersXPCProxyService__adaptiveTriggersXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Adaptive Triggers XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)motionXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __93___GCAppClientProxy_MotionXPCProxyService__motionXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Motion XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)batteryXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __95___GCAppClientProxy_BatteryXPCProxyService__batteryXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Battery XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)systemGestureXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __107___GCAppClientProxy_SystemGestureXPCProxyService__systemGestureXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / SystemGesture XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (void)settingsXPCProxyServiceClientEndpointConnect:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = __97___GCAppClientProxy_SettingsXPCProxyService__settingsXPCProxyServiceClientEndpointConnect_reply___block_invoke;
  activity_block[3] = &unk_1E841AD68;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_1D2CD5000, "(App Client / Settings XPC Proxy Service) Client Endpoint Connect", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

- (BOOL)readBooleanValueWithName:(id)a3
{
  v3 = a3;
  if (gc_isInternalBuild())
  {
    [_GCAppClientProxy(SettingsXPCProxyService) readBooleanValueWithName:];
  }

  v4 = *MEMORY[0x1E695E8B8];
  v5 = +[_GCAppClientProxy settingsSuiteName];
  v6 = CFPreferencesCopyValue(v3, v5, v4, *MEMORY[0x1E695E8B0]);
  v7 = v6;
  if (v6 && ((v8 = CFGetTypeID(v6), v8 == CFBooleanGetTypeID()) || v8 == CFNumberGetTypeID()))
  {
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  if (gc_isInternalBuild())
  {
    [_GCAppClientProxy(SettingsXPCProxyService) readBooleanValueWithName:];
  }

  return v9;
}

- (void)checkEmulatedControllerEnabledWithReply:(id)a3
{
  v4 = a3;
  v5 = [(_GCAppClientProxy *)self readBooleanValueWithName:@"emulatedControllerEnabled"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v4[2](v4, v6);
}

- (void)checkClipBufferingEnabledWithReply:(id)a3
{
  v4 = a3;
  v5 = [(_GCAppClientProxy *)self readBooleanValueWithName:@"bufferingEnabled"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v4[2](v4, v6);
}

- (void)onVideoRecordingStart:(id)a3
{
  v3 = a3;
  v5 = [[GCReplayNotificationOptions alloc] initRecordingStart];
  v4 = +[GCNotificationManager sharedInstance];
  [v4 requestNotification:v5 withReply:v3];
}

- (void)onVideoRecordingStopWithURL:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gc_isInternalBuild())
  {
    [_GCAppClientProxy(GCPhotoVideoXPCProxyService) onVideoRecordingStopWithURL:reply:];
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v7 = getRPScreenRecorderClass_softClass;
  v14 = getRPScreenRecorderClass_softClass;
  if (!getRPScreenRecorderClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getRPScreenRecorderClass_block_invoke;
    v10[3] = &unk_1E841A650;
    v10[4] = &v11;
    __getRPScreenRecorderClass_block_invoke(v10);
    v7 = v12[3];
  }

  v8 = v7;
  _Block_object_dispose(&v11, 8);
  v9 = [v7 sharedRecorder];
  [v9 saveClipToCameraRoll:v5 handler:v6];
}

- (void)generateURLFor:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AEC0];
  v8 = MEMORY[0x1E696AFB0];
  v9 = a3;
  v10 = [v8 UUID];
  v11 = [v10 UUIDString];
  v12 = [v7 stringWithFormat:@"%@_%@.mp4", v9, v11];

  if (gc_isInternalBuild())
  {
    [_GCAppClientProxy(GCPhotoVideoXPCProxyService) generateURLFor:withReply:];
  }

  v13 = NSTemporaryDirectory();
  v14 = [v13 stringByExpandingTildeInPath];

  v15 = v14;
  v16 = [v12 lastPathComponent];
  if (![v16 length] || (objc_msgSend(v16, "isEqualToString:", @".") & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"..") & 1) != 0)
  {
    v17 = 0;
  }

  else
  {
    v26 = [v15 stringByAppendingPathComponent:v16];
    v17 = [MEMORY[0x1E695DFF8] fileURLWithPath:v26 isDirectory:0];
  }

  isInternalBuild = gc_isInternalBuild();
  if (v17)
  {
    if (isInternalBuild)
    {
      [_GCAppClientProxy(GCPhotoVideoXPCProxyService) generateURLFor:withReply:];
    }

    [(_GCControllerManagerServer *)self->_server setLastGeneratedName:v12 directoryHandle:0 url:v17];
    v19 = v15;
    v20 = v19;
    if (v19)
    {
      v21 = *MEMORY[0x1E69E9BB0];
      [v19 fileSystemRepresentation];
      v22 = *MEMORY[0x1E69E9BE0];
      v23 = sandbox_extension_issue_file();
      v24 = gc_isInternalBuild();
      if (v23)
      {
        if (v24)
        {
          [_GCAppClientProxy(GCPhotoVideoXPCProxyService) generateURLFor:withReply:];
        }

        v25 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:4];
        free(v23);
        goto LABEL_22;
      }

      if (v24)
      {
        [_GCAppClientProxy(GCPhotoVideoXPCProxyService) generateURLFor:withReply:];
      }
    }

    v25 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if (isInternalBuild)
  {
    [_GCAppClientProxy(GCPhotoVideoXPCProxyService) generateURLFor:withReply:];
  }

  v25 = 0;
LABEL_23:
  v6[2](v6, v17, v25);
}

- (void)takeScreenshotWithReply:(id)a3
{
  v3 = a3;
  if (gc_isInternalBuild())
  {
    [_GCAppClientProxy(GCPhotoVideoXPCProxyService) takeScreenshotWithReply:];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getSSUIServiceClass_softClass;
  v13 = getSSUIServiceClass_softClass;
  if (!getSSUIServiceClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getSSUIServiceClass_block_invoke;
    v9[3] = &unk_1E841A650;
    v9[4] = &v10;
    __getSSUIServiceClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  v6 = objc_alloc_init(v4);
  v7 = NSSelectorFromString(&cfstr_Showscreenshot.isa);
  if (objc_opt_respondsToSelector())
  {
    ([v6 methodForSelector:v7])(v6, v7);
    v3[2](v3, 0);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.GameController.gamecontrollerd.screenshot" code:3328 userInfo:0];
    (v3)[2](v3, v8);
  }
}

- (void)_initWithConnection:server:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v1))
  {
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:.cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v5 = *(a1 + 24);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v6, v7, OS_LOG_TYPE_DEBUG, v8, v9, 0x20u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:change:context:.cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = getGCLogger();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v9 = *(a1 + 24);
    OUTLINED_FUNCTION_1_0();
    _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end