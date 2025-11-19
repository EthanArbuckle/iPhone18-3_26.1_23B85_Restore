@interface VCMockIDSDatagramChannel
+ (void)extractRTPData:(char *)a3 ssrc:(unsigned int *)a4 sequenceNumber:(unsigned __int16 *)a5;
- (BOOL)createSocketWithSourcePort:(signed __int16)a3;
- (BOOL)enqueueDatagramPacket:(const void *)a3 datagramSize:(unsigned int)a4 options:(id *)a5 error:(id *)a6;
- (BOOL)isMediaPacket:(char *)a3 length:(unint64_t)a4;
- (BOOL)isNACKPacket:(char *)a3 length:(unint64_t)a4;
- (BOOL)isRTCPPacket:(char *)a3 length:(unint64_t)a4;
- (BOOL)isVideoPacket:(char *)a3 length:(unint64_t)a4;
- (BOOL)processDirectIDSPathWithDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramOptions:(id *)a5 error:(id *)a6;
- (BOOL)setupMockIDSDatagramChannelRequiresOptions:(BOOL)a3 sourcePort:(signed __int16)a4;
- (BOOL)shouldReadPacket:(_VCMockIDSDatagramChannelPacket *)a3;
- (_VCMockIDSDatagramChannelPacket)constructPacket:(_VCMockIDSDatagramChannelPacket *)a3 datagram:(const void *)a4 datagramSize:(unsigned int)a5 datagramOptions:(id *)a6;
- (id)encryptionInfoEventWithIsLocalKey:(BOOL)a3;
- (id)initCreateSocketRequiresOptions:(BOOL)a3 dataPath:(int)a4 destination:(id)a5;
- (id)initRequiresOptions:(BOOL)a3;
- (id)newArrayOfStreamIdsForPacket:(_VCMockIDSDatagramChannelPacket *)a3;
- (id)shortMKIPrefixLength;
- (int)drainUnderlyingFileDescriptor;
- (int)readyToRead;
- (int)underlyingFileDescriptor;
- (void)addMediaPacketToBuffer:(char *)a3 length:(unint64_t)a4 datagramOptions:(id *)a5;
- (void)cleanup;
- (void)dealloc;
- (void)dequeueDatagramPacket:(id)a3;
- (void)drainUnderlyingFileDescriptor;
- (void)flushDatagramPacketsList;
- (void)flushDatagramPacketsListDIrectIDSPath;
- (void)handlePacket:(_VCMockIDSDatagramChannelPacket *)a3 packetHandler:(id)a4 shouldDropThisPacket:(BOOL)a5;
- (void)invalidate;
- (void)printDroppedPacketInfo:(_VCMockIDSDatagramChannelPacket *)a3;
- (void)processPacket:(_VCMockIDSDatagramChannelPacket *)a3 packetHandler:(id)a4;
- (void)processWriteCompletionCallback:(id)a3 forDatagramWithSize:(unint64_t)a4 error:(id)a5;
- (void)readDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramOptions:(id *)a5;
- (void)readDatagramWithCompletionHandler:(id)a3;
- (void)readDatagramsWithCompletionHandler:(id)a3;
- (void)reportFirstPacketTimeForMKI:(id)a3;
- (void)requestSessionInfoWithOptions:(id)a3;
- (void)retrieveAndProcesOnePacket:(unsigned int)a3 seq:(unsigned __int16)a4 count:(int)a5 index:(int)a6;
- (void)retrieveAndProcessMediaPacketsFromBuffer:(tagRTCPPACKET *)a3 packetHandler:(id)a4;
- (void)setChannelPreferences:(id)a3;
- (void)setEventHandler:(id)a3;
- (void)setParticipantIDOnOptions:(id *)a3;
- (void)setReadHandler:(id)a3;
- (void)setReadHandlerWithOptions:(id)a3;
- (void)setReadyToReadBlock:(id)a3;
- (void)setUPlusOneMode:(BOOL)a3 isInitiator:(BOOL)a4;
- (void)setWriteCompletionHandler:(id)a3;
- (void)setWriteDatagramBlock:(id)a3;
- (void)setWriteDatagramsBlock:(id)a3;
- (void)signalUnderlyingFileDescriptor;
- (void)start;
- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(id *)a6 completionHandler:(id)a7;
- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 flags:(id)a5 completionHandler:(id)a6;
- (void)writeDatagrams:(const void *)a3 datagramsSize:(unsigned int *)a4 datagramsInfo:(id *)a5 datagramsCount:(int)a6 options:(id *)a7 completionHandler:(id)a8;
@end

@implementation VCMockIDSDatagramChannel

- (BOOL)setupMockIDSDatagramChannelRequiresOptions:(BOOL)a3 sourcePort:(signed __int16)a4
{
  v6 = [[VCMockIDSDataChannelLinkContext alloc] initWithSourcePort:a4];
  self->_linkContext = v6;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
    self->_blockSettingLock = v7;
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
      self->_writeDirectPathIDSLock = v8;
      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
        self->_flushDatagramPacketsLock = v9;
        if (v9)
        {
          if (VCAllocatorFirstCome_Create(*MEMORY[0x1E695E480], "com.apple.AVConference.VCMockIDSDatagramChannel.MOCKDatagramChannelPacketAllocator", &self->_datagramPacketAllocator))
          {
            [VCMockIDSDatagramChannel setupMockIDSDatagramChannelRequiresOptions:sourcePort:];
            return v13;
          }

          else
          {
            VCSingleLinkedListInitialize(&self->_datagramPackets, _VCMockIDSDatagramChannel_ComparePacket);
            VCSingleLinkedListInitialize(&self->_datagramPacketsDirectIDSPath, _VCMockIDSDatagramChannel_ComparePacket);
            self->_usingOptions = a3;
            [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
            self->_emulatedRxPLR = v10;
            pthread_mutex_init(&self->_streamSubscriptionLock, 0);
            self->_subscribedStreamsByParticipantID = objc_alloc_init(MEMORY[0x1E695DF90]);
            self->_doNotDropNackOrRetransmitted = [VCDefaults BOOLeanValueForKey:@"enableMockDatagramChannelDoNotDropNack" defaultValue:0];
            self->_isSourceParticipantIDOnFanOutPacketsEnabled = [VCDefaults BOOLeanValueForKey:@"mockDatagramChannelAddSourceParticipantIDOnFanOutPackets" defaultValue:0];
            self->_isWrongParticipantIDOnFanOutPacketsEnabled = [VCDefaults BOOLeanValueForKey:@"mockDatagramChannelAddWrongParticipantIDOnFanOutPackets" defaultValue:0];
            self->_isECNEnabled = VCDefaults_GetBoolValueForKey(@"ecnEnabled", 0);
            self->_isShortMKIEnabled = VCFeatureFlagManager_UseShortMKI();
            self->_isTestNetworkRouterEnabled = VCDefaults_GetBoolValueForKey(@"enableTestNetworkRouter", 0);
            self->_isTwoWayFaceTimeTestUsingSocketsEnabled = VCDefaults_GetBoolValueForKey(@"twoWayFaceTimeTestUsingSocketsEnabled", 0);
            bzero(self->_packetBuffer, 0x2EE000uLL);
            if (self->_isTwoWayFaceTimeTestUsingSocketsEnabled && (v11 = VCRealTimeThread_Initialize(20, VCMockIDSDatagramChannelReceiveThread, self, "com.apple.avconference.mockdatagramchannel.recvproc", 3), (self->_packetReceiveThread = v11) == 0))
            {
              [VCMockIDSDatagramChannel setupMockIDSDatagramChannelRequiresOptions:sourcePort:];
              return v14;
            }

            else
            {
              return 1;
            }
          }
        }

        else
        {
          [VCMockIDSDatagramChannel setupMockIDSDatagramChannelRequiresOptions:sourcePort:];
          return v15;
        }
      }

      else
      {
        [VCMockIDSDatagramChannel setupMockIDSDatagramChannelRequiresOptions:sourcePort:];
        return v16;
      }
    }

    else
    {
      [VCMockIDSDatagramChannel setupMockIDSDatagramChannelRequiresOptions:sourcePort:];
      return v17;
    }
  }

  else
  {
    [VCMockIDSDatagramChannel setupMockIDSDatagramChannelRequiresOptions:sourcePort:];
    return v18;
  }
}

- (id)initRequiresOptions:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = VCMockIDSDatagramChannel;
  v4 = [(IDSDatagramChannel *)&v10 initWithSocketDescriptor:0];
  v5 = v4;
  if (v4)
  {
    if ([(VCMockIDSDatagramChannel *)v4 setupMockIDSDatagramChannelRequiresOptions:v3 sourcePort:16430])
    {
      v5->_isValid = 1;
      v5->_isNackEnabled = VCDefaults_GetIntValueForKey(@"suppressNackFulfillmentByMockIDSDatagramChannel", 0) == 0;
    }

    else
    {

      v5 = 0;
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    v8 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v12 = v6;
        v13 = 2080;
        v14 = "[VCMockIDSDatagramChannel initRequiresOptions:]";
        v15 = 1024;
        v16 = 263;
        v17 = 2048;
        v18 = v5;
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VCMockIDSDatagramChannel=%p created", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [VCMockIDSDatagramChannel initRequiresOptions:];
    }
  }

  return v5;
}

