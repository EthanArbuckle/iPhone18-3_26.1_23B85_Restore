@interface VideoConferenceManager
+ (id)defaultVideoConferenceManager;
+ (void)addNSError:(id)a3 toConferenceXPCArgumentDictionary:(id)a4;
- (BOOL)hasVideoConference:(id)a3;
- (BOOL)isSIPHandleValid:(tagHANDLE *)a3;
- (VideoConferenceManager)init;
- (id)conferenceForCallID:(unsigned int)a3;
- (id)conferenceForParticipantID:(id)a3;
- (id)conferenceForSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3;
- (tagHANDLE)SIPHandle;
- (void)addVideoConference:(id)a3;
- (void)broadcastCellTechChange:(int)a3 cellularMaxPktLen:(unsigned __int16)a4;
- (void)cleanupVTP;
- (void)createSIPWithPacketMultiplexMode:(int)a3;
- (void)getClientUUID:(unsigned __int8)a3[16];
- (void)pauseVideoConferences:(BOOL)a3;
- (void)registerBlocksForConference;
- (void)removeVideoConference:(id)a3;
- (void)setConferenceWithMic:(id)a3;
- (void)startSIPWithPacketMultiplexMode:(int)a3 transportType:(unsigned int)a4;
- (void)stopSIPWithTransportType:(unsigned int)a3;
- (void)videoConference:(id)a3 cancelRelayRequest:(unsigned int)a4 requestDict:(id)a5;
- (void)videoConference:(id)a3 closeConnectionForCallID:(unsigned int)a4;
- (void)videoConference:(id)a3 didChangeLocalVariablesForCallID:(unsigned int)a4;
- (void)videoConference:(id)a3 didReceiveARPLData:(id)a4 fromCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 didReceiveData:(id)a4 forCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 didReceiveFirstRemoteFrameForCallID:(unsigned int)a4;
- (void)videoConference:(id)a3 didRemoteScreenAttributesChange:(id)a4 forCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 didRemoteVideoAttributesChange:(id)a4 forCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 didStartSession:(BOOL)a4 withCallID:(unsigned int)a5 error:(id)a6;
- (void)videoConference:(id)a3 didStartSession:(BOOL)a4 withCallID:(unsigned int)a5 withUserInfo:(id)a6 error:(id)a7;
- (void)videoConference:(id)a3 didStopWithCallID:(unsigned int)a4 error:(id)a5 callMetadata:(id)a6;
- (void)videoConference:(id)a3 inititiateRelayRequest:(unsigned int)a4 requestDict:(id)a5;
- (void)videoConference:(id)a3 isRemoteAudioBelowThreshold:(BOOL)a4;
- (void)videoConference:(id)a3 localAudioEnabled:(BOOL)a4 forCallID:(unsigned int)a5 error:(id)a6;
- (void)videoConference:(id)a3 localIPChange:(id)a4 withCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 receivedNoRemotePacketsForTime:(double)a4 callID:(unsigned int)a5;
- (void)videoConference:(id)a3 remoteAudioEnabled:(BOOL)a4 forCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 remoteAudioPaused:(BOOL)a4 callID:(unsigned int)a5;
- (void)videoConference:(id)a3 remoteCallingModeChanged:(unsigned int)a4 forCallID:(unsigned int)a5;
- (void)videoConference:(id)a3 remoteMediaStalled:(BOOL)a4 callID:(unsigned int)a5;
- (void)videoConference:(id)a3 remoteVideoPaused:(BOOL)a4 callID:(unsigned int)a5;
- (void)videoConference:(id)a3 sendRelayUpdate:(unsigned int)a4 updateDict:(id)a5;
- (void)videoConference:(id)a3 updateInputFrequencyLevel:(id)a4;
- (void)videoConference:(id)a3 updateInputMeterLevel:(float)a4;
- (void)videoConference:(id)a3 updateOutputFrequencyLevel:(id)a4;
- (void)videoConference:(id)a3 updateOutputMeterLevel:(float)a4;
- (void)videoConference:(id)a3 videoQualityNotificationForCallID:(unsigned int)a4 isDegraded:(BOOL)a5 isRemote:(BOOL)a6;
- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 didPauseAudio:(BOOL)a5 error:(id)a6;
- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 didPauseVideo:(BOOL)a5 error:(id)a6;
- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 isSendingAudio:(BOOL)a5 error:(id)a6;
- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 networkHint:(BOOL)a5;
@end

@implementation VideoConferenceManager

+ (id)defaultVideoConferenceManager
{
  result = defaultVideoConferenceManager__VideoConferenceManager;
  if (!defaultVideoConferenceManager__VideoConferenceManager)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultVideoConferenceManager__VideoConferenceManager)
    {
      defaultVideoConferenceManager__VideoConferenceManager = objc_alloc_init(VideoConferenceManager);
    }

    objc_sync_exit(v3);
    return defaultVideoConferenceManager__VideoConferenceManager;
  }

  return result;
}

- (VideoConferenceManager)init
{
  v8 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = VideoConferenceManager;
  v2 = [(VideoConferenceManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->hSIP = 0xFFFFFFFFLL;
    v2->sipRefCount = 0;
    v2->vcList = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    v3->resultQueue = objc_alloc_init(ICEResultWaitQueue);
    uuid_clear(v3->_clientUUID);
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v3->_xpcCommandQueue = dispatch_queue_create("com.apple.AVConference.VideoConferenceManager.xpcCommandQueue", v4);
    v7.__sig = 0xAAAAAAAAAAAAAAAALL;
    *v7.__opaque = 0xAAAAAAAAAAAAAAAALL;
    pthread_mutexattr_init(&v7);
    pthread_mutexattr_settype(&v7, 2);
    pthread_mutex_init(&v3->stateLock, &v7);
    pthread_mutex_init(&v3->sipLock, &v7);
    pthread_mutexattr_destroy(&v7);
    v3->isVTPInitialized = 0;
  }

  return v3;
}

+ (void)addNSError:(id)a3 toConferenceXPCArgumentDictionary:(id)a4
{
  if (a3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(a3, "code")}];
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(a3, "domain"), @"conferenceErrorDomain", v7, @"conferenceErrorCode", objc_msgSend(a3, "userInfo"), @"conferenceErrorUserInfo", 0}];
    [a4 setObject:v6 forKeyedSubscript:@"conferenceError"];
  }
}

