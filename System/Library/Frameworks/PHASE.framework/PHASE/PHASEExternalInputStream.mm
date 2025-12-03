@interface PHASEExternalInputStream
+ (void)streamWithEngine:(id)engine definition:(id)definition startsPaused:(BOOL)paused delegate:(id)delegate receiverBlock:(id)block callback:(id)callback;
+ (void)streamWithEngine:(id)engine uuid:(id)uuid definition:(id)definition startsPaused:(BOOL)paused delegate:(id)delegate receiverBlock:(id)block callback:(id)callback;
- (BOOL)registerMutedSpeechActivityNotification:(id)notification outError:(id *)error;
- (PHASEExternalInputStream)init;
- (PHASEExternalInputStream)initWithStreamGroupUUID:(id)d streamUUID:(id)iD engine:(id)engine streamDefinition:(id)definition startsPaused:(BOOL)paused delegate:(id)delegate receiverBlock:(id)block;
- (void)setMute:(BOOL)mute;
- (void)unregisterMutedSpeechActivityNotification;
@end

@implementation PHASEExternalInputStream

- (PHASEExternalInputStream)init
{
  [(PHASEExternalInputStream *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalInputStream)initWithStreamGroupUUID:(id)d streamUUID:(id)iD engine:(id)engine streamDefinition:(id)definition startsPaused:(BOOL)paused delegate:(id)delegate receiverBlock:(id)block
{
  pausedCopy = paused;
  definitionCopy = definition;
  blockCopy = block;
  v23.receiver = self;
  v23.super_class = PHASEExternalInputStream;
  v18 = [(PHASEExternalStream *)&v23 initWithEngine:engine streamGroupUUID:d streamUUID:iD startsPaused:pausedCopy delegate:delegate];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_definition, definition);
    v20 = _Block_copy(blockCopy);
    receiverBlock = v19->_receiverBlock;
    v19->_receiverBlock = v20;
  }

  return v19;
}

+ (void)streamWithEngine:(id)engine definition:(id)definition startsPaused:(BOOL)paused delegate:(id)delegate receiverBlock:(id)block callback:(id)callback
{
  pausedCopy = paused;
  engineCopy = engine;
  definitionCopy = definition;
  delegateCopy = delegate;
  blockCopy = block;
  callbackCopy = callback;
  v17 = +[PHASEExternalStream newUUID];
  [PHASEExternalInputStream streamWithEngine:engineCopy uuid:v17 definition:definitionCopy startsPaused:pausedCopy delegate:delegateCopy receiverBlock:blockCopy callback:callbackCopy];
}

+ (void)streamWithEngine:(id)engine uuid:(id)uuid definition:(id)definition startsPaused:(BOOL)paused delegate:(id)delegate receiverBlock:(id)block callback:(id)callback
{
  pausedCopy = paused;
  v89[1] = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  uuidCopy = uuid;
  definitionCopy = definition;
  delegateCopy = delegate;
  blockCopy = block;
  callbackCopy = callback;
  val = engineCopy;
  format = [definitionCopy format];
  commonFormat = [format commonFormat];

  if (commonFormat != 1)
  {
    v24 = *MEMORY[0x277CCA450];
    v88 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    format2 = [definitionCopy format];
    v27 = [v25 stringWithFormat:@"Can only create stream with float32 common format, not provided common format %lu", objc_msgSend(format2, "commonFormat")];
    v89[0] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:&v88 count:1];

    v30 = **(Phase::Logger::GetInstance(v29) + 448);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [v28 objectForKeyedSubscript:v24];
      v32 = v31;
      *buf = 136315650;
      v75 = "PHASEExternalStream.mm";
      v76 = 1024;
      v77 = 1378;
      v78 = 2080;
      uTF8String = [v31 UTF8String];
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  format3 = [definitionCopy format];
  channelLayout = [format3 channelLayout];
  if (channelLayout)
  {
    format4 = [definitionCopy format];
    channelLayout2 = [format4 channelLayout];
    layoutTag = [channelLayout2 layoutTag];

    if (layoutTag)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  format5 = [definitionCopy format];
  if ([format5 channelCount] != 1)
  {
    format6 = [definitionCopy format];
    channelCount = [format6 channelCount];

    if (channelCount == 2)
    {
      goto LABEL_12;
    }

    v53 = *MEMORY[0x277CCA450];
    v86 = *MEMORY[0x277CCA450];
    v54 = MEMORY[0x277CCACA8];
    format7 = [definitionCopy format];
    v56 = [v54 stringWithFormat:@"Cannot synthesize audio channel layout with channel count %d. Please provide non-nil channel layout as part of stream definition's format.", objc_msgSend(format7, "channelCount")];
    v87 = v56;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];

    v30 = **(Phase::Logger::GetInstance(v57) + 448);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v58 = [v28 objectForKeyedSubscript:v53];
      v59 = v58;
      *buf = 136315650;
      v75 = "PHASEExternalStream.mm";
      v76 = 1024;
      v77 = 1405;
      v78 = 2080;
      uTF8String = [v58 UTF8String];
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

LABEL_7:

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v28];
    callbackCopy[2](callbackCopy, 0, v33);

    goto LABEL_19;
  }