- (id)initCreateSocketRequiresOptions:(BOOL)a3 dataPath:(int)a4 destination:(id)a5
{
  v7 = a3;
  v34 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = VCMockIDSDatagramChannel;
  v8 = [(IDSDatagramChannel *)&v23 initWithSocketDescriptor:0];
  if (v8)
  {
    if (a5 && (v9 = [a5 componentsSeparatedByString:@":"]) != 0 && (v10 = v9, objc_msgSend(v9, "count") >= 2) && objc_msgSend(objc_msgSend(v10, "objectAtIndexedSubscript:", 1), "intValue") >= 1)
    {
      v11 = [objc_msgSend(v10 objectAtIndexedSubscript:{1), "intValue"}];
    }

    else
    {
      v11 = 16430;
    }

    v12 = v11;
    if ([(VCMockIDSDatagramChannel *)v8 setupMockIDSDatagramChannelRequiresOptions:v7 sourcePort:v11])
    {
      v13 = [(VCMockIDSDatagramChannel *)v8 createSocketWithSourcePort:v11];
      ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
      if (v13)
      {
        if (ErrorLogLevelForModule >= 7)
        {
          v15 = VRTraceErrorLogLevelToCSTR();
          v16 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            socket = v8->_socket;
            *buf = 136316162;
            v25 = v15;
            v26 = 2080;
            v27 = "[VCMockIDSDatagramChannel initCreateSocketRequiresOptions:dataPath:destination:]";
            v28 = 1024;
            v29 = 279;
            v30 = 1024;
            v31 = socket;
            v32 = 1024;
            v33 = v12;
            _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Created socket=%d for sourcePort=%u", buf, 0x28u);
          }
        }

        CustomRootQueue = VCDispatchQueue_GetCustomRootQueue(58);
        v19 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMockIDSDatagramChannel.directPathReadQueue", 0, CustomRootQueue);
        v8->_directPathReadQueue = v19;
        if (v19)
        {
          v20 = VCDispatchQueue_GetCustomRootQueue(56);
          v21 = dispatch_queue_create_with_target_V2("com.apple.AVConference.VCMockIDSDatagramChannel.directPathRTXQueue", 0, v20);
          v8->_directPathRTXQueue = v21;
          if (v21)
          {
            v8->_isValid = 1;
            v8->_isNackEnabled = VCDefaults_GetIntValueForKey(@"suppressNackFulfillmentByMockIDSDatagramChannel", 0) == 0;
            v8->_dataPath = a4;
            return v8;
          }

          [VCMockIDSDatagramChannel initCreateSocketRequiresOptions:dataPath:destination:];
        }

        else
        {
          [VCMockIDSDatagramChannel initCreateSocketRequiresOptions:dataPath:destination:];
        }
      }

      else
      {
        [VCMockIDSDatagramChannel initCreateSocketRequiresOptions:? dataPath:? destination:?];
      }
    }

    else
    {
      [VCMockIDSDatagramChannel initCreateSocketRequiresOptions:dataPath:destination:];
    }

    return 0;
  }

  return v8;
}

- (void)flushDatagramPacketsList
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  v2 = 304;
  _os_log_error_impl(&dword_1DB56E000, v0, OS_LOG_TYPE_ERROR, " [%s] %s:%d Datagram packet queue has remaining elements", v1, 0x1Cu);
}

- (void)flushDatagramPacketsListDIrectIDSPath
{
  v3 = VCSingleLinkedListPop(&self->_datagramPacketsDirectIDSPath);
  if (v3)
  {
    v4 = v3;
    do
    {
      CFAllocatorDeallocate(self->_datagramPacketAllocator, v4);
      v4 = VCSingleLinkedListPop(&self->_datagramPacketsDirectIDSPath);
    }

    while (v4);
  }
}

- (void)cleanup
{
  VCCloseSocketIfValid(self->_socket);
  self->_socket = -1;
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    CFRelease(eventHandler);
    self->_eventHandler = 0;
  }

  [(VCMockIDSDatagramChannel *)self flushDatagramPacketsList];
  [(NSLock *)self->_flushDatagramPacketsLock lock];
  [(VCMockIDSDatagramChannel *)self flushDatagramPacketsListDIrectIDSPath];
  [(NSLock *)self->_flushDatagramPacketsLock unlock];
  datagramPacketAllocator = self->_datagramPacketAllocator;
  if (datagramPacketAllocator)
  {
    CFRelease(datagramPacketAllocator);
    self->_datagramPacketAllocator = 0;
  }

  readHandlerWithOptions = self->_readHandlerWithOptions;
  if (readHandlerWithOptions)
  {
    CFRelease(readHandlerWithOptions);
    self->_readHandlerWithOptions = 0;
  }

  readHandler = self->_readHandler;
  if (readHandler)
  {
    CFRelease(readHandler);
    self->_readHandler = 0;
  }

  sharedWriteCompletionHandler = self->_sharedWriteCompletionHandler;
  if (sharedWriteCompletionHandler)
  {
    CFRelease(sharedWriteCompletionHandler);
    self->_sharedWriteCompletionHandler = 0;
  }

  linkContext = self->_linkContext;
  if (linkContext)
  {
    CFRelease(linkContext);
    self->_linkContext = 0;
  }

  writeDatagramsBlock = self->_writeDatagramsBlock;
  if (writeDatagramsBlock)
  {
    CFRelease(writeDatagramsBlock);
    self->_writeDatagramsBlock = 0;
  }

  writeDatagramBlock = self->_writeDatagramBlock;
  if (writeDatagramBlock)
  {
    CFRelease(writeDatagramBlock);
    self->_writeDatagramBlock = 0;
  }

  readyToReadBlock = self->_readyToReadBlock;
  if (readyToReadBlock)
  {
    CFRelease(readyToReadBlock);
    self->_readyToReadBlock = 0;
  }

  subscribedStreamsByParticipantID = self->_subscribedStreamsByParticipantID;
  if (subscribedStreamsByParticipantID)
  {
    CFRelease(subscribedStreamsByParticipantID);
    self->_subscribedStreamsByParticipantID = 0;
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  if (self->_isValid)
  {
    [(VCMockIDSDatagramChannel *)self cleanup];
  }

  self->_isValid = 0;

  self->_blockSettingLock = 0;
  self->_writeDirectPathIDSLock = 0;

  self->_flushDatagramPacketsLock = 0;
  directPathReadQueue = self->_directPathReadQueue;
  if (directPathReadQueue)
  {
    dispatch_release(directPathReadQueue);
    self->_directPathReadQueue = 0;
  }

  directPathRTXQueue = self->_directPathRTXQueue;
  if (directPathRTXQueue)
  {
    dispatch_release(directPathRTXQueue);
    self->_directPathRTXQueue = 0;
  }

  pthread_mutex_destroy(&self->_streamSubscriptionLock);
  v5.receiver = self;
  v5.super_class = VCMockIDSDatagramChannel;
  [(IDSDatagramChannel *)&v5 dealloc];
}

- (void)readDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramOptions:(id *)a5
{
  v6 = *&a4;
  if (self->_isECNEnabled)
  {
    v9 = 0xAA010000AA00;
  }

  else
  {
    v9 = 0xAA000000AA00;
  }

  v10 = [(VCMockIDSDataChannelLinkContext *)self->_linkContext linkID];
  if (v6 || a5 && a5->var7)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFF00 | v10;
    readHandler = self->_readHandler;
    if (readHandler)
    {
      readHandler[2](readHandler, a3, v6, v11, 43520, 0);
    }

    readHandlerWithOptions = self->_readHandlerWithOptions;
    if (readHandlerWithOptions)
    {
      v14 = *(readHandlerWithOptions + 2);

      v14();
    }
  }
}

- (void)setWriteDatagramsBlock:(id)a3
{
  [(NSLock *)self->_blockSettingLock lock];
  writeDatagramsBlock = self->_writeDatagramsBlock;
  if (writeDatagramsBlock)
  {
    CFRelease(writeDatagramsBlock);
    self->_writeDatagramsBlock = 0;
  }

  self->_writeDatagramsBlock = [a3 copy];
  blockSettingLock = self->_blockSettingLock;

  [(NSLock *)blockSettingLock unlock];
}

- (void)setWriteDatagramBlock:(id)a3
{
  [(NSLock *)self->_blockSettingLock lock];
  writeDatagramBlock = self->_writeDatagramBlock;
  if (writeDatagramBlock)
  {
    CFRelease(writeDatagramBlock);
    self->_writeDatagramBlock = 0;
  }

  self->_writeDatagramBlock = [a3 copy];
  blockSettingLock = self->_blockSettingLock;

  [(NSLock *)blockSettingLock unlock];
}

- (void)setReadyToReadBlock:(id)a3
{
  [(NSLock *)self->_blockSettingLock lock];
  readyToReadBlock = self->_readyToReadBlock;
  if (readyToReadBlock)
  {
    CFRelease(readyToReadBlock);
    self->_readyToReadBlock = 0;
  }

  self->_readyToReadBlock = [a3 copy];
  blockSettingLock = self->_blockSettingLock;

  [(NSLock *)blockSettingLock unlock];
}