- (void)videoConference:(id)a3 localIPChange:(id)a4 withCallID:(unsigned int)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{a4, @"conferenceCallNewBlob", v8, @"conferenceCallID", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didStartSession:(BOOL)a4 withCallID:(unsigned int)a5 error:(id)a6
{
  v7 = *&a5;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a4];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v7];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, @"conferenceConnectionStarted", v9, 0}];
  [VideoConferenceManager addNSError:a6 toConferenceXPCArgumentDictionary:v10];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didStartSession:(BOOL)a4 withCallID:(unsigned int)a5 withUserInfo:(id)a6 error:(id)a7
{
  v9 = *&a5;
  v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:a4];
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v9];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v13, @"conferenceConnectionStarted", a6, @"conferenceUserInfo", v11, @"conferenceCallID", 0}];
  [VideoConferenceManager addNSError:a7 toConferenceXPCArgumentDictionary:v12];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didStopWithCallID:(unsigned int)a4 error:(id)a5 callMetadata:(id)a6
{
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v10, @"conferenceCallID", a6, @"conferenceCallMetadata", 0}];
  [VideoConferenceManager addNSError:a5 toConferenceXPCArgumentDictionary:v9];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 didPauseAudio:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v7];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, @"conferenceCallID", v9, @"conferenceAudioPause", 0}];
  [VideoConferenceManager addNSError:a6 toConferenceXPCArgumentDictionary:v10];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 isSendingAudio:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v7];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, @"conferenceCallID", v9, @"conferenceAudioSending", 0}];
  [VideoConferenceManager addNSError:a6 toConferenceXPCArgumentDictionary:v10];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 didPauseVideo:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v7];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, @"conferenceCallID", v9, @"conferenceVideoPause", 0}];
  [VideoConferenceManager addNSError:a6 toConferenceXPCArgumentDictionary:v10];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 receivedNoRemotePacketsForTime:(double)a4 callID:(unsigned int)a5
{
  v5 = *&a5;
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:a4];
  v9 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v10, @"conferenceCallID", v8, @"conferenceNoRemotePacketsTime", 0}];
  if ([a3 shouldReinitializeCallWithDuration:v5 forCallID:a4])
  {
    [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
  }
}

