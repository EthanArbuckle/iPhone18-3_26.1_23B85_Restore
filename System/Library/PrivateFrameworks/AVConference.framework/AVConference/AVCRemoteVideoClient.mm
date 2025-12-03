@interface AVCRemoteVideoClient
- (AVCRemoteVideoClient)initWithStreamToken:(int64_t)token endpointID:(id)d delegate:(id)delegate;
- (BOOL)createCALayerHostForRootLayer:(id)layer withContextId:(unsigned int)id;
- (BOOL)setVideoLayerHost:(id)host forMode:(int)mode;
- (id)findInfoSubLayerFromLayer:(id)layer;
- (id)newXPCObjectForFenceHandle:(id *)handle;
- (id)slotForMode:(int)mode;
- (id)subLayerForMode:(int)mode;
- (id)subLayerRefForMode:(int)mode;
- (void)adjustInfoSubLayerBounds:(CGRect)bounds forSuperLayer:(id)layer;
- (void)checkpointDidReceiveFirstFrame;
- (void)checkpointVideoAttributesDidChange;
- (void)cleanupLayerHost;
- (void)cleanupSubLayerForMode:(int)mode;
- (void)cleanupVideoLayerForAllModes;
- (void)dealloc;
- (void)deregisterBlocksForNotifications;
- (void)drawText:(id)text inSubLayer:(id)layer;
- (void)insertInfoSubLayerIntoLayer:(id)layer videoMode:(int)mode;
- (void)insertSubLayerInLayer:(id)layer videoMode:(int)mode videoSlot:(id)slot;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerBlocksForNotifications;
- (void)setActiveVideoLayerForMode:(int)mode;
- (void)setActiveVideoModeFromRemoteVideoAttribute:(id)attribute;
- (void)setLayerHostBounds:(CGRect)bounds;
- (void)setRemoteVideoLayerBounds:(CGRect)bounds;
- (void)setTransformForRemoteVideoOrientationEnabled:(BOOL)enabled;
- (void)setVideoLayer:(id)layer forMode:(int)mode;
- (void)terminateConnection;
- (void)updateConnectionInfoWithLocalInterfaceType:(id)type remoteInterfaceType:(id)interfaceType;
@end

@implementation AVCRemoteVideoClient

- (AVCRemoteVideoClient)initWithStreamToken:(int64_t)token endpointID:(id)d delegate:(id)delegate
{
  v33 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = AVCRemoteVideoClient;
  v8 = [(AVCRemoteVideoClient *)&v22 init];
  if (v8)
  {
    MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCRemoteVideoClient-init");
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v24 = v9;
        v25 = 2080;
        v26 = "[AVCRemoteVideoClient initWithStreamToken:endpointID:delegate:]";
        v27 = 1024;
        v28 = 151;
        v29 = 2048;
        v30 = v8;
        v31 = 2048;
        tokenCopy = token;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCRemoteVideoClient-init (%p) streamToken=%ld", buf, 0x30u);
      }
    }

    VRTraceReset();
    CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(47);
    v8->_avcRemoteVideoQueue = dispatch_queue_create_with_target_V2("com.apple.AVConference.remotevideo", 0, CustomRootQueue);
    v8->_activeVideoMode = 0;
    v8->_streamToken = token;
    v8->_transformForRemoteVideoOrientationEnabled = 1;
    shouldDisplayVideoInfoLayer = [+[VCDefaults sharedInstance](VCDefaults shouldDisplayVideoInfoLayer];
    v8->_shouldDisplayVideoInfoLayer = shouldDisplayVideoInfoLayer;
    if (shouldDisplayVideoInfoLayer && VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = v13;
        v25 = 2080;
        v26 = "[AVCRemoteVideoClient initWithStreamToken:endpointID:delegate:]";
        v27 = 1024;
        v28 = 161;
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Video info layer is enabled.", buf, 0x1Cu);
      }
    }

    v8->_connection = objc_alloc_init(AVConferenceXPCClient);
    objc_storeWeak(&v8->_delegate, delegate);
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:token];
    v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v15, @"conferenceCallID", 0}];
    v17 = [(AVConferenceXPCClient *)v8->_connection sendMessageSync:"vcRemoteVideoInitializeRemoteVideoForStreamToken" arguments:v16 xpcArguments:d];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_msgSend(v17 objectForKeyedSubscript:{@"vcRemoteVideoInitialized", "BOOLValue"}];
      v20 = [v18 objectForKeyedSubscript:@"vcRemoteVideoSlotsForModes"];
      if (v19)
      {
        v8->_slotsForModes = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v20];
        [(AVCRemoteVideoClient *)v8 registerBlocksForNotifications];
        [(AVConferenceXPCClient *)v8->_connection sendMessageAsync:"vcRemoteVideoGetCachedNotifications" arguments:v16];

        return v8;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient initWithStreamToken:endpointID:delegate:];
        }
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRemoteVideoClient initWithStreamToken:endpointID:delegate:];
      }
    }

    return 0;
  }

  return v8;
}

- (void)cleanupVideoLayerForAllModes
{
  [(AVCRemoteVideoClient *)self setVideoLayer:0 forMode:0];
  [(AVCRemoteVideoClient *)self setVideoLayer:0 forMode:1];

  [(AVCRemoteVideoClient *)self setVideoLayer:0 forMode:2];
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  objc_storeWeak(&self->_delegate, 0);
  if (self->_layerHostMode)
  {
    [(AVCRemoteVideoClient *)self cleanupLayerHost];
    [(AVCRemoteVideoClient *)self setRootLayer:0];
  }

  [(AVCRemoteVideoClient *)self cleanupVideoLayerForAllModes];
  [(AVCRemoteVideoClient *)self terminateConnection];

  avcRemoteVideoQueue = self->_avcRemoteVideoQueue;
  if (avcRemoteVideoQueue)
  {
    dispatch_release(avcRemoteVideoQueue);
    self->_avcRemoteVideoQueue = 0;
  }

  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCRemoteVideoClient-dealloc");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      streamToken = self->_streamToken;
      layerHostMode = self->_layerHostMode;
      activeVideoMode = self->_activeVideoMode;
      *buf = 136316674;
      v11 = v4;
      v12 = 2080;
      v13 = "[AVCRemoteVideoClient dealloc]";
      v14 = 1024;
      v15 = 247;
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = streamToken;
      v20 = 1024;
      v21 = layerHostMode;
      v22 = 1024;
      v23 = activeVideoMode;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCRemoteVideoClient-dealloc (%p) streamToken=%u layerHostMode=%d activeVideoMode=%d", buf, 0x38u);
    }
  }

  v9.receiver = self;
  v9.super_class = AVCRemoteVideoClient;
  [(AVCRemoteVideoClient *)&v9 dealloc];
}

