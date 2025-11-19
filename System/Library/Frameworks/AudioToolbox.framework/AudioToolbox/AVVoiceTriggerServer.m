@interface AVVoiceTriggerServer
- (AVVoiceTriggerServer)init;
- (BOOL)isAssistantVoiceTriggerEnabled;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)activateSecureSession:(BOOL)a3 reply:(id)a4;
- (void)dealloc;
- (void)enableBargeInMode:(BOOL)a3 reply:(id)a4;
- (void)enableListeningOnPorts:(id)a3 reply:(id)a4;
- (void)enableSpeakerStateListening:(BOOL)a3 reply:(id)a4;
- (void)enableVoiceTriggerListening:(BOOL)a3 reply:(id)a4;
- (void)getInputChannelInfoCompletion:(id)a3;
- (void)initializeWithReply:(id)a3;
- (void)listeningEnabledReply:(id)a3;
- (void)portsActiveReply:(id)a3;
- (void)sendVoiceTriggerOccuredNotification:(id)a3 triggerTime:(unint64_t)a4;
- (void)setAggressiveECMode:(BOOL)a3 reply:(id)a4;
- (void)setListeningProperty:(BOOL)a3 reply:(id)a4;
- (void)siriClientRecordStateChanged:(BOOL)a3;
- (void)siriClientsRecordingReply:(id)a3;
- (void)speakerStateActiveReply:(id)a3;
- (void)speakerStateMutedReply:(id)a3;
- (void)speechDetectionVADCreated;
- (void)updateVoiceTriggerConfiguration:(id)a3 reply:(id)a4;
- (void)voiceTriggerPastDataFramesAvailable:(id)a3;
@end