- (void)signalUnderlyingFileDescriptor
{
  __error();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

+ (void)extractRTPData:(char *)a3 ssrc:(unsigned int *)a4 sequenceNumber:(unsigned __int16 *)a5
{
  if (a3 && a5)
  {
    *a5 = bswap32(*(a3 + 1)) >> 16;
  }

  if (a3)
  {
    if (a4)
    {
      *a4 = bswap32(*(a3 + 2));
    }
  }
}

- (BOOL)enqueueDatagramPacket:(const void *)a3 datagramSize:(unsigned int)a4 options:(id *)a5 error:(id *)a6
{
  v8 = *&a4;
  v37 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_blockSettingLock lock];
  if (!self->_isValid)
  {
    if (a6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = @"Trying to enqueue to invalidated VCMockIDSDatagramChannel";
LABEL_12:
      v17 = 0;
      *a6 = [v15 AVConferenceServiceError:32000 detailCode:0 description:v16];
      goto LABEL_19;
    }

LABEL_13:
    v17 = 0;
    goto LABEL_19;
  }

  v11 = MEMORY[0x1E1288880](self->_datagramPacketAllocator, 1656, 0x1020040523C2829, 0);
  if (!v11)
  {
    if (a6)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = @"Failed to allocate packet";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [(VCMockIDSDatagramChannel *)self constructPacket:v11 datagram:a3 datagramSize:v8 datagramOptions:a5];
  v13 = [(VCMockIDSDatagramChannel *)self isNACKPacket:v12->var1 length:v12->var2];
  v14 = VCSingleLinkedListPush(&self->_datagramPackets, v12);
  [(VCMockIDSDatagramChannel *)self signalUnderlyingFileDescriptor];
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCMockIDSDatagramChannel enqueueDatagramPacket:datagramSize:options:error:];
        }
      }
    }

    else
    {
      v22 = 0;
      v21 = 0;
      [VCMockIDSDatagramChannel extractRTPData:v12->var1 ssrc:&v21 sequenceNumber:&v22];
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v18 = VRTraceErrorLogLevelToCSTR();
        v19 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v24 = v18;
          v25 = 2080;
          v26 = "[VCMockIDSDatagramChannel enqueueDatagramPacket:datagramSize:options:error:]";
          v27 = 1024;
          v28 = 455;
          v29 = 1024;
          v30 = v21;
          v31 = 1024;
          v32 = v21;
          v33 = 1024;
          v34 = v22;
          v35 = 1024;
          v36 = v22;
          _os_log_error_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d failing to enqueue Media ssrc=%u ssrc_hex=%x seq=%d seq_hex=%x", buf, 0x34u);
        }
      }
    }

    CFAllocatorDeallocate(self->_datagramPacketAllocator, v12);
  }

  v17 = 1;
LABEL_19:
  [(NSLock *)self->_blockSettingLock unlock];
  return v17;
}

- (id)newArrayOfStreamIdsForPacket:(_VCMockIDSDatagramChannelPacket *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a3->var4.var4];
  if (a3->var4.var4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedShort:a3->var4.var5[v5]];
      [v4 addObject:v6];

      ++v5;
    }

    while (v5 < a3->var4.var4);
  }

  return v4;
}

- (BOOL)shouldReadPacket:(_VCMockIDSDatagramChannelPacket *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(VCMockIDSDatagramChannel *)self isControlChannelDatagram:?])
  {
    return 1;
  }

  if (!a3->var3)
  {
    goto LABEL_8;
  }

  if (!a3->var4.var4)
  {
    return 1;
  }

  if (a3->var4.var7)
  {
    v16 = 1;
    if ((a3->var4.var0 & 0x40) != 0)
    {
      self->_datagramOptionsCached.statsID = a3->var4.var7;
      self->_datagramOptionsCached.statsPayload.totalServerPacketSent = self->numPacketSent;
      self->_datagramOptionsCached.statsPayload.totalServerPacketReceived = self->numPacketReceived;
      self->_datagramOptionsCached.statsPayload.serverTimestamp = (micro() * 1000.0);
      self->_isServerStatsCached = 1;
      a3->var4.var7 = 0;
      a3->var4.var0 &= ~0x40u;
      a3->var4.var8.var4 = 0;
      *&a3->var4.var8.var0 = 0;
      v16 = 0;
    }
  }

  else
  {
LABEL_8:
    v16 = 1;
  }

  pthread_mutex_lock(&self->_streamSubscriptionLock);
  v5 = [(VCMockIDSDataChannelLinkContext *)self->_linkContext idsUPlusOneMode];
  v6 = [(VCMockIDSDatagramChannel *)self newArrayOfStreamIdsForPacket:a3];
  if (-[NSDictionary count](self->_subscribedStreamsByParticipantID, "count") && [v6 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_subscribedStreamsByParticipantID;
    v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(obj);
          }

          if (v5)
          {
            v5 = 1;
            goto LABEL_25;
          }

          v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:{-[NSDictionary objectForKeyedSubscript:](self->_subscribedStreamsByParticipantID, "objectForKeyedSubscript:", *(*(&v19 + 1) + 8 * i))}];
          [v11 intersectSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", v6)}];
          v12 = [v11 count];
          v5 = v12 != 0;
          if (v12 && (v16 & self->_isServerStatsCached) == 1 && a3->var3)
          {
            a3->var4.var0 |= 0x40u;
            a3->var4.var7 = self->_datagramOptionsCached.statsID;
            v13 = *&self->_datagramOptionsCached.statsPayload.serverTimestamp;
            a3->var4.var8.var4 = self->_datagramOptionsCached.statsPayload.uplinkBandwidth;
            *&a3->var4.var8.var0 = v13;
            self->_isServerStatsCached = 0;
          }
        }

        v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v19 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    [(VCMockIDSDatagramChannel *)v5 shouldReadPacket:?];
    v5 = v17;
  }

LABEL_25:

  pthread_mutex_unlock(&self->_streamSubscriptionLock);
  return v5;
}

- (void)dequeueDatagramPacket:(id)a3
{
  [(NSLock *)self->_blockSettingLock lock];
  while (self->_isValid)
  {
    v5 = VCSingleLinkedListPop(&self->_datagramPackets);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    [(VCMockIDSDatagramChannel *)self processPacket:v5 packetHandler:a3];
    CFAllocatorDeallocate(self->_datagramPacketAllocator, v6);
  }

  blockSettingLock = self->_blockSettingLock;

  [(NSLock *)blockSettingLock unlock];
}

- (BOOL)isVideoPacket:(char *)a3 length:(unint64_t)a4
{
  v4 = 0;
  if (a3 && a4 >= 2)
  {
    v5 = a3[1] & 0x7F;
    v9 = (v5 - 24) >= 0xAu;
    v6 = vdup_n_s16(v5);
    v7 = (v5 - 109);
    v8 = vmaxv_u16(vceq_s16(v6, 0x7C0064007E007BLL));
    v9 = v9 && v7 >= 2;
    v10 = !v9;
    v4 = v10 | v8;
  }

  return v4 & 1;
}

- (BOOL)isMediaPacket:(char *)a3 length:(unint64_t)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      return (*a3 & 0xC0) == 128;
    }
  }

  return result;
}

- (BOOL)isRTCPPacket:(char *)a3 length:(unint64_t)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      return (*a3 & 0xC0) == 64;
    }
  }

  return result;
}

- (BOOL)isNACKPacket:(char *)a3 length:(unint64_t)a4
{
  result = 0;
  v38 = *MEMORY[0x1E69E9840];
  if (a3 && a4)
  {
    if (a3[1] << 8 == 52480)
    {
      v7 = *(a3 + 1);
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v8 = VRTraceErrorLogLevelToCSTR();
        v9 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v10 = bswap32(*(a3 + 1));
          v11 = bswap32(*(a3 + 2));
          v12 = bswap32(*(a3 + 6));
          v13 = bswap32(*(a3 + 7));
          v14 = 136317954;
          v15 = v8;
          v16 = 2080;
          v17 = "[VCMockIDSDatagramChannel isNACKPacket:length:]";
          v18 = 1024;
          v19 = 599;
          v20 = 1024;
          v21 = v10;
          v22 = 1024;
          v23 = v10;
          v24 = 1024;
          v25 = v11;
          v26 = 1024;
          v27 = v11;
          v28 = 1024;
          v29 = HIWORD(v12);
          v30 = 1024;
          v31 = HIWORD(v12);
          v32 = 1024;
          v33 = HIWORD(v13);
          v34 = 2048;
          v35 = a4;
          v36 = 2048;
          v37 = bswap32(v7) >> 16;
          _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Generic NACK packet received, ssrc=%u ssrc_hex=%x source_ssrc=%u source_ssrc_hex=%x highestSeqNum=%d highestSeqNum_hex=%x bitMask=%x length passed=%zu length in pkt=%zu", &v14, 0x5Au);
        }
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)readDatagramWithCompletionHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCMockIDSDatagramChannel readDatagramWithCompletionHandler:]";
      v9 = 1024;
      v10 = 608;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: readDatagramWithCompletionHandler NOT SUPPORTED", &v5, 0x1Cu);
    }
  }
}

