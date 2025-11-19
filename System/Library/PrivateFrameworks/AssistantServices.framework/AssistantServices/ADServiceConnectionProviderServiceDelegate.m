@interface ADServiceConnectionProviderServiceDelegate
- (ADServiceConnectionProviderServiceDelegate)initWithServiceConnection:(id)a3 syncQueue:(id)a4;
- (void)assistantServiceWillCrashForStuckSyncPluginAtPath:(id)a3;
- (void)clearSyncRequestWithUUID:(id)a3;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)a3;
- (void)fetchContextsForKeys:(id)a3 forRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6;
- (void)getCarDNDModeWithReply:(id)a3;
- (void)getLockStateWithReply:(id)a3;
- (void)getStarkModeWithReply:(id)a3;
- (void)getTimeoutSuspendedWithReply:(id)a3;
- (void)getWatchAuthenticatedWithReply:(id)a3;
- (void)handleCommand:(id)a3 executionInfo:(id)a4 completion:(id)a5;
- (void)openURL:(id)a3 reply:(id)a4;
- (void)prepareForAudioHandoffFailedWithCompletion:(id)a3;
- (void)prepareForAudioHandoffWithCompletion:(id)a3;
- (void)syncChunksWithPreAnchor:(id)a3 postAnchor:(id)a4 updates:(id)a5 deletes:(id)a6 validity:(id)a7 forRequestUUID:(id)a8 reply:(id)a9;
@end

@implementation ADServiceConnectionProviderServiceDelegate

- (void)assistantServiceWillCrashForStuckSyncPluginAtPath:(id)a3
{
  v4 = a3;
  v5 = +[SiriCoreSymptomsReporter sharedInstance];
  v6 = [v4 lastPathComponent];
  v11 = @"plugin_path";
  v12 = v4;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v9 = [WeakRetained _connection];
  v10 = [v9 processIdentifier];
  [v5 reportIssueForType:@"stuck_sync_plugin" subType:v6 context:v7 processIdentifier:v10 walkboutStatus:byte_100590548];
}

- (void)getTimeoutSuspendedWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getTimeoutSuspendedWithReply:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)handleCommand:(id)a3 executionInfo:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCommand:v13 executionInfo:v8 completion:v9];
  }

  else
  {
    v12 = [AFError errorWithCode:7];
    v9[2](v9, 0, v12);
  }
}

- (void)fetchContextsForKeys:(id)a3 forRequestID:(id)a4 includesNearbyDevices:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = +[ADCommandCenter sharedCommandCenter];
  [v12 getDeviceContextsForKeys:v11 forRequestID:v10 includesNearbyDevices:v6 completion:v9];
}

- (void)prepareForAudioHandoffFailedWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10027754C;
  v6[3] = &unk_10051CF58;
  v7 = v3;
  v5 = v3;
  [v4 handleFailedStartPlaybackWithDestination:1 completion:v6];
}

- (void)prepareForAudioHandoffWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100277610;
  v6[3] = &unk_10051E100;
  v7 = v3;
  v5 = v3;
  [v4 prepareForStartPlaybackWithDestination:1 intent:0 completion:v6];
}

- (void)getWatchAuthenticatedWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getWatchAuthenticationWithReply:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)getStarkModeWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getStarkModeWithReply:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)getCarDNDModeWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getCarDNDModeWithReply:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)getLockStateWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getLockStateWithReply:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)dismissAssistantWithReason:(int64_t)a3
{
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 dismissAssistantWithReason:a3];
}

- (void)dismissAssistant
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 dismissAssistant];
}

- (void)openURL:(id)a3 reply:(id)a4
{
  v9 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v8 = WeakRetained;
  if (v9 && WeakRetained)
  {
    [WeakRetained _openURL:v9 completion:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (void)syncChunksWithPreAnchor:(id)a3 postAnchor:(id)a4 updates:(id)a5 deletes:(id)a6 validity:(id)a7 forRequestUUID:(id)a8 reply:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  syncQueue = self->_syncQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100277ABC;
  v30[3] = &unk_1005184B8;
  v30[4] = self;
  v31 = v20;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v21;
  v23 = v21;
  v24 = v19;
  v25 = v18;
  v26 = v17;
  v27 = v16;
  v28 = v15;
  v29 = v20;
  dispatch_async(syncQueue, v30);
}

- (void)clearSyncRequestWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ADServiceConnectionProviderServiceDelegate *)self syncRequestForUUID:v4];
  [v5 invalidateTimer];
  [v5 setSyncChunkHandler:0];
  [(NSMutableDictionary *)self->_syncRequestsByUUID removeObjectForKey:v4];
}

- (ADServiceConnectionProviderServiceDelegate)initWithServiceConnection:(id)a3 syncQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = ADServiceConnectionProviderServiceDelegate;
  v8 = [(ADServiceConnectionProviderServiceDelegate *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_serviceConnection, v6);
    objc_storeStrong(&v9->_syncQueue, a4);
    v10 = [[NSMutableDictionary alloc] initWithCapacity:2];
    syncRequestsByUUID = v9->_syncRequestsByUUID;
    v9->_syncRequestsByUUID = v10;
  }

  return v9;
}

@end