@implementation AVVoiceTriggerServer

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v29 = "AVVoiceTriggerServer.mm";
    v30 = 1024;
    v31 = 2274;
    v32 = 2112;
    v33 = v7;
    v34 = 1024;
    v35 = [v7 processIdentifier];
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d newConnection: %@ from PID: %d", buf, 0x22u);
  }

  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F37D6250];
  [v7 setExportedInterface:v8];

  [v7 setExportedObject:self];
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F37DBEA8];
  [v7 setRemoteObjectInterface:v9];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke;
  v23[3] = &unk_1E7ECE060;
  objc_copyWeak(&v24, &from);
  objc_copyWeak(&v25, &location);
  [v7 setInterruptionHandler:v23];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v20[3] = &unk_1E7ECE060;
  objc_copyWeak(&v21, &from);
  objc_copyWeak(&v22, &location);
  [v7 setInvalidationHandler:v20];
  notificationQueue = self->_notificationQueue;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2_171;
  v17 = &unk_1E7ECE038;
  v11 = v7;
  v18 = v11;
  v19 = self;
  dispatch_async(notificationQueue, &v14);
  [v11 resume];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "AVVoiceTriggerServer.mm";
    v30 = 1024;
    v31 = 2327;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%25s:%-5d Done", buf, 0x12u);
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_loadWeakRetained((a1 + 32));
    *buf = 136315906;
    v12 = "AVVoiceTriggerServer.mm";
    v13 = 1024;
    v14 = 2286;
    v15 = 2112;
    v16 = v2;
    v17 = 1024;
    v18 = [v2 processIdentifier];
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Interruption Handler: %@, client PID: %d)", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = [WeakRetained notificationQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_169;
    v8[3] = &unk_1E7ECE038;
    v9 = v5;
    v10 = WeakRetained;
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = objc_loadWeakRetained((a1 + 32));
    *buf = 136315906;
    v18 = "AVVoiceTriggerServer.mm";
    v19 = 1024;
    v20 = 2297;
    v21 = 2112;
    v22 = v2;
    v23 = 1024;
    v24 = [v2 processIdentifier];
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalidation Handler: %@, client PID: %d exited", buf, 0x22u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[1];
  v6 = *(v5 + 72);
  v7 = v6;
  if (v6)
  {
    v8 = [v6 processIdentifier];
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = v8 == [v9 processIdentifier];

    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_loadWeakRetained((a1 + 32));
        v12 = [v11 processIdentifier];
        *buf = 136315650;
        v18 = "AVVoiceTriggerServer.mm";
        v19 = 1024;
        v20 = 2303;
        v21 = 1024;
        LODWORD(v22) = v12;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling Barge-In since PID: %d exited.", buf, 0x18u);
      }

      AVVoiceTriggerServerImpl::enableBargeInMode(v5, 0, 0);
    }
  }

  if (v4)
  {
    v13 = [WeakRetained notificationQueue];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_170;
    v15[3] = &unk_1E7ECE038;
    v15[4] = WeakRetained;
    v16 = v4;
    dispatch_async(v13, v15);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_2_171(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = [*(a1 + 32) processIdentifier];
    *buf = 136315650;
    v17 = "AVVoiceTriggerServer.mm";
    v18 = 1024;
    v19 = 2316;
    v20 = 1024;
    v21 = v2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding connection for client PID (%d)", buf, 0x18u);
  }

  v3 = [*(a1 + 40) clientConnections];
  [v3 addObject:*(a1 + 32)];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v17 = "AVVoiceTriggerServer.mm";
    v18 = 1024;
    v19 = 2319;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Client connections dump:", buf, 0x12u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [*(a1 + 40) clientConnections];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v24 count:16];
  if (v5)
  {
    v6 = *v13;
    v7 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v10 = [v9 processIdentifier];
          *buf = 136315906;
          v17 = "AVVoiceTriggerServer.mm";
          v18 = 1024;
          v19 = 2321;
          v20 = 1024;
          v21 = v10;
          v22 = 2112;
          v23 = v9;
          _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d \tFor client PID (%d): %@", buf, 0x22u);
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v24 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_170(uint64_t a1)
{
  v2 = [*(a1 + 32) clientConnections];
  [v2 removeObject:*(a1 + 40)];
}

void __59__AVVoiceTriggerServer_listener_shouldAcceptNewConnection___block_invoke_169(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = [*(a1 + 40) clientConnections];
  [v2 removeObject:*(a1 + 32)];
}

- (void)siriClientRecordStateChanged:(BOOL)a3
{
  v5 = [(AVVoiceTriggerServer *)self notificationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__AVVoiceTriggerServer_siriClientRecordStateChanged___block_invoke;
  v6[3] = &unk_1E7ECE010;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

void __53__AVVoiceTriggerServer_siriClientRecordStateChanged___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = *(v2 + 116);
  if (*(a1 + 40) == 1)
  {
    v4 = v3 + 1;
LABEL_5:
    *(v2 + 116) = v4;
    goto LABEL_6;
  }

  if (v3)
  {
    v4 = v3 - 1;
    goto LABEL_5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "AVVoiceTriggerServer.mm";
    v29 = 1024;
    v30 = 1604;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d mNumRecordingSiriClients trying to go negative", buf, 0x12u);
    v4 = *(v2 + 116);
  }

  else
  {
    v4 = 0;
  }

LABEL_6:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "AVVoiceTriggerServer.mm";
    v29 = 1024;
    v30 = 1607;
    v31 = 1024;
    v32 = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d recording siri clients %d", buf, 0x18u);
    v4 = *(v2 + 116);
  }

  v5 = v4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v28 = "AVVoiceTriggerServer.mm";
    v29 = 1024;
    v30 = 1585;
    v31 = 1024;
    v32 = v4 != 0;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d %d", buf, 0x18u);
    v5 = *(v2 + 116);
  }

  *(v2 + 64) = v4 != 0;
  v6 = [*(a1 + 32) clientConnections];
  v7 = [v6 count];

  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [*(a1 + 32) clientConnections];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v11 = v5;
      v12 = *v23;
      v13 = MEMORY[0x1E69E9C10];
      *&v10 = 136315650;
      v21 = v10;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 remoteObjectProxy];
          v17 = v16 == 0;

          if (v17)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v19 = [v15 processIdentifier];
              *buf = v21;
              v28 = "AVVoiceTriggerServer.mm";
              v29 = 1024;
              v30 = 2255;
              v31 = 1024;
              v32 = v19;
              _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d remoteObjectProxy is nil for client PID (%d)", buf, 0x18u);
            }
          }

          else
          {
            v18 = [v15 remoteObjectProxy];
            [v18 siriClientRecordStateChangedNotification:*(a1 + 40) recordingCount:v11];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v28 = "AVVoiceTriggerServer.mm";
    v29 = 1024;
    v30 = 2259;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d No clients connected", buf, 0x12u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)speechDetectionVADCreated
{
  v9 = *MEMORY[0x1E69E9840];
  serverImpl = self->serverImpl;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "AVVoiceTriggerServer.mm";
    v7 = 1024;
    v8 = 1569;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d speechDetectionVADCreated()", &v5, 0x12u);
  }

  var16 = serverImpl->var16;
  os_unfair_recursive_lock_lock_with_options();
  if (serverImpl->var10 && serverImpl->var12 && serverImpl->var11)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "AVVoiceTriggerServer.mm";
      v7 = 1024;
      v8 = 1576;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d attempt to force enable AOP voice trigger", &v5, 0x12u);
    }

    AVVoiceTriggerServerImpl::enableVoiceTriggerListening(serverImpl, 1, 1, &__block_literal_global_359);
    notify_post("com.apple.coreaudio.speechDetectionVAD.created");
  }

  os_unfair_recursive_lock_unlock();
  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)isAssistantVoiceTriggerEnabled
{
  serverImpl = self->serverImpl;
  var16 = serverImpl->var16;
  os_unfair_recursive_lock_lock_with_options();
  var11 = 0;
  if (serverImpl->var12)
  {
    var11 = serverImpl->var11;
  }

  os_unfair_recursive_lock_unlock();
  return var11;
}