- (void)processWriteCompletionCallback:(id)a3 forDatagramWithSize:(unint64_t)a4 error:(id)a5
{
  [(NSLock *)self->_writeDirectPathIDSLock lock];
  if (a3)
  {
    (*(a3 + 2))(a3, a5);
  }

  else
  {
    sharedWriteCompletionHandler = self->_sharedWriteCompletionHandler;
    if (sharedWriteCompletionHandler)
    {
      sharedWriteCompletionHandler[2](sharedWriteCompletionHandler, a5, a4);
    }
  }

  writeDirectPathIDSLock = self->_writeDirectPathIDSLock;

  [(NSLock *)writeDirectPathIDSLock unlock];
}

- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 flags:(id)a5 completionHandler:(id)a6
{
  v12 = *MEMORY[0x1E69E9840];
  writeDatagramBlock = self->_writeDatagramBlock;
  if (writeDatagramBlock)
  {
    v10 = *(writeDatagramBlock + 2);

    v10();
  }

  else
  {
    v11 = 0;
    if (self->_dataPath == 1)
    {
      [(VCMockIDSDatagramChannel *)self processDirectIDSPathWithDatagram:a3 datagramSize:*&a4 datagramOptions:0 error:&v11];
    }

    else
    {
      [(VCMockIDSDatagramChannel *)self enqueueDatagramPacket:a3 datagramSize:*&a4 options:0 error:&v11];
    }

    [(VCMockIDSDatagramChannel *)self processWriteCompletionCallback:a6 forDatagramWithSize:a4 error:v11, v11, v12];
  }
}

- (void)readDatagramsWithCompletionHandler:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCMockIDSDatagramChannel readDatagramsWithCompletionHandler:]";
      v9 = 1024;
      v10 = 640;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: call to readDatagramsWithCompletionHandler NOT SUPPORTED", &v5, 0x1Cu);
    }
  }
}

- (void)writeDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramInfo:(id)a5 options:(id *)a6 completionHandler:(id)a7
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_isValid)
  {
    writeDatagramBlock = self->_writeDatagramBlock;
    if (writeDatagramBlock)
    {
      v11 = *(writeDatagramBlock + 2);

      v11();
    }

    else
    {
      v12 = 0;
      if (self->_dataPath == 1)
      {
        [+[VCMockRouter routeDatagram:a3]error:"routeDatagram:datagramSize:datagramOptions:fromDatagramChannel:error:", a3, *&a4, a6, self, &v12];
      }

      else
      {
        [(VCMockIDSDatagramChannel *)self enqueueDatagramPacket:a3 datagramSize:*&a4 options:a6 error:&v12];
      }

      [(VCMockIDSDatagramChannel *)self processWriteCompletionCallback:a7 forDatagramWithSize:a4 error:v12, v12, v13];
    }
  }
}

- (void)writeDatagrams:(const void *)a3 datagramsSize:(unsigned int *)a4 datagramsInfo:(id *)a5 datagramsCount:(int)a6 options:(id *)a7 completionHandler:(id)a8
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_isValid)
  {
    writeDatagramsBlock = self->_writeDatagramsBlock;
    if (writeDatagramsBlock)
    {
      v14 = *(writeDatagramsBlock + 2);

      v14();
    }

    else
    {
      v24 = 0;
      if (a6 < 1)
      {
        v23 = 0;
        v16 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = a6;
        do
        {
          v18 = a3[v15];
          v19 = a4[v15];
          v20 = a7[v15];
          if (self->_dataPath == 1)
          {
            v21 = [(VCMockIDSDatagramChannel *)self processDirectIDSPathWithDatagram:v18 datagramSize:v19 datagramOptions:v20 error:&v24];
          }

          else
          {
            v21 = [(VCMockIDSDatagramChannel *)self enqueueDatagramPacket:v18 datagramSize:v19 options:v20 error:&v24];
          }

          v16 += a4[v15++];
        }

        while (v21 && v15 < v17);
        v23 = v24;
      }

      [(VCMockIDSDatagramChannel *)self processWriteCompletionCallback:a8 forDatagramWithSize:v16 error:v23, v24, v25];
    }
  }
}

- (BOOL)processDirectIDSPathWithDatagram:(const void *)a3 datagramSize:(unsigned int)a4 datagramOptions:(id *)a5 error:(id *)a6
{
  v8 = *&a4;
  [(NSLock *)self->_writeDirectPathIDSLock lock];
  if (self->_isValid)
  {
    v11 = MEMORY[0x1E1288880](self->_datagramPacketAllocator, 1656, 0x1020040523C2829, 0);
    if (v11)
    {
      [(VCMockIDSDatagramChannel *)self constructPacket:v11 datagram:a3 datagramSize:v8 datagramOptions:a5];
LABEL_4:
      [VCMockIDSDatagramChannel processPacket:"processPacket:packetHandler:" packetHandler:?];
      [(NSLock *)self->_writeDirectPathIDSLock unlock];
      return 1;
    }

    if (!a6)
    {
      goto LABEL_4;
    }

    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Failed to allocate packet";
    goto LABEL_9;
  }

  if (a6)
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = @"Trying to process datagrams using invalidated VCMockIDSDatagramChannel";
LABEL_9:
    *a6 = [v13 AVConferenceServiceError:32000 detailCode:0 description:v14];
  }

  [(NSLock *)self->_writeDirectPathIDSLock unlock];
  return 0;
}

void __96__VCMockIDSDatagramChannel_processDirectIDSPathWithDatagram_datagramSize_datagramOptions_error___block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 && a3 && a4)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 3322304);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __96__VCMockIDSDatagramChannel_processDirectIDSPathWithDatagram_datagramSize_datagramOptions_error___block_invoke_2;
    v8[3] = &unk_1E85F8E50;
    v9 = v4;
    v12 = a3;
    v10 = a2;
    v11 = a4;
    dispatch_async(v5, v8);
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 192);

      CFAllocatorDeallocate(v7, v6);
    }
  }
}

void __96__VCMockIDSDatagramChannel_processDirectIDSPathWithDatagram_datagramSize_datagramOptions_error___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 36))
  {
    [v2 readDatagram:*(a1 + 48) datagramSize:*(a1 + 64) datagramOptions:*(a1 + 56)];
    v3 = *(a1 + 32);
    if (*(v3 + 184) >= 0x5DDuLL)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v4 = VRTraceErrorLogLevelToCSTR();
        v5 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v8 = 136315650;
          v9 = v4;
          v10 = 2080;
          v11 = "[VCMockIDSDatagramChannel processDirectIDSPathWithDatagram:datagramSize:datagramOptions:error:]_block_invoke_2";
          v12 = 1024;
          v13 = 736;
          _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Empyting _datagramPacketsDirectIDSPath for next set of packets", &v8, 0x1Cu);
        }
      }

      [*(*(a1 + 32) + 120) lock];
      [*(a1 + 32) flushDatagramPacketsListDIrectIDSPath];
      [*(*(a1 + 32) + 120) unlock];
      v3 = *(a1 + 32);
    }

    if ((VCSingleLinkedListPush(v3 + 160, *(a1 + 40)) & 1) == 0)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          __96__VCMockIDSDatagramChannel_processDirectIDSPathWithDatagram_datagramSize_datagramOptions_error___block_invoke_2_cold_1();
        }
      }

      CFAllocatorDeallocate(*(*(a1 + 32) + 192), *(a1 + 40));
    }
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(a1 + 40);

    CFAllocatorDeallocate(v6, v7);
  }
}

- (void)invalidate
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->_packetReceiveThread)
  {
    v3 = 0;
    atomic_compare_exchange_strong(&self->_isReceiveThreadTerminating, &v3, 1u);
    if (!v3)
    {
      VCRealTimeThread_Stop(self->_packetReceiveThread);
      VCRealTimeThread_Finalize(self->_packetReceiveThread);
    }
  }

  [(NSLock *)self->_blockSettingLock lock];
  [(NSLock *)self->_writeDirectPathIDSLock lock];
  if (self->_isValid)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136315650;
      v22 = v6;
      v23 = 2080;
      v24 = "[VCMockIDSDatagramChannel invalidate]";
      v25 = 1024;
      v26 = 767;
      v8 = " [%s] %s:%d Unit Test: Invalidating VCMockIDSDatagramChannel";
      v9 = v7;
      v10 = 28;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v4 = [(VCMockIDSDatagramChannel *)self performSelector:sel_logPrefix];
      }

      else
      {
        v4 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 5)
      {
        goto LABEL_19;
      }

      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      *buf = 136316162;
      v22 = v11;
      v23 = 2080;
      v24 = "[VCMockIDSDatagramChannel invalidate]";
      v25 = 1024;
      v26 = 767;
      v27 = 2112;
      v28 = v4;
      v29 = 2048;
      v30 = self;
      v8 = " [%s] %s:%d %@(%p) Unit Test: Invalidating VCMockIDSDatagramChannel";
      v9 = v12;
      v10 = 48;
    }

    _os_log_impl(&dword_1DB56E000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_19:
    self->_isValid = 0;
    if (self->_eventHandler)
    {
      linkContext = self->_linkContext;
      if (linkContext)
      {
        v14 = *MEMORY[0x1E69A4700];
        v20[0] = &unk_1F579B358;
        v15 = *MEMORY[0x1E69A46C0];
        v19[0] = v14;
        v19[1] = v15;
        v18 = linkContext;
        v20[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
        (*(self->_eventHandler + 2))();
      }
    }

    [(VCMockIDSDatagramChannel *)self cleanup];
    self->_isValid = 0;
    [(NSLock *)self->_writeDirectPathIDSLock unlock];
    [(NSLock *)self->_blockSettingLock unlock];
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v22 = v16;
        v23 = 2080;
        v24 = "[VCMockIDSDatagramChannel invalidate]";
        v25 = 1024;
        v26 = 781;
        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: Invalidated VCMockIDSDatagramChannel", buf, 0x1Cu);
      }
    }

    return;
  }

  [(NSLock *)self->_writeDirectPathIDSLock unlock];
  blockSettingLock = self->_blockSettingLock;

  [(NSLock *)blockSettingLock unlock];
}

