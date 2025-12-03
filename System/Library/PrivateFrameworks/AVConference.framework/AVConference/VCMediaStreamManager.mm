@interface VCMediaStreamManager
+ (id)allowablePublicAPINames;
+ (id)defaultManager;
+ (void)addNSError:(id)error toXPCArgumentDictionary:(id)dictionary;
- (BOOL)addSyncSourceToVideoStreamConfig:(id)config sourceStreamToken:(int64_t)token error:(id *)error;
- (VCMediaStreamManager)init;
- (id)capabilitiesForStream:(id)stream mediaProtocolArgs:(id)args xpcArguments:(id)arguments clientAuditToken:(id)token error:(id *)error;
- (id)newLocalNWEndpointFromXPCArguments:(id)arguments mediaProtocolArgs:(id)args;
- (id)newMediaProtocolArgsWithMediaProtocolArgs:(id)args nwEndpoint:(id)endpoint clientAuditToken:(id)token;
- (id)newRemoteNWEndpointFromXPCArguments:(id)arguments;
- (id)textStreamWithStreamToken:(int64_t)token;
- (id)videoStreamWithSyncToken:(int64_t)token;
- (unsigned)remoteSSRCFromXPCArguments:(id)arguments;
- (void)cleanupStreamSyncSourceForVideoStream:(id)stream andAudioStream:(id)audioStream;
- (void)dealloc;
- (void)deregisterBlocksForService;
- (void)pauseStreams:(BOOL)streams;
- (void)registerBlocksForService;
- (void)stopStream:(id)stream;
- (void)vcMediaStream:(id)stream didReceiveDTMFEventWithDigit:(char)digit;
- (void)vcMediaStream:(id)stream didReceiveRTCPPackets:(id)packets;
- (void)vcMediaStream:(id)stream didReceiveTTYCharacter:(unsigned __int16)character;
- (void)vcMediaStream:(id)stream didReceiveText:(id)text;
- (void)vcMediaStream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error dictionary:(id)dictionary;
- (void)vcMediaStream:(id)stream downlinkQualityDidChange:(id)change;
- (void)vcMediaStream:(id)stream uplinkQualityDidChange:(id)change;
- (void)vcMediaStreamDidInterruptionBegin:(id)begin;
- (void)vcMediaStreamDidInterruptionEnd:(id)end;
- (void)vcMediaStreamDidRTCPTimeOut:(id)out;
- (void)vcMediaStreamDidRTPTimeOut:(id)out;
- (void)vcMediaStreamDidRecoverFromRTCPTimeOut:(id)out;
- (void)vcMediaStreamServerDidDie:(id)die;
@end

@implementation VCMediaStreamManager

+ (id)defaultManager
{
  if (defaultManager_onceToken_1 != -1)
  {
    +[VCMediaStreamManager defaultManager];
  }

  return _vcStreamManagerManager;
}

void __38__VCMediaStreamManager_defaultManager__block_invoke()
{
  if (!_vcStreamManagerManager)
  {
    _vcStreamManagerManager = objc_alloc_init(VCMediaStreamManager);
  }
}

+ (void)addNSError:(id)error toXPCArgumentDictionary:(id)dictionary
{
  if (error)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    if ([error domain])
    {
      [v6 setObject:objc_msgSend(error forKeyedSubscript:{"domain"), @"ERROR_DOMAIN"}];
    }

    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(error, "code")), @"ERROR_CODE"}];
    if ([error userInfo])
    {
      [v6 setObject:objc_msgSend(error forKeyedSubscript:{"userInfo"), @"ERROR_USERINFO"}];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"vcMediaStreamError"];
  }
}

+ (id)allowablePublicAPINames
{
  if (allowablePublicAPINames_onceToken != -1)
  {
    +[VCMediaStreamManager allowablePublicAPINames];
  }

  return allowablePublicAPINames__allowableAPIs;
}

void __47__VCMediaStreamManager_allowablePublicAPINames__block_invoke()
{
  if (!allowablePublicAPINames__allowableAPIs)
  {
    allowablePublicAPINames__allowableAPIs = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"vcMediaStreamInitializeAudio", @"vcMediaStreamTerminateAudio", @"vcMediaStreamSetSessionConfig", @"vcMediaStreamStartConference", @"vcMediaStreamStopConference", @"vcMediaStreamAddRemoteAVCEndpoint", @"vcMediaStreamRemoveRemoteAVCEndpoint", @"vcMediaStreamInitializeVideo", @"vcMediaStreamTerminateVideo", @"vcMediaStreamStartSynchronization", @"vcMediaStreamSetSpatialAudioExperience", 0}];
  }
}

- (VCMediaStreamManager)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VCMediaStreamManager;
  v2 = [(VCMediaStreamManager *)&v5 init];
  if (v2)
  {
    v2->streamArray = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v2->_vcMomentsCollectorDictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(37);
    v2->xpcQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMediaStreamManager.xpcQueue", 0, CustomRootQueue);
    pthread_mutex_init(&v2->stateLock, 0);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaStreamManager *)self deregisterBlocksForService];

  dispatch_release(self->xpcQueue);
  pthread_mutex_destroy(&self->stateLock);
  v3.receiver = self;
  v3.super_class = VCMediaStreamManager;
  [(VCMediaStreamManager *)&v3 dealloc];
}

- (void)pauseStreams:(BOOL)streams
{
  streamsCopy = streams;
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = "[VCMediaStreamManager pauseStreams:]";
      v15 = 1024;
      v16 = 138;
      v17 = 1024;
      v18 = streamsCopy;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d isPause[%d] begin", buf, 0x22u);
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__VCMediaStreamManager_pauseStreams___block_invoke;
  v9[3] = &unk_1E85F37A0;
  v9[4] = self;
  v10 = streamsCopy;
  dispatch_async(global_queue, v9);
  objc_autoreleasePoolPop(v5);
}

void __37__VCMediaStreamManager_pauseStreams___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 72) copy];
  pthread_mutex_unlock((*(a1 + 32) + 8));
  v3 = [v2 count];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__VCMediaStreamManager_pauseStreams___block_invoke_2;
  block[3] = &unk_1E85F5CC0;
  block[4] = v2;
  v6 = *(a1 + 40);
  dispatch_apply(v3, global_queue, block);
}

uint64_t __37__VCMediaStreamManager_pauseStreams___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v4 = *(a1 + 40);

  return [v3 setPause:v4];
}