- (void)sendVoiceTriggerOccuredNotification:(id)a3 triggerTime:(unint64_t)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v33 = "AVVoiceTriggerServer.mm";
    v34 = 1024;
    v35 = 2155;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d sending voice trigger notification with trigger dictionary %@", buf, 0x1Cu);
  }

  afSiriActivationBuiltInMicVoiceFuncPtr = self->_afSiriActivationBuiltInMicVoiceFuncPtr;
  if (afSiriActivationBuiltInMicVoiceFuncPtr)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __72__AVVoiceTriggerServer_sendVoiceTriggerOccuredNotification_triggerTime___block_invoke;
    v28[3] = &unk_1E7ECDFE8;
    v29 = v6;
    v30 = a4;
    afSiriActivationBuiltInMicVoiceFuncPtr(a4, v29, v28);
  }

  v8 = [(AVVoiceTriggerServer *)self clientConnections];
  v9 = [v8 count] == 0;

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AVVoiceTriggerServer.mm";
      v34 = 1024;
      v35 = 2185;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d No clients connected", buf, 0x12u);
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(AVVoiceTriggerServer *)self clientConnections];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
    if (v11)
    {
      v13 = *v25;
      v14 = MEMORY[0x1E69E9C10];
      *&v12 = 136315650;
      v23 = v12;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = [v16 remoteObjectProxy];
          v18 = v17 == 0;

          if (v18)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v21 = [v16 processIdentifier];
              *buf = v23;
              v33 = "AVVoiceTriggerServer.mm";
              v34 = 1024;
              v35 = 2180;
              v36 = 1024;
              LODWORD(v37) = v21;
              _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d remoteObjectProxy is nil for client PID (%d)", buf, 0x18u);
            }
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v16 processIdentifier];
              *buf = v23;
              v33 = "AVVoiceTriggerServer.mm";
              v34 = 1024;
              v35 = 2176;
              v36 = 1024;
              LODWORD(v37) = v19;
              _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d sendVoiceTriggerOccuredNotification for client PID (%d)", buf, 0x18u);
            }

            v20 = [v16 remoteObjectProxy];
            [v20 voiceTriggerNotification:v6];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v24 objects:v31 count:16];
      }

      while (v11);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __72__AVVoiceTriggerServer_sendVoiceTriggerOccuredNotification_triggerTime___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v13 = 136316162;
      v14 = "AVVoiceTriggerServer.mm";
      v15 = 1024;
      v16 = 2163;
      v17 = 1024;
      *v18 = a2;
      *&v18[4] = 2112;
      *&v18[6] = v5;
      v19 = 2112;
      v20 = v11;
      v7 = MEMORY[0x1E69E9C10];
      v8 = "%25s:%-5d failed to send voicetrigger MAF. success(%d), err(%@). %@";
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 44;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v13 = 136315650;
    v14 = "AVVoiceTriggerServer.mm";
    v15 = 1024;
    v16 = 2166;
    v17 = 2048;
    *v18 = v6;
    v7 = MEMORY[0x1E69E9C10];
    v8 = "%25s:%-5d voicetrigger sent to MAF. triggerTime(%lld)";
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 28;
LABEL_7:
    _os_log_impl(&dword_1B9A08000, v7, v9, v8, &v13, v10);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)activateSecureSession:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315650;
    *&v12[4] = "AVVoiceTriggerServer.mm";
    *&v12[12] = 1024;
    *&v12[14] = 2149;
    *&v12[18] = 1024;
    *&v12[20] = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d activateSecureSession: %d", v12, 0x18u);
  }

  serverImpl = self->serverImpl;
  v8 = v6;
  if (!isHACProduct(0))
  {
    goto LABEL_15;
  }

  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    v10 = [serverImpl->var14 notificationQueue];
    *v12 = MEMORY[0x1E69E9820];
    *&v12[8] = 3221225472;
    *&v12[16] = ___ZN24AVVoiceTriggerServerImpl21activateSecureSessionEbU13block_pointerFvP7NSErrorE_block_invoke;
    v13 = &unk_1E7ECE148;
    v15 = serverImpl;
    v16 = v4;
    v14 = v8;
    dispatch_async(v10, v12);

    v9 = v14;
  }

  else
  {
LABEL_15:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "AVVoiceTriggerServer.mm";
      *&v12[12] = 1024;
      *&v12[14] = 1691;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Session activation/deactivation unsupported", v12, 0x12u);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:1852797029 userInfo:0];
    (*(v8 + 2))(v8, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setAggressiveECMode:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v45 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v36 = "AVVoiceTriggerServer.mm";
    v37 = 1024;
    v38 = 2138;
    v39 = 1024;
    LODWORD(p_inAddress) = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d setAggressiveECMode: %d", buf, 0x18u);
  }

  serverImpl = self->serverImpl;
  if (isHACProduct(0))
  {
    outData = 0;
    inQualifierData = 1936290409;
    ioDataSize = 4;
    p_inObjectID = *"diuibolg";
    LODWORD(v26) = 0;
    PropertyData = AudioObjectGetPropertyData(1u, &p_inObjectID, 4u, &inQualifierData, &ioDataSize, &outData);
    v10.i32[0] = inQualifierData;
    v11 = vrev64_s16(*&vmovl_u8(v10));
    inAddress.mSelector = vuzp1_s8(v11, v11).u32[0];
    LOBYTE(inAddress.mScope) = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v36 = "AVVoiceTriggerServer.mm";
      v37 = 1024;
      v38 = 1828;
      v39 = 2080;
      p_inAddress = &inAddress;
      v41 = 1024;
      v42 = outData;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d useCaseID: %s, deviceID: %d", buf, 0x22u);
    }

    if (PropertyData)
    {
      LOBYTE(v29.mSelector) = HIBYTE(PropertyData);
      BYTE1(v29.mSelector) = BYTE2(PropertyData);
      BYTE2(v29.mSelector) = BYTE1(PropertyData);
      HIBYTE(v29.mSelector) = PropertyData;
      LOBYTE(v29.mScope) = 0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v36 = "AVVoiceTriggerServer.mm";
        v37 = 1024;
        v38 = 1832;
        v39 = 2080;
        p_inAddress = &v29;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Could not get deviceID error: %s ", buf, 0x1Cu);
      }
    }

    SpeechDetectionDeviceID = outData;
  }

  else
  {
    SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(0, 0, v8);
  }

  inObjectID = SpeechDetectionDeviceID;
  if (SpeechDetectionDeviceID)
  {
    var16 = serverImpl->var16;
    os_unfair_recursive_lock_lock_with_options();
    *&inAddress.mSelector = 0x696E70746467706DLL;
    inAddress.mElement = 0;
    *&v29.mSelector = 0x696E70746467686DLL;
    v29.mElement = 0;
    outData = 1987339878;
    p_inObjectID = &inObjectID;
    v26 = &inAddress;
    v27 = &v29;
    v28 = 1987339878;
    if (AudioObjectHasProperty(SpeechDetectionDeviceID, &inAddress) && AudioObjectHasProperty(inObjectID, &v29) && (inQualifierData = 0, *buf = 4, !AudioObjectGetPropertyData(inObjectID, &v29, 4u, &v28, buf, &inQualifierData)) && inQualifierData)
    {
      v14 = 0.0;
      if (v4)
      {
        v14 = 1.0;
      }

      inQualifierData = LODWORD(v14);
      v15 = AudioObjectSetPropertyData(inObjectID, &inAddress, 4u, &outData, 4u, &inQualifierData);
      if (!v15)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        v24 = "Disable";
        v36 = "AVVoiceTriggerServer.mm";
        *buf = 136315906;
        v37 = 1024;
        if (v4)
        {
          v24 = "Enable";
        }

        v38 = 1651;
        v39 = 2080;
        p_inAddress = v24;
        v41 = 1024;
        v42 = inObjectID;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "%25s:%-5d setAggressiveECMode (%s) on device %d";
        v19 = OS_LOG_TYPE_DEFAULT;
        v20 = 34;
        goto LABEL_25;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v16 = "Disable";
        v36 = "AVVoiceTriggerServer.mm";
        *buf = 136316162;
        v37 = 1024;
        if (v4)
        {
          v16 = "Enable";
        }

        v38 = 1654;
        v39 = 2080;
        p_inAddress = v16;
        v41 = 1024;
        v42 = inObjectID;
        v43 = 1024;
        v44 = v15;
        v17 = MEMORY[0x1E69E9C10];
        v18 = "%25s:%-5d setAggressiveECMode failure to %s listening property on device %d [err2 (%d)]";
        v19 = OS_LOG_TYPE_ERROR;
        v20 = 40;
        goto LABEL_25;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "AVVoiceTriggerServer.mm";
      v37 = 1024;
      v38 = 1658;
      v39 = 1024;
      LODWORD(p_inAddress) = inObjectID;
      v17 = MEMORY[0x1E69E9C10];
      v18 = "%25s:%-5d setAggressiveECMode device(%d) doesn't have property.";
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 24;
LABEL_25:
      _os_log_impl(&dword_1B9A08000, v17, v19, v18, buf, v20);
    }

LABEL_26:
    os_unfair_recursive_lock_unlock();
    v21 = 0;
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = "Disabling";
    v36 = "AVVoiceTriggerServer.mm";
    *buf = 136315650;
    if (v4)
    {
      v22 = "Enabling";
    }

    v37 = 1024;
    v38 = 1662;
    v39 = 2080;
    p_inAddress = v22;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d %s setAggressiveECMode - No valid audio device found", buf, 0x1Cu);
  }

  v21 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:560227702 userInfo:0];