- (void)start
{
  if (self->_packetReceiveThread)
  {
    self->_isReceiveThreadTerminating = 0;
    VCRealTimeThread_Start(self->_packetReceiveThread);
  }
}

- (id)encryptionInfoEventWithIsLocalKey:(BOOL)a3
{
  v3 = a3;
  v14[6] = *MEMORY[0x1E69E9840];
  v5 = CFPreferencesCopyAppValue(@"mockDatagramChannelRemoteParticipantID", @"com.apple.VideoConference");
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [NetworkUtils encryptionInfoForKey:v6];
  v8 = *MEMORY[0x1E69A4700];
  v14[0] = &unk_1F579B370;
  v9 = *MEMORY[0x1E69A5008];
  v13[0] = v8;
  v13[1] = v9;
  v14[1] = [v7 objectForKeyedSubscript:?];
  v13[2] = *MEMORY[0x1E69A5010];
  v14[2] = [v7 objectForKeyedSubscript:?];
  v13[3] = *MEMORY[0x1E69A5000];
  v14[3] = [v7 objectForKeyedSubscript:?];
  v13[4] = *MEMORY[0x1E69A4FF8];
  v14[4] = [MEMORY[0x1E696AD98] numberWithBool:v3];
  v13[5] = *MEMORY[0x1E69A5028];
  v14[5] = [(VCMockIDSDatagramChannel *)self shortMKIPrefixLength];
  v10 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:{6), "mutableCopy"}];
  v11 = v10;
  if (v5)
  {
    [v10 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69A5020]];
  }

  return v11;
}

- (void)setEventHandler:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = [(VCMockIDSDatagramChannel *)self encryptionInfoEventWithIsLocalKey:1];
  v6 = [(VCMockIDSDatagramChannel *)self encryptionInfoEventWithIsLocalKey:0];
  (*(a3 + 2))(a3, v5);
  (*(a3 + 2))(a3, v6);
  linkContext = self->_linkContext;
  if (linkContext)
  {
    v8 = *MEMORY[0x1E69A4700];
    v13[0] = &unk_1F579B388;
    v9 = *MEMORY[0x1E69A46B0];
    v12[0] = v8;
    v12[1] = v9;
    v11 = linkContext;
    v13[1] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    (*(a3 + 2))(a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2]);
  }

  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    CFRelease(eventHandler);
    self->_eventHandler = 0;
  }

  self->_eventHandler = [a3 copy];
}

- (void)setWriteCompletionHandler:(id)a3
{
  sharedWriteCompletionHandler = self->_sharedWriteCompletionHandler;
  if (sharedWriteCompletionHandler)
  {
    CFRelease(sharedWriteCompletionHandler);
    self->_sharedWriteCompletionHandler = 0;
  }

  self->_sharedWriteCompletionHandler = [a3 copy];
}

- (void)setReadHandler:(id)a3
{
  readHandler = self->_readHandler;
  if (readHandler)
  {
    CFRelease(readHandler);
    self->_readHandler = 0;
  }

  self->_readHandler = [a3 copy];
}

- (void)setReadHandlerWithOptions:(id)a3
{
  readHandlerWithOptions = self->_readHandlerWithOptions;
  if (readHandlerWithOptions)
  {
    CFRelease(readHandlerWithOptions);
    self->_readHandlerWithOptions = 0;
  }

  self->_readHandlerWithOptions = [a3 copy];
}

- (id)shortMKIPrefixLength
{
  if (self->_isShortMKIEnabled)
  {
    return &unk_1F579B3A0;
  }

  else
  {
    return &unk_1F579B3B8;
  }
}

- (void)setChannelPreferences:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a3 objectForKeyedSubscript:*MEMORY[0x1E69A4750]])
  {
    v4 = [(VCMockIDSDatagramChannel *)self encryptionInfoEventWithIsLocalKey:1];
    [(VCMockIDSDatagramChannel *)self encryptionInfoEventWithIsLocalKey:0];
    eventHandler = self->_eventHandler;
    if (eventHandler)
    {
      eventHandler[2](eventHandler, v4);
      (*(self->_eventHandler + 2))();
    }
  }

  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCMockIDSDatagramChannel setChannelPreferences:]";
      v12 = 1024;
      v13 = 858;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: call to setChannelPreferences", &v8, 0x1Cu);
    }
  }
}

- (void)requestSessionInfoWithOptions:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E696ABC0]);
  v6 = *MEMORY[0x1E69A4A18];
  v48 = *MEMORY[0x1E696A588];
  v49[0] = @"Could not serialize provided metadata.";
  v7 = 0x1E695D000uLL;
  v8 = [v5 initWithDomain:v6 code:8 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v49, &v48, 1)}];
  pthread_mutex_lock(&self->_streamSubscriptionLock);

  v9 = *MEMORY[0x1E69A4B28];
  if ([a3 objectForKeyedSubscript:*MEMORY[0x1E69A4B28]] && (v10 = objc_msgSend(a3, "objectForKeyedSubscript:", v9), objc_msgSend(v10, "objectForKeyedSubscript:", *MEMORY[0x1E69A4A10])))
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  else
  {
    v11 = [a3 objectForKeyedSubscript:v9];
  }

  self->_subscribedStreamsByParticipantID = v11;
  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v13 = [(NSDictionary *)self->_subscribedStreamsByParticipantID allValues];
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v44 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v30 = v8;
    v16 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        [v12 addObjectsFromArray:v18];
        v19 = [v18 containsObject:&unk_1F579B3B8];
      }

      v20 = v19;
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v44 objects:v43 count:16];
    }

    while (v15);
    v7 = 0x1E695D000;
    v8 = v30;
  }

  else
  {
    v20 = 0;
  }

  v21 = [(NSDictionary *)self->_subscribedStreamsByParticipantID count];
  v22 = [(NSDictionary *)self->_subscribedStreamsByParticipantID count];
  pthread_mutex_unlock(&self->_streamSubscriptionLock);
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    v24 = *MEMORY[0x1E69A4700];
    if (!v21 || ((v22 == 1) & v20) != 0)
    {
      v27 = *MEMORY[0x1E69A46C8];
      v41[0] = *MEMORY[0x1E69A4700];
      v41[1] = v27;
      v42[0] = &unk_1F579B3D0;
      v42[1] = v8;
      eventHandler[2](eventHandler, [*(v7 + 3872) dictionaryWithObjects:v42 forKeys:v41 count:2]);
      if (VRTraceGetErrorLogLevelForModule() >= 5)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v36 = v28;
          v37 = 2080;
          v38 = "[VCMockIDSDatagramChannel requestSessionInfoWithOptions:]";
          v39 = 1024;
          v40 = 891;
          _os_log_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: call to requestSessionInfoWithOptions only supported for stream subscription updates", buf, 0x1Cu);
        }
      }
    }

    else
    {
      v34[0] = &unk_1F579B3D0;
      v25 = *MEMORY[0x1E69A46F0];
      v33[0] = v24;
      v33[1] = v25;
      v31[0] = *MEMORY[0x1E69A4A88];
      v26 = MEMORY[0x1E696AD98];
      ++self->_participantGenerationCounter;
      v32[0] = [v26 numberWithInteger:?];
      v31[1] = *MEMORY[0x1E69A4AA0];
      v32[1] = [v12 allObjects];
      v34[1] = [*(v7 + 3872) dictionaryWithObjects:v32 forKeys:v31 count:2];
      eventHandler[2](eventHandler, [*(v7 + 3872) dictionaryWithObjects:v34 forKeys:v33 count:2]);
    }
  }
}

- (void)reportFirstPacketTimeForMKI:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = v3;
      v7 = 2080;
      v8 = "[VCMockIDSDatagramChannel reportFirstPacketTimeForMKI:]";
      v9 = 1024;
      v10 = 903;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Unit Test: call to reportFirstPacketTimeForMKI NOT SUPPORTED", &v5, 0x1Cu);
    }
  }
}