- (void)setVideoLayer:(id)layer forMode:(int)mode
{
  v4 = *&mode;
  v30 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136316162;
      v19 = v7;
      v20 = 2080;
      v21 = "[AVCRemoteVideoClient setVideoLayer:forMode:]";
      v22 = 1024;
      v23 = 256;
      v24 = 2112;
      layerCopy2 = layer;
      v26 = 1024;
      v27 = v4;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d videoLayer=%@, mode=%d", &v18, 0x2Cu);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      if (layer)
      {
        v11 = [objc_msgSend(layer "description")];
      }

      else
      {
        v11 = "<nil>";
      }

      v18 = 136316162;
      v19 = v9;
      v20 = 2080;
      v21 = "[AVCRemoteVideoClient setVideoLayer:forMode:]";
      v22 = 1024;
      v23 = 257;
      v24 = 2080;
      layerCopy2 = v11;
      v26 = 1024;
      v27 = v4;
      _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: setVideoLayer %s for mode %d", &v18, 0x2Cu);
    }
  }

  [(AVCRemoteVideoClient *)self cleanupSubLayerForMode:v4];
  if (v4 == 2)
  {
    screenLayer = self->_screenLayer;
    self->_screenLayer = layer;
  }

  else if (v4 == 1)
  {
    screenLayer = self->_secondaryCameraLayer;
    self->_secondaryCameraLayer = layer;
  }

  else if (v4)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRemoteVideoClient setVideoLayer:forMode:];
      }
    }

    screenLayer = 0;
  }

  else
  {
    screenLayer = self->_primaryCameraLayer;
    self->_primaryCameraLayer = layer;
  }

  if (layer)
  {
    v13 = -[NSDictionary objectForKeyedSubscript:](self->_slotsForModes, "objectForKeyedSubscript:", [objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{v4), "stringValue"}]);
    if (v13)
    {
      v14 = v13;
      [MEMORY[0x1E6979518] begin];
      [(AVCRemoteVideoClient *)self insertSubLayerInLayer:layer videoMode:v4 videoSlot:v14];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          unsignedLongValue = [v14 unsignedLongValue];
          v18 = 136316418;
          v19 = v15;
          v20 = 2080;
          v21 = "[AVCRemoteVideoClient setVideoLayer:forMode:]";
          v22 = 1024;
          v23 = 286;
          v24 = 2048;
          layerCopy2 = layer;
          v26 = 1024;
          v27 = v4;
          v28 = 2048;
          v29 = unsignedLongValue;
          _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: connect layer %p mode=%d with  <--> slot %lu", &v18, 0x36u);
        }
      }

      [(AVCRemoteVideoClient *)self setActiveVideoLayerForMode:self->_activeVideoMode];
      [(AVCRemoteVideoClient *)self insertInfoSubLayerIntoLayer:layer videoMode:v4];
      [MEMORY[0x1E6979518] commit];
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [AVCRemoteVideoClient setVideoLayer:forMode:];
      }
    }
  }
}

- (id)slotForMode:(int)mode
{
  v3 = *&mode;
  v19 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v5;
      v13 = 2080;
      v14 = "[AVCRemoteVideoClient slotForMode:]";
      v15 = 1024;
      v16 = 313;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d mode=%d", &v11, 0x22u);
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = v7;
      v13 = 2080;
      v14 = "[AVCRemoteVideoClient slotForMode:]";
      v15 = 1024;
      v16 = 314;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: slotForMode %d", &v11, 0x22u);
    }
  }

  v9 = -[NSDictionary objectForKeyedSubscript:](self->_slotsForModes, "objectForKeyedSubscript:", [objc_msgSend(MEMORY[0x1E696AD98] numberWithInt:{v3), "stringValue"}]);
  if (!v9 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [AVCRemoteVideoClient slotForMode:];
    }
  }

  return v9;
}

- (BOOL)createCALayerHostForRootLayer:(id)layer withContextId:(unsigned int)id
{
  v43 = *MEMORY[0x1E69E9840];
  if (!layer || (v5 = *&id, !id))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:];
        }
      }

      goto LABEL_43;
    }

    if (objc_opt_respondsToSelector())
    {
      v20 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v20 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_43;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    *buf = 136316162;
    v30 = v23;
    v31 = 2080;
    v32 = "[AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:]";
    v33 = 1024;
    v34 = 342;
    v35 = 2112;
    layerCopy = v20;
    v37 = 2048;
    selfCopy4 = self;
    v25 = " [%s] %s:%d %@(%p) Invalid rootLayer or contextId";
    goto LABEL_50;
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AVCRemoteVideoCALayerHost%p", self];
  if (!v7)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:];
        }
      }

      goto LABEL_43;
    }

    if (objc_opt_respondsToSelector())
    {
      v21 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v21 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v26 = VRTraceErrorLogLevelToCSTR(), v24 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_43:
      v8 = 0;
LABEL_44:
      v18 = 0;
      goto LABEL_17;
    }

    *buf = 136316162;
    v30 = v26;
    v31 = 2080;
    v32 = "[AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:]";
    v33 = 1024;
    v34 = 344;
    v35 = 2112;
    layerCopy = v21;
    v37 = 2048;
    selfCopy4 = self;
    v25 = " [%s] %s:%d %@(%p) Failed to allocate layer host name";
LABEL_50:
    _os_log_error_impl(&dword_1DB56E000, v24, OS_LOG_TYPE_ERROR, v25, buf, 0x30u);
    goto LABEL_43;
  }

  v8 = v7;
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v9 = [[VCCALayerHost alloc] initWithRemoteVideoClient:self];
  self->_caLayerHost = v9;
  if (!v9)
  {
    [MEMORY[0x1E6979518] commit];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
      }

      else
      {
        v22 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v27 = VRTraceErrorLogLevelToCSTR();
        v28 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v30 = v27;
          v31 = 2080;
          v32 = "[AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:]";
          v33 = 1024;
          v34 = 353;
          v35 = 2112;
          layerCopy = v22;
          v37 = 2048;
          selfCopy4 = self;
          _os_log_error_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate CALayerHost", buf, 0x30u);
        }
      }
    }

    goto LABEL_44;
  }

  [(CALayerHost *)v9 setContextId:v5];
  [layer bounds];
  [(AVCRemoteVideoClient *)self setLayerHostBounds:?];
  [(VCCALayerHost *)self->_caLayerHost setName:v8];
  [(CALayerHost *)self->_caLayerHost setPreservesFlip:1];
  [(VCCALayerHost *)self->_caLayerHost setGeometryFlipped:1];
  [(VCCALayerHost *)self->_caLayerHost setAllowsHitTesting:0];
  [layer addSublayer:self->_caLayerHost];
  [layer setMasksToBounds:1];
  [layer setContinuousCorners:1];
  [layer setAllowsHitTesting:0];
  [layer setName:@"RemoteParticipantVideoLayerScreen"];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
  [MEMORY[0x1E6979518] synchronize];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_16;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316162;
    v30 = v11;
    v31 = 2080;
    v32 = "[AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:]";
    v33 = 1024;
    v34 = 370;
    v35 = 2048;
    layerCopy = layer;
    v37 = 1024;
    LODWORD(selfCopy4) = v5;
    v13 = " [%s] %s:%d AVCRemoteVideoClient: connect layer=%p with  <--> contextId=%u";
    v14 = v12;
    v15 = 44;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v10 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v10 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_16;
    }

    v16 = VRTraceErrorLogLevelToCSTR();
    v17 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316674;
    v30 = v16;
    v31 = 2080;
    v32 = "[AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:]";
    v33 = 1024;
    v34 = 370;
    v35 = 2112;
    layerCopy = v10;
    v37 = 2048;
    selfCopy4 = self;
    v39 = 2048;
    layerCopy2 = layer;
    v41 = 1024;
    v42 = v5;
    v13 = " [%s] %s:%d %@(%p) AVCRemoteVideoClient: connect layer=%p with  <--> contextId=%u";
    v14 = v17;
    v15 = 64;
  }

  _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_16:
  v18 = 1;
LABEL_17:

  return v18;
}

- (id)newXPCObjectForFenceHandle:(id *)handle
{
  v35 = *MEMORY[0x1E69E9840];
  if (!handle)
  {
    goto LABEL_5;
  }

  newFenceFromDefaultServer = [MEMORY[0x1E6979370] newFenceFromDefaultServer];
  *handle = newFenceFromDefaultServer;
  if (newFenceFromDefaultServer)
  {
    if ([-[VCCALayerHost context](self->_caLayerHost "context")])
    {
      result = [*handle createXPCRepresentation];
      if (result)
      {
        return result;
      }

      goto LABEL_5;
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_5;
      }

      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v10 = *handle;
      caLayerHost = self->_caLayerHost;
      v19 = 136316418;
      v20 = v8;
      v21 = 2080;
      v22 = "[AVCRemoteVideoClient newXPCObjectForFenceHandle:]";
      v23 = 1024;
      v24 = 386;
      v25 = 2048;
      v26 = v10;
      v27 = 2048;
      selfCopy = caLayerHost;
      v29 = 2048;
      context = [(VCCALayerHost *)caLayerHost context];
      v12 = " [%s] %s:%d Failed to add fence=%p for root layer=%p with context=%p";
      v13 = v9;
      v14 = 58;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v7 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
      }

      else
      {
        v7 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_5;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      v17 = *handle;
      v18 = self->_caLayerHost;
      v19 = 136316930;
      v20 = v15;
      v21 = 2080;
      v22 = "[AVCRemoteVideoClient newXPCObjectForFenceHandle:]";
      v23 = 1024;
      v24 = 386;
      v25 = 2112;
      v26 = v7;
      v27 = 2048;
      selfCopy = self;
      v29 = 2048;
      context = v17;
      v31 = 2048;
      v32 = v18;
      v33 = 2048;
      context2 = [(VCCALayerHost *)v18 context];
      v12 = " [%s] %s:%d %@(%p) Failed to add fence=%p for root layer=%p with context=%p";
      v13 = v16;
      v14 = 78;
    }

    _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, v12, &v19, v14);
  }

  else
  {
    [AVCRemoteVideoClient newXPCObjectForFenceHandle:?];
  }

