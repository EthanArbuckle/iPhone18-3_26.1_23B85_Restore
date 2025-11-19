@interface RPBroadcastSampleHandler
- (id)audioQueue;
- (id)group;
- (id)videoQueue;
- (void)_processPayload:(id)a3;
- (void)_processPayloadWithAudioSample:(id)a3 type:(int64_t)a4;
- (void)_processPayloadWithVideoSample:(id)a3;
- (void)_setupListenerWithEndpoint:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)finishBroadcastWithError:(NSError *)error;
- (void)processPayload:(id)a3 completion:(id)a4;
@end

@implementation RPBroadcastSampleHandler

- (id)group
{
  if (group_queueToken != -1)
  {
    [RPBroadcastSampleHandler group];
  }

  v3 = group_group;

  return v3;
}

uint64_t __33__RPBroadcastSampleHandler_group__block_invoke()
{
  group_group = dispatch_group_create();

  return MEMORY[0x2821F96F8]();
}

- (id)audioQueue
{
  if (audioQueue_onceToken_0 != -1)
  {
    [RPBroadcastSampleHandler audioQueue];
  }

  v3 = audioQueue_sAudioQueue_0;

  return v3;
}

void __38__RPBroadcastSampleHandler_audioQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.broadcast.AudioSampleQueue", v2);
  v1 = audioQueue_sAudioQueue_0;
  audioQueue_sAudioQueue_0 = v0;
}

- (id)videoQueue
{
  if (videoQueue_onceToken_0 != -1)
  {
    [RPBroadcastSampleHandler videoQueue];
  }

  v3 = videoQueue_sVideoQueue_0;

  return v3;
}

void __38__RPBroadcastSampleHandler_videoQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.replaykit.broadcast.VideoSampleQueue", v2);
  v1 = videoQueue_sVideoQueue_0;
  videoQueue_sVideoQueue_0 = v0;
}

- (void)finishBroadcastWithError:(NSError *)error
{
  v4 = error;
  v5 = [(RPBroadcastSampleHandler *)self group];
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__RPBroadcastSampleHandler_finishBroadcastWithError___block_invoke;
  v8[3] = &unk_278B61C60;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_notify(v5, v6, v8);
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  [(RPBroadcastHandler *)self setExtensionContext:v4];
  [v4 setDelegate:self];
}

- (void)_processPayload:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeySampleType"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyActionType"];
  v8 = [v7 integerValue];

  v9 = [v4 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyFrontmostAppBundleID"];
  v10 = v9;
  if (v6 == 1)
  {
    [(RPBroadcastSampleHandler *)self _processPayloadWithVideoSample:v4];
    goto LABEL_8;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(RPBroadcastSampleHandler *)self _processPayloadWithAudioSample:v4 type:v6];
    goto LABEL_8;
  }

  if (v9)
  {
    v18 = @"RPApplicationInfoBundleIdentifier";
    v19[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [(RPBroadcastSampleHandler *)self broadcastAnnotatedWithApplicationInfo:v11];
LABEL_7:

    goto LABEL_8;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      [(RPBroadcastSampleHandler *)self broadcastResumed];
    }

    else if (v8 == 4)
    {
      v13 = [(RPBroadcastSampleHandler *)self group];
      dispatch_group_enter(v13);

      [(RPBroadcastSampleHandler *)self broadcastFinished];
      v14 = [(RPBroadcastSampleHandler *)self group];
      dispatch_group_leave(v14);

      v15 = [(RPBroadcastHandler *)self extensionContext];
      [v15 completeRequestReturningItems:MEMORY[0x277CBEBF8] completionHandler:&__block_literal_global_19];
    }
  }

  else
  {
    if (v8 == 1)
    {
      v16 = [(RPBroadcastSampleHandler *)self group];
      dispatch_group_enter(v16);

      v11 = [v4 objectForKeyedSubscript:@"RPBroadcastExtensionKeyExtensionUserInfo"];
      [(RPBroadcastSampleHandler *)self broadcastStartedWithSetupInfo:v11];
      v17 = [(RPBroadcastSampleHandler *)self group];
      dispatch_group_leave(v17);

      goto LABEL_7;
    }

    if (v8 == 2)
    {
      [(RPBroadcastSampleHandler *)self broadcastPaused];
    }
  }

LABEL_8:

  v12 = *MEMORY[0x277D85DE8];
}

void __44__RPBroadcastSampleHandler__processPayload___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "completed extension request", v0, 2u);
  }
}