- (BOOL)createSocketWithSourcePort:(signed __int16)a3
{
  v4 = [NetworkUtils socketWithIPAddress:@"127.0.0.1" srcPort:a3 shouldConnect:1 error:0];
  self->_socket = v4;
  if (v4 == -1 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMockIDSDatagramChannel createSocketWithSourcePort:];
    }
  }

  return v4 != -1;
}

- (int)underlyingFileDescriptor
{
  v15 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() > 5)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      socket = self->_socket;
      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "[VCMockIDSDatagramChannel underlyingFileDescriptor]";
      v11 = 1024;
      v12 = 917;
      v13 = 1024;
      v14 = socket;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Returning underlyingFD %d", &v7, 0x22u);
    }
  }

  return self->_socket;
}

- (int)drainUnderlyingFileDescriptor
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = -1431655766;
  v2 = recv(self->_socket, &v4, 4uLL, 0);
  if (v2 < 0 && VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCMockIDSDatagramChannel drainUnderlyingFileDescriptor];
    }
  }

  return v2;
}

- (int)readyToRead
{
  v5[5] = *MEMORY[0x1E69E9840];
  readyToReadBlock = self->_readyToReadBlock;
  if (readyToReadBlock)
  {
    readyToReadBlock[2](readyToReadBlock, self->_readHandlerWithOptions);
  }

  else if (([(VCMockIDSDatagramChannel *)self drainUnderlyingFileDescriptor]& 0x80000000) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __39__VCMockIDSDatagramChannel_readyToRead__block_invoke;
    v5[3] = &unk_1E85F8EA0;
    v5[4] = self;
    [(VCMockIDSDatagramChannel *)self dequeueDatagramPacket:v5];
  }

  return 0;
}

- (_VCMockIDSDatagramChannelPacket)constructPacket:(_VCMockIDSDatagramChannelPacket *)a3 datagram:(const void *)a4 datagramSize:(unsigned int)a5 datagramOptions:(id *)a6
{
  v9 = a5;
  memcpy(a3->var1, a4, a5);
  a3->var2 = v9;
  if (a6 && !self->_usingOptions)
  {
    a3->var3 = 1;
    v10 = *&a6->var0;
    v11 = *&a6->var2;
    v12 = *&a6->var8.var0;
    *&a3->var4.var5[6] = *&a6->var5[6];
    *&a3->var4.var8.var0 = v12;
    *&a3->var4.var0 = v10;
    *&a3->var4.var2 = v11;
    v13 = *&a6->var9;
    v14 = *&a6->var11;
    v15 = *a6->var13;
    *&a3->var4.var14 = *&a6->var14;
    *&a3->var4.var11 = v14;
    *a3->var4.var13 = v15;
    *&a3->var4.var9 = v13;
  }

  else
  {
    a3->var3 = 0;
  }

  datagramPacketNextSequenceNumber = self->_datagramPacketNextSequenceNumber;
  self->_datagramPacketNextSequenceNumber = datagramPacketNextSequenceNumber + 1;
  a3->var5 = datagramPacketNextSequenceNumber;
  return a3;
}

- (void)printDroppedPacketInfo:(_VCMockIDSDatagramChannelPacket *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  if ([(VCMockIDSDatagramChannel *)self isNACKPacket:a3->var1 length:a3->var2])
  {
    v5 = *&a3->var1[2];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v8 = bswap32(*&a3->var1[4]);
        v9 = bswap32(*&a3->var1[8]);
        v10 = bswap32(*&a3->var1[12]);
        v11 = bswap32(*&a3->var1[14]);
        var2 = a3->var2;
        *buf = 136317954;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = "[VCMockIDSDatagramChannel printDroppedPacketInfo:]";
        *&buf[22] = 1024;
        *&buf[24] = 962;
        *&buf[28] = 1024;
        *&buf[30] = v8;
        *&buf[34] = 1024;
        *&buf[36] = v8;
        *&buf[40] = 1024;
        *&buf[42] = v9;
        *&buf[46] = 1024;
        *&buf[48] = v9;
        *&buf[52] = 1024;
        *&buf[54] = HIWORD(v10);
        *&buf[58] = 1024;
        *&buf[60] = HIWORD(v10);
        LOWORD(v30) = 1024;
        *(&v30 + 2) = HIWORD(v11);
        WORD3(v30) = 2048;
        *(&v30 + 1) = var2;
        LOWORD(v31) = 2048;
        *(&v31 + 2) = bswap32(v5) >> 16;
        v13 = " [%s] %s:%d Unit Test: emulating loss by dropping packet GGeneric NACK packet received, ssrc=%u ssrc_hex=%x source_ssrc=%u source_ssrc_hex=%x highestSeqNum=%d highestSeqNum_hex=%x bitMask=%x length passed=%zu length in pkt=%zu";
        v14 = v7;
        v15 = 90;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else if ([(VCMockIDSDatagramChannel *)self isVideoPacket:a3->var1 length:a3->var2])
  {
    v16 = a3->var2;
    v17 = *&a3->var4.var11;
    v30 = *&a3->var4.var9;
    v31 = v17;
    v32 = *a3->var4.var13;
    v33 = *&a3->var4.var14;
    v18 = *&a3->var4.var2;
    *buf = *&a3->var4.var0;
    *&buf[16] = v18;
    v19 = *&a3->var4.var8.var0;
    *&buf[32] = *&a3->var4.var5[6];
    *&buf[48] = v19;
    [(VCMockIDSDatagramChannel *)self addMediaPacketToBuffer:a3->var1 length:v16 datagramOptions:buf];
    if (a3->var2 >= 0xC)
    {
      v28 = 0;
      v27 = 0;
      [VCMockIDSDatagramChannel extractRTPData:a3->var1 ssrc:&v27 sequenceNumber:&v28];
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v20 = VRTraceErrorLogLevelToCSTR();
        v21 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          emulatedRxPLR = self->_emulatedRxPLR;
          var14 = a3->var4.var14;
          v24 = a3->var2;
          *buf = 136316930;
          *&buf[4] = v20;
          *&buf[12] = 2080;
          *&buf[14] = "[VCMockIDSDatagramChannel printDroppedPacketInfo:]";
          *&buf[22] = 1024;
          *&buf[24] = 969;
          *&buf[28] = 2048;
          *&buf[30] = emulatedRxPLR;
          *&buf[38] = 1024;
          *&buf[40] = v27;
          *&buf[44] = 1024;
          *&buf[46] = v28;
          *&buf[50] = 1024;
          *&buf[52] = var14;
          *&buf[56] = 1024;
          *&buf[58] = v24;
          v13 = " [%s] %s:%d Unit Test: emulating loss by dropping packet _emulatedRxPLR=%f ssrc=%u seqNum=%hu retransmittedPacket=%d dataLength=%d";
          v14 = v21;
          v15 = 62;
          goto LABEL_13;
        }
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = "[VCMockIDSDatagramChannel printDroppedPacketInfo:]";
      *&buf[22] = 1024;
      *&buf[24] = 972;
      v13 = " [%s] %s:%d Unit Test: emulating loss by dropping packet";
      v14 = v26;
      v15 = 28;
      goto LABEL_13;
    }
  }
}

- (void)processPacket:(_VCMockIDSDatagramChannelPacket *)a3 packetHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (0xAF8AF8AF8AF8AF8BLL * a3->var5 <= 0x750750750750750)
  {
    [+[VCTestMonitorManager sharedManager](VCTestMonitorManager "sharedManager")];
    self->_emulatedRxPLR = v7;
  }

  if (a3->var3)
  {
    v8 = (LOWORD(a3->var4.var0) >> 2) & 1;
  }

  else
  {
    LOWORD(v8) = 0;
  }

  self->numPacketSent += v8;
  v9 = [(VCMockIDSDatagramChannel *)self isNACKPacket:a3->var1 length:a3->var2];
  v10 = !v9 && !a3->var4.var14 || !self->_doNotDropNackOrRetransmitted;
  emulatedRxPLR = self->_emulatedRxPLR;
  if (emulatedRxPLR > *"" && arc4random_uniform(0xFFFFu) / 65535.0 <= emulatedRxPLR && v10)
  {
    v12 = 1;
  }

  else
  {
    self->numPacketReceived += v8;
    if (v9 && self->_isNackEnabled)
    {
      [(VCMockIDSDatagramChannel *)self retrieveAndProcessMediaPacketsFromBuffer:a3->var1 packetHandler:a4];
    }

    else if ([(VCMockIDSDatagramChannel *)self isVideoPacket:a3->var1 length:a3->var2])
    {
      var2 = a3->var2;
      v14 = *&a3->var4.var11;
      v17[4] = *&a3->var4.var9;
      v17[5] = v14;
      v17[6] = *a3->var4.var13;
      v18 = *&a3->var4.var14;
      v15 = *&a3->var4.var2;
      v17[0] = *&a3->var4.var0;
      v17[1] = v15;
      v16 = *&a3->var4.var8.var0;
      v17[2] = *&a3->var4.var5[6];
      v17[3] = v16;
      [(VCMockIDSDatagramChannel *)self addMediaPacketToBuffer:a3->var1 length:var2 datagramOptions:v17];
    }

    if (self->_isSourceParticipantIDOnFanOutPacketsEnabled && a3->var3 && a3->var4.var4 >= 1)
    {
      [(VCMockIDSDatagramChannel *)self setParticipantIDOnOptions:&a3->var4];
    }

    v12 = 0;
  }

  [(VCMockIDSDatagramChannel *)self handlePacket:a3 packetHandler:a4 shouldDropThisPacket:v12];
}