LABEL_5:
  result = *handle;
  if (*handle)
  {
    [result invalidate];

    result = 0;
    *handle = 0;
  }

  return result;
}

- (void)setRemoteVideoLayerBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v59 = *MEMORY[0x1E69E9840];
  v44 = 0;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v60.origin.x = x;
        v60.origin.y = y;
        v60.size.width = width;
        v60.size.height = height;
        *buf = 136315906;
        v48 = v9;
        v49 = 2080;
        v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
        v51 = 1024;
        v52 = 405;
        v53 = 2112;
        p_isa = NSStringFromRect(v60);
        v11 = " [%s] %s:%d bounds=%@";
        v12 = v10;
        v13 = 38;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = width;
        v61.size.height = height;
        *buf = 136316418;
        v48 = v14;
        v49 = 2080;
        v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
        v51 = 1024;
        v52 = 405;
        v53 = 2112;
        p_isa = &v8->isa;
        v55 = 2048;
        selfCopy6 = self;
        v57 = 2112;
        v58 = NSStringFromRect(v61);
        v11 = " [%s] %s:%d %@(%p) bounds=%@";
        v12 = v15;
        v13 = 58;
        goto LABEL_11;
      }
    }
  }

  if (!VideoUtil_LayerBoundsAreValid(x, y, width, height))
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(AVCRemoteVideoClient *)x setRemoteVideoLayerBounds:width, height, v31, v32];
        }
      }

      goto LABEL_67;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_67;
    }

    v33 = VRTraceErrorLogLevelToCSTR();
    v34 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    v35 = NSStringFromRect(v63);
    *buf = 136316418;
    v48 = v33;
    v49 = 2080;
    v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
    v51 = 1024;
    v52 = 406;
    v53 = 2112;
    p_isa = &v25->isa;
    v55 = 2048;
    selfCopy6 = self;
    v57 = 2112;
    v58 = v35;
    v36 = " [%s] %s:%d %@(%p) Failed due to invalid root layer bounds=%@";
    v37 = v34;
    v38 = 58;
LABEL_75:
    _os_log_error_impl(&dword_1DB56E000, v37, OS_LOG_TYPE_ERROR, v36, buf, v38);
    goto LABEL_67;
  }

  if (!self->_caLayerHost)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setRemoteVideoLayerBounds:];
        }
      }

      goto LABEL_67;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_67;
    }

    v39 = VRTraceErrorLogLevelToCSTR();
    v40 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_67;
    }

    *buf = 136316162;
    v48 = v39;
    v49 = 2080;
    v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
    v51 = 1024;
    v52 = 407;
    v53 = 2112;
    p_isa = &v26->isa;
    v55 = 2048;
    selfCopy6 = self;
    v36 = " [%s] %s:%d %@(%p) CALayerHost invalid";
LABEL_74:
    v37 = v40;
    v38 = 48;
    goto LABEL_75;
  }

  v62.origin.x = x;
  v62.origin.y = y;
  v62.size.width = width;
  v62.size.height = height;
  v16 = NSStringFromRect(v62);
  v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:self->_streamToken];
  if (!v17)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setRemoteVideoLayerBounds:];
        }
      }

      goto LABEL_67;
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v27 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v41 = VRTraceErrorLogLevelToCSTR(), v40 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_67:
      v21 = 0;
      v18 = 0;
      goto LABEL_19;
    }

    *buf = 136316162;
    v48 = v41;
    v49 = 2080;
    v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
    v51 = 1024;
    v52 = 413;
    v53 = 2112;
    p_isa = &v27->isa;
    v55 = 2048;
    selfCopy6 = self;
    v36 = " [%s] %s:%d %@(%p) Failed to allocate stream token number";
    goto LABEL_74;
  }

  v18 = v17;
  v45[0] = @"conferenceCallID";
  v45[1] = @"conferenceVisualRectangle";
  v46[0] = v17;
  v46[1] = v16;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v20 = [(AVCRemoteVideoClient *)self newXPCObjectForFenceHandle:&v44];
  if (v20)
  {
    v21 = v20;
    v22 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcRemoteVideoSetLayerBoundsForStreamToken" arguments:v19 xpcArguments:v20];
    if (!v22 || (v23 = v22, [v22 objectForKeyedSubscript:@"ERROR"]) || objc_msgSend(v23, "objectForKeyedSubscript:", @"SERVERDIED"))
    {
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [AVCRemoteVideoClient setRemoteVideoLayerBounds:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v24 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
        }

        else
        {
          v24 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v29 = VRTraceErrorLogLevelToCSTR();
          v30 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v48 = v29;
            v49 = 2080;
            v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
            v51 = 1024;
            v52 = 425;
            v53 = 2112;
            p_isa = &v24->isa;
            v55 = 2048;
            selfCopy6 = self;
            _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Set layer bounds xpc call failed", buf, 0x30u);
          }
        }
      }
    }
  }

  else
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setRemoteVideoLayerBounds:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
      }

      else
      {
        v28 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v42 = VRTraceErrorLogLevelToCSTR();
        v43 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v48 = v42;
          v49 = 2080;
          v50 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
          v51 = 1024;
          v52 = 421;
          v53 = 2112;
          p_isa = &v28->isa;
          v55 = 2048;
          selfCopy6 = self;
          _os_log_error_impl(&dword_1DB56E000, v43, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to create XPC representation for fence", buf, 0x30u);
        }
      }
    }

    v21 = 0;
  }

LABEL_19:
  if (v44)
  {
    [v44 invalidate];

    v44 = 0;
  }
}

- (void)setTransformForRemoteVideoOrientationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v30 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v5 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v5 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      goto LABEL_12;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 136316418;
    v19 = v11;
    v20 = 2080;
    v21 = "[AVCRemoteVideoClient setTransformForRemoteVideoOrientationEnabled:]";
    v22 = 1024;
    v23 = 442;
    v24 = 2112;
    v25 = v5;
    v26 = 2048;
    selfCopy = self;
    v28 = 1024;
    v29 = enabledCopy;
    v8 = " [%s] %s:%d %@(%p) transformForRemoteVideoOrientationEnabled=%d";
    v9 = v12;
    v10 = 54;
    goto LABEL_11;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v19 = v6;
      v20 = 2080;
      v21 = "[AVCRemoteVideoClient setTransformForRemoteVideoOrientationEnabled:]";
      v22 = 1024;
      v23 = 442;
      v24 = 1024;
      LODWORD(v25) = enabledCopy;
      v8 = " [%s] %s:%d transformForRemoteVideoOrientationEnabled=%d";
      v9 = v7;
      v10 = 34;
LABEL_11:
      _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