- (void)videoConference:(id)a3 remoteMediaStalled:(BOOL)a4 callID:(unsigned int)a5
{
  v5 = a4;
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v7, @"conferenceIsRemoteMediaStalled", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didReceiveFirstRemoteFrameForCallID:(unsigned int)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"conferenceCallID", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 remoteAudioPaused:(BOOL)a4 callID:(unsigned int)a5
{
  v5 = a4;
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v7, @"conferenceAudioPause", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 remoteVideoPaused:(BOOL)a4 callID:(unsigned int)a5
{
  v5 = a4;
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v7, @"conferenceVideoPause", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didRemoteVideoAttributesChange:(id)a4 forCallID:(unsigned int)a5
{
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [a4 copyEncodedDictionary];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v7, @"conferenceRemoteVideoAttributes", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didRemoteScreenAttributesChange:(id)a4 forCallID:(unsigned int)a5
{
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [a4 copyEncodedDictionary];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v7, @"conferenceRemoteScreenAttributes", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 updateInputFrequencyLevel:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a4, @"conferenceInputFreqMetering", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 updateOutputFrequencyLevel:(id)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{a4, @"conferenceOutputFreqMetering", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 updateInputMeterLevel:(float)a4
{
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v7 = a4;
  v9 = [v6 initWithFloat:v7];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceInputMetering", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 updateOutputMeterLevel:(float)a4
{
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v7 = a4;
  v9 = [v6 initWithFloat:v7];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceOutputMetering", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 isRemoteAudioBelowThreshold:(BOOL)a4
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"conferenceAudioBelowThreshold";
  v6[0] = [MEMORY[0x1E696AD98] numberWithBool:a4];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 inititiateRelayRequest:(unsigned int)a4 requestDict:(id)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceCallID", a5, @"conferenceRelayRequest", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 sendRelayUpdate:(unsigned int)a4 updateDict:(id)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceCallID", a5, @"conferenceRelayRequest", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 cancelRelayRequest:(unsigned int)a4 requestDict:(id)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceCallID", a5, @"conferenceRelayRequest", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 videoQualityNotificationForCallID:(unsigned int)a4 isDegraded:(BOOL)a5 isRemote:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v7];
  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v6];
  v11 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v10, @"conferenceIsVideoDegraded", v12, @"conferenceIsRemote", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 withCallID:(unsigned int)a4 networkHint:(BOOL)a5
{
  v5 = a5;
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceCallID", v9, @"conferenceNetworkHint", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didReceiveARPLData:(id)a4 fromCallID:(unsigned int)a5
{
  v5 = *&a5;
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = v8;
      v16 = 2080;
      v17 = "[VideoConferenceManager videoConference:didReceiveARPLData:fromCallID:]";
      v18 = 1024;
      v19 = 445;
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> Relaying incoming ARPL data from VideoConference to AVConference via XPC (in VideoConferenceManager) <<<<<", buf, 0x1Cu);
    }
  }

  if (!a4 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = v10;
      v16 = 2080;
      v17 = "[VideoConferenceManager videoConference:didReceiveARPLData:fromCallID:]";
      v18 = 1024;
      v19 = 448;
      _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> DATA ERROR (in VideoConferenceManager) <<<<<", buf, 0x1Cu);
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v5];
  v13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v12, @"conferenceCallID", a4, @"conferenceARPLData", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didChangeLocalVariablesForCallID:(unsigned int)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"conferenceCallID", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 didReceiveData:(id)a4 forCallID:(unsigned int)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"conferenceCallID", a4, @"conferenceData", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 remoteAudioEnabled:(BOOL)a4 forCallID:(unsigned int)a5
{
  v5 = a4;
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v9, @"conferenceCallID", v7, @"conferenceAudioEnabled", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 localAudioEnabled:(BOOL)a4 forCallID:(unsigned int)a5 error:(id)a6
{
  v7 = a4;
  v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a5];
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v7];
  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithObjectsAndKeys:{v11, @"conferenceCallID", v9, @"conferenceAudioEnabled", 0}];
  [VideoConferenceManager addNSError:a6 toConferenceXPCArgumentDictionary:v10];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 closeConnectionForCallID:(unsigned int)a4
{
  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"conferenceCallID", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (void)videoConference:(id)a3 remoteCallingModeChanged:(unsigned int)a4 forCallID:(unsigned int)a5
{
  v5 = *&a5;
  v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*&a4];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:v5];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceCallID", v9, @"conferenceCallingMode", 0}];
  [+[AVConferenceXPCServer AVConferenceXPCServerSingleton](AVConferenceXPCServer "AVConferenceXPCServerSingleton")];
}

- (tagHANDLE)SIPHandle
{
  pthread_mutex_lock(&self->stateLock);
  hSIP = self->hSIP;
  pthread_mutex_unlock(&self->stateLock);
  return hSIP;
}

- (void)createSIPWithPacketMultiplexMode:(int)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = v5;
      v17 = 2080;
      v18 = "[VideoConferenceManager createSIPWithPacketMultiplexMode:]";
      v19 = 1024;
      v20 = 554;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent is being asserted by SIP", &v15, 0x1Cu);
    }
  }

  [+[VCNetworkAgent sharedInstance](VCNetworkAgent addAssertion];
  if (!self->isVTPInitialized)
  {
    +[VCVTPWrapper startVTP];
    VTP_SetCallback(VTPCallback, self);
    self->isVTPInitialized = 1;
  }

  self->hSIP = 0xFFFFFFFFLL;
  p_hSIP = &self->hSIP;
  v8 = SIPCreateHandle(&self->hSIP, SIPCallback, self, 0);
  if (v8)
  {
    v9 = v8;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315906;
        v16 = v10;
        v17 = 2080;
        v18 = "[VideoConferenceManager createSIPWithPacketMultiplexMode:]";
        v19 = 1024;
        v20 = 566;
        v21 = 1024;
        v22 = v9;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SOMETHING WENT WRONG MAKING THE SIP HANDLE!%08x", &v15, 0x22u);
      }
    }

    SIPCloseHandle();
    *p_hSIP = 0xFFFFFFFFLL;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *p_hSIP;
      v15 = 136315906;
      v16 = v12;
      v17 = 2080;
      v18 = "[VideoConferenceManager createSIPWithPacketMultiplexMode:]";
      v19 = 1024;
      v20 = 571;
      v21 = 1024;
      v22 = v14;
      _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SIP Handle created:0x%x", &v15, 0x22u);
    }
  }

  SIPSetPacketMultiplexMode(self->hSIP, a3);
  SIPSetAllowSameSourceDestination(self->hSIP, 1);
  SIPSetCellConditionChangeHandler(self->hSIP, CellConditionChangeCallback, self);
  self->sipRefCount = 0;
}

- (void)startSIPWithPacketMultiplexMode:(int)a3 transportType:(unsigned int)a4
{
  v5 = *&a3;
  v19 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VideoConferenceManager startSIPWithPacketMultiplexMode:transportType:]");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      sipRefCount = self->sipRefCount;
      v11 = 136315906;
      v12 = v7;
      v13 = 2080;
      v14 = "[VideoConferenceManager startSIPWithPacketMultiplexMode:transportType:]";
      v15 = 1024;
      v16 = 585;
      v17 = 1024;
      v18 = sipRefCount;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceManager:  starting sip with refCount = %d", &v11, 0x22u);
    }
  }

  pthread_mutex_lock(&self->sipLock);
  hSIP = self->hSIP;
  if (hSIP != 0xFFFFFFFFLL || ([(VideoConferenceManager *)self createSIPWithPacketMultiplexMode:v5], hSIP = self->hSIP, hSIP != 0xFFFFFFFFLL))
  {
    if ((SIPStartListen(hSIP, a4 != 0, self->_clientUUID) & 0x80000000) != 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VideoConferenceManager startSIPWithPacketMultiplexMode:transportType:];
        }
      }

      SIPCloseHandle();
      self->hSIP = 0xFFFFFFFFLL;
    }

    else
    {
      ++self->sipRefCount;
    }
  }

  pthread_mutex_unlock(&self->sipLock);
}

- (BOOL)isSIPHandleValid:(tagHANDLE *)a3
{
  v22 = *MEMORY[0x1E69E9840];
  hSIP = self->hSIP;
  v4 = hSIP != a3 || hSIP == 0xFFFFFFFFLL;
  v5 = !v4;
  if (v4)
  {
    v6 = a3;
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        v11 = self->hSIP;
        v12 = 136316162;
        v13 = v8;
        v14 = 2080;
        v15 = "[VideoConferenceManager isSIPHandleValid:]";
        v16 = 1024;
        v17 = 609;
        v18 = 1024;
        v19 = v6;
        v20 = 1024;
        v21 = v11;
        _os_log_error_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_ERROR, " [%s] %s:%d SIPCallback tried to use stale/invalid handle %d. actual is %d", &v12, 0x28u);
      }
    }
  }

  return v5;
}

