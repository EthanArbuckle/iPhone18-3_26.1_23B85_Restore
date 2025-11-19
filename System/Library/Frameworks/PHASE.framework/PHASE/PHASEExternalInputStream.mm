@interface PHASEExternalInputStream
+ (void)streamWithEngine:(id)a3 definition:(id)a4 startsPaused:(BOOL)a5 delegate:(id)a6 receiverBlock:(id)a7 callback:(id)a8;
+ (void)streamWithEngine:(id)a3 uuid:(id)a4 definition:(id)a5 startsPaused:(BOOL)a6 delegate:(id)a7 receiverBlock:(id)a8 callback:(id)a9;
- (BOOL)registerMutedSpeechActivityNotification:(id)a3 outError:(id *)a4;
- (PHASEExternalInputStream)init;
- (PHASEExternalInputStream)initWithStreamGroupUUID:(id)a3 streamUUID:(id)a4 engine:(id)a5 streamDefinition:(id)a6 startsPaused:(BOOL)a7 delegate:(id)a8 receiverBlock:(id)a9;
- (void)setMute:(BOOL)a3;
- (void)unregisterMutedSpeechActivityNotification;
@end

@implementation PHASEExternalInputStream

- (PHASEExternalInputStream)init
{
  [(PHASEExternalInputStream *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalInputStream)initWithStreamGroupUUID:(id)a3 streamUUID:(id)a4 engine:(id)a5 streamDefinition:(id)a6 startsPaused:(BOOL)a7 delegate:(id)a8 receiverBlock:(id)a9
{
  v10 = a7;
  v16 = a6;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = PHASEExternalInputStream;
  v18 = [(PHASEExternalStream *)&v23 initWithEngine:a5 streamGroupUUID:a3 streamUUID:a4 startsPaused:v10 delegate:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_definition, a6);
    v20 = _Block_copy(v17);
    receiverBlock = v19->_receiverBlock;
    v19->_receiverBlock = v20;
  }

  return v19;
}

+ (void)streamWithEngine:(id)a3 definition:(id)a4 startsPaused:(BOOL)a5 delegate:(id)a6 receiverBlock:(id)a7 callback:(id)a8
{
  v11 = a5;
  v18 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = +[PHASEExternalStream newUUID];
  [PHASEExternalInputStream streamWithEngine:v18 uuid:v17 definition:v13 startsPaused:v11 delegate:v14 receiverBlock:v15 callback:v16];
}

+ (void)streamWithEngine:(id)a3 uuid:(id)a4 definition:(id)a5 startsPaused:(BOOL)a6 delegate:(id)a7 receiverBlock:(id)a8 callback:(id)a9
{
  v11 = a6;
  v89[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v63 = a4;
  v15 = a5;
  v61 = a7;
  v62 = a8;
  v16 = a9;
  val = v14;
  v17 = [v15 format];
  v18 = [v17 commonFormat];

  if (v18 != 1)
  {
    v24 = *MEMORY[0x277CCA450];
    v88 = *MEMORY[0x277CCA450];
    v25 = MEMORY[0x277CCACA8];
    v26 = [v15 format];
    v27 = [v25 stringWithFormat:@"Can only create stream with float32 common format, not provided common format %lu", objc_msgSend(v26, "commonFormat")];
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
      v79 = [v31 UTF8String];
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v19 = [v15 format];
  v20 = [v19 channelLayout];
  if (v20)
  {
    v21 = [v15 format];
    v22 = [v21 channelLayout];
    v23 = [v22 layoutTag];

    if (v23)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v34 = [v15 format];
  if ([v34 channelCount] != 1)
  {
    v35 = [v15 format];
    v36 = [v35 channelCount];

    if (v36 == 2)
    {
      goto LABEL_12;
    }

    v53 = *MEMORY[0x277CCA450];
    v86 = *MEMORY[0x277CCA450];
    v54 = MEMORY[0x277CCACA8];
    v55 = [v15 format];
    v56 = [v54 stringWithFormat:@"Cannot synthesize audio channel layout with channel count %d. Please provide non-nil channel layout as part of stream definition's format.", objc_msgSend(v55, "channelCount")];
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
      v79 = [v58 UTF8String];
      _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

LABEL_7:

    v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v28];
    v16[2](v16, 0, v33);

    goto LABEL_19;
  }

LABEL_12:
  v37 = [v15 format];
  if ([v37 channelCount] == 1)
  {
    v38 = 6553601;
  }

  else
  {
    v38 = 6619138;
  }

  v39 = objc_alloc(MEMORY[0x277CB83A8]);
  v40 = [v15 format];
  [v40 sampleRate];
  v42 = v41;
  v43 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:v38];
  v44 = [v39 initStandardFormatWithSampleRate:v43 channelLayout:v42];
  [v15 setFormat:v44];

LABEL_16:
  v45 = [MEMORY[0x277CCAD78] UUID];
  v46 = [v14 implementation];
  v47 = *(v46 + 52);
  v48 = **(Phase::Logger::GetInstance(v46) + 448);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v15 description];
    v50 = [v49 UTF8String];
    v51 = [v63 UUIDString];
    v52 = [v45 UUIDString];
    *buf = 136316418;
    v75 = "PHASEExternalStream.mm";
    v76 = 1024;
    v77 = 1417;
    v78 = 2080;
    v79 = v50;
    v80 = 2112;
    v81 = v51;
    v82 = 2112;
    v83 = v52;
    v84 = 1024;
    v85 = v11;
    _os_log_impl(&dword_23A302000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating external input stream: %s, uuid [%@, %@], startsPaused %d", buf, 0x36u);
  }

  objc_initWeak(buf, val);
  objc_initWeak(&location, v61);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __106__PHASEExternalInputStream_streamWithEngine_uuid_definition_startsPaused_delegate_receiverBlock_callback___block_invoke;
  v64[3] = &unk_278B4F7E8;
  objc_copyWeak(&v70, buf);
  objc_copyWeak(&v71, &location);
  v68 = v16;
  v65 = v63;
  v28 = v45;
  v66 = v28;
  v67 = v15;
  v72 = v11;
  v69 = v62;
  (*(*v47 + 24))(v47, v65, v28, v67, v11, v69, v64);

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

- (void)setMute:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_mute != a3)
  {
    v3 = a3;
    v5 = [(PHASEExternalStream *)self engine];
    v6 = v5;
    if (v5)
    {
      v7 = *([v5 implementation] + 416);
      v8 = [(PHASEExternalStream *)self uuid];
      v9 = [(PHASEExternalStream *)self streamUUID];
      (*(*v7 + 64))(v7, v8, v9, v3);

      self->_mute = v3;
    }

    else
    {
      v10 = **(Phase::Logger::GetInstance(0) + 448);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [(PHASEExternalStream *)self uuid];
        v12 = 136315650;
        v13 = "PHASEExternalStream.mm";
        v14 = 1024;
        v15 = 1463;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Can't mute external input stream %@ with nil engine", &v12, 0x1Cu);
      }
    }
  }
}