LABEL_12:
  self->_transformForRemoteVideoOrientationEnabled = enabledCopy;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_streamToken, @"conferenceCallID"}];
  v16[1] = @"conferenceTransformForRemoteVideoOrientationEnabled";
  v17[0] = v13;
  v17[1] = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
  v14 = -[AVConferenceXPCClient sendMessageSync:arguments:](self->_connection, "sendMessageSync:arguments:", "vcRemoteVideoSetTransformForRemoteVideoOrientationEnabled", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2]);
  if (!v14 || (v15 = v14, [v14 objectForKeyedSubscript:@"ERROR"]) || objc_msgSend(v15, "objectForKeyedSubscript:", @"SERVERDIED"))
  {
    [AVCRemoteVideoClient setTransformForRemoteVideoOrientationEnabled:?];
  }
}

- (BOOL)setVideoLayerHost:(id)host forMode:(int)mode
{
  v64 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [host bounds];
        *buf = 136316162;
        v51 = v7;
        v52 = 2080;
        v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
        v54 = 1024;
        v55 = 470;
        v56 = 2112;
        hostCopy = host;
        v58 = 2112;
        selfCopy8 = NSStringFromRect(v65);
        v9 = " [%s] %s:%d rootLayer=%@ bounds=%@";
        v10 = v8;
        v11 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v6 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        [host bounds];
        *buf = 136316674;
        v51 = v12;
        v52 = 2080;
        v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
        v54 = 1024;
        v55 = 470;
        v56 = 2112;
        hostCopy = v6;
        v58 = 2048;
        selfCopy8 = self;
        v60 = 2112;
        hostCopy2 = host;
        v62 = 2112;
        v63 = NSStringFromRect(v66);
        v9 = " [%s] %s:%d %@(%p) rootLayer=%@ bounds=%@";
        v10 = v13;
        v11 = 68;
        goto LABEL_11;
      }
    }
  }

  if (!host)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setVideoLayerHost:forMode:];
        }
      }

      goto LABEL_74;
    }

    if (objc_opt_respondsToSelector())
    {
      v25 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_74;
    }

    v34 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    *buf = 136316162;
    v51 = v34;
    v52 = 2080;
    v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
    v54 = 1024;
    v55 = 471;
    v56 = 2112;
    hostCopy = v25;
    v58 = 2048;
    selfCopy8 = self;
    v36 = " [%s] %s:%d %@(%p) Invalid rootLayer parameter";
    goto LABEL_93;
  }

  if (self->_caLayerHost)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setVideoLayerHost:forMode:];
        }
      }

      goto LABEL_74;
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v26 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_74;
    }

    v37 = VRTraceErrorLogLevelToCSTR();
    v35 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_74;
    }

    *buf = 136316162;
    v51 = v37;
    v52 = 2080;
    v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
    v54 = 1024;
    v55 = 472;
    v56 = 2112;
    hostCopy = v26;
    v58 = 2048;
    selfCopy8 = self;
    v36 = " [%s] %s:%d %@(%p) CALayerHost exist already, reconfigure not supported currently";
    goto LABEL_93;
  }

  self->_layerHostMode = 1;
  [host bounds];
  v14 = NSStringFromRect(v67);
  v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:self->_streamToken];
  if (!v15)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setVideoLayerHost:forMode:];
        }
      }

      goto LABEL_74;
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v27 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v38 = VRTraceErrorLogLevelToCSTR(), v35 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_74:
      v18 = 0;
      v16 = 0;
      goto LABEL_91;
    }

    *buf = 136316162;
    v51 = v38;
    v52 = 2080;
    v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
    v54 = 1024;
    v55 = 478;
    v56 = 2112;
    hostCopy = v27;
    v58 = 2048;
    selfCopy8 = self;
    v36 = " [%s] %s:%d %@(%p) Failed to allocate stream token number";
LABEL_93:
    _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x30u);
    goto LABEL_74;
  }

  v16 = v15;
  v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v15, @"conferenceCallID", v14, @"conferenceVisualRectangle", 0}];
  if (!v17)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setVideoLayerHost:forMode:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v28 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
      }

      else
      {
        v28 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v39 = VRTraceErrorLogLevelToCSTR();
        v40 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v51 = v39;
          v52 = 2080;
          v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
          v54 = 1024;
          v55 = 480;
          v56 = 2112;
          hostCopy = v28;
          v58 = 2048;
          selfCopy8 = self;
          _os_log_error_impl(&dword_1DB56E000, v40, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate args dictionary", buf, 0x30u);
        }
      }
    }

    v18 = 0;
    goto LABEL_91;
  }

  v18 = v17;
  v19 = [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcRemoteVideoGetContextIdForStreamToken" arguments:v17];
  if (!v19)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [(AVCRemoteVideoClient *)v32 setVideoLayerHost:v16 forMode:v33];
        }
      }

      goto LABEL_91;
    }

    if (objc_opt_respondsToSelector())
    {
      v29 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v29 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_91;
    }

    v41 = VRTraceErrorLogLevelToCSTR();
    v42 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    unsignedIntValue = [v16 unsignedIntValue];
    *buf = 136316418;
    v51 = v41;
    v52 = 2080;
    v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
    v54 = 1024;
    v55 = 482;
    v56 = 2112;
    hostCopy = v29;
    v58 = 2048;
    selfCopy8 = self;
    v60 = 1024;
    LODWORD(hostCopy2) = unsignedIntValue;
    v44 = " [%s] %s:%d %@(%p) GetContextIdForStreamToken=%u failed";
    v45 = v42;
    v46 = 54;
LABEL_96:
    _os_log_error_impl(&dword_1DB56E000, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
    goto LABEL_91;
  }

  v20 = [v19 objectForKeyedSubscript:@"vcRemoteVideoSlotsForModes"];
  if (!v20)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setVideoLayerHost:forMode:];
        }
      }

      goto LABEL_91;
    }

    if (objc_opt_respondsToSelector())
    {
      v30 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v30 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_91;
    }

    v47 = VRTraceErrorLogLevelToCSTR();
    v48 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_91;
    }

    *buf = 136316162;
    v51 = v47;
    v52 = 2080;
    v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
    v54 = 1024;
    v55 = 484;
    v56 = 2112;
    hostCopy = v30;
    v58 = 2048;
    selfCopy8 = self;
    v44 = " [%s] %s:%d %@(%p) Invalid contextIdForModes dictionary returned";
LABEL_95:
    v45 = v48;
    v46 = 48;
    goto LABEL_96;
  }

  v21 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v20];
  if (!v21)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [AVCRemoteVideoClient setVideoLayerHost:forMode:];
        }
      }

      goto LABEL_91;
    }

    if (objc_opt_respondsToSelector())
    {
      v31 = [(AVCRemoteVideoClient *)self performSelector:sel_logPrefix];
    }

    else
    {
      v31 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3 || (v49 = VRTraceErrorLogLevelToCSTR(), v48 = *MEMORY[0x1E6986650], !os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR)))
    {
LABEL_91:
      v23 = 0;
      goto LABEL_20;
    }

    *buf = 136316162;
    v51 = v49;
    v52 = 2080;
    v53 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
    v54 = 1024;
    v55 = 486;
    v56 = 2112;
    hostCopy = v31;
    v58 = 2048;
    selfCopy8 = self;
    v44 = " [%s] %s:%d %@(%p) Failed to allocate slotsForModes dictionary";
    goto LABEL_95;
  }

  v22 = v21;

  self->_slotsForModes = v22;
  v23 = -[AVCRemoteVideoClient createCALayerHostForRootLayer:withContextId:](self, "createCALayerHostForRootLayer:withContextId:", host, [-[NSDictionary objectForKeyedSubscript:](v22 objectForKeyedSubscript:{objc_msgSend(&unk_1F579BEB0, "stringValue")), "unsignedIntValue"}]);
  [(AVCRemoteVideoClient *)self setRootLayer:host];
LABEL_20:

  return v23;
}