- (void)addMediaPacketToBuffer:(char *)a3 length:(unint64_t)a4 datagramOptions:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_isNackEnabled)
  {
    v21 = 0;
    v20 = 0;
    [VCMockIDSDatagramChannel extractRTPData:a3 ssrc:&v20 sequenceNumber:&v21];
    v9 = v21 & 0x1FF | ((v20 & 3) << 9);
    if (a4 > 0x5DB)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v17 = VRTraceErrorLogLevelToCSTR();
        v18 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316674;
          v23 = v17;
          v24 = 2080;
          v25 = "[VCMockIDSDatagramChannel addMediaPacketToBuffer:length:datagramOptions:]";
          v26 = 1024;
          v27 = 1030;
          v28 = 2048;
          v29 = v9;
          v30 = 1024;
          v31 = v20;
          v32 = 1024;
          v33 = v21;
          v34 = 2048;
          v35 = a4;
          _os_log_error_impl(&dword_1DB56E000, v18, OS_LOG_TYPE_ERROR, " [%s] %s:%d IGNORING! Add media packet to the buffer at index=%llu for ssrc=%u and seqNum=%u length=%zu", buf, 0x3Cu);
        }
      }
    }

    else
    {
      v19 = 0;
      *buf = 0;
      [VCMockIDSDatagramChannel extractRTPData:self->_packetBuffer[v9] ssrc:buf sequenceNumber:&v19];
      if (*buf != v20 || v21 != v19)
      {
        memcpy(self->_packetBuffer[v9], a3, a4);
        self->_packetBufferDataSize[v9] = a4;
        v10 = &self->_packetDatagramOptions[v9];
        v11 = *&a5->var8.var0;
        v13 = *&a5->var0;
        v12 = *&a5->var2;
        *&v10->streamIDs[6] = *&a5->var5[6];
        *&v10->statsPayload.serverTimestamp = v11;
        *&v10->options_flags = v13;
        *&v10->probeGroupID = v12;
        v15 = *&a5->var11;
        v14 = *a5->var13;
        v16 = *&a5->var9;
        *&v10->retransmittedPacket = *&a5->var14;
        *&v10->encryptedHBH = v15;
        *v10->packetUUID = v14;
        *&v10->arrivalTime = v16;
      }
    }
  }
}

- (void)retrieveAndProcesOnePacket:(unsigned int)a3 seq:(unsigned __int16)a4 count:(int)a5 index:(int)a6
{
  v7 = a4;
  v75 = *MEMORY[0x1E69E9840];
  v9 = a4 & 0x1FF | ((a3 & 3) << 9);
  if (!self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136316674;
    v44 = v17;
    v45 = 2080;
    v46 = "[VCMockIDSDatagramChannel retrieveAndProcesOnePacket:seq:count:index:]";
    v47 = 1024;
    v48 = 1067;
    v49 = 2048;
    v50 = v9;
    v51 = 1024;
    v52 = a3;
    v53 = 1024;
    v54 = v7;
    v55 = 1024;
    v56 = a6;
    v19 = " [%s] %s:%d RTX/NACK Retrieval failed because _packetBuffer[packetBufferIndex=%llu = nil for ssrc=%u and highest=%u index=%d";
    v20 = v18;
    v21 = 56;
LABEL_22:
    _os_log_error_impl(&dword_1DB56E000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    return;
  }

  v12 = self->_packetBufferDataSize[v9];
  v42 = 0;
  v41 = 0;
  [VCMockIDSDatagramChannel extractRTPData:self->_packetBuffer[v9] ssrc:&v41 sequenceNumber:&v42];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318978;
      v44 = v13;
      v45 = 2080;
      v46 = "[VCMockIDSDatagramChannel retrieveAndProcesOnePacket:seq:count:index:]";
      v47 = 1024;
      v48 = 1042;
      v49 = 2048;
      v50 = v9;
      v51 = 1024;
      v52 = a3;
      v53 = 1024;
      v54 = a3;
      v55 = 1024;
      v56 = v7;
      v57 = 1024;
      v58 = v7;
      v59 = 1024;
      v60 = a5;
      v61 = 1024;
      v62 = v41;
      v63 = 1024;
      v64 = v41;
      v65 = 1024;
      v66 = v42;
      v67 = 1024;
      v68 = v42;
      v69 = 1024;
      v70 = v12;
      v71 = 1024;
      v72 = v9;
      v73 = 1024;
      v74 = a6;
      _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTX/NACK: Retrieve media packet from buffer at index=%llu for ssrc=%u ssrc_hex=%x and seq=%u seq_hex=%x nCount=%u cached_ssrc2=%u cached_ssrc_hex=%x cached_seqNum2=%u cached_seqNum2=%x packetLen=%u packetBufferIndex=%d index=%d", buf, 0x6Eu);
    }
  }

  if (v12 >= 0x5DD)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136318978;
        v44 = v15;
        v45 = 2080;
        v46 = "[VCMockIDSDatagramChannel retrieveAndProcesOnePacket:seq:count:index:]";
        v47 = 1024;
        v48 = 1044;
        v49 = 2048;
        v50 = v9;
        v51 = 1024;
        v52 = a3;
        v53 = 1024;
        v54 = a3;
        v55 = 1024;
        v56 = v7;
        v57 = 1024;
        v58 = v7;
        v59 = 1024;
        v60 = a5;
        v61 = 1024;
        v62 = v41;
        v63 = 1024;
        v64 = v41;
        v65 = 1024;
        v66 = v42;
        v67 = 1024;
        v68 = v42;
        v69 = 1024;
        v70 = v12;
        v71 = 1024;
        v72 = v9;
        v73 = 1024;
        v74 = a6;
        _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTX/NACK: INVALID PACKET LEN cached packet does not match with NACK ssrc and seq num index=%llu for ssrc=%u ssrc_hex=%x and seq_hex=%u seq_hex=%x nCount=%u ssrc2=%u ssrc2_hex=%x seqNum2=%u seqNum2_hex=%x packetLen=%u packetBufferIndex=%d index=%d", buf, 0x6Eu);
      }
    }

    return;
  }

  v22 = v42;
  v23 = v41;
  ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
  if (v22 != v7 || v23 != a3)
  {
    if (ErrorLogLevelForModule < 3)
    {
      return;
    }

    v29 = VRTraceErrorLogLevelToCSTR();
    v30 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136318978;
    v44 = v29;
    v45 = 2080;
    v46 = "[VCMockIDSDatagramChannel retrieveAndProcesOnePacket:seq:count:index:]";
    v47 = 1024;
    v48 = 1046;
    v49 = 2048;
    v50 = v9;
    v51 = 1024;
    v52 = a3;
    v53 = 1024;
    v54 = a3;
    v55 = 1024;
    v56 = v7;
    v57 = 1024;
    v58 = v7;
    v59 = 1024;
    v60 = a5;
    v61 = 1024;
    v62 = v41;
    v63 = 1024;
    v64 = v41;
    v65 = 1024;
    v66 = v42;
    v67 = 1024;
    v68 = v42;
    v69 = 1024;
    v70 = v12;
    v71 = 1024;
    v72 = v9;
    v73 = 1024;
    v74 = a6;
    v19 = " [%s] %s:%d RTX/NACK: INVALID PACKET NACK packet does not match with cached ssrc and seqnum index=%llu for ssrc=%u ssrc_hex=%x and seq=%u seq_hex=%x nCount=%u cached_ssrc2=%u cached_ssrc2_hex=%x cached_seqNum2=%u cached_seqNum2_hex=%x packetLen=%u packetBufferIndex=%d index=%d";
    v20 = v30;
    v21 = 110;
    goto LABEL_22;
  }

  if (ErrorLogLevelForModule >= 7)
  {
    v25 = VRTraceErrorLogLevelToCSTR();
    v26 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318978;
      v44 = v25;
      v45 = 2080;
      v46 = "[VCMockIDSDatagramChannel retrieveAndProcesOnePacket:seq:count:index:]";
      v47 = 1024;
      v48 = 1048;
      v49 = 2048;
      v50 = v9;
      v51 = 1024;
      v52 = a3;
      v53 = 1024;
      v54 = a3;
      v55 = 1024;
      v56 = v7;
      v57 = 1024;
      v58 = v7;
      v59 = 1024;
      v60 = a5;
      v61 = 1024;
      v62 = v41;
      v63 = 1024;
      v64 = v41;
      v65 = 1024;
      v66 = v42;
      v67 = 1024;
      v68 = v42;
      v69 = 1024;
      v70 = v12;
      v71 = 1024;
      v72 = v9;
      v73 = 1024;
      v74 = a6;
      _os_log_impl(&dword_1DB56E000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTX/NACK: successfully retrieved packet num index=%llu for ssrc=%u ssrc_hex=%x and seq=%u seq_hex=%x nCount=%u cached_ssrc2=%u cached_ssrc2_hex=%x cached_seqNum2=%u cached_seqNum2=%x packetLen=%u packetBufferIndex=%d index=%d", buf, 0x6Eu);
    }
  }

  v27 = &self->_packetDatagramOptions[v9];
  v27->options_flags |= 0x10000u;
  v27->retransmittedPacket = 1;
  v36 = 0;
  v37 = 0;
  directPathRTXQueue = self->_directPathRTXQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__VCMockIDSDatagramChannel_retrieveAndProcesOnePacket_seq_count_index___block_invoke;
  block[3] = &unk_1E85F8BB0;
  block[4] = self;
  block[5] = v9;
  v38 = v7;
  v32 = a3;
  v33 = a5;
  v39 = v42;
  v40 = v12;
  v34 = v41;
  v35 = a6;
  dispatch_async(directPathRTXQueue, block);
}