- (void)vcMediaStreamServerDidDie:(id)die
{
  v17 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v10 = v5;
      v11 = 2080;
      v12 = "[VCMediaStreamManager vcMediaStreamServerDidDie:]";
      v13 = 1024;
      v14 = 163;
      v15 = 2048;
      dieCopy = die;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Server process died reported by stream=%p", buf, 0x26u);
    }
  }

  xpcQueue = self->xpcQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__VCMediaStreamManager_vcMediaStreamServerDidDie___block_invoke;
  block[3] = &unk_1E85F3778;
  block[4] = self;
  dispatch_async(xpcQueue, block);
}

uint64_t __50__VCMediaStreamManager_vcMediaStreamServerDidDie___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(*(a1 + 32) + 72);
  result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v6 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

- (void)vcMediaStreamDidInterruptionBegin:(id)begin
{
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcMediaStreamDidInterruptionBegin" arguments:0 context:begin];
}

- (void)vcMediaStreamDidInterruptionEnd:(id)end
{
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcMediaStreamDidInterruptionEnd" arguments:0 context:end];
}

- (void)vcMediaStream:(id)stream didReceiveDTMFEventWithDigit:(char)digit
{
  digitCopy = digit;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v6 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithChar:", digitCopy), @"vcMediaStreamDTMFDigitReceived", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcMediaStream:(id)stream didReceiveTTYCharacter:(unsigned __int16)character
{
  characterCopy = character;
  v6 = objc_alloc(MEMORY[0x1E695DF90]);
  v7 = [v6 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", characterCopy), @"vcMediaStreamTTYCharacterReceived", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcMediaStream:(id)stream didReceiveText:(id)text
{
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{text, @"vcMediaStreamTextReceived", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcMediaStreamDidRTPTimeOut:(id)out
{
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcMediaStreamRTPPacketTimeout" arguments:0 context:out];
}

- (void)vcMediaStreamDidRTCPTimeOut:(id)out
{
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcMediaStreamRTCPPacketTimeout" arguments:0 context:out];
}

- (void)vcMediaStreamDidRecoverFromRTCPTimeOut:(id)out
{
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcMediaStreamDidRecoverFromRTCPTimeout" arguments:0 context:out];
}

- (void)vcMediaStream:(id)stream didReceiveRTCPPackets:(id)packets
{
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{packets, @"vcMediaStreamRTCPPackets", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcMediaStream:(id)stream downlinkQualityDidChange:(id)change
{
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{change, @"vcMediaStreamDownlinkQualityInfo", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcMediaStream:(id)stream uplinkQualityDidChange:(id)change
{
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{change, @"vcMediaStreamUplinkQualityInfo", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)vcMediaStream:(id)stream didUpdateVideoConfiguration:(BOOL)configuration error:(id)error dictionary:(id)dictionary
{
  configurationCopy = configuration;
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = [v10 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", configurationCopy), @"vcMediaStreamDidUpdateVideoConfiguration", 0}];
  [VCMediaStreamManager addNSError:error toXPCArgumentDictionary:v11];
  if (configurationCopy)
  {
    if (dictionary)
    {
      [v11 setObject:dictionary forKeyedSubscript:@"vcMediaStreamUpdatedVideoConfiguration"];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCMediaStreamManager vcMediaStream:didUpdateVideoConfiguration:error:dictionary:];
      }
    }
  }

  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (id)videoStreamWithSyncToken:(int64_t)token
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  streamArray = self->streamArray;
  v5 = [(NSMutableArray *)streamArray countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v15;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v15 != v7)
    {
      objc_enumerationMutation(streamArray);
    }

    v9 = *(*(&v14 + 1) + 8 * v8);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 conformsToProtocol:&unk_1F57CC138])
      {
        v10 = [objc_msgSend(v9 "defaultStreamConfig")];
        if (v10)
        {
          v11 = v10;
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 streamToken] == token)
          {
            return v9;
          }
        }
      }
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)streamArray countByEnumeratingWithState:&v14 objects:v13 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)cleanupStreamSyncSourceForVideoStream:(id)stream andAudioStream:(id)audioStream
{
  v19 = *MEMORY[0x1E69E9840];
  if (stream)
  {
    [stream stopSynchronization];
    [objc_msgSend(stream "defaultStreamConfig")];
    [audioStream setMomentsCollectorDelegate:0];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if (audioStream)
        {
          v8 = [objc_msgSend(audioStream "description")];
        }

        else
        {
          v8 = "<nil>";
        }

        v9 = 136316162;
        v10 = v6;
        v11 = 2080;
        v12 = "[VCMediaStreamManager cleanupStreamSyncSourceForVideoStream:andAudioStream:]";
        v13 = 1024;
        v14 = 291;
        v15 = 2080;
        v16 = v8;
        v17 = 2080;
        v18 = [objc_msgSend(stream "description")];
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Removed stream=%s as sync source for stream=%s delegates", &v9, 0x30u);
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMediaStreamManager cleanupStreamSyncSourceForVideoStream:andAudioStream:];
    }
  }
}

- (id)textStreamWithStreamToken:(int64_t)token
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  streamArray = self->streamArray;
  v5 = [(NSMutableArray *)streamArray countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(streamArray);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 streamToken] == token)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSMutableArray *)streamArray countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)addSyncSourceToVideoStreamConfig:(id)config sourceStreamToken:(int64_t)token error:(id *)error
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  streamArray = self->streamArray;
  v10 = [(NSMutableArray *)streamArray countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = selfCopy;
    v12 = 0;
    v13 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(streamArray);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 conformsToProtocol:&unk_1F57B9BC8] && objc_msgSend(v15, "streamToken") == token)
        {
          [config setSyncSource:v15];
          v12 = 1;
        }
      }

      v11 = [(NSMutableArray *)streamArray countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v11);
    selfCopy = v21;
    if (v12)
    {
      return 1;
    }
  }

  if (objc_opt_class() == selfCopy)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      VRTraceErrorLogLevelToCSTR();
      if (VRTraceIsOSFaultDisabled())
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMediaStreamManager addSyncSourceToVideoStreamConfig:sourceStreamToken:error:];
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        [VCMediaStreamManager addSyncSourceToVideoStreamConfig:sourceStreamToken:error:];
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v17 = [(VCMediaStreamManager *)selfCopy performSelector:sel_logPrefix];
    }

    else
    {
      v17 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 2)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
      v20 = *MEMORY[0x1E6986650];
      if (IsOSFaultDisabled)
      {
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v23 = v18;
          v24 = 2080;
          v25 = "[VCMediaStreamManager addSyncSourceToVideoStreamConfig:sourceStreamToken:error:]";
          v26 = 1024;
          v27 = 320;
          v28 = 2112;
          v29 = v17;
          v30 = 2048;
          v31 = selfCopy;
          _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed configure stream synchronization", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
      {
        *buf = 136316162;
        v23 = v18;
        v24 = 2080;
        v25 = "[VCMediaStreamManager addSyncSourceToVideoStreamConfig:sourceStreamToken:error:]";
        v26 = 1024;
        v27 = 320;
        v28 = 2112;
        v29 = v17;
        v30 = 2048;
        v31 = selfCopy;
        _os_log_fault_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Failed configure stream synchronization", buf, 0x30u);
      }
    }
  }

  +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", error, 32016, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamManager.m", 324], @"Invalid synchronization source token", @"Failed to set synchronization source");
  return 0;
}