- (void)insertSubLayerInLayer:(id)layer videoMode:(int)mode videoSlot:(id)slot
{
  v28 = *MEMORY[0x1E69E9840];
  if (layer && slot)
  {
    v6 = *&mode;
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AVCRemoteVideoSubLayer%p(%d)", self, *&mode];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    sublayers = [layer sublayers];
    v11 = [sublayers countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(sublayers);
        }

        layer = *(*(&v24 + 1) + 8 * v14);
        if ([objc_msgSend(layer "name")])
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [sublayers countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }

      if (layer)
      {
        goto LABEL_14;
      }
    }

LABEL_13:
    layer = [MEMORY[0x1E6979398] layer];
    [layer addSublayer:layer];
LABEL_14:
    [layer bounds];
    v17 = v16;
    v19 = v18;
    [layer setBounds:{0.0, 0.0, v18, v16}];
    [layer setPosition:{v17 * 0.5, v19 * 0.5}];
    CGAffineTransformMakeRotation(&m, 1.57079633);
    CATransform3DMakeAffineTransform(&v22, &m);
    [layer setTransform:&v22];
    [layer setContentsGravity:*MEMORY[0x1E6979DF0]];
    [layer setName:v9];
    [layer setContents:{objc_msgSend(MEMORY[0x1E6979320], "objectForSlot:", objc_msgSend(slot, "intValue"))}];
    [layer setMasksToBounds:1];
    v20 = [(AVCRemoteVideoClient *)self subLayerRefForMode:v6];
    if (v20)
    {
      *v20 = layer;
    }
  }
}

- (id)subLayerRefForMode:(int)mode
{
  v15 = *MEMORY[0x1E69E9840];
  switch(mode)
  {
    case 2:
      return &self->_screenSubLayer;
    case 1:
      return &self->_secondaryCameraSubLayer;
    case 0:
      return &self->_primaryCameraSubLayer;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = "[AVCRemoteVideoClient subLayerRefForMode:]";
      v11 = 1024;
      v12 = 639;
      v13 = 1024;
      modeCopy = mode;
      _os_log_impl(&dword_1DB56E000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Invalid video mode:%d", &v7, 0x22u);
    }
  }

  return 0;
}

- (id)subLayerForMode:(int)mode
{
  result = [(AVCRemoteVideoClient *)self subLayerRefForMode:*&mode];
  if (result)
  {
    return *result;
  }

  return result;
}

- (void)setActiveVideoLayerForMode:(int)mode
{
  v5 = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AVCRemoteVideoClient_setActiveVideoLayerForMode___block_invoke;
  block[3] = &unk_1E85F38B8;
  modeCopy = mode;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __51__AVCRemoteVideoClient_setActiveVideoLayerForMode___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  switch(v2)
  {
    case 2:
      [*(*(a1 + 32) + 64) setAllowsDisplayCompositing:1];
      [*(*(a1 + 32) + 48) setAllowsDisplayCompositing:0];
      v5 = *(*(a1 + 32) + 56);
      goto LABEL_8;
    case 1:
      [*(*(a1 + 32) + 56) setAllowsDisplayCompositing:1];
      v4 = *(*(a1 + 32) + 48);
      goto LABEL_6;
    case 0:
      [*(*(a1 + 32) + 48) setAllowsDisplayCompositing:1];
      v4 = *(*(a1 + 32) + 56);
LABEL_6:
      [v4 setAllowsDisplayCompositing:0];
      v5 = *(*(a1 + 32) + 64);
LABEL_8:
      [v5 setAllowsDisplayCompositing:0];
      return [MEMORY[0x1E6979518] commit];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      __51__AVCRemoteVideoClient_setActiveVideoLayerForMode___block_invoke_cold_1(v7, v3, v8);
    }
  }

  return [MEMORY[0x1E6979518] commit];
}

- (void)cleanupSubLayerForMode:(int)mode
{
  v4 = [(AVCRemoteVideoClient *)self subLayerRefForMode:*&mode];
  if (v4)
  {
    v5 = v4;
    if (*v4)
    {
      if ([(AVCRemoteVideoClient *)self shouldDisplayVideoInfoLayer])
      {
        [objc_msgSend(*v5 "superlayer")];
      }

      [*v5 setContents:0];
      [*v5 removeFromSuperlayer];

      *v5 = 0;
    }
  }
}

- (void)terminateConnection
{
  [(AVCRemoteVideoClient *)self deregisterBlocksForNotifications];
  [(AVConferenceXPCClient *)self->_connection sendMessageSync:"vcRemoteVideoTerminate"];

  self->_connection = 0;
}

- (void)setActiveVideoModeFromRemoteVideoAttribute:(id)attribute
{
  if ([attribute videoSourceScreen])
  {
    v5 = 2;
  }

  else
  {
    camera = [attribute camera];
    if (camera == 1)
    {
      v5 = 1;
    }

    else
    {
      if (!camera)
      {
        self->_activeVideoMode = 0;
        return;
      }

      v5 = -1;
    }
  }

  self->_activeVideoMode = v5;
}