- (void)_processPayloadWithVideoSample:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.duration.value) = 136446466;
    *(&buf.duration.value + 4) = "[RPBroadcastSampleHandler _processPayloadWithVideoSample:]";
    LOWORD(buf.duration.flags) = 1024;
    *(&buf.duration.flags + 2) = 150;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Broadcast extension received video payload from replayd", &buf, 0x12u);
  }

  v5 = [v4 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyIOSurface"];
  v6 = [v5 ioSurface];
  if (v6)
  {
    v7 = v6;
    v8 = [v4 objectForKeyedSubscript:@"RPBroadcastProcessExtensionPayloadKeyTimingInfo"];
    memset(&buf, 0, sizeof(buf));
    [v8 getBytes:&buf length:72];
    v12 = buf;
    v9 = RPSampleBufferUtilities_CreateSampleBufferFromIOSurface(v7, &v12);
    v10 = [v4 objectForKeyedSubscript:@"RPSampleBufferVideoOrientation"];

    CMSetAttachment(v9, @"RPSampleBufferVideoOrientation", v10, 0);
    if (v9)
    {
      [(RPBroadcastSampleHandler *)self processSampleBuffer:v9 withType:1];
      CFRelease(v9);
    }

    else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPBroadcastSampleHandler _processPayloadWithVideoSample:];
    }
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPBroadcastSampleHandler _processPayloadWithVideoSample:];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_processPayloadWithAudioSample:(id)a3 type:(int64_t)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136446466;
    v10 = "[RPBroadcastSampleHandler _processPayloadWithAudioSample:type:]";
    v11 = 1024;
    v12 = 180;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Broadcast extension received audio payload from replayd", &v9, 0x12u);
  }

  DecodeAudioSampleBuffer = RPSampleBufferUtilities_CreateDecodeAudioSampleBuffer(v6);
  [(RPBroadcastSampleHandler *)self processSampleBuffer:DecodeAudioSampleBuffer withType:a4];
  if (DecodeAudioSampleBuffer)
  {
    CFRelease(DecodeAudioSampleBuffer);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)processPayload:(id)a3 completion:(id)a4
{
  v6 = a4;
  [(RPBroadcastSampleHandler *)self _processPayload:a3];
  v6[2]();
}

- (void)_setupListenerWithEndpoint:(id)a3
{
  v21[8] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAE80];
  v5 = a3;
  v6 = [[v4 alloc] initWithListenerEndpoint:v5];

  [(RPBroadcastHandler *)self setConnection:v6];
  v7 = [(RPBroadcastHandler *)self connection];
  [v7 setExportedObject:self];

  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D944E8];
  v9 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v21[3] = objc_opt_class();
  v21[4] = objc_opt_class();
  v21[5] = objc_opt_class();
  v21[6] = objc_opt_class();
  v21[7] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];
  v11 = [v9 setWithArray:v10];
  [v8 setClasses:v11 forSelector:sel_processPayload_completion_ argumentIndex:0 ofReply:0];

  v12 = [(RPBroadcastHandler *)self connection];
  [v12 setExportedInterface:v8];

  v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284D94558];
  v14 = [(RPBroadcastHandler *)self connection];
  [v14 setRemoteObjectInterface:v13];

  v15 = [(RPBroadcastHandler *)self connection];
  [v15 setInvalidationHandler:&__block_literal_global_93];

  v16 = [(RPBroadcastHandler *)self connection];
  [v16 setInterruptionHandler:&__block_literal_global_96];

  v17 = [(RPBroadcastHandler *)self connection];
  [v17 resume];

  v18 = [(RPBroadcastHandler *)self connection];
  v19 = [v18 remoteObjectProxyWithErrorHandler:&__block_literal_global_100];
  [(RPBroadcastSampleHandler *)self setDaemonProxy:v19];

  [(RPBroadcastDaemonProtocol *)self->_daemonProxy ping];
  v20 = *MEMORY[0x277D85DE8];
}

void __55__RPBroadcastSampleHandler__setupListenerWithEndpoint___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "connection to replayd invalidated", v0, 2u);
  }
}

void __55__RPBroadcastSampleHandler__setupListenerWithEndpoint___block_invoke_94()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "connection to replayd interrupted", v0, 2u);
  }
}

void __55__RPBroadcastSampleHandler__setupListenerWithEndpoint___block_invoke_97(uint64_t a1, void *a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__RPBroadcastSampleHandler__setupListenerWithEndpoint___block_invoke_97_cold_1(a2);
  }
}

- (void)_processPayloadWithVideoSample:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 173;
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Invalid sample buffer", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_processPayloadWithVideoSample:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v2 = 155;
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Invalid video sample", v1, 0x12u);
  v0 = *MEMORY[0x277D85DE8];
}

void __55__RPBroadcastSampleHandler__setupListenerWithEndpoint___block_invoke_97_cold_1(void *a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = [a1 code];
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error = %d", v2, 8u);
  v1 = *MEMORY[0x277D85DE8];
}

@end