- (void)cleanupVTP
{
  v5[5] = *MEMORY[0x1E69E9840];
  v3 = dispatch_time(0, 120000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__VideoConferenceManager_cleanupVTP__block_invoke;
  v5[3] = &unk_1E85F3778;
  v5[4] = self;
  dispatch_after(v3, global_queue, v5);
}

uint64_t __36__VideoConferenceManager_cleanupVTP__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v2 = VRTraceErrorLogLevelToCSTR();
    v3 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = *(v4 + 216);
      LODWORD(v4) = *(v4 + 192) == 0xFFFFFFFFLL;
      v10 = 136316162;
      v11 = v2;
      v12 = 2080;
      v13 = "[VideoConferenceManager cleanupVTP]_block_invoke";
      v14 = 1024;
      v15 = 620;
      v16 = 1024;
      v17 = v5;
      v18 = 1024;
      v19 = v4;
      _os_log_impl(&dword_1DB56E000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Entering cleanupVTP...with isVTPInitialized = %d and sip is invalid = %d", &v10, 0x28u);
    }
  }

  pthread_mutex_lock((*(a1 + 32) + 88));
  v6 = *(a1 + 32);
  if (*(v6 + 192) == 0xFFFFFFFFLL && *(v6 + 216) == 1)
  {
    +[VCVTPWrapper stopVTP];
    *(*(a1 + 32) + 216) = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = "[VideoConferenceManager cleanupVTP]_block_invoke";
        v14 = 1024;
        v15 = 628;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Finished cleanupVTP...", &v10, 0x1Cu);
      }
    }
  }

  return pthread_mutex_unlock((*(a1 + 32) + 88));
}

- (void)stopSIPWithTransportType:(unsigned int)a3
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B590](&dword_1DB56E000, "[VideoConferenceManager stopSIPWithTransportType:]");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      sipRefCount = self->sipRefCount;
      *buf = 136315906;
      v18 = v5;
      v19 = 2080;
      v20 = "[VideoConferenceManager stopSIPWithTransportType:]";
      v21 = 1024;
      v22 = 638;
      v23 = 1024;
      v24 = sipRefCount;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VideoConferenceManager:  stopping sip with refCount = %d", buf, 0x22u);
    }
  }

  pthread_mutex_lock(&self->sipLock);
  v8 = self->sipRefCount;
  v9 = __OFSUB__(v8, 1);
  v10 = v8 - 1;
  if (v10 < 0 == v9)
  {
    self->sipRefCount = v10;
  }

  hSIP = self->hSIP;
  if (hSIP == 0xFFFFFFFFLL || (SIPStopListen(hSIP, a3 != 0), v12 = self->hSIP, v12 == 0xFFFFFFFFLL) || self->sipRefCount > 0)
  {
    pthread_mutex_unlock(&self->sipLock);
  }

  else
  {
    self->hSIP = 0xFFFFFFFFLL;
    self->sipRefCount = 0;
    pthread_mutex_unlock(&self->sipLock);
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v18 = v13;
        v19 = 2080;
        v20 = "[VideoConferenceManager stopSIPWithTransportType:]";
        v21 = 1024;
        v22 = 656;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent is being un-asserted by SIP", buf, 0x1Cu);
      }
    }

    [+[VCNetworkAgent sharedInstance](VCNetworkAgent removeAssertion];
    global_queue = dispatch_get_global_queue(0, 0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__VideoConferenceManager_stopSIPWithTransportType___block_invoke;
    v16[3] = &unk_1E85F40E0;
    v16[4] = self;
    v16[5] = v12;
    dispatch_async(global_queue, v16);
  }
}

void __51__VideoConferenceManager_stopSIPWithTransportType___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(SnapshotTimer);
  [(SnapshotTimer *)v2 checkinWithTimeout:@"Closing SIP Handle" forTask:45.0];
  SIPCloseHandle();
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "[VideoConferenceManager stopSIPWithTransportType:]_block_invoke";
      v10 = 1024;
      v11 = 669;
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SIP Handle closed:0x%x", &v6, 0x22u);
    }
  }

  [*(a1 + 32) cleanupVTP];
  [(SnapshotTimer *)v2 checkout];
}

- (void)addVideoConference:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->stateLock);
  if (([(NSMutableArray *)self->vcList containsObject:a3]& 1) == 0)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VideoConferenceManager addVideoConference:]";
        v11 = 1024;
        v12 = 688;
        v13 = 2112;
        v14 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent is being asserted by addVideoConference '%@'", &v7, 0x26u);
      }
    }

    [+[VCNetworkAgent sharedInstance](VCNetworkAgent addAssertion];
    [(NSMutableArray *)self->vcList addObject:a3];
  }

  pthread_mutex_unlock(&self->stateLock);
}

- (void)removeVideoConference:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->stateLock);
  if ([(NSMutableArray *)self->vcList containsObject:a3])
  {
    [(NSMutableArray *)self->vcList removeObject:a3];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315906;
        v8 = v5;
        v9 = 2080;
        v10 = "[VideoConferenceManager removeVideoConference:]";
        v11 = 1024;
        v12 = 702;
        v13 = 2112;
        v14 = a3;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d NetworkAgent is being un-asserted by removeVideoConference '%@'", &v7, 0x26u);
      }
    }

    [+[VCNetworkAgent sharedInstance](VCNetworkAgent removeAssertion];
  }

  if ([a3 isEqual:self->activeConference])
  {
    self->activeConference = 0;
  }

  if ([a3 isEqual:self->conferenceWithMic])
  {
    self->conferenceWithMic = 0;
  }

  pthread_mutex_unlock(&self->stateLock);
}

- (void)setConferenceWithMic:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  pthread_mutex_lock(&self->stateLock);
  self->conferenceWithMic = a3;
  if (a3)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    vcList = self->vcList;
    v7 = [(NSMutableArray *)vcList countByEnumeratingWithState:&v22 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(vcList);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if (v11 != a3 && [*(*(&v22 + 1) + 8 * i) hasMic])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [(NSMutableArray *)vcList countByEnumeratingWithState:&v22 objects:v21 count:16];
      }

      while (v8);
    }
  }

  pthread_mutex_unlock(&self->stateLock);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * j) setHasMic:0];
      }

      v13 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v13);
  }
}