- (void)stopStream:(id)stream
{
  dispatch_assert_queue_V2(self->xpcQueue);
  [stream stop];
  v4 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v4 sendMessageAsync:"vcMediaStreamDidStopConnection" arguments:0 context:stream];
}

- (id)capabilitiesForStream:(id)stream mediaProtocolArgs:(id)args xpcArguments:(id)arguments clientAuditToken:(id)token error:(id *)error
{
  v13 = [(VCMediaStreamManager *)self newLocalNWEndpointFromXPCArguments:arguments mediaProtocolArgs:?];
  v14 = [(VCMediaStreamManager *)self newMediaProtocolArgsWithMediaProtocolArgs:args nwEndpoint:v13 clientAuditToken:token];
  if (v13)
  {
    argumentsCopy = 0;
  }

  else
  {
    argumentsCopy = arguments;
  }

  v16 = [stream setLocalParticipantInfo:v14 networkSockets:argumentsCopy withError:error];
  nw_release(v13);

  return v16;
}

- (void)registerBlocksForService
{
  v18[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v4 = +[VCMediaStreamManager allowablePublicAPINames];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke;
  v18[3] = &unk_1E85F5100;
  v18[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_228;
  v17[3] = &unk_1E85F5CE8;
  v17[4] = v3;
  v17[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_231;
  v16[3] = &unk_1E85F5CE8;
  v16[4] = v3;
  v16[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3;
  v15[3] = &unk_1E85F5100;
  v15[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_4;
  v14[3] = &unk_1E85F5100;
  v14[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248;
  v13[3] = &unk_1E85F5CE8;
  v13[4] = v3;
  v13[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_290;
  v12[3] = &unk_1E85F5CE8;
  v12[4] = v3;
  v12[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_298;
  v11[3] = &unk_1E85F5CE8;
  v11[4] = v3;
  v11[5] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_326;
  v10[3] = &unk_1E85F5100;
  v10[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_328;
  v9[3] = &unk_1E85F5100;
  v9[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_431;
  v8[3] = &unk_1E85F5100;
  v8[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_433;
  v7[3] = &unk_1E85F5100;
  v7[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_439;
  v6[3] = &unk_1E85F5100;
  v6[4] = self;
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer AVConferenceXPCServerSingleton];
}

id __48__VCMediaStreamManager_registerBlocksForService__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = -[VCAudioStream initWithClientPid:]([VCAudioStream alloc], "initWithClientPid:", [objc_msgSend(a2 objectForKeyedSubscript:{@"CLIENTPID", "intValue"}]);
  [*(*(a1 + 32) + 72) addObject:v7];
  [(VCMediaStream *)v7 setDelegate:*(a1 + 32)];
  [(VCMediaStream *)v7 setDelegateFunctions:_VCMediaStreamManager_UpdateFrequencyLevel];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v16 = v8;
      v17 = 2080;
      v18 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v19 = 1024;
      v20 = 441;
      v21 = 2048;
      v22 = v7;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream allocated new VCAudioStream %p", buf, 0x26u);
    }
  }

  v10 = [*(a1 + 32) capabilitiesForStream:v7 mediaProtocolArgs:objc_msgSend(a2 xpcArguments:"objectForKeyedSubscript:" clientAuditToken:@"vcMediaStreamDictionary" error:{objc_msgSend(a2, "objectForKeyedSubscript:", @"USERXPCARGUMENTS", objc_msgSend(a2, "objectForKeyedSubscript:", @"CLIENTAUDITTOKEN", a3}];
  v6 = 0;
  if (v7)
  {
    v11 = v10;
    if (v10)
    {
      v14[0] = v7;
      v14[1] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStream streamToken](v7, "streamToken", @"CONTEXT", @"vcMediaStreamToken"}];
      v13[2] = @"vcMediaStreamTokenUplink";
      v14[2] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStream streamTokenUplink](v7, "streamTokenUplink")}];
      v13[3] = @"vcMediaStreamTokenDownlink";
      v13[4] = @"vcMediaStreamStreamCapabilities";
      v14[3] = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStream streamTokenDownlink](v7, "streamTokenDownlink")}];
      v14[4] = v11;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
    }
  }

  return v6;
}

id __48__VCMediaStreamManager_registerBlocksForService__block_invoke_228(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) strong];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"vcMediaStreamDictionary", "intValue"}];
  v7 = -[VCVirtualTTYDevice initWithMode:clientPid:]([VCVirtualTTYDevice alloc], "initWithMode:clientPid:", v6, [objc_msgSend(a2 objectForKeyedSubscript:{@"CLIENTPID", "intValue"}]);
  [*(*(a1 + 40) + 72) addObject:v7];
  [(VCVirtualTTYDevice *)v7 setDelegate:v4];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v13 = v8;
      v14 = 2080;
      v15 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v16 = 1024;
      v17 = 475;
      v18 = 2048;
      v19 = v7;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream allocated new virtual TTY device %p with mode %ld", buf, 0x30u);
    }
  }

  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CONTEXT", 0}];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v5 = v10;

  return v5;
}