- (void)registerBlocksForNotifications
{
  v15[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6986630] weakObjectHolderWithObject:self];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke;
  v15[3] = &unk_1E85F3AD8;
  v15[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"conferenceDidServerDie" block:v15 queue:self->_avcRemoteVideoQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_73;
  v14[3] = &unk_1E85F3AD8;
  v14[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidReceiveRemoteFrame" block:v14 queue:self->_avcRemoteVideoQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_77;
  v13[3] = &unk_1E85F3AD8;
  v13[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidRemoteScreenAttributesChange" block:v13 queue:self->_avcRemoteVideoQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_85;
  v12[3] = &unk_1E85F3AD8;
  v12[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidRemoteAttributesChange" block:v12 queue:self->_avcRemoteVideoQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_92;
  v11[3] = &unk_1E85F3AD8;
  v11[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidRemoteVideoPause" block:v11 queue:self->_avcRemoteVideoQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_99;
  v10[3] = &unk_1E85F3AD8;
  v10[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidRemoteMediaStall" block:v10 queue:self->_avcRemoteVideoQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_106;
  v9[3] = &unk_1E85F3AD8;
  v9[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidVideoDegrade" block:v9 queue:self->_avcRemoteVideoQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_113;
  v8[3] = &unk_1E85F3AD8;
  v8[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidNetworkDegrade" block:v8 queue:self->_avcRemoteVideoQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_123;
  v7[3] = &unk_1E85F3AD8;
  v7[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidVideoSuspend" block:v7 queue:self->_avcRemoteVideoQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_130;
  v6[3] = &unk_1E85F3AD8;
  v6[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidReleaseRemoteVideoQueue" block:v6 queue:self->_avcRemoteVideoQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_134;
  v5[3] = &unk_1E85F3AD8;
  v5[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidConnectionChange" block:v5 queue:self->_avcRemoteVideoQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_142;
  v4[3] = &unk_1E85F3AD8;
  v4[4] = v3;
  [(AVConferenceXPCClient *)self->_connection registerBlockForService:"vcRemoteVideoDidDetectSensitiveContent" block:v4 queue:self->_avcRemoteVideoQueue];
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v3 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v3)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_cold_1();
        }
      }

      [v3 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v3 "delegate")];
      }
    }

    else if (ErrorLogLevelForModule >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_cold_2();
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_73(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    if (v4)
    {
      v5 = v4;
      [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v5 setHasReceivedFirstFrame:1];
        [v5 checkpointDidReceiveFirstFrame];
        v6 = [v5 delegate];

        [v6 remoteVideoClientDidReceiveFirstFrame:v5];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v13 = 1024;
        v14 = 758;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v9, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_77(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"conferenceRemoteScreenAttributes"]);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136316418;
          v17 = v8;
          v18 = 2080;
          v19 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v20 = 1024;
          v21 = 781;
          v22 = 1024;
          *v23 = [v6 streamToken];
          *&v23[4] = 1024;
          *&v23[6] = [v6 streamToken];
          *v24 = 2048;
          *&v24[2] = [v6 delegate];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: remoteScreenAttributesDidChange for streamToken=%d (streamToken=%u), delegate=%p", &v16, 0x32u);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        if (VRTraceGetErrorLogLevelForModule() >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR();
          v11 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v6 streamToken];
            v13 = [v6 streamToken];
            v16 = 136316418;
            v17 = v10;
            v18 = 2080;
            v19 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
            v20 = 1024;
            v21 = 783;
            v22 = 2112;
            *v23 = v7;
            *&v23[8] = 1024;
            *v24 = v12;
            *&v24[4] = 1024;
            *&v24[6] = v13;
            _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d remoteScreenAttributesDidChange:%@, streamToken=%d (streamToken=%u)", &v16, 0x32u);
          }
        }

        [v6 setRemoteScreenAttributes:v7];
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v16 = 136315650;
        v17 = v14;
        v18 = 2080;
        v19 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v20 = 1024;
        v21 = 775;
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v16, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_85(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = -[VideoAttributes initWithEncodedDictionary:]([VideoAttributes alloc], "initWithEncodedDictionary:", [a2 objectForKeyedSubscript:@"conferenceRemoteVideoAttributes"]);
      [v6 setActiveVideoModeFromRemoteVideoAttribute:v7];
      [v6 setActiveVideoLayerForMode:v6[22]];
      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 setRemoteVideoAttributes:v7];
        [v6 checkpointVideoAttributesDidChange];
        if (v7)
        {
          [(VideoAttributes *)v7 framePresentationTime];
        }

        else
        {
          memset(&v10, 0, sizeof(v10));
        }

        buf = v10;
        CMTimeGetSeconds(&buf);
        [(VideoAttributes *)v7 contentsRect];
        [(VideoAttributes *)v7 contentsRect];
        [(VideoAttributes *)v7 scaleFactor];
        kdebug_trace();
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 136315650;
        *(&buf.value + 4) = v8;
        LOWORD(buf.flags) = 2080;
        *(&buf.flags + 2) = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        HIWORD(buf.epoch) = 1024;
        v12 = 796;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &buf, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_92(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceVideoPause"];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v16 = 1024;
          v17 = 824;
          v18 = 1024;
          v19 = [v7 BOOLValue];
          v20 = 1024;
          v21 = [v6 streamToken];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: remoteVideoDidPause=%d for streamToken=%u", &v12, 0x28u);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 setIsVideoPaused:{objc_msgSend(v7, "BOOLValue")}];
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v10;
        v14 = 2080;
        v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v16 = 1024;
        v17 = 819;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v12, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_99(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceIsRemoteMediaStalled"];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v16 = 1024;
          v17 = 842;
          v18 = 1024;
          v19 = [v7 BOOLValue];
          v20 = 1024;
          v21 = [v6 streamToken];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: remoteMediaDidStall=%d for streamToken=%u", &v12, 0x28u);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 setIsMediaStalled:{objc_msgSend(v7, "BOOLValue")}];
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v10;
        v14 = 2080;
        v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v16 = 1024;
        v17 = 837;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v12, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_106(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceIsVideoDegraded"];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v16 = 1024;
          v17 = 860;
          v18 = 1024;
          v19 = [v7 BOOLValue];
          v20 = 1024;
          v21 = [v6 streamToken];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: videoDidDegrade=%d for streamToken=%u", &v12, 0x28u);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 setIsVideoDegraded:{objc_msgSend(v7, "BOOLValue")}];
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v10;
        v14 = 2080;
        v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v16 = 1024;
        v17 = 856;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v12, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_113(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceIsNetworkDegraded"];
      v8 = [a2 objectForKeyedSubscript:@"conferenceIsNetworkDegradedLocal"];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316418;
          v16 = v9;
          v17 = 2080;
          v18 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v19 = 1024;
          v20 = 879;
          v21 = 1024;
          v22 = [v7 BOOLValue];
          v23 = 1024;
          v24 = [v8 BOOLValue];
          v25 = 1024;
          v26 = [v6 streamToken];
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: networkDidDegrade=%d isNetworkDegradedLocal=%d for streamToken=%u", buf, 0x2Eu);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 setIsNetworkDegraded:{objc_msgSend(v7, "BOOLValue")}];
        [v6 setIsNetworkDegradedLocal:{objc_msgSend(v8, "BOOLValue")}];
        v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "isNetworkDegradedLocal", @"isLocalConnectionUnstable"}];
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v16 = v11;
        v17 = 2080;
        v18 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v19 = 1024;
        v20 = 874;
        _os_log_impl(&dword_1DB56E000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", buf, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_123(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceIsVideoSuspended"];
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136316162;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v16 = 1024;
          v17 = 899;
          v18 = 1024;
          v19 = [v7 BOOLValue];
          v20 = 1024;
          v21 = [v6 streamToken];
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: videoDidSuspend=%d for streamToken=%u", &v12, 0x28u);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 setIsVideoSuspended:{objc_msgSend(v7, "BOOLValue")}];
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v10;
        v14 = 2080;
        v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v16 = 1024;
        v17 = 895;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v12, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_130(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v4 = [*(a1 + 32) strong];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v4)
    {
      if (ErrorLogLevelForModule >= 6)
      {
        v6 = VRTraceErrorLogLevelToCSTR();
        v7 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = 136315906;
          v11 = v6;
          v12 = 2080;
          v13 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v14 = 1024;
          v15 = 916;
          v16 = 1024;
          v17 = [v4 streamToken];
          _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient callback: remoteVideoClientDidReceiveLastFrame for streamToken=%u.", &v10, 0x22u);
        }
      }

      [v4 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v4 setHasReceivedLastFrame:1];
        [objc_msgSend(v4 "delegate")];
      }
    }

    else if (ErrorLogLevelForModule >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v8;
        v12 = 2080;
        v13 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v14 = 1024;
        v15 = 913;
        _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v10, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_134(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceConnectionTypeLocal"];
      v8 = [a2 objectForKeyedSubscript:@"conferenceConnectionTypeRemote"];
      if (![a2 objectForKeyedSubscript:@"SERVERDIED"])
      {

        [v6 updateConnectionInfoWithLocalInterfaceType:v7 remoteInterfaceType:v8];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315650;
        v12 = v9;
        v13 = 2080;
        v14 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v15 = 1024;
        v16 = 930;
        _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v11, 0x1Cu);
      }
    }
  }
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_142(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3 && ![a2 objectForKeyedSubscript:@"SERVERDIED"])
  {
    v5 = [*(a1 + 32) strong];
    if (v5)
    {
      v6 = v5;
      v7 = [a2 objectForKeyedSubscript:@"conferenceSensitivityAnalysis"];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315907;
          v13 = v8;
          v14 = 2080;
          v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
          v16 = 1024;
          v17 = 952;
          v18 = 2081;
          v19 = "AVCRemoteVideoClient callback: didDetectSensitiveContent";
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d %{private}s", &v12, 0x26u);
        }
      }

      [v6 delegate];
      if (objc_opt_respondsToSelector())
      {
        [objc_msgSend(v6 "delegate")];
      }
    }

    else if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315650;
        v13 = v10;
        v14 = 2080;
        v15 = "[AVCRemoteVideoClient registerBlocksForNotifications]_block_invoke";
        v16 = 1024;
        v17 = 948;
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AVCRemoteVideoClient: strongSelf == nil", &v12, 0x1Cu);
      }
    }
  }
}

- (void)deregisterBlocksForNotifications
{
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"conferenceDidServerDie"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidReceiveRemoteFrame"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidRemoteScreenAttributesChange"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidRemoteAttributesChange"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidRemoteVideoPause"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidRemoteMediaStall"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidReleaseRemoteVideoQueue"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidVideoDegrade"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidConnectionChange"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidVideoSuspend"];
  [(AVConferenceXPCClient *)self->_connection deregisterFromService:"vcRemoteVideoDidNetworkDegrade"];
  connection = self->_connection;

  [(AVConferenceXPCClient *)connection deregisterFromService:"vcRemoteVideoDidDetectSensitiveContent"];
}