_BYTE *__71__VCMockIDSDatagramChannel_retrieveAndProcesOnePacket_seq_count_index___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result[36] == 1)
  {
    v3 = *(a1 + 40);
    v4 = *&result[2 * v3 + 3072314];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __71__VCMockIDSDatagramChannel_retrieveAndProcesOnePacket_seq_count_index___block_invoke_2;
    v6[3] = &__block_descriptor_62_e17_v16__0__NSError_8l;
    v6[4] = v3;
    v7 = *(a1 + 48);
    v5 = *(a1 + 74);
    v8 = *(a1 + 52);
    v11 = *(a1 + 78);
    v9 = *(a1 + 60);
    v10 = v5;
    return [result writeDatagram:&result[1500 * v3 + 313] datagramSize:v4 datagramInfo:*(a1 + 64) options:*(a1 + 72) completionHandler:{&result[120 * v3 + 3076416], v6}];
  }

  return result;
}

void __71__VCMockIDSDatagramChannel_retrieveAndProcesOnePacket_seq_count_index___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a2 && VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 56);
      v8 = *(a1 + 40);
      v9 = *(a1 + 44);
      v10 = *(a1 + 58);
      v11 = *(a1 + 60);
      v12 = *(a1 + 48);
      v13 = *(a1 + 52);
      v14 = 136319234;
      v15 = v4;
      v16 = 2080;
      v17 = "[VCMockIDSDatagramChannel retrieveAndProcesOnePacket:seq:count:index:]_block_invoke_2";
      v18 = 1024;
      v19 = 1061;
      v20 = 2048;
      v21 = v6;
      v22 = 1024;
      v23 = v8;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = v7;
      v28 = 1024;
      v29 = v7;
      v30 = 1024;
      v31 = v9;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v12;
      v36 = 1024;
      v37 = v10;
      v38 = 1024;
      v39 = v10;
      v40 = 1024;
      v41 = v11;
      v42 = 1024;
      v43 = v6;
      v44 = 1024;
      v45 = v13;
      v46 = 2112;
      v47 = a2;
      _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d RTX/NACK: DATAGRAM WRITE FAILED index=%llu for ssrc=%u ssrc_hex=%x and seq_hex=%u seq_hex=%x nCount=%u ssrc2=%u ssrc2_hex=%x seqNum2=%u seqNum2_hex=%x packetLen=%u packetBufferIndex=%d index=%d error=%@", &v14, 0x78u);
    }
  }
}

- (void)retrieveAndProcessMediaPacketsFromBuffer:(tagRTCPPACKET *)a3 packetHandler:(id)a4
{
  var0 = a3->var0;
  v6 = a3->var1.var6.var1[3];
  v7 = bswap32(a3->var1.var0.var1);
  v8 = bswap32(a3->var1.var6.var1[2]) >> 16;
  [(VCMockIDSDatagramChannel *)self retrieveAndProcesOnePacket:v7 seq:v8 count:*&a3->var0 & 0x1F index:0];
  if (v6)
  {
    v9 = __rev16(v6);
    v10 = 1;
    do
    {
      if (v9)
      {
        [(VCMockIDSDatagramChannel *)self retrieveAndProcesOnePacket:v7 seq:(v8 + v10) count:var0 & 0x1F index:v10];
      }

      v11 = v9;
      v9 >>= 1;
      v10 = (v10 + 1);
    }

    while (v11 > 1);
  }
}

- (void)handlePacket:(_VCMockIDSDatagramChannelPacket *)a3 packetHandler:(id)a4 shouldDropThisPacket:(BOOL)a5
{
  if (a5)
  {
    [(VCMockIDSDatagramChannel *)self printDroppedPacketInfo:a3];
  }

  else
  {
    if (!a3->var3)
    {
      goto LABEL_8;
    }

    if ([(VCMockIDSDatagramChannel *)self shouldReadPacket:a3])
    {
      var2_low = LODWORD(a3->var2);
      v7 = *(a4 + 2);
      var1 = a3->var1;
      p_var4 = &a3->var4;
      v8 = a4;
      goto LABEL_10;
    }

    if (!a3->var3)
    {
LABEL_8:
      var2_low = LODWORD(a3->var2);
      v7 = *(a4 + 2);
      var1 = a3->var1;
      v8 = a4;
      goto LABEL_9;
    }
  }

  v7 = *(a4 + 2);
  v8 = a4;
  var1 = 0;
  var2_low = 0;
LABEL_9:
  p_var4 = 0;
LABEL_10:

  v7(v8, var1, var2_low, p_var4);
}

- (void)setUPlusOneMode:(BOOL)a3 isInitiator:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  [(VCMockIDSDataChannelLinkContext *)self->_linkContext setIdsUPlusOneMode:?];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136316162;
      v9 = v6;
      v10 = 2080;
      v11 = "[VCMockIDSDatagramChannel setUPlusOneMode:isInitiator:]";
      v12 = 1024;
      v13 = 1142;
      v14 = 1024;
      v15 = v5;
      v16 = 1024;
      v17 = v4;
      _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d setUPlusOneMode: isUPlusOneEnabled=%d isInitiator=%d", &v8, 0x28u);
    }
  }
}

- (void)setParticipantIDOnOptions:(id *)a3
{
  if ([(NSArray *)[(NSDictionary *)self->_subscribedStreamsByParticipantID allKeys] count])
  {
    v5 = [-[NSArray objectAtIndexedSubscript:](-[NSDictionary allKeys](self->_subscribedStreamsByParticipantID "allKeys")];
    v6 = 3735928559;
    if (!self->_isWrongParticipantIDOnFanOutPacketsEnabled)
    {
      v6 = v5;
    }

    a3->var1 = v6;
    a3->var0 |= 1u;
  }
}

- (void)setupMockIDSDatagramChannelRequiresOptions:sourcePort:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupMockIDSDatagramChannelRequiresOptions:sourcePort:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupMockIDSDatagramChannelRequiresOptions:sourcePort:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupMockIDSDatagramChannelRequiresOptions:sourcePort:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupMockIDSDatagramChannelRequiresOptions:sourcePort:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)setupMockIDSDatagramChannelRequiresOptions:sourcePort:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_28())
    {
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }

  OUTLINED_FUNCTION_18();
}

- (void)initRequiresOptions:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  v4 = v0;
  OUTLINED_FUNCTION_6();
  v5 = 263;
  v6 = 2048;
  v7 = v1;
  _os_log_debug_impl(&dword_1DB56E000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d VCMockIDSDatagramChannel=%p created", v3, 0x26u);
}

- (void)initCreateSocketRequiresOptions:dataPath:destination:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
    }
  }
}

- (void)initCreateSocketRequiresOptions:(int)a1 dataPath:destination:.cold.2(int a1)
{
  if (a1 >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v1, v2, v3, v4, v5, 0x22u);
    }
  }
}

- (void)initCreateSocketRequiresOptions:dataPath:destination:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)initCreateSocketRequiresOptions:dataPath:destination:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_9_0();
      _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
    }
  }
}

- (void)enqueueDatagramPacket:datagramSize:options:error:.cold.1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)shouldReadPacket:(char)a1 .cold.1(char a1, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (VRTraceGetErrorLogLevelForModule() >= 8)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x1E6986650];
    v6 = *MEMORY[0x1E6986650];
    if (*MEMORY[0x1E6986640] == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136315650;
        v8 = v4;
        OUTLINED_FUNCTION_0();
        v9 = 516;
        _os_log_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Trying to filter packet when there is either no stream subscription or packet's streamID isnt set", &v7, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315650;
      v8 = v4;
      OUTLINED_FUNCTION_0();
      v9 = 516;
      _os_log_debug_impl(&dword_1DB56E000, v5, OS_LOG_TYPE_DEBUG, " [%s] %s:%d Trying to filter packet when there is either no stream subscription or packet's streamID isnt set", &v7, 0x1Cu);
    }
  }

  *a2 = a1 & 1;
}

void __96__VCMockIDSDatagramChannel_processDirectIDSPathWithDatagram_datagramSize_datagramOptions_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)createSocketWithSourcePort:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

- (void)drainUnderlyingFileDescriptor
{
  __error();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

@end