id __48__VCMediaStreamManager_registerBlocksForService__block_invoke_231(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) strong];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [v4 textStreamWithStreamToken:{objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamToken", "intValue")}];
    v12[0] = _VCMediaStreamManager_UpdateFrequencyLevel;
    if (v6)
    {
      v7 = v6;
      v8 = -[VCVirtualTextDevice initWithSendDelegate:clientPid:delegate:delegateFunctions:delegateQueue:]([VCVirtualTextDevice alloc], "initWithSendDelegate:clientPid:delegate:delegateFunctions:delegateQueue:", v6, [objc_msgSend(a2 objectForKeyedSubscript:{@"CLIENTPID", "intValue"}], v4, v12, *(*(a1 + 40) + 80));
      if (v8)
      {
        v9 = v8;
        [v7 setReceiveDelegate:v8];
        [*(*(a1 + 40) + 72) addObject:v9];
        v10 = objc_alloc(MEMORY[0x1E695DF20]);
        v5 = [v10 initWithObjectsAndKeys:{v9, @"CONTEXT", 0, v12[0]}];
LABEL_13:

        return v5;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__VCMediaStreamManager_registerBlocksForService__block_invoke_231_cold_1();
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_231_cold_2();
      }
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v9 = 0;
    goto LABEL_13;
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_234(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "sendCharacter:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamDictionary", "intValue")}];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "sendText:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamDictionary"}];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v5 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v6 stop];
    [*(*(a1 + 32) + 72) removeObject:v6];
  }

  return v4;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_4(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKeyedSubscript:@"CLIENTDIED"];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v6 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v7 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = v8;
        v15 = 2080;
        v16 = "[VCMediaStreamManager registerBlocksForService]_block_invoke_4";
        v17 = 1024;
        v18 = 570;
        v19 = 2048;
        v20 = v7;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream releasing old VCAudioStream[%p]", buf, 0x26u);
      }
    }

    v10 = [*(a1 + 32) videoStreamWithSyncToken:{objc_msgSend(v7, "streamToken")}];
    if (v4)
    {
      v11 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32039 detailCode:0 description:@"Client Died"];
    }

    else
    {
      v11 = 0;
    }

    [v7 stopWithError:v11];
    [*(a1 + 32) cleanupStreamSyncSourceForVideoStream:v10 andAudioStream:v7];
    [v7 startDeallocTimer];
    [*(*(a1 + 32) + 72) removeObject:v7];
  }

  return v5;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248(uint64_t a1, void *a2, uint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    v8 = [a2 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
    v9 = [*(a1 + 32) strong];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[VCAudioStreamConfig alloc] initWithClientDictionary:v7 xpcDictionary:v8];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [+[VCDefaults sharedInstance](VCDefaults forceVideoStreamPayload];
        v13 = v12;
        if (v12 == 123 || v12 == 100)
        {
          v37 = a3;
          v14 = [v7 mutableCopy];
          [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", v13)), @"vcMediaStreamTXCodecType"}];
          [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", +[VCPayloadUtils codecTypeForPayload:](VCPayloadUtils, "codecTypeForPayload:", v13)), @"vcMediaStreamRXCodecType"}];
          v11 = [[VCVideoStreamConfig alloc] initWithClientDictionary:v14 xpcDictionary:v8];
          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x1E6986650];
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v40 = v15;
              v41 = 2080;
              v42 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
              v43 = 1024;
              v44 = 604;
              v45 = 1024;
              LODWORD(v46) = v13;
              _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Forcing video payload to %d", buf, 0x22u);
            }
          }

          a3 = v37;
        }

        else
        {
          v11 = [[VCVideoStreamConfig alloc] initWithClientDictionary:v7 xpcDictionary:v8];
        }

        if ([v7 objectForKeyedSubscript:@"vcMediaStreamSyncStreamToken"] && objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", @"vcMediaStreamSyncStreamToken"), "integerValue") && (objc_msgSend(v9, "addSyncSourceToVideoStreamConfig:sourceStreamToken:error:", v11, objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", @"vcMediaStreamSyncStreamToken"), "integerValue"), a3) & 1) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (objc_opt_class() == *(a1 + 40))
        {
          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            VRTraceErrorLogLevelToCSTR();
            if (VRTraceIsOSFaultDisabled())
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_2();
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_1();
            }
          }
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v18 = [*(a1 + 40) performSelector:sel_logPrefix];
          }

          else
          {
            v18 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 2)
          {
            v24 = VRTraceErrorLogLevelToCSTR();
            IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
            v26 = *MEMORY[0x1E6986650];
            if (IsOSFaultDisabled)
            {
              if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
              {
                v27 = *(a1 + 40);
                v28 = objc_opt_class();
                *buf = 136316418;
                v40 = v24;
                v41 = 2080;
                v42 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
                v43 = 1024;
                v44 = 623;
                v45 = 2112;
                v46 = v18;
                v47 = 2048;
                v48 = v27;
                v49 = 2080;
                Name = class_getName(v28);
                _os_log_error_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Unexpected stream type [%s]", buf, 0x3Au);
              }
            }

            else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
            {
              v34 = *(a1 + 40);
              v35 = objc_opt_class();
              *buf = 136316418;
              v40 = v24;
              v41 = 2080;
              v42 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
              v43 = 1024;
              v44 = 623;
              v45 = 2112;
              v46 = v18;
              v47 = 2048;
              v48 = v34;
              v49 = 2080;
              Name = class_getName(v35);
              _os_log_fault_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Unexpected stream type [%s]", buf, 0x3Au);
            }
          }
        }

        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamManager.m", 627];
        v30 = @"Unexpected stream type";
        v31 = @"setStreamConfig called on an unsupported object";
        v32 = a3;
        v33 = 32016;
        goto LABEL_56;
      }

      v10 = [[VCTextStreamConfig alloc] initWithClientDictionary:v7];
    }

    v11 = v10;
LABEL_5:
    if (v11)
    {
      v38 = v11;
      [v6 setStreamConfig:objc_msgSend(MEMORY[0x1E695DEC8] withError:{"arrayWithObjects:count:", &v38, 1), a3}];
LABEL_7:

      return 0;
    }

    if (objc_opt_class() == *(a1 + 40))
    {
      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        VRTraceErrorLogLevelToCSTR();
        if (VRTraceIsOSFaultDisabled())
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_4();
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_3();
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v17 = [*(a1 + 40) performSelector:sel_logPrefix];
      }

      else
      {
        v17 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 2)
      {
        v19 = VRTraceErrorLogLevelToCSTR();
        v20 = VRTraceIsOSFaultDisabled();
        v21 = *MEMORY[0x1E6986650];
        if (v20)
        {
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 40);
            *buf = 136316162;
            v40 = v19;
            v41 = 2080;
            v42 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
            v43 = 1024;
            v44 = 635;
            v45 = 2112;
            v46 = v17;
            v47 = 2048;
            v48 = v22;
            _os_log_error_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate stream config", buf, 0x30u);
          }
        }

        else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
        {
          v23 = *(a1 + 40);
          *buf = 136316162;
          v40 = v19;
          v41 = 2080;
          v42 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
          v43 = 1024;
          v44 = 635;
          v45 = 2112;
          v46 = v17;
          v47 = 2048;
          v48 = v23;
          _os_log_fault_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Failed to allocate stream config", buf, 0x30u);
        }
      }
    }

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamManager.m", 639];
    v30 = @"Stream config allocation failure";
    v31 = @"Failed to allocate the stream configuration";
    v32 = a3;
    v33 = 32015;