LABEL_12:
  format8 = [definitionCopy format];
  if ([format8 channelCount] == 1)
  {
    v38 = 6553601;
  }

  else
  {
    v38 = 6619138;
  }

  v39 = objc_alloc(MEMORY[0x277CB83A8]);
  format9 = [definitionCopy format];
  [format9 sampleRate];
  v42 = v41;
  v43 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:v38];
  v44 = [v39 initStandardFormatWithSampleRate:v43 channelLayout:v42];
  [definitionCopy setFormat:v44];

LABEL_16:
  uUID = [MEMORY[0x277CCAD78] UUID];
  implementation = [engineCopy implementation];
  v47 = *(implementation + 52);
  v48 = **(Phase::Logger::GetInstance(implementation) + 448);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [definitionCopy description];
    uTF8String2 = [v49 UTF8String];
    uUIDString = [uuidCopy UUIDString];
    uUIDString2 = [uUID UUIDString];
    *buf = 136316418;
    v75 = "PHASEExternalStream.mm";
    v76 = 1024;
    v77 = 1417;
    v78 = 2080;
    uTF8String = uTF8String2;
    v80 = 2112;
    v81 = uUIDString;
    v82 = 2112;
    v83 = uUIDString2;
    v84 = 1024;
    v85 = pausedCopy;
    _os_log_impl(&dword_23A302000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating external input stream: %s, uuid [%@, %@], startsPaused %d", buf, 0x36u);
  }

  objc_initWeak(buf, val);
  objc_initWeak(&location, delegateCopy);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __106__PHASEExternalInputStream_streamWithEngine_uuid_definition_startsPaused_delegate_receiverBlock_callback___block_invoke;
  v64[3] = &unk_278B4F7E8;
  objc_copyWeak(&v70, buf);
  objc_copyWeak(&v71, &location);
  v68 = callbackCopy;
  v65 = uuidCopy;
  v28 = uUID;
  v66 = v28;
  v67 = definitionCopy;
  v72 = pausedCopy;
  v69 = blockCopy;
  (*(*v47 + 24))(v47, v65, v28, v67, pausedCopy, v69, v64);

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
LABEL_19:
}

void __106__PHASEExternalInputStream_streamWithEngine_uuid_definition_startsPaused_delegate_receiverBlock_callback___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = objc_loadWeakRetained((a1 + 80));
  v6 = v5;
  if (WeakRetained && v5)
  {
    if (v3)
    {
      (*(*(a1 + 56) + 16))();
      v7 = v3;
    }

    else
    {
      v13 = [[PHASEExternalInputStream alloc] initWithStreamGroupUUID:*(a1 + 32) streamUUID:*(a1 + 40) engine:WeakRetained streamDefinition:*(a1 + 48) startsPaused:*(a1 + 88) delegate:v5 receiverBlock:*(a1 + 64)];
      (*(*(a1 + 56) + 16))();

      v7 = 0;
    }
  }

  else
  {
    v8 = *MEMORY[0x277CCA450];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"engine and/or delegate has been de-allocated";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [(Phase::Logger *)v9 objectForKeyedSubscript:v8];
      v12 = v11;
      *buf = 136315650;
      v15 = "PHASEExternalStream.mm";
      v16 = 1024;
      v17 = 1430;
      v18 = 2080;
      v19 = [v11 UTF8String];
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920806 userInfo:v9];

    (*(*(a1 + 56) + 16))();
  }
}