LABEL_32:
  v6[2](v6, v21);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)siriClientsRecordingReply:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315394;
    *&v10[4] = "AVVoiceTriggerServer.mm";
    *&v10[12] = 1024;
    *&v10[14] = 2132;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d siriClientsRecording", v10, 0x12u);
  }

  serverImpl = self->serverImpl;
  v6 = v4;
  v7 = [serverImpl->var14 notificationQueue];
  *v10 = MEMORY[0x1E69E9820];
  *&v10[8] = 3221225472;
  *&v10[16] = ___ZN24AVVoiceTriggerServerImpl25siriClientsRecordingReplyEU13block_pointerFvmP7NSErrorE_block_invoke;
  v11 = &unk_1E7ECEB40;
  v12 = v6;
  v13 = serverImpl;
  v8 = v6;
  dispatch_async(v7, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)listeningEnabledReply:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "AVVoiceTriggerServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2126;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d listeningEnabled", buf, 0x12u);
  }

  serverImpl = self->serverImpl;
  v6 = v4;
  outData = 0;
  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v7);
  if (SpeechDetectionDeviceID)
  {
    var16 = serverImpl->var16;
    os_unfair_recursive_lock_lock_with_options();
    strcpy(buf, "lepdbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    if (AudioObjectHasProperty(SpeechDetectionDeviceID, buf))
    {
      strcpy(buf, "lepdbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      ioDataSize[0] = 4;
      PropertyData = AudioObjectGetPropertyData(SpeechDetectionDeviceID, buf, 0, 0, ioDataSize, &outData);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "AVVoiceTriggerServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1243;
        *&buf[18] = 1024;
        *&buf[20] = outData;
        _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d listeningEnabled : %u", buf, 0x18u);
      }

      if (!PropertyData || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      CAX4CCString::CAX4CCString(ioDataSize, PropertyData);
      *buf = 136315906;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1245;
      *&buf[18] = 2080;
      *&buf[20] = ioDataSize;
      *&buf[28] = 1024;
      *&buf[30] = SpeechDetectionDeviceID;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d Error %s querying listeningEnabled on device 0x%x";
      v13 = 34;
    }

    else
    {
      PropertyData = 2003332927;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_15:
        os_unfair_recursive_lock_unlock();
        goto LABEL_16;
      }

      *buf = 136315394;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1249;
      v11 = MEMORY[0x1E69E9C10];
      v12 = "%25s:%-5d Property not supported";
      v13 = 18;
    }

    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, v12, buf, v13);
    goto LABEL_15;
  }

  PropertyData = 560227702;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AVVoiceTriggerServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1254;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d speech detection device not found!", buf, 0x12u);
  }