LABEL_56:
    [GKVoiceChatError getNSError:v32 code:v33 detailedCode:105 filePath:v29 description:v30 reason:v31];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_276(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = 0;
    return v6 & 1;
  }

  v6 = a4 == 1;
  if (a4 != 2)
  {
    return v6 & 1;
  }

  [a2 objectForKeyedSubscript:@"CONTEXT"];
  v7 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();
  if ([objc_msgSend(v7 objectForKeyedSubscript:{@"vcMediaStreamAudioStreamMode", "integerValue"}] == 12)
  {
    v10 = 1;
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v10 = [objc_msgSend(v7 objectForKeyedSubscript:{@"vcMediaStreamVideoStreamMode", "integerValue"}] == 7;
  if (v7)
  {
LABEL_8:
    LODWORD(v7) = [objc_msgSend(v7 objectForKeyedSubscript:{@"vcMediaStreamCaptureSource", "integerValue"}];
  }

LABEL_9:
  v11 = v9 | isKindOfClass;
  if (v7)
  {
    v12 = v7 == 6;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136316674;
      v18 = v14;
      v19 = 2080;
      v20 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v21 = 1024;
      v22 = 667;
      v23 = 1024;
      v24 = v11 & 1;
      v25 = 1024;
      v26 = v10;
      v27 = 1024;
      v28 = v13;
      v29 = 1024;
      v30 = v7;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Checking public access VCMediaStreamConfig. allowedStreamType=%d allowedStreamMode=%d allowedCaptureSource=%d captureSource=%d", &v17, 0x34u);
    }
  }

  if (v11 & v10)
  {
    v6 = isKindOfClass ^ 1 | v13;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_290(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v7 = [objc_msgSend(*(a1 + 32) "strong")];
    if (v7)
    {
      v8 = v7;
      [v6 addRemoteEndpoint:v7 error:a3];
    }

    else
    {
      if (objc_opt_class() == *(a1 + 40))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __48__VCMediaStreamManager_registerBlocksForService__block_invoke_290_cold_2();
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            __48__VCMediaStreamManager_registerBlocksForService__block_invoke_290_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [*(a1 + 40) performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v12 = *MEMORY[0x1E6986650];
          if (IsOSFaultDisabled)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v13 = *(a1 + 40);
              *buf = 136316162;
              v17 = v10;
              v18 = 2080;
              v19 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
              v20 = 1024;
              v21 = 682;
              v22 = 2112;
              v23 = v9;
              v24 = 2048;
              v25 = v13;
              _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to decode the remote endpoint", buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v14 = *(a1 + 40);
            *buf = 136316162;
            v17 = v10;
            v18 = 2080;
            v19 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
            v20 = 1024;
            v21 = 682;
            v22 = 2112;
            v23 = v9;
            v24 = 2048;
            v25 = v14;
            _os_log_fault_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Failed to decode the remote endpoint", buf, 0x30u);
          }
        }
      }

      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32015, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamManager.m", 686], @"Endpoint add failure", @"Failed to decode the remote endpoint");
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_298(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v7 = [objc_msgSend(*(a1 + 32) "strong")];
    if (v7)
    {
      v8 = v7;
      [v6 removeRemoteEndpoint:v7 error:a3];
    }

    else
    {
      if (objc_opt_class() == *(a1 + 40))
      {
        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          VRTraceErrorLogLevelToCSTR();
          if (VRTraceIsOSFaultDisabled())
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              __48__VCMediaStreamManager_registerBlocksForService__block_invoke_298_cold_2();
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            __48__VCMediaStreamManager_registerBlocksForService__block_invoke_298_cold_1();
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [*(a1 + 40) performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 2)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          IsOSFaultDisabled = VRTraceIsOSFaultDisabled();
          v12 = *MEMORY[0x1E6986650];
          if (IsOSFaultDisabled)
          {
            if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
            {
              v13 = *(a1 + 40);
              *buf = 136316162;
              v17 = v10;
              v18 = 2080;
              v19 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
              v20 = 1024;
              v21 = 704;
              v22 = 2112;
              v23 = v9;
              v24 = 2048;
              v25 = v13;
              _os_log_error_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to decode the remote endpoint", buf, 0x30u);
            }
          }

          else if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_FAULT))
          {
            v14 = *(a1 + 40);
            *buf = 136316162;
            v17 = v10;
            v18 = 2080;
            v19 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
            v20 = 1024;
            v21 = 704;
            v22 = 2112;
            v23 = v9;
            v24 = 2048;
            v25 = v14;
            _os_log_fault_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_FAULT, " [%s] %s:%d %@(%p) Failed to decode the remote endpoint", buf, 0x30u);
          }
        }
      }

      +[GKVoiceChatError getNSError:code:detailedCode:filePath:description:reason:](GKVoiceChatError, "getNSError:code:detailedCode:filePath:description:reason:", a3, 32015, 105, [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:%d", "/Library/Caches/com.apple.xbs/Sources/AVConference/AVConference.subproj/Sources/VCMediaStreamManager.m", 708], @"Endpoint remove failure", @"Failed to decode the remote endpoint");
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_303(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "sendDTMFEvent:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamDictionary"}];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_307(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "stopSendDTMFEvent"}];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_311(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [objc_msgSend(v4 objectForKeyedSubscript:{@"vcMediaStreamVolume", "floatValue"}];
      [v3 setVolume:?];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_311_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_318(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [v3 start];
    v5 = objc_alloc(MEMORY[0x1E695DF90]);
    v6 = [v5 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v4 == 0), @"vcMediaStreamConnectionStarted", 0}];
    [VCMediaStreamManager addNSError:v4 toXPCArgumentDictionary:v6];
    [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_326(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if ([v4 conformsToProtocol:&unk_1F57B9BC8])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(a1 + 32) cleanupStreamSyncSourceForVideoStream:objc_msgSend(*(a1 + 32) andAudioStream:{"videoStreamWithSyncToken:", objc_msgSend(v4, "streamToken")), v4}];
      }
    }

    [*(a1 + 32) stopStream:v4];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_328(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if ([v4 conformsToProtocol:&unk_1F57B9BC8] && (v5 = objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamToken"), v36 = 0u, v37 = 0u, v38 = 0u, v39 = 0u, v6 = *(*(a1 + 32) + 72), (v7 = objc_msgSend(v6, "countByEnumeratingWithState:objects:count:", &v36, v35, 16)) != 0))
    {
      v8 = v7;
      v9 = *v37;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 conformsToProtocol:&unk_1F57CC138])
          {
            v12 = [v11 streamToken];
            if (v12 == [v5 integerValue])
            {
              break;
            }
          }
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v8)
          {
            goto LABEL_5;
          }

          goto LABEL_17;
        }
      }

      v13 = [v11 startSynchronization:v4];
      [v4 setMomentsCollectorDelegate:{objc_msgSend(v11, "momentsCollectorDelegate")}];
      if (VRTraceGetErrorLogLevelForModule() >= 7 && (v14 = VRTraceErrorLogLevelToCSTR(), v15 = *MEMORY[0x1E6986650], os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT)))
      {
        *buf = 136316418;
        v24 = v14;
        v25 = 2080;
        v26 = "[VCMediaStreamManager registerBlocksForService]_block_invoke_3";
        v27 = 1024;
        v28 = 807;
        v29 = 2048;
        v30 = v4;
        v31 = 2048;
        v32 = v11;
        v33 = 2048;
        v34 = [v11 momentsCollectorDelegate];
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream setMomentsCollectorDelegate for audioStream=%p: videostream=%p, delegate=%p", buf, 0x3Au);
        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (!v13)
      {
        goto LABEL_17;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          if (v4)
          {
            v22 = [objc_msgSend(v4 "description")];
          }

          else
          {
            v22 = "<nil>";
          }

          *buf = 136315906;
          v24 = v20;
          v25 = 2080;
          v26 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
          v27 = 1024;
          v28 = 814;
          v29 = 2080;
          v30 = v22;
          _os_log_impl(&dword_1DB56E000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %s startSynchronization succeeded", buf, 0x26u);
        }
      }

      v16 = 1;
    }

    else
    {
LABEL_17:
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_328_cold_1();
        }
      }

      v16 = 0;
    }

    v17 = objc_alloc(MEMORY[0x1E695DF90]);
    v18 = [v17 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", v16), @"vcMediaStreamSynchronizationStarted", 0}];
    [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_334(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      v5 = [objc_msgSend(v4 objectForKeyedSubscript:{@"vcMediaStreamPauseState", "BOOLValue"}];
      v6 = [v3 setPause:v5];
      v7 = objc_alloc(MEMORY[0x1E695DF90]);
      v8 = [MEMORY[0x1E696AD98] numberWithBool:v6 == 0];
      v9 = @"vcMediaStreamResumed";
      if (v5)
      {
        v9 = @"vcMediaStreamPaused";
        v10 = "vcMediaStreamDidPause";
      }

      else
      {
        v10 = "vcMediaStreamDidResume";
      }

      v11 = [v7 initWithObjectsAndKeys:{v8, v9, 0}];
      [VCMediaStreamManager addNSError:v6 toXPCArgumentDictionary:v11];
      [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_334_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_349(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "updateVideoConfig:", objc_msgSend(a2, "objectForKeyedSubscript:", @"vcMediaStreamDictionary"}];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_353(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setStreamDirection:{objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"vcMediaStreamDirection", "integerValue")}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_353_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_360(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setJitterBufferMode:{objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"vcMediaStreamJitterBufferMode", "integerValue")}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_360_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_367(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setRtcpEnabled:{objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"vcMediaStreamRTCPEnabled", "BOOLValue")}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_367_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_374(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setRtpTimeOutEnabled:{objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"vcMediaStreamRTPTimeoutEnabled", "BOOLValue")}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_374_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_381(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setRtcpTimeOutEnabled:{objc_msgSend(objc_msgSend(v4, "objectForKeyedSubscript:", @"vcMediaStreamRTCPTimeoutEnabled", "BOOLValue")}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_381_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_388(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [objc_msgSend(v4 objectForKeyedSubscript:{@"vcMediaStreamRTPTimeoutInterval", "doubleValue"}];
      [v3 setRtpTimeOutInterval:?];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_388_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_395(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [objc_msgSend(v4 objectForKeyedSubscript:{@"vcMediaStreamRTCPTimeoutInterval", "doubleValue"}];
      [v3 setRtcpTimeOutInterval:?];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_395_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_402(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [objc_msgSend(v4 objectForKeyedSubscript:{@"vcMediaStreamRTCPSendInterval", "doubleValue"}];
      [v3 setRtcpSendInterval:?];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_402_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_409(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isFrequencyMeteringEnabled:", 0)}];
  return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"vcMediaStreamInputFreqMeterEnabled", 0}];
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_416(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setFrequencyMeteringEnabled:objc_msgSend(objc_msgSend(v4 meterType:{"objectForKeyedSubscript:", @"vcMediaStreamInputFreqMeterEnabled", "BOOLValue"), 0}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_416_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_420(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isFrequencyMeteringEnabled:", 1)}];
  return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"vcMediaStreamOutputFreqMeterEnabled", 0}];
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_427(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"];
    if (v4)
    {
      [v3 setFrequencyMeteringEnabled:objc_msgSend(objc_msgSend(v4 meterType:{"objectForKeyedSubscript:", @"vcMediaStreamOutputFreqMeterEnabled", "BOOLValue"), 1}];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_427_cold_1();
      }
    }
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_431(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v7 = objc_alloc_init(VCVideoStream);
  [*(*(a1 + 32) + 72) addObject:v7];
  [(VCMediaStream *)v7 setDelegate:*(a1 + 32)];
  [(VCMediaStream *)v7 setDelegateFunctions:_VCMediaStreamManager_UpdateFrequencyLevel];
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  v9 = MEMORY[0x1E6986650];
  if (ErrorLogLevelForModule >= 6)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v20 = v10;
      v21 = 2080;
      v22 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v23 = 1024;
      v24 = 1048;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream allocated new VCVideoStream %p", buf, 0x26u);
    }
  }

  v12 = [*(a1 + 32) capabilitiesForStream:v7 mediaProtocolArgs:objc_msgSend(a2 xpcArguments:"objectForKeyedSubscript:" clientAuditToken:@"vcMediaStreamDictionary" error:{objc_msgSend(a2, "objectForKeyedSubscript:", @"USERXPCARGUMENTS", objc_msgSend(a2, "objectForKeyedSubscript:", @"CLIENTAUDITTOKEN", a3}];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStream streamToken](v7, "streamToken")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CONTEXT", v13, @"vcMediaStreamToken", v12, @"vcMediaStreamStreamCapabilities", 0}];
  if (VRTraceGetErrorLogLevelForModule() > 6)
  {
    v14 = VRTraceErrorLogLevelToCSTR();
    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(VCMediaStream *)v7 streamToken];
      v17 = *(*(a1 + 32) + 88);
      *buf = 136316162;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v23 = 1024;
      v24 = 1068;
      v25 = 2048;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream created momentsCollector for video stream %ld. vcMomentsCollectorDictionary=%@", buf, 0x30u);
    }
  }

  return v6;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_433(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKeyedSubscript:@"CLIENTDIED"];
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DF20]);
    v5 = [v6 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v7 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1 + 32) + 88) setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v7, "streamToken"))}];
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v7 streamToken];
        v11 = *(*(a1 + 32) + 88);
        *buf = 136316418;
        v15 = v8;
        v16 = 2080;
        v17 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
        v18 = 1024;
        v19 = 1093;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMediaStream releasing old VCVideoStream %p. Removed momentsCollector for video stream %ld, vcMomentsCollectorDictionary=%@", buf, 0x3Au);
      }
    }

    if (v4)
    {
      v12 = [MEMORY[0x1E696ABC0] AVConferenceServiceError:32039 detailCode:0 description:@"Client Died"];
    }

    else
    {
      v12 = 0;
    }

    [v7 stopWithError:v12];
    [v7 startDeallocTimer];
    [*(*(a1 + 32) + 72) removeObject:v7];
  }

  return v5;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_435(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "requestLastDecodedFrame"}];
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_439(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v7 = objc_alloc_init(VCTextStream);
    [*(*(a1 + 32) + 72) addObject:v7];
    [(VCMediaStream *)v7 setDelegate:*(a1 + 32)];
    [(VCMediaStream *)v7 setDelegateFunctions:_VCMediaStreamManager_UpdateFrequencyLevel];
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_14;
      }

      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v11 = objc_opt_class();
      *buf = 136316162;
      v23 = v9;
      v24 = 2080;
      v25 = "[VCMediaStreamManager registerBlocksForService]_block_invoke_2";
      v26 = 1024;
      v27 = 1129;
      v28 = 2080;
      Name = class_getName(v11);
      v30 = 2048;
      v31 = v7;
      v12 = " [%s] %s:%d Allocated new %s(%p)";
      v13 = v10;
      v14 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_14;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      *buf = 136316674;
      v23 = v15;
      v24 = 2080;
      v25 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v26 = 1024;
      v27 = 1129;
      v28 = 2112;
      Name = v8;
      v30 = 2048;
      v31 = v17;
      v32 = 2080;
      v33 = class_getName(v18);
      v34 = 2048;
      v35 = v7;
      v12 = " [%s] %s:%d %@(%p) Allocated new %s(%p)";
      v13 = v16;
      v14 = 68;
    }

    _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