- (BOOL)registerMutedSpeechActivityNotification:(id)a3 outError:(id *)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = [(PHASEExternalStream *)self engine];
  if (v7)
  {
    [(PHASEExternalInputStream *)self unregisterMutedSpeechActivityNotification];
    v8 = *([v7 implementation] + 416);
    v9 = _Block_copy(v6);
    mutedSpeechActivityNotificationBlock = self->_mutedSpeechActivityNotificationBlock;
    self->_mutedSpeechActivityNotificationBlock = v9;

    v11 = self->_mutedSpeechActivityNotificationBlock;
    if (v11)
    {
      objc_initWeak(location, v11);
      v12 = [(PHASEExternalStream *)self streamUUID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __77__PHASEExternalInputStream_registerMutedSpeechActivityNotification_outError___block_invoke;
      v23[3] = &unk_278B4F860;
      objc_copyWeak(&v24, location);
      (*(*v8 + 72))(v8, v12, v23);

      objc_destroyWeak(&v24);
      objc_destroyWeak(location);
    }
  }

  else
  {
    v13 = *MEMORY[0x277CCA450];
    v30 = *MEMORY[0x277CCA450];
    v14 = MEMORY[0x277CCACA8];
    v15 = [(PHASEExternalStream *)self streamUUID];
    v16 = [v14 stringWithFormat:@"Can't register muted speech activity on external input stream %@ with nil engine", v15];
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
      v29 = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", location, 0x1Cu);
    }

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346922849 userInfo:v17];
    }
  }

  return v7 != 0;
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
  v3 = [(PHASEExternalStream *)self engine];
  if (v3)
  {
    v6 = v3;
    v4 = *([v3 implementation] + 416);
    v5 = [(PHASEExternalStream *)self streamUUID];
    (*(*v4 + 80))(v4, v5);

    v3 = v6;
  }
}

@end