LABEL_16:
  v14 = [serverImpl->var14 notificationQueue];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN24AVVoiceTriggerServerImpl21listeningEnabledReplyEU13block_pointerFvbP7NSErrorE_block_invoke;
  *&buf[24] = &unk_1E7ECEB40;
  *&buf[32] = v6;
  v19 = outData;
  v20 = PropertyData;
  v15 = v6;
  dispatch_async(v14, buf);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)getInputChannelInfoCompletion:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  serverImpl = self->serverImpl;
  v26 = 0;
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    v8 = 0;
    v12 = 0;
    v20 = 0;
    v10 = 1;
    goto LABEL_19;
  }

  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(0, &v26, v6);
  v8 = 0;
  v9 = v26;
  v10 = 1;
  if (v26)
  {
    v12 = 0;
  }

  else
  {
    v11 = SpeechDetectionDeviceID;
    v12 = 0;
    if (SpeechDetectionDeviceID)
    {
      var16 = serverImpl->var16;
      os_unfair_recursive_lock_lock_with_options();
      *&inAddress.mSelector = 0x676C6F6273647370;
      inAddress.mElement = 0;
      if (AudioObjectHasProperty(v11, &inAddress))
      {
        v14 = AVVoiceTriggerServerImpl::getDictionaryForPropertySelector(0x73647370u, 0, &v26);
        v15 = v14;
        v16 = v26;
        if (v26 || !v14)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            CAX4CCString::CAX4CCString(v29, v16);
            inAddress.mSelector = 136316162;
            *&inAddress.mScope = "AVVoiceTriggerServer.mm";
            v31 = 1024;
            v32 = 1538;
            v33 = 2080;
            v34 = v29;
            v35 = 1024;
            v36 = v11;
            v37 = 2112;
            v38 = v15;
            _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Error %s fetching barge-in param dict on device 0x%x. Dict(%@)", &inAddress, 0x2Cu);
            v8 = 0;
            v12 = 0;
            v10 = 1;
          }

          else
          {
            v8 = 0;
            v12 = 0;
          }
        }

        else
        {
          v17 = [v14 objectForKeyedSubscript:@"DSP channels"];
          v8 = [v17 unsignedIntValue];

          v18 = [v15 objectForKeyedSubscript:@"mics"];
          v10 = [v18 unsignedIntValue];

          v19 = [v15 objectForKeyedSubscript:@"refs"];
          v12 = [v19 unsignedIntValue];
        }
      }

      else
      {
        v8 = 0;
        v12 = 0;
      }

      os_unfair_recursive_lock_unlock();
      v9 = v26;
      if (!v26)
      {
        goto LABEL_18;
      }

LABEL_11:
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v9 userInfo:0];
      goto LABEL_19;
    }
  }

  if (v26)
  {
    goto LABEL_11;
  }

LABEL_18:
  v20 = 0;