LABEL_14:
    v19 = -[VCMediaStream setLocalParticipantInfo:networkSockets:withError:](v7, "setLocalParticipantInfo:networkSockets:withError:", [a2 objectForKeyedSubscript:@"vcMediaStreamDictionary"], objc_msgSend(a2, "objectForKeyedSubscript:", @"USERXPCARGUMENTS"), a3);
    v20 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VCMediaStream streamToken](v7, "streamToken")}];
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CONTEXT", v20, @"vcMediaStreamToken", v19, @"vcMediaStreamStreamCapabilities", 0}];

    return v6;
  }

  return 0;
}

uint64_t __48__VCMediaStreamManager_registerBlocksForService__block_invoke_441(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v5 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_opt_class() == *(a1 + 32))
    {
      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v10 = objc_opt_class();
      *buf = 136316418;
      v20 = v8;
      v21 = 2080;
      v22 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v23 = 1024;
      v24 = 1158;
      v25 = 2080;
      Name = class_getName(v10);
      v27 = 2048;
      v28 = v6;
      v29 = 2048;
      v30 = [v6 streamToken];
      v11 = " [%s] %s:%d Releasing old %s(%p) stream:%ld ";
      v12 = v9;
      v13 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 32) performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 6)
      {
        goto LABEL_16;
      }

      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      v16 = *(a1 + 32);
      v17 = objc_opt_class();
      *buf = 136316930;
      v20 = v14;
      v21 = 2080;
      v22 = "[VCMediaStreamManager registerBlocksForService]_block_invoke";
      v23 = 1024;
      v24 = 1158;
      v25 = 2112;
      Name = v7;
      v27 = 2048;
      v28 = v16;
      v29 = 2080;
      v30 = class_getName(v17);
      v31 = 2048;
      v32 = v6;
      v33 = 2048;
      v34 = [v6 streamToken];
      v11 = " [%s] %s:%d %@(%p) Releasing old %s(%p) stream:%ld ";
      v12 = v15;
      v13 = 78;
    }

    _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_16:
    [v6 stop];
    [v6 startDeallocTimer];
    [*(*(a1 + 32) + 72) removeObject:v6];
  }

  return v4;
}