- (void)setMute:(BOOL)mute
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_mute != mute)
  {
    muteCopy = mute;
    engine = [(PHASEExternalStream *)self engine];
    v6 = engine;
    if (engine)
    {
      v7 = *([engine implementation] + 416);
      uuid = [(PHASEExternalStream *)self uuid];
      streamUUID = [(PHASEExternalStream *)self streamUUID];
      (*(*v7 + 64))(v7, uuid, streamUUID, muteCopy);

      self->_mute = muteCopy;
    }

    else
    {
      v10 = **(Phase::Logger::GetInstance(0) + 448);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        uuid2 = [(PHASEExternalStream *)self uuid];
        v12 = 136315650;
        v13 = "PHASEExternalStream.mm";
        v14 = 1024;
        v15 = 1463;
        v16 = 2112;
        v17 = uuid2;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't mute external input stream %@ with nil engine", &v12, 0x1Cu);
      }
    }
  }
}

- (BOOL)registerMutedSpeechActivityNotification:(id)notification outError:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (error)
  {
    *error = 0;
  }

  engine = [(PHASEExternalStream *)self engine];
  if (engine)
  {
    [(PHASEExternalInputStream *)self unregisterMutedSpeechActivityNotification];
    v8 = *([engine implementation] + 416);
    v9 = _Block_copy(notificationCopy);
    mutedSpeechActivityNotificationBlock = self->_mutedSpeechActivityNotificationBlock;
    self->_mutedSpeechActivityNotificationBlock = v9;

    v11 = self->_mutedSpeechActivityNotificationBlock;
    if (v11)
    {
      objc_initWeak(location, v11);
      streamUUID = [(PHASEExternalStream *)self streamUUID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __77__PHASEExternalInputStream_registerMutedSpeechActivityNotification_outError___block_invoke;
      v23[3] = &unk_278B4F860;
      objc_copyWeak(&v24, location);
      (*(*v8 + 72))(v8, streamUUID, v23);

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v13 = *MEMORY[0x277CCA450];
    v30 = *MEMORY[0x277CCA450];
    v14 = MEMORY[0x277CCACA8];
    streamUUID2 = [(PHASEExternalStream *)self streamUUID];
    v16 = [v14 stringWithFormat:@"Can't register muted speech activity on external input stream %@ with nil engine", streamUUID2];
    v31[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 objectForKeyedSubscript:v13];
      v21 = v20;
      *location = 136315650;
      *&location[4] = "PHASEExternalStream.mm";
      v26 = 1024;
      v27 = 1489;
      v28 = 2080;
      uTF8String = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", location, 0x1Cu);
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v17];
    }
  }

  return engine != 0;
}

void __77__PHASEExternalInputStream_registerMutedSpeechActivityNotification_outError___block_invoke(uint64_t a1, _DWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v4 = objc_alloc_init(PHASEMutedSpeechActivityInfo);
    LODWORD(v5) = *a2;
    [(PHASEMutedSpeechActivityInfo *)v4 setSpeechActivityHardValue:*a2 != 0.0, v5];
    v6[2](v6, v4);

    WeakRetained = v6;
  }
}

- (void)unregisterMutedSpeechActivityNotification
{
  engine = [(PHASEExternalStream *)self engine];
  if (engine)
  {
    v6 = engine;
    v4 = *([engine implementation] + 416);
    streamUUID = [(PHASEExternalStream *)self streamUUID];
    (*(*v4 + 80))(v4, streamUUID);

    engine = v6;
  }
}

@end