LABEL_19:
  v27[0] = @"dsp-count";
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  v28[0] = v21;
  v27[1] = @"mic-count";
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v28[1] = v22;
  v27[2] = @"speaker-ref-count";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  v28[2] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v31 = 1024;
    v32 = 2120;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d getInputChannelInfoCompletion: %@", &inAddress, 0x1Cu);
  }

  v4[2](v4, v24, v20);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)voiceTriggerPastDataFramesAvailable:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  outData = 0;
  serverImpl = self->serverImpl;
  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v6);
  if (!SpeechDetectionDeviceID)
  {
    goto LABEL_13;
  }

  var16 = serverImpl->var16;
  os_unfair_recursive_lock_lock_with_options();
  if (!serverImpl->var10 || (*&inAddress.mSelector = 0x676C6F6264617064, inAddress.mElement = 0, !AudioObjectHasProperty(SpeechDetectionDeviceID, &inAddress)))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "AVVoiceTriggerServer.mm";
      v17 = 1024;
      v18 = 1514;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Property not supported or hardware doesn't support voice trigger", &inAddress, 0x12u);
    }

    goto LABEL_12;
  }

  *&inAddress.mSelector = 0x676C6F6264617064;
  inAddress.mElement = 0;
  ioDataSize[0] = 4;
  PropertyData = AudioObjectGetPropertyData(SpeechDetectionDeviceID, &inAddress, 0, 0, ioDataSize, &outData);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v17 = 1024;
    v18 = 1508;
    v19 = 1024;
    LODWORD(v20) = outData;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d PastData available : %u", &inAddress, 0x18u);
  }

  if (!PropertyData)
  {
LABEL_12:
    os_unfair_recursive_lock_unlock();
LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    CAX4CCString::CAX4CCString(ioDataSize, PropertyData);
    inAddress.mSelector = 136315906;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v17 = 1024;
    v18 = 1510;
    v19 = 2080;
    v20 = ioDataSize;
    v21 = 1024;
    v22 = SpeechDetectionDeviceID;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Error %s fetching past data available frames on device 0x%x", &inAddress, 0x22u);
  }

  os_unfair_recursive_lock_unlock();
  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:PropertyData userInfo:0];
LABEL_14:
  v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  v12 = outData;
  if (v11)
  {
    inAddress.mSelector = 136315650;
    *&inAddress.mScope = "AVVoiceTriggerServer.mm";
    v17 = 1024;
    v18 = 2103;
    v19 = 1024;
    LODWORD(v20) = outData;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d past frames %u", &inAddress, 0x18u);
    v12 = outData;
  }

  v4[2](v4, v12, v10);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)enableBargeInMode:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v12 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315394;
    v9 = "AVVoiceTriggerServer.mm";
    v10 = 1024;
    v11 = 2089;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d enableBargeInMode", &v8, 0x12u);
  }

  AVVoiceTriggerServerImpl::enableBargeInMode(self->serverImpl, v4, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateVoiceTriggerConfiguration:(id)a3 reply:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v15 = "AVVoiceTriggerServer.mm";
    v16 = 1024;
    v17 = 2064;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d updateVoiceTriggerConfiguration", buf, 0x12u);
  }

  if (isHACProduct(0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "AVVoiceTriggerServer.mm";
      v16 = 1024;
      v17 = 2068;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Configuration of AOP via AVVTC unsupported on this product", buf, 0x12u);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:1852797029 userInfo:0];
    v7[2](v7, v8);
  }

  else if (v6)
  {
    serverImpl = self->serverImpl;
    v8 = v7;
    if (AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v10))
    {
      var16 = serverImpl->var16;
      os_unfair_recursive_lock_lock_with_options();
      [v8 copy];
      operator new();
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "AVVoiceTriggerServer.mm";
      v16 = 1024;
      v17 = 1217;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Updating voice trigger configuration - No valid audio device found", buf, 0x12u);
    }

    if (v8)
    {
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:560227702 userInfo:0];
      v8[2](v8, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "AVVoiceTriggerServer.mm";
      v16 = 1024;
      v17 = 2077;
      _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d First pass configuration data is nil", buf, 0x12u);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    v7[2](v7, v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)speakerStateMutedReply:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v10 = 136315394;
    *&v10[4] = "AVVoiceTriggerServer.mm";
    *&v10[12] = 1024;
    *&v10[14] = 2058;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d speakerMuted", v10, 0x12u);
  }

  serverImpl = self->serverImpl;
  v6 = v4;
  v7 = [serverImpl->var14 notificationQueue];
  *v10 = MEMORY[0x1E69E9820];
  *&v10[8] = 3221225472;
  *&v10[16] = ___ZN24AVVoiceTriggerServerImpl12speakerMutedEU13block_pointerFvbP7NSErrorE_block_invoke;
  v11 = &unk_1E7ECEB40;
  v12 = v6;
  v13 = serverImpl;
  v8 = v6;
  dispatch_async(v7, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)speakerStateActiveReply:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__AVVoiceTriggerServer_speakerStateActiveReply___block_invoke;
  v7[3] = &unk_1E7ECE120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(notificationQueue, v7);
}