- (void)deregisterBlocksForService
{
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  v2 = +[AVConferenceXPCServer AVConferenceXPCServerSingleton];

  [v2 deregisterFromService:"vcMediaStreamSetSpatialAudioExperience"];
}

- (id)newLocalNWEndpointFromXPCArguments:(id)arguments mediaProtocolArgs:(id)args
{
  if (!arguments || !args || ![args objectForKeyedSubscript:@"vcMediaStreamLocalNWEndpointInXpcArgs"])
  {
    return 0;
  }

  return nw_endpoint_create_from_dictionary();
}

- (id)newMediaProtocolArgsWithMediaProtocolArgs:(id)args nwEndpoint:(id)endpoint clientAuditToken:(id)token
{
  v7 = [args mutableCopy];
  v8 = v7;
  if (v7)
  {
    [v7 setObject:token forKeyedSubscript:@"vcMediaStreamClientAuditToken"];
    if (endpoint)
    {
      [v8 setObject:endpoint forKeyedSubscript:@"vcMediaStreamLocalNWEndpoint"];
      [v8 setObject:0 forKeyedSubscript:@"vcMediaStreamLocalNWEndpointInXpcArgs"];
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v10, v11, " [%s] %s:%d Failed to create a mutable copy of the media stream protocol dictionary", v12, v13, v14, v15, v16);
    }
  }

  return v8;
}