- (id)conferenceForCallID:(unsigned int)a3
{
  v3 = *&a3;
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->stateLock);
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:self->vcList];
  pthread_mutex_unlock(&self->stateLock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    if ([v10 matchesCallID:v3])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (BOOL)hasVideoConference:(id)a3
{
  pthread_mutex_lock(&self->stateLock);
  LOBYTE(a3) = [(NSMutableArray *)self->vcList containsObject:a3];
  pthread_mutex_unlock(&self->stateLock);
  return a3;
}

- (id)conferenceForParticipantID:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->stateLock);
  v5 = self->activeConference;
  pthread_mutex_unlock(&self->stateLock);
  if (!v5 || ![(VideoConference *)v5 matchesParticipantID:a3])
  {
    pthread_mutex_lock(&self->stateLock);
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:self->vcList];
    pthread_mutex_unlock(&self->stateLock);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v5 = *(*(&v13 + 1) + 8 * v10);
        if ([(VideoConference *)v5 matchesParticipantID:a3])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
          v5 = 0;
          if (v8)
          {
            goto LABEL_5;
          }

          return v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (id)conferenceForSourceDestinationInfo:(tagVCSourceDestinationInfo *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->stateLock);
  v5 = self->activeConference;
  pthread_mutex_unlock(&self->stateLock);
  if (!v5 || ![(VideoConference *)v5 conferenceMatchesSourceDestinationInfo:a3])
  {
    pthread_mutex_lock(&self->stateLock);
    v6 = [MEMORY[0x1E695DF70] arrayWithArray:self->vcList];
    pthread_mutex_unlock(&self->stateLock);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if ([v11 conferenceMatchesSourceDestinationInfo:a3])
          {
            return v11;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v22 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    if (![(VideoConference *)v5 hasSessionWaitingForSIPInvite])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
LABEL_14:
        v15 = 0;
        while (1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v5 = *(*(&v18 + 1) + 8 * v15);
          if ([(VideoConference *)v5 hasSessionWaitingForSIPInvite])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [v6 countByEnumeratingWithState:&v18 objects:v17 count:16];
            v5 = 0;
            if (v13)
            {
              goto LABEL_14;
            }

            return v5;
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

- (void)pauseVideoConferences:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v12 = v6;
      v13 = 2080;
      v14 = "[VideoConferenceManager pauseVideoConferences:]";
      v15 = 1024;
      v16 = 824;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterruptMe: (%d) pauseVideoConferences begin", buf, 0x22u);
    }
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__VideoConferenceManager_pauseVideoConferences___block_invoke;
  v9[3] = &unk_1E85F37A0;
  v9[4] = self;
  v10 = v3;
  dispatch_async(global_queue, v9);
}

void __48__VideoConferenceManager_pauseVideoConferences___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((*(a1 + 32) + 24));
  v2 = [MEMORY[0x1E695DEC8] arrayWithArray:*(*(a1 + 32) + 160)];
  pthread_mutex_unlock((*(a1 + 32) + 24));
  v3 = [v2 count];
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__VideoConferenceManager_pauseVideoConferences___block_invoke_2;
  block[3] = &unk_1E85F5CC0;
  block[4] = v2;
  v6 = *(a1 + 40);
  dispatch_apply(v3, global_queue, block);
}

void __48__VideoConferenceManager_pauseVideoConferences___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v4 setPauseAudio:*(a1 + 40)];
  [v4 setPauseVideo:*(a1 + 40)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      if ([*(a1 + 32) objectAtIndex:a2])
      {
        v8 = [objc_msgSend(objc_msgSend(*(a1 + 32) objectAtIndex:{a2), "description"), "UTF8String"}];
      }

      else
      {
        v8 = "<nil>";
      }

      v9 = 136316162;
      v10 = v5;
      v11 = 2080;
      v12 = "[VideoConferenceManager pauseVideoConferences:]_block_invoke_2";
      v13 = 1024;
      v14 = 839;
      v15 = 1024;
      v16 = v7;
      v17 = 2080;
      v18 = v8;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d InterruptMe: (%d) Pausing audio and video for conference %s", &v9, 0x2Cu);
    }
  }
}

- (void)broadcastCellTechChange:(int)a3 cellularMaxPktLen:(unsigned __int16)a4
{
  v4 = a4;
  v5 = *&a3;
  v17 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&self->stateLock);
  v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:self->vcList];
  pthread_mutex_unlock(&self->stateLock);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) handleCellTechChange:v5 cellularMaxPktLen:v4];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (void)getClientUUID:(unsigned __int8)a3[16]
{
  pthread_mutex_lock(&self->sipLock);
  uuid_copy(a3, self->_clientUUID);

  pthread_mutex_unlock(&self->sipLock);
}