void __48__AVVoiceTriggerServer_speakerStateActiveReply___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 136315394;
    *&v7[4] = "AVVoiceTriggerServer.mm";
    *&v7[12] = 1024;
    *&v7[14] = 2051;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d speakerStateActive", v7, 0x12u);
  }

  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 40);
  v4 = [*(v2 + 80) notificationQueue];
  *v7 = MEMORY[0x1E69E9820];
  *&v7[8] = 3221225472;
  *&v7[16] = ___ZN24AVVoiceTriggerServerImpl12isPortActiveEmU13block_pointerFvbP7NSErrorE_block_invoke;
  v8 = &unk_1E7ECE0F8;
  v10 = v2;
  v11 = 1;
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, v7);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)enableSpeakerStateListening:(BOOL)a3 reply:(id)a4
{
  v6 = a4;
  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__AVVoiceTriggerServer_enableSpeakerStateListening_reply___block_invoke;
  block[3] = &unk_1E7ECDFC0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(notificationQueue, block);
}

uint64_t __58__AVVoiceTriggerServer_enableSpeakerStateListening_reply___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 48);
    v5 = 136315650;
    v6 = "AVVoiceTriggerServer.mm";
    v7 = 1024;
    v8 = 2038;
    v9 = 1024;
    v10 = v2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableSpeakerStateListening %d", &v5, 0x18u);
  }

  AVVoiceTriggerServerImpl::enableListeningOnPort(*(*(a1 + 32) + 8), 1, *(a1 + 48));
  result = (*(*(a1 + 40) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)portsActiveReply:(id)a3
{
  v4 = a3;
  notificationQueue = self->_notificationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AVVoiceTriggerServer_portsActiveReply___block_invoke;
  v7[3] = &unk_1E7ECE120;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(notificationQueue, v7);
}

void __41__AVVoiceTriggerServer_portsActiveReply___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = AVVoiceTriggerServerImpl::getCachedPortStateInfo(*(*(a1 + 32) + 8));
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315906;
    v6 = "AVVoiceTriggerServer.mm";
    v7 = 1024;
    v8 = 2023;
    v9 = 2048;
    v10 = v2;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d portsActiveReply: (%p) (%@)", &v5, 0x26u);
  }

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
  }

  (*(*(a1 + 40) + 16))();

  v4 = *MEMORY[0x1E69E9840];
}

- (void)enableListeningOnPorts:(id)a3 reply:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "AVVoiceTriggerServer.mm";
    v18 = 1024;
    v19 = 1995;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableListeningOnPorts: (%@)", buf, 0x1Cu);
  }

  notificationQueue = self->_notificationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__AVVoiceTriggerServer_enableListeningOnPorts_reply___block_invoke;
  block[3] = &unk_1E7ECDF98;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v9 = v6;
  v10 = v7;
  dispatch_async(notificationQueue, block);

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __53__AVVoiceTriggerServer_enableListeningOnPorts_reply___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKey:{v6, v13}];
        v8 = [v7 BOOLValue];
        v9 = v6;
        if (v9)
        {
          if ([@"AVVoiceTriggerPort_BuiltinSpeaker" isEqualToString:v9])
          {
            v10 = 1;
          }

          else if ([@"AVVoiceTriggerPort_BluetoothSpeaker" isEqualToString:v9])
          {
            v10 = 2;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        AVVoiceTriggerServerImpl::enableListeningOnPort(*(*(a1 + 40) + 8), v10, v8);
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  result = (*(*(a1 + 48) + 16))();
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setListeningProperty:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "AVVoiceTriggerServer.mm";
    v25 = 1024;
    v26 = 1984;
    v27 = 1024;
    LODWORD(v28) = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d setListeningProperty: %d", buf, 0x18u);
  }

  serverImpl = self->serverImpl;
  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v7);
  if (SpeechDetectionDeviceID)
  {
    var16 = serverImpl->var16;
    os_unfair_recursive_lock_lock_with_options();
    v21.mElement = 0;
    inData = v4;
    *&v21.mSelector = 0x676C6F626470656CLL;
    if (AudioObjectHasProperty(SpeechDetectionDeviceID, &v21))
    {
      v11 = AudioObjectSetPropertyData(SpeechDetectionDeviceID, &v21, 0, 0, 4u, &inData);
      if (v11)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = "AVVoiceTriggerServer.mm";
          v26 = 1051;
          v12 = "Disable";
          v27 = 2080;
          *buf = 136316162;
          v25 = 1024;
          if (v4)
          {
            v12 = "Enable";
          }

          v28 = v12;
          v29 = 1024;
          v30 = SpeechDetectionDeviceID;
          v31 = 1024;
          v32 = v11;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d setListeningProperty failure to %s listening property on device %d [err2 (%d)]";
          v15 = OS_LOG_TYPE_ERROR;
          v16 = 40;
          goto LABEL_21;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v19 = "Disable";
        v24 = "AVVoiceTriggerServer.mm";
        v26 = 1048;
        v27 = 2080;
        *buf = 136315906;
        v25 = 1024;
        if (v4)
        {
          v19 = "Enable";
        }

        v28 = v19;
        v29 = 1024;
        v30 = SpeechDetectionDeviceID;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d setListeningProperty (%s) on device %d";
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 34;
        goto LABEL_21;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v24 = "AVVoiceTriggerServer.mm";
      v25 = 1024;
      v26 = 1055;
      v27 = 1024;
      LODWORD(v28) = SpeechDetectionDeviceID;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d setListeningProperty device(%d) doesn't have property.";
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 24;
LABEL_21:
      _os_log_impl(&dword_1B9A08000, v13, v15, v14, buf, v16);
    }

    os_unfair_recursive_lock_unlock();
    v18 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = "Disabling";
    v24 = "AVVoiceTriggerServer.mm";
    *buf = 136315650;
    if (v4)
    {
      v17 = "Enabling";
    }

    v25 = 1024;
    v26 = 1059;
    v27 = 2080;
    v28 = v17;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d %s setListeningProperty - No valid audio device found", buf, 0x1Cu);
  }

  v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:560227702 userInfo:0];