- (void)checkpointDidReceiveFirstFrame
{
  v22 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCRemoteVideoClient-didReceiveFirstFrame");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      delegate = self->_delegate;
      streamToken = self->_streamToken;
      activeVideoMode = self->_activeVideoMode;
      v8 = 136316674;
      v9 = v3;
      v10 = 2080;
      v11 = "[AVCRemoteVideoClient checkpointDidReceiveFirstFrame]";
      v12 = 1024;
      v13 = 978;
      v14 = 2048;
      selfCopy = self;
      v16 = 1024;
      v17 = streamToken;
      v18 = 2048;
      v19 = delegate;
      v20 = 1024;
      v21 = activeVideoMode;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCRemoteVideoClient-didReceiveFirstFrame (%p) streamToken=%u, delegate=%p, activeVideoMode=%d", &v8, 0x3Cu);
    }
  }
}

- (void)checkpointVideoAttributesDidChange
{
  v25 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E128B580](&dword_1DB56E000, "@:@ AVCRemoteVideoClient-remoteVideoAttributesDidChange");
  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      remoteVideoAttributes = self->_remoteVideoAttributes;
      delegate = self->_delegate;
      streamToken = self->_streamToken;
      activeVideoMode = self->_activeVideoMode;
      v9 = 136316930;
      v10 = v3;
      v11 = 2080;
      v12 = "[AVCRemoteVideoClient checkpointVideoAttributesDidChange]";
      v13 = 1024;
      v14 = 982;
      v15 = 2048;
      selfCopy = self;
      v17 = 2112;
      v18 = remoteVideoAttributes;
      v19 = 1024;
      v20 = streamToken;
      v21 = 2048;
      v22 = delegate;
      v23 = 1024;
      v24 = activeVideoMode;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d @:@ AVCRemoteVideoClient-remoteVideoAttributesDidChange (%p) attributes=%@, streamToken=%u, delegate=%p, activeVideoMode=%d", &v9, 0x46u);
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"bounds", object, change, context}])
  {
    shouldDisplayVideoInfoLayer = [(AVCRemoteVideoClient *)self shouldDisplayVideoInfoLayer];
    if (object)
    {
      if (shouldDisplayVideoInfoLayer)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [object bounds];
          x = v15.origin.x;
          y = v15.origin.y;
          width = v15.size.width;
          height = v15.size.height;
          if (CGRectIsNull(v15))
          {
            [AVCRemoteVideoClient observeValueForKeyPath:ofObject:change:context:];
          }

          else
          {
            [(AVCRemoteVideoClient *)self adjustInfoSubLayerBounds:[(AVCRemoteVideoClient *)self subLayerForMode:0] forSuperLayer:x, y, width, height];
            [(AVCRemoteVideoClient *)self adjustInfoSubLayerBounds:[(AVCRemoteVideoClient *)self subLayerForMode:1] forSuperLayer:x, y, width, height];
            v13 = [(AVCRemoteVideoClient *)self subLayerForMode:2];

            [(AVCRemoteVideoClient *)self adjustInfoSubLayerBounds:v13 forSuperLayer:x, y, width, height];
          }
        }

        else
        {
          [AVCRemoteVideoClient observeValueForKeyPath:ofObject:change:context:];
        }
      }
    }
  }
}

- (void)adjustInfoSubLayerBounds:(CGRect)bounds forSuperLayer:(id)layer
{
  height = bounds.size.height;
  width = bounds.size.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(AVCRemoteVideoClient *)self findInfoSubLayerFromLayer:layer, bounds.origin.x, bounds.origin.y];
  if (v6)
  {
    v7 = v6;
    if (VRTraceGetErrorLogLevelForModule() >= 8)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      v10 = *MEMORY[0x1E6986650];
      if (*MEMORY[0x1E6986640] == 1)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136316162;
          v12 = v8;
          v13 = 2080;
          v14 = "[AVCRemoteVideoClient adjustInfoSubLayerBounds:forSuperLayer:]";
          v15 = 1024;
          v16 = 1011;
          v17 = 2048;
          v18 = width;
          v19 = 2048;
          v20 = height;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting bounds %f x %f", &v11, 0x30u);
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 136316162;
        v12 = v8;
        v13 = 2080;
        v14 = "[AVCRemoteVideoClient adjustInfoSubLayerBounds:forSuperLayer:]";
        v15 = 1024;
        v16 = 1011;
        v17 = 2048;
        v18 = width;
        v19 = 2048;
        v20 = height;
        _os_log_debug_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setting bounds %f x %f", &v11, 0x30u);
      }
    }

    [MEMORY[0x1E6979518] begin];
    [v7 setBounds:{0.0, 0.0, width, height * 0.5}];
    [v7 setPosition:{height * 0.25, width * 0.5}];
    [MEMORY[0x1E6979518] commit];
  }
}

- (void)insertInfoSubLayerIntoLayer:(id)layer videoMode:(int)mode
{
  v4 = *&mode;
  v19 = *MEMORY[0x1E69E9840];
  if ([(AVCRemoteVideoClient *)self shouldDisplayVideoInfoLayer])
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"AVCRemoteVideoInfoLayer%p(%d)", self, v4];
    [layer addObserver:self forKeyPath:@"bounds" options:1 context:0];
    [layer bounds];
    v9 = v8;
    v11 = v10;
    layer = [MEMORY[0x1E6979508] layer];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    [layer setFontSize:14.0];
    [layer setWrapped:1];
    *components = xmmword_1DBD50E20;
    v18 = xmmword_1DBD50E20;
    v14 = CGColorCreate(DeviceRGB, components);
    [layer setForegroundColor:v14];
    [layer setBounds:{0.0, 0.0, v9, v11 * 0.5}];
    [layer setPosition:{v11 * 0.25, v9 * 0.5}];
    [layer setString:{-[AVCRemoteVideoClient connectionTypeString](self, "connectionTypeString")}];
    [layer setAlignmentMode:*MEMORY[0x1E6979560]];
    CGAffineTransformMakeRotation(&m, -1.57079633);
    CATransform3DMakeAffineTransform(&v16, &m);
    [layer setTransform:&v16];
    [layer setName:v7];
    [-[AVCRemoteVideoClient subLayerForMode:](self subLayerForMode:{v4), "addSublayer:", layer}];

    CGColorRelease(v14);
    CGColorSpaceRelease(DeviceRGB);
  }
}

- (void)updateConnectionInfoWithLocalInterfaceType:(id)type remoteInterfaceType:(id)interfaceType
{
  v18 = *MEMORY[0x1E69E9840];
  [(AVCRemoteVideoClient *)self setActiveVideoLayerForMode:self->_activeVideoMode];
  if ([(AVCRemoteVideoClient *)self shouldDisplayVideoInfoLayer])
  {
    -[AVCRemoteVideoClient setConnectionTypeString:](self, "setConnectionTypeString:", [MEMORY[0x1E696AEC0] stringWithFormat:@"L:%@ -- R:%@", type, interfaceType]);
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        if ([(AVCRemoteVideoClient *)self connectionTypeString])
        {
          uTF8String = [[(NSString *)[(AVCRemoteVideoClient *)self connectionTypeString] description] UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        v11 = v7;
        v12 = 2080;
        v13 = "[AVCRemoteVideoClient updateConnectionInfoWithLocalInterfaceType:remoteInterfaceType:]";
        v14 = 1024;
        v15 = 1053;
        v16 = 2080;
        v17 = uTF8String;
        _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d HandoverReport: connection changed to: %s", buf, 0x26u);
      }
    }

    [(AVCRemoteVideoClient *)self drawText:[(AVCRemoteVideoClient *)self connectionTypeString] inSubLayer:[(AVCRemoteVideoClient *)self subLayerForMode:0]];
    [(AVCRemoteVideoClient *)self drawText:[(AVCRemoteVideoClient *)self connectionTypeString] inSubLayer:[(AVCRemoteVideoClient *)self subLayerForMode:1]];
    [(AVCRemoteVideoClient *)self drawText:[(AVCRemoteVideoClient *)self connectionTypeString] inSubLayer:[(AVCRemoteVideoClient *)self subLayerForMode:2]];
  }
}

