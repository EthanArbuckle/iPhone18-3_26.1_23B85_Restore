@interface ADServiceConnectionProviderServiceDelegate
- (ADServiceConnectionProviderServiceDelegate)initWithServiceConnection:(id)connection syncQueue:(id)queue;
- (void)assistantServiceWillCrashForStuckSyncPluginAtPath:(id)path;
- (void)clearSyncRequestWithUUID:(id)d;
- (void)dismissAssistant;
- (void)dismissAssistantWithReason:(int64_t)reason;
- (void)fetchContextsForKeys:(id)keys forRequestID:(id)d includesNearbyDevices:(BOOL)devices completion:(id)completion;
- (void)getCarDNDModeWithReply:(id)reply;
- (void)getLockStateWithReply:(id)reply;
- (void)getStarkModeWithReply:(id)reply;
- (void)getTimeoutSuspendedWithReply:(id)reply;
- (void)getWatchAuthenticatedWithReply:(id)reply;
- (void)handleCommand:(id)command executionInfo:(id)info completion:(id)completion;
- (void)openURL:(id)l reply:(id)reply;
- (void)prepareForAudioHandoffFailedWithCompletion:(id)completion;
- (void)prepareForAudioHandoffWithCompletion:(id)completion;
- (void)syncChunksWithPreAnchor:(id)anchor postAnchor:(id)postAnchor updates:(id)updates deletes:(id)deletes validity:(id)validity forRequestUUID:(id)d reply:(id)reply;
@end

@implementation ADServiceConnectionProviderServiceDelegate

- (void)assistantServiceWillCrashForStuckSyncPluginAtPath:(id)path
{
  pathCopy = path;
  v5 = +[SiriCoreSymptomsReporter sharedInstance];
  lastPathComponent = [pathCopy lastPathComponent];
  v11 = @"plugin_path";
  v12 = pathCopy;
  v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  _connection = [WeakRetained _connection];
  processIdentifier = [_connection processIdentifier];
  [v5 reportIssueForType:@"stuck_sync_plugin" subType:lastPathComponent context:v7 processIdentifier:processIdentifier walkboutStatus:byte_100590548];
}

- (void)getTimeoutSuspendedWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getTimeoutSuspendedWithReply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)handleCommand:(id)command executionInfo:(id)info completion:(id)completion
{
  commandCopy = command;
  infoCopy = info;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCommand:commandCopy executionInfo:infoCopy completion:completionCopy];
  }

  else
  {
    v12 = [AFError errorWithCode:7];
    completionCopy[2](completionCopy, 0, v12);
  }
}

- (void)fetchContextsForKeys:(id)keys forRequestID:(id)d includesNearbyDevices:(BOOL)devices completion:(id)completion
{
  devicesCopy = devices;
  completionCopy = completion;
  dCopy = d;
  keysCopy = keys;
  v12 = +[ADCommandCenter sharedCommandCenter];
  [v12 getDeviceContextsForKeys:keysCopy forRequestID:dCopy includesNearbyDevices:devicesCopy completion:completionCopy];
}

- (void)prepareForAudioHandoffFailedWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10027754C;
  v6[3] = &unk_10051CF58;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 handleFailedStartPlaybackWithDestination:1 completion:v6];
}

- (void)prepareForAudioHandoffWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[ADCommandCenter sharedCommandCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100277610;
  v6[3] = &unk_10051E100;
  v7 = completionCopy;
  v5 = completionCopy;
  [v4 prepareForStartPlaybackWithDestination:1 intent:0 completion:v6];
}

- (void)getWatchAuthenticatedWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getWatchAuthenticationWithReply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)getStarkModeWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getStarkModeWithReply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)getCarDNDModeWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getCarDNDModeWithReply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)getLockStateWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _getLockStateWithReply:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)dismissAssistantWithReason:(int64_t)reason
{
  v4 = +[ADCommandCenter sharedCommandCenter];
  [v4 dismissAssistantWithReason:reason];
}

- (void)dismissAssistant
{
  v2 = +[ADCommandCenter sharedCommandCenter];
  [v2 dismissAssistant];
}

- (void)openURL:(id)l reply:(id)reply
{
  lCopy = l;
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_serviceConnection);
  v8 = WeakRetained;
  if (lCopy && WeakRetained)
  {
    [WeakRetained _openURL:lCopy completion:replyCopy];
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

- (void)syncChunksWithPreAnchor:(id)anchor postAnchor:(id)postAnchor updates:(id)updates deletes:(id)deletes validity:(id)validity forRequestUUID:(id)d reply:(id)reply
{
  anchorCopy = anchor;
  postAnchorCopy = postAnchor;
  updatesCopy = updates;
  deletesCopy = deletes;
  validityCopy = validity;
  dCopy = d;
  replyCopy = reply;
  syncQueue = self->_syncQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100277ABC;
  v30[3] = &unk_1005184B8;
  v30[4] = self;
  v31 = dCopy;
  v32 = anchorCopy;
  v33 = postAnchorCopy;
  v34 = updatesCopy;
  v35 = deletesCopy;
  v36 = validityCopy;
  v37 = replyCopy;
  v23 = replyCopy;
  v24 = validityCopy;
  v25 = deletesCopy;
  v26 = updatesCopy;
  v27 = postAnchorCopy;
  v28 = anchorCopy;
  v29 = dCopy;
  dispatch_async(syncQueue, v30);
}

- (void)clearSyncRequestWithUUID:(id)d
{
  dCopy = d;
  v5 = [(ADServiceConnectionProviderServiceDelegate *)self syncRequestForUUID:dCopy];
  [v5 invalidateTimer];
  [v5 setSyncChunkHandler:0];
  [(NSMutableDictionary *)self->_syncRequestsByUUID removeObjectForKey:dCopy];
}

- (ADServiceConnectionProviderServiceDelegate)initWithServiceConnection:(id)connection syncQueue:(id)queue
{
  connectionCopy = connection;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = ADServiceConnectionProviderServiceDelegate;
  v8 = [(ADServiceConnectionProviderServiceDelegate *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_serviceConnection, connectionCopy);
    objc_storeStrong(&v9->_syncQueue, queue);
    v10 = [[NSMutableDictionary alloc] initWithCapacity:2];
    syncRequestsByUUID = v9->_syncRequestsByUUID;
    v9->_syncRequestsByUUID = v10;
  }

  return v9;
}

@end