- (id)newRemoteNWEndpointFromXPCArguments:(id)arguments
{
  v37 = *MEMORY[0x1E69E9840];
  if (!arguments)
  {
    goto LABEL_18;
  }

  if (!xpc_dictionary_get_value(arguments, "vcMediaStreamAVCEndpointNWEndpoint"))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      VRTraceErrorLogLevelToCSTR();
      if (!OUTLINED_FUNCTION_28())
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_1_0();
      v29 = v16;
      OUTLINED_FUNCTION_7();
      v30 = 395;
      v31 = v17;
      v32 = "vcMediaStreamAVCEndpointNWEndpoint";
      OUTLINED_FUNCTION_5_12();
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [(VCMediaStreamManager *)self performSelector:sel_logPrefix];
      }

      else
      {
        v9 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_18;
      }

      v24 = VRTraceErrorLogLevelToCSTR();
      v25 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v27 = 136316418;
      v28 = v24;
      v29 = 2080;
      OUTLINED_FUNCTION_7();
      v30 = 395;
      v31 = 2112;
      v32 = v9;
      v33 = 2048;
      selfCopy = self;
      v35 = v26;
      v36 = "vcMediaStreamAVCEndpointNWEndpoint";
      v18 = &dword_1DB56E000;
      v21 = " [%s] %s:%d %@(%p) Object not found for %s";
      v22 = &v27;
      v19 = v25;
      v20 = OS_LOG_TYPE_ERROR;
      v23 = 58;
    }

    _os_log_error_impl(v18, v19, v20, v21, v22, v23);
LABEL_18:
    v5 = 0;
LABEL_19:
    v7 = 0;
    goto LABEL_5;
  }

  v5 = nw_endpoint_create_from_dictionary();
  v6 = [[AVCEndpoint alloc] initWithNWEndpoint:v5];
  if (!v6)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (OUTLINED_FUNCTION_28())
      {
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_0();
        v30 = 399;
        OUTLINED_FUNCTION_3_4(&dword_1DB56E000, v10, v11, " [%s] %s:%d New AVCEndPoint alloc failed", v12, v13, v14, v15, v27);
      }
    }

    goto LABEL_19;
  }

  v7 = v6;
  [(AVCEndpoint *)v6 setRtpSSRC:[(VCMediaStreamManager *)self remoteSSRCFromXPCArguments:arguments]];
LABEL_5:
  nw_release(v5);
  return v7;
}

- (unsigned)remoteSSRCFromXPCArguments:(id)arguments
{
  v20 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  if (!arguments)
  {
    return 0;
  }

  if (xpc_dictionary_get_value(arguments, "vcMediaStreamAVCEndpointSSRC"))
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    if (v3)
    {
      v4 = v3;
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
      CFRelease(v4);
      return valuePtr;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      result = OUTLINED_FUNCTION_28();
      if (result)
      {
        OUTLINED_FUNCTION_13_3();
        v15 = "[VCMediaStreamManager remoteSSRCFromXPCArguments:]";
        v16 = 1024;
        v17 = 415;
        v18 = v7;
        v19 = "vcMediaStreamAVCEndpointSSRC";
        goto LABEL_12;
      }

      return result;
    }

    return 0;
  }

  if (VRTraceGetErrorLogLevelForModule() < 3)
  {
    return 0;
  }

  VRTraceErrorLogLevelToCSTR();
  result = OUTLINED_FUNCTION_28();
  if (result)
  {
    OUTLINED_FUNCTION_13_3();
    v15 = "[VCMediaStreamManager remoteSSRCFromXPCArguments:]";
    v16 = 1024;
    v17 = 412;
    v18 = v6;
    v19 = "vcMediaStreamAVCEndpointSSRC";
LABEL_12:
    OUTLINED_FUNCTION_5_12();
    _os_log_error_impl(v8, v9, v10, v11, v12, v13);
    return 0;
  }

  return result;
}

- (void)vcMediaStream:didUpdateVideoConfiguration:error:dictionary:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream didUpdateVideoConfiguration configDict is nil", v2, v3, v4, v5, v6);
}

- (void)cleanupStreamSyncSourceForVideoStream:andAudioStream:.cold.1()
{
  OUTLINED_FUNCTION_14_5();
  [v0 streamToken];
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

- (void)addSyncSourceToVideoStreamConfig:sourceStreamToken:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed configure stream synchronization", v2, v3, v4, v5, v6);
}

- (void)addSyncSourceToVideoStreamConfig:sourceStreamToken:error:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed configure stream synchronization", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_231_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_231_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  v0 = objc_opt_class();
  class_getName(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x26u);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_2()
{
  OUTLINED_FUNCTION_14_5();
  v0 = objc_opt_class();
  class_getName(v0);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate stream config", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_248_cold_4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate stream config", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_290_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode the remote endpoint", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_290_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode the remote endpoint", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_298_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_16(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode the remote endpoint", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_298_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode the remote endpoint", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_311_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set volume nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_3_328_cold_1()
{
  OUTLINED_FUNCTION_14_5();
  if (v0)
  {
    [objc_msgSend(v0 "description")];
  }

  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_334_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set PAUSE state, nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_353_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set stream direction nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_360_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set stream jitter buffer mode nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_367_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set rtcpEnabled nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_374_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set rtpTimeOutEnabled nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_381_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set rtcpTimeOutEnabled nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_388_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set rtpTimeOutInterval nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_395_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set rtcpTimeOutInterval nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_402_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set rtcpSendInterval nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_416_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set 'input frequency meter enabled' nil xpcDict", v2, v3, v4, v5, v6);
}

void __48__VCMediaStreamManager_registerBlocksForService__block_invoke_2_427_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d VCMediaStream failed to set 'output frequency meter enabled' nil xpcDict", v2, v3, v4, v5, v6);
}

@end