- (void)drawText:(id)text inSubLayer:(id)layer
{
  v16 = *MEMORY[0x1E69E9840];
  if (layer)
  {
    v5 = [(AVCRemoteVideoClient *)self findInfoSubLayerFromLayer:layer];
    if (v5)
    {
      v6 = v5;
      if (VRTraceGetErrorLogLevelForModule() >= 8)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        v9 = *MEMORY[0x1E6986650];
        if (*MEMORY[0x1E6986640] == 1)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 136315650;
            v11 = v7;
            v12 = 2080;
            v13 = "[AVCRemoteVideoClient drawText:inSubLayer:]";
            v14 = 1024;
            v15 = 1073;
            _os_log_impl(&dword_1DB56E000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Setting textLayer", &v10, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [AVCRemoteVideoClient drawText:inSubLayer:];
        }
      }

      [MEMORY[0x1E6979518] begin];
      [v6 setString:text];
      [MEMORY[0x1E6979518] commit];
    }
  }
}

- (id)findInfoSubLayerFromLayer:(id)layer
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sublayers = [layer sublayers];
  v4 = [sublayers countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *v12;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v12 != v6)
    {
      objc_enumerationMutation(sublayers);
    }

    v8 = *(*(&v11 + 1) + 8 * v7);
    if ([objc_msgSend(v8 "name")])
    {
      return v8;
    }

    if (v5 == ++v7)
    {
      v5 = [sublayers countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v5)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)setLayerHostBounds:(CGRect)bounds
{
  if (self->_caLayerHost)
  {
    height = bounds.size.height;
    width = bounds.size.width;
    if (!CGRectIsNull(bounds))
    {
      v16.origin.x = OUTLINED_FUNCTION_16_12();
      if (!CGRectIsEmpty(v16))
      {
        v17.origin.x = OUTLINED_FUNCTION_16_12();
        if (!CGRectEqualToRect(v17, v18))
        {
          v6 = OUTLINED_FUNCTION_16_12();
          [v7 setFrame:v6];
          caLayerHost = self->_caLayerHost;

          [(VCCALayerHost *)caLayerHost setPosition:width * 0.5, height * 0.5];
        }
      }
    }

    return;
  }

  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_18:
    _os_log_error_impl(v9, v10, v11, v12, v13, v14);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_18;
    }
  }
}

- (void)cleanupLayerHost
{
  caLayerHost = self->_caLayerHost;
  if (caLayerHost)
  {
    [(VCCALayerHost *)caLayerHost removeFromSuperlayer];

    self->_caLayerHost = 0;
  }
}

- (void)initWithStreamToken:endpointID:delegate:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d ERROR slotsForModes dictionary missing", v2, v3, v4, v5, v6);
}

- (void)initWithStreamToken:endpointID:delegate:.cold.2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[AVCRemoteVideoClient initWithStreamToken:endpointID:delegate:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d ERROR queue for streamToken=%u doesn't exist", v3, *v4, "[AVCRemoteVideoClient initWithStreamToken:endpointID:delegate:]" >> 16, 185);
}

- (void)setVideoLayer:forMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[AVCRemoteVideoClient setVideoLayer:forMode:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d AVCRemoteVideoClient: ERROR invalid videoMode in setVideoLayer:forMode:%d", v3, *v4, "[AVCRemoteVideoClient setVideoLayer:forMode:]" >> 16, v5);
}

- (void)setVideoLayer:forMode:.cold.2()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[AVCRemoteVideoClient setVideoLayer:forMode:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d ERROR no valid slot for mode=%d", v3, *v4, "[AVCRemoteVideoClient setVideoLayer:forMode:]" >> 16, v5);
}

- (void)slotForMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  *&v4[4] = v0;
  *&v4[6] = "[AVCRemoteVideoClient slotForMode:]";
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, v1, v2, " [%s] %s:%d ERROR no valid slot for mode=%d", v3, *v4, "[AVCRemoteVideoClient slotForMode:]" >> 16, v5);
}

- (void)createCALayerHostForRootLayer:withContextId:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate CALayerHost", v2, v3, v4, v5, v6);
}

- (void)createCALayerHostForRootLayer:withContextId:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate layer host name", v2, v3, v4, v5, v6);
}

- (void)createCALayerHostForRootLayer:withContextId:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid rootLayer or contextId", v2, v3, v4, v5, v6);
}

- (void)newXPCObjectForFenceHandle:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)setRemoteVideoLayerBounds:(double)a3 .cold.1(double a1, double a2, double a3, double a4, uint64_t a5, NSObject *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  NSStringFromRect(*&a1);
  OUTLINED_FUNCTION_11();
  v10 = v7;
  v11 = "[AVCRemoteVideoClient setRemoteVideoLayerBounds:]";
  OUTLINED_FUNCTION_4_2();
  v12 = 406;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_1DB56E000, a6, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed due to invalid root layer bounds=%@", v9, 0x26u);
}

- (void)setRemoteVideoLayerBounds:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Set layer bounds xpc call failed", v2, v3, v4, v5, v6);
}

- (void)setRemoteVideoLayerBounds:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to create XPC representation for fence", v2, v3, v4, v5, v6);
}

- (void)setRemoteVideoLayerBounds:.cold.4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate stream token number", v2, v3, v4, v5, v6);
}

- (void)setRemoteVideoLayerBounds:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d CALayerHost invalid", v2, v3, v4, v5, v6);
}

- (void)setTransformForRemoteVideoOrientationEnabled:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_34())
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_28_0())
  {
    OUTLINED_FUNCTION_6_1();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_3_1();
      goto LABEL_11;
    }
  }
}

- (void)setVideoLayerHost:forMode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d CALayerHost exist already, reconfigure not supported currently", v2, v3, v4, v5, v6);
}

- (void)setVideoLayerHost:forMode:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate slotsForModes dictionary", v2, v3, v4, v5, v6);
}

- (void)setVideoLayerHost:forMode:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid contextIdForModes dictionary returned", v2, v3, v4, v5, v6);
}

- (void)setVideoLayerHost:(NSObject *)a3 forMode:.cold.4(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  [a2 unsignedIntValue];
  OUTLINED_FUNCTION_11();
  v8 = v4;
  v9 = "[AVCRemoteVideoClient setVideoLayerHost:forMode:]";
  OUTLINED_FUNCTION_4_2();
  v10 = 482;
  v11 = v5;
  v12 = v6;
  _os_log_error_impl(&dword_1DB56E000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d GetContextIdForStreamToken=%u failed", v7, 0x22u);
}

- (void)setVideoLayerHost:forMode:.cold.5()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate args dictionary", v2, v3, v4, v5, v6);
}

- (void)setVideoLayerHost:forMode:.cold.6()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocate stream token number", v2, v3, v4, v5, v6);
}

- (void)setVideoLayerHost:forMode:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d Invalid rootLayer parameter", v2, v3, v4, v5, v6);
}

void __51__AVCRemoteVideoClient_setActiveVideoLayerForMode___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315906;
  *&v3[4] = a1;
  *&v3[12] = 2080;
  *&v3[14] = "[AVCRemoteVideoClient setActiveVideoLayerForMode:]_block_invoke";
  OUTLINED_FUNCTION_6_2(&dword_1DB56E000, a2, a3, " [%s] %s:%d AVCRemoteVideoClient: invalide videoMode=%d when setActiveVideoLayerForMode", *v3, *&v3[8], "[AVCRemoteVideoClient setActiveVideoLayerForMode:]_block_invoke" >> 16, 670);
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCRemoteVideoClient: serverd died, notifying client", v2, v3, v4, v5, v6);
}

void __54__AVCRemoteVideoClient_registerBlocksForNotifications__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1(&dword_1DB56E000, v0, v1, " [%s] %s:%d AVCRemoteVideoClient: server died", v2, v3, v4, v5, v6);
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)observeValueForKeyPath:ofObject:change:context:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, v5);
    }
  }
}

- (void)drawText:inSubLayer:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 1073;
  _os_log_debug_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Setting textLayer", v1, 0x1Cu);
}

@end