- (void)registerBlocksForConference
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke;
  v4[3] = &unk_1E85F5100;
  v4[4] = self;
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
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_13;
  v3[3] = &unk_1E85F5100;
  v3[4] = self;
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
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v5 = [a2 objectForKeyedSubscript:@"conferenceClientUUID"];
  if (v5)
  {
    memset(src, 170, 16);
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
    [v6 getUUIDBytes:src];
    pthread_mutex_lock((*(a1 + 32) + 88));
    uuid_copy((*(a1 + 32) + 8), src);
    pthread_mutex_unlock((*(a1 + 32) + 88));
  }

  v7 = -[VideoConference initWithClientPid:]([VideoConference alloc], "initWithClientPid:", [objc_msgSend(a2 objectForKeyedSubscript:{@"CLIENTPID", "intValue"}]);
  [(VideoConference *)v7 setDelegate:+[VideoConferenceManager defaultVideoConferenceManager]];
  [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
  v8 = [a2 objectForKeyedSubscript:@"conferenceTransportType"];
  -[VideoConference setTransportType:](v7, "setTransportType:", [v8 unsignedIntValue]);
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 unsignedIntValue];
      *src = 136316162;
      *&src[4] = v9;
      *&src[12] = 2080;
      *&src[14] = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke";
      v17 = 1024;
      v18 = 59;
      v19 = 2048;
      v20 = v7;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d allocated new VideoConference object %p, with transportType %d", src, 0x2Cu);
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VideoConference inputAudioPowerSpectrumToken](v7, "inputAudioPowerSpectrumToken")}];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[VideoConference outputAudioPowerSpectrumToken](v7, "outputAudioPowerSpectrumToken")}];
  v4 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"CONTEXT", v12, @"conferenceInitialized", v13, @"conferenceInputAudioPowerSpectrumToken", v14, @"conferenceOutputAudioPowerSpectrumToken", 0}];

  return v4;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_30(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    v3 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"CONTEXT", 0}];
  }

  v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 stopAllCalls:0];
    [v5 setDelegate:0];
    [v5 startDeallocTimerWithTimeout:15];

    [+[VideoConferenceManager defaultVideoConferenceManager](VideoConferenceManager "defaultVideoConferenceManager")];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v10 = v6;
        v11 = 2080;
        v12 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke";
        v13 = 1024;
        v14 = 100;
        v15 = 2048;
        v16 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d released old VideoConference object %p", buf, 0x26u);
      }
    }
  }

  return v3;
}

{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "isMicrophoneMuted")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceMicrophoneMute", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_33(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "warmupForCall"}];
  }

  return 0;
}

{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 localBitrateForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceLocalBitRate", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceDeviceRole"];
  v6 = [a2 objectForKeyedSubscript:@"conferenceReportingHierarchyToken"];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v4, "initializeNewCallWithDeviceRole:reportingHierarchyToken:", objc_msgSend(v5, "intValue"), v6)}];
  v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceCallID", 0}];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = v8;
      v13 = 2080;
      v14 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke_2";
      v15 = 1024;
      v16 = 129;
      v17 = 1024;
      v18 = [v5 intValue];
      v19 = 1024;
      v20 = [v7 intValue];
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d initializeNewCallWithDeviceRole:%d (server side) callID=%d", buf, 0x28u);
    }
  }

  return v3;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_49(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "useViceroyBlobFormat")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceUsingBlobFormat", 0}];

  return v6;
}

{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "remoteFrameSizeForCallID:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID", "unsignedIntValue")}];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceRemoteFrameWidth", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_2_56(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceUsingBlobFormat"];
    if (v4)
    {
      [v3 setUseViceroyBlobFormat:objc_msgSend(v4, "BOOLValue")];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_3(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "setPeerReportingID:sessionID:callID:", objc_msgSend(a2, "objectForKeyedSubscript:", @"conferencePeerReportingIdentifier", objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceSessionID", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID", "unsignedIntValue")}];
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_4(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceSessionID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      if (v5)
      {
        [v3 setSessionID:v4 callID:{objc_msgSend(v5, "unsignedIntValue")}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_5(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [a2 objectForKeyedSubscript:@"conferenceSessionID"];
    [a2 objectForKeyedSubscript:@"conferenceCallEvent"];
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v7 = [a2 objectForKeyedSubscript:@"conferenceParticipantID"];
  v8 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v5 = 0;
  if (v7 && v8)
  {
    v13 = [v8 unsignedIntValue];
    v9 = [v6 inviteDataForParticipantID:v7 callID:&v13 remoteInviteData:0 nonCellularCandidateTimeout:a3 error:0.0];
    v10 = objc_alloc(MEMORY[0x1E696AD98]);
    v11 = [v10 initWithUnsignedInt:v13];
    v5 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{objc_msgSend(v9, "objectForKeyedSubscript:", @"InviteDataConnectionBlob", @"conferenceConnectionBlob", v11, @"conferenceCallID", 0}];
  }

  return v5;
}

id __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v6 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v7 = [a2 objectForKeyedSubscript:@"conferenceParticipantID"];
  v8 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v9 = [a2 objectForKeyedSubscript:@"conferenceInviteData"];
  v10 = [a2 objectForKeyedSubscript:@"conferenceNonCellularCandidateTimeout"];
  v5 = 0;
  if (v7 && v8)
  {
    v11 = v10;
    v16 = [v8 unsignedIntValue];
    [v11 doubleValue];
    v12 = [v6 inviteDataForParticipantID:v7 callID:&v16 remoteInviteData:v9 nonCellularCandidateTimeout:a3 error:?];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v13 = objc_alloc(MEMORY[0x1E696AD98]);
    v14 = [v13 initWithUnsignedInt:v16];
    if (v14)
    {
      [v5 setObject:v14 forKeyedSubscript:@"conferenceCallID"];
    }

    if (v12)
    {
      [v5 setObject:v12 forKeyedSubscript:@"conferenceInviteData"];
    }
  }

  return v5;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_8(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "callMetadataForCallID:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID", "unsignedIntValue")}];
  return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"conferenceCallMetadata", 0}];
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_9(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferencePeerCN"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      if (v5)
      {
        [v3 setPeerCN:v4 callID:{objc_msgSend(v5, "unsignedIntValue")}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_10(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  if (!v5)
  {
    return 0;
  }

  [v4 networkQualityForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceNetworkQuality", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_11(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "requiresWifi")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceRequiresWifi", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_12(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceRequiresWifi"];
    if (v4)
    {
      [v3 setRequiresWifi:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v24 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v7 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v8 = [a2 objectForKeyedSubscript:@"conferenceOldCallID"];
  v9 = [a2 objectForKeyedSubscript:@"conferenceIsCaller"];
  v10 = [a2 objectForKeyedSubscript:@"conferenceParticipantID"];
  v23 = [a2 objectForKeyedSubscript:@"conferenceInviteData"];
  v22 = [a2 objectForKeyedSubscript:@"conferenceRelayRequest"];
  v11 = [a2 objectForKeyedSubscript:@"conferenceCapabilities"];
  v12 = [a2 objectForKeyedSubscript:@"conferenceDestination"];
  v13 = [a2 objectForKeyedSubscript:@"USERXPCARGUMENTS"];
  if (v13)
  {
    v14 = xpc_dictionary_dup_fd(v13, "FILEDESCRIPTOR");
  }

  else
  {
    v14 = -1;
  }

  v15 = [[VCCapabilities alloc] initWithEncodedDictionary:v11];
  v16 = v15;
  if (v7 && v8 && v9 && v10 && v15)
  {
    LODWORD(v21) = v14;
    LOBYTE(v20) = 1;
    v17 = [v24 startConnectionWithParticipantID:v10 callID:objc_msgSend(v7 oldCallID:"unsignedIntValue") usingInviteData:objc_msgSend(v8 isCaller:"unsignedIntValue") relayResponseDict:v23 didOriginateRelayRequest:objc_msgSend(v9 capabilities:"BOOLValue") idsSocket:v22 destination:v20 error:{v15, v21, v12, a3}];
    v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v17];
    v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v18, @"conferenceConnectionStarted", 0}];

    [v24 setDelegate:*(a1 + 32)];
  }

  else
  {
    close(v14);
    v6 = 0;
  }

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_14(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      [v3 stopCallID:{objc_msgSend(v4, "unsignedIntValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_15(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      [v3 cancelCallID:{objc_msgSend(v4, "unsignedIntValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_16(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      [v3 remoteCancelledCallID:{objc_msgSend(v4, "unsignedIntValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_17(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceCallReport"];
    v6 = [a2 objectForKeyedSubscript:@"conferenceCallReportProtobuf"];
    v7 = [a2 objectForKeyedSubscript:@"conferenceCallReportProtobufID"];
    if (v4 && v5)
    {
      [v3 setCallReport:objc_msgSend(v4 withReport:{"unsignedIntValue"), v5}];
    }

    if (v4 && v6 && v7)
    {
      [v3 setCallReportProtobuf:objc_msgSend(v4 withProtobufData:"unsignedIntValue") forMetricID:{v6, objc_msgSend(v7, "integerValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_18(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceActive"];
  if (!v5)
  {
    return 0;
  }

  v6 = [v4 setActive:{objc_msgSend(v5, "BOOLValue")}];
  v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v6];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceActive", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_19(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceConnectionBlob"];
    if (v4)
    {
      if (v5)
      {
        [v3 processRemoteIPChange:v5 callID:{objc_msgSend(v4, "unsignedIntValue")}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_20(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "isOutputMeteringEnabled")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceOutputMetering", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_21(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceOutputMetering"];
    if (v4)
    {
      [v3 setOutputMeteringEnabled:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_22(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "isInputMeteringEnabled")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceInputMetering", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_23(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceInputMetering"];
    if (v4)
    {
      [v3 setInputMeteringEnabled:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_24(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "isInputFrequencyMeteringEnabled")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceInputFreqMetering", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_25(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceInputFreqMetering"];
    if (v4)
    {
      [v3 setInputFrequencyMeteringEnabled:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_26(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "isOutputFrequencyMeteringEnabled")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceOutputFreqMetering", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_27(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceOutputFreqMetering"];
    if (v4)
    {
      [v3 setOutputFrequencyMeteringEnabled:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_28(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 outputMeterLevel];
  v6 = [v5 initWithFloat:?];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"conferenceOutputMetering", 0}];

  return v7;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_29(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 inputMeterLevel];
  v6 = [v5 initWithFloat:?];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, @"conferenceInputMetering", 0}];

  return v7;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_31(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceMicrophoneMute"];
    if (v4)
    {
      [v3 setMicrophoneMuted:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_32(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 localFramerateForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceLocalFrameRate", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_34(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 remoteFramerateForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceRemoteFrameRate", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_35(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 remoteBitrateForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceRemoteBitRate", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_36(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 localPacketLossRateForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceRemotePacketLossRate", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_37(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 remotePacketLossRateForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceRemotePacketLossRate", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_38(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  [v4 roundTripTimeForCallID:{objc_msgSend(v5, "unsignedIntValue")}];
  v7 = [v6 initWithDouble:?];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"conferenceRoundTripTime", 0}];

  return v8;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_39(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "statsForCallID:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID", "unsignedIntValue")}];
  return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v4, @"conferenceCallStats", 0}];
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_40(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceSpeakerEnabled"];
    if (v4)
    {
      [v3 setEnableSpeakerPhone:{objc_msgSend(v4, "BOOLValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_41(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:{objc_msgSend(v4, "isSpeakerPhoneEnabled")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceSpeakerEnabled", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_42(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "natType")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceNATType", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_43(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceAudioSending"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      if (v5)
      {
        [v3 setSendAudio:objc_msgSend(v4 forCallID:{"BOOLValue"), objc_msgSend(v5, "unsignedIntValue")}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_44(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v6 = [a2 objectForKeyedSubscript:@"conferenceAudioPause"];
    v7 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v6)
    {
      if (v7)
      {
        [v5 setPauseAudio:objc_msgSend(v6 callID:"BOOLValue") error:{objc_msgSend(v7, "unsignedIntValue"), a3}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_45(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v5 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v6 = [a2 objectForKeyedSubscript:@"conferenceVideoPause"];
    v7 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v6)
    {
      if (v7)
      {
        [v5 setPauseVideo:objc_msgSend(v6 callID:"BOOLValue") error:{objc_msgSend(v7, "unsignedIntValue"), a3}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_46(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"conferenceServerInfo"];
    if (v3)
    {
      [GKSConnectivitySettings setServerAddresses:v3];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_47(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "localFrameWidth")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceLocalFrameWidth", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_48(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v4, "localFrameHeight")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceLocalFrameHeight", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_50(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "remoteFrameSizeForCallID:", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID", "unsignedIntValue")}];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceRemoteFrameHeight", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_51(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceRelayRequest"];
    if (v4)
    {
      if (v5)
      {
        [v3 processRelayRequestResponse:objc_msgSend(v4 responseDict:"unsignedIntValue") didOriginateRequest:{v5, 1}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_52(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceRelayRequest"];
    if (v4)
    {
      if (v5)
      {
        [v3 processRelayUpdate:objc_msgSend(v4 updateDict:"unsignedIntValue") didOriginateRequest:{v5, 1}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_53(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v3 = VRTraceErrorLogLevelToCSTR();
      v4 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = v3;
        v20 = 2080;
        v21 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke";
        v22 = 1024;
        v23 = 1071;
        _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> [incomingArgs objectForKey:CLIENT_DIED_KEY] != nil (in VideoConferenceManagerCategories) <<<<<", &v18, 0x1Cu);
      }
    }
  }

  else
  {
    if (!a2 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR();
      v6 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = v5;
        v20 = 2080;
        v21 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke_53";
        v22 = 1024;
        v23 = 1049;
        _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> ERROR: Incoming arguments are nil (in VideoConferenceManagerCategories) <<<<<", &v18, 0x1Cu);
      }
    }

    v7 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v8 = [a2 objectForKeyedSubscript:@"conferenceARPLData"];
    if (!v7 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = v9;
        v20 = 2080;
        v21 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke";
        v22 = 1024;
        v23 = 1057;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> ERROR: Call ID is nil (in VideoConferenceManagerCategories) <<<<<", &v18, 0x1Cu);
      }
    }

    v11 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    if (!v11 && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = 136315650;
        v19 = v12;
        v20 = 2080;
        v21 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke";
        v22 = 1024;
        v23 = 1063;
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> ERROR: VideoConference context is nil (in VideoConferenceManagerCategories) <<<<<", &v18, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v7 intValue];
        v18 = 136315906;
        v19 = v14;
        v20 = 2080;
        v21 = "[VideoConferenceManager(VideoConference) registerBlocksForConference]_block_invoke";
        v22 = 1024;
        v23 = 1066;
        v24 = 1024;
        v25 = v16;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d >>>>> Relaying outgoing ARPL data from AVConference via XPC to VideoConference with callID=%d (in VideoConferenceManagerCategories) <<<<<", &v18, 0x22u);
      }
    }

    [v11 sendARPLData:v8 toCallID:{objc_msgSend(v7, "unsignedIntValue")}];
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_350(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    [objc_msgSend(a2 objectForKeyedSubscript:{@"CONTEXT", "sendData:toCallID:encrypted:", objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceData", objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceCallID", "unsignedIntValue"), objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"conferenceEncryptData", "BOOLValue")}];
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_2_360(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    return 0;
  }

  v4 = [a2 objectForKeyedSubscript:@"CONTEXT"];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:{objc_msgSend(v4, "lastActiveCall")}];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"conferenceCallID", 0}];

  return v6;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_3_364(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    if (v4)
    {
      [v3 setLastActiveCall:{objc_msgSend(v4, "unsignedIntegerValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_4_368(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceRelayedCallType"];
    if (v4)
    {
      [v3 updateRelayedCallType:objc_msgSend(v5 forCallID:{"unsignedCharValue"), objc_msgSend(v4, "unsignedIntValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_5_375(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = -[VCCapabilities initWithEncodedDictionary:]([VCCapabilities alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"conferenceCapabilities"]);
    if (v4)
    {
      [v3 updateCapabilities:v5 forCallID:{objc_msgSend(v4, "unsignedIntValue")}];
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_6_379(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceShouldSendBlackFrameState"];
    if (v4)
    {
      if (v5)
      {
        [v3 shouldSendBlackFrame:objc_msgSend(v5 callID:{"BOOLValue"), v4}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_7_386(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceState"];
    if (v4)
    {
      if (v5)
      {
        [v3 setConferenceState:objc_msgSend(v5 forCallID:{"unsignedIntValue"), objc_msgSend(v4, "unsignedIntValue")}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_8_393(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceVisualRectangle"];
    if (v4)
    {
      v6 = v5;
      if (v5)
      {
        [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
        v8 = v7;
        [objc_msgSend(v6 objectAtIndexedSubscript:{1), "doubleValue"}];
        v10 = v9;
        [objc_msgSend(v6 objectAtIndexedSubscript:{2), "doubleValue"}];
        v12 = v11;
        [objc_msgSend(v6 objectAtIndexedSubscript:{3), "doubleValue"}];
        [v3 setConferenceVisualRectangle:objc_msgSend(v4 forCallID:{"unsignedIntValue"), v8, v10, v12, v13}];
      }
    }
  }

  return 0;
}

uint64_t __70__VideoConferenceManager_VideoConference__registerBlocksForConference__block_invoke_9_400(uint64_t a1, void *a2)
{
  if (![a2 objectForKeyedSubscript:@"CLIENTDIED"])
  {
    v3 = [a2 objectForKeyedSubscript:@"CONTEXT"];
    v4 = [a2 objectForKeyedSubscript:@"conferenceCallID"];
    v5 = [a2 objectForKeyedSubscript:@"conferenceProtocolVersion"];
    if (v4)
    {
      if (v5)
      {
        [v3 setPeerProtocolVersion:objc_msgSend(v5 forCallID:{"unsignedIntValue"), objc_msgSend(v4, "unsignedIntValue")}];
      }
    }
  }

  return 0;
}

- (void)startSIPWithPacketMultiplexMode:transportType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = "[VideoConferenceManager startSIPWithPacketMultiplexMode:transportType:]";
  v4 = 1024;
  v5 = 595;
  v6 = 1024;
  v7 = v0;
  _os_log_error_impl(&dword_1DB56E000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d SOMETHING WENT WRONG IN SIP LISTEN! %08x", v2, 0x22u);
}

@end