LABEL_23:
  v6[2](v6, v18);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)enableVoiceTriggerListening:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "AVVoiceTriggerServer.mm";
    v10 = 1024;
    v11 = 1978;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableVoiceTriggerListening: %d", &v8, 0x18u);
  }

  AVVoiceTriggerServerImpl::enableVoiceTriggerListening(self->serverImpl, v4, 0, v6);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initializeWithReply:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = 136315394;
    v10 = "AVVoiceTriggerServer.mm";
    v11 = 1024;
    v12 = 1967;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d Initialize Voice Trigger", &v9, 0x12u);
  }

  serverImpl = self->serverImpl;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AVVoiceTriggerServer.mm";
    v11 = 1024;
    v12 = 751;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d Re-Notifying AOP listening state", &v9, 0x12u);
  }

  SpeechDetectionDeviceID = AVVoiceTriggerServerImpl::GetSpeechDetectionDeviceID(1, 0, v6);
  if (SpeechDetectionDeviceID)
  {
    AVVoiceTriggerServerImpl::notifyAOPListeningStateChanged(serverImpl, SpeechDetectionDeviceID);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "AVVoiceTriggerServer.mm";
    v11 = 1024;
    v12 = 755;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d Re-Notifying AOP listening state failed -- device not found", &v9, 0x12u);
  }

  v4[2](v4, 0);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = 0;

  serverImpl = self->serverImpl;
  if (serverImpl)
  {
    (*(serverImpl->var0 + 1))(serverImpl);
    self->serverImpl = 0;
  }

  clientConnections = self->_clientConnections;
  self->_clientConnections = 0;

  v6.receiver = self;
  v6.super_class = AVVoiceTriggerServer;
  [(AVVoiceTriggerServer *)&v6 dealloc];
}

- (AVVoiceTriggerServer)init
{
  v25 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVVoiceTriggerServer;
  v2 = [(AVVoiceTriggerServer *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("AVVoiceTriggerServer.notification", v3);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v4;

    v6 = v2->_notificationQueue;
    if (GetAudioWorkQueuePriority(void)::once != -1)
    {
      dispatch_once(&GetAudioWorkQueuePriority(void)::once, &__block_literal_global_9182);
    }

    v7 = GetCustomRootQueue(GetAudioWorkQueuePriority(void)::gAudioWorkQueuePriority);
    dispatch_set_target_queue(v6, v7);

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v8;

    v10 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.audio.voicetrigger.xpc"];
    serverListener = v2->_serverListener;
    v2->_serverListener = v10;

    [(NSXPCListener *)v2->_serverListener setDelegate:v2];
    strcpy(__path, "/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices");
    v12 = dlopen(__path, 1);
    v2->_mobileAssistantDylib = v12;
    if (v12)
    {
      v13 = dlsym(v12, "AFSiriActivationBuiltInMicVoice");
      v2->_afSiriActivationBuiltInMicVoiceFuncPtr = v13;
      if (!v13)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        *buf = 136315394;
        *&buf[4] = "AVVoiceTriggerServer.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1910;
        v14 = MEMORY[0x1E69E9C10];
        v15 = "%25s:%-5d Unable to find AFSiriActivationBuiltInMicVoice in MAF";
        v16 = OS_LOG_TYPE_ERROR;
        v17 = 18;
LABEL_13:
        _os_log_impl(&dword_1B9A08000, v14, v16, v15, buf, v17);
LABEL_14:
        operator new();
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1913;
      v22 = 2048;
      v23 = v13;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d Successfully found address of AFSiriActivationBuiltInMicVoice in MAF: 0x%p";
      v16 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 136315650;
      *&buf[4] = "AVVoiceTriggerServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1917;
      v22 = 2080;
      v23 = __path;
      v14 = MEMORY[0x1E69E9C10];
      v15 = "%25s:%-5d Unable to open %s";
      v16 = OS_LOG_TYPE_ERROR;
    }

    v17 = 28;
    goto LABEL_13;
  }

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

void __28__AVVoiceTriggerServer_init__block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "AVVoiceTriggerServer.mm";
    v6 = 1024;
    v7 = 1936;
    v8 = 1024;
    v9 = a2;
    _os_log_impl(&dword_1B9A08000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "%25s:%-5d VTStateManager callback message: %d (0-start,1-stop,2-modelupdate)", &v4, 0x18u);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end