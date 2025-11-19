@interface PHASEExternalOutputStream
+ (void)streamWithEngine:(id)a3 definition:(id)a4 startsPaused:(BOOL)a5 delegate:(id)a6 renderBlock:(id)a7 callback:(id)a8;
+ (void)streamWithEngine:(id)a3 uuid:(id)a4 definition:(id)a5 startsPaused:(BOOL)a6 delegate:(id)a7 renderBlock:(id)a8 callback:(id)a9;
- (PHASEExternalOutputStream)init;
- (PHASEExternalOutputStream)initWithStreamGroupUUID:(id)a3 streamUUID:(id)a4 engine:(id)a5 streamDefinition:(id)a6 startsPaused:(BOOL)a7 delegate:(id)a8 renderBlock:(id)a9;
- (id)description;
@end

@implementation PHASEExternalOutputStream

- (PHASEExternalOutputStream)init
{
  [(PHASEExternalOutputStream *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEExternalOutputStream)initWithStreamGroupUUID:(id)a3 streamUUID:(id)a4 engine:(id)a5 streamDefinition:(id)a6 startsPaused:(BOOL)a7 delegate:(id)a8 renderBlock:(id)a9
{
  v10 = a7;
  v16 = a6;
  v17 = a9;
  v23.receiver = self;
  v23.super_class = PHASEExternalOutputStream;
  v18 = [(PHASEExternalStream *)&v23 initWithEngine:a5 streamGroupUUID:a3 streamUUID:a4 startsPaused:v10 delegate:a8];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_definition, a6);
    v20 = _Block_copy(v17);
    renderBlock = v19->_renderBlock;
    v19->_renderBlock = v20;
  }

  return v19;
}

+ (void)streamWithEngine:(id)a3 definition:(id)a4 startsPaused:(BOOL)a5 delegate:(id)a6 renderBlock:(id)a7 callback:(id)a8
{
  v11 = a5;
  v18 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = +[PHASEExternalStream newUUID];
  [PHASEExternalOutputStream streamWithEngine:v18 uuid:v17 definition:v13 startsPaused:v11 delegate:v14 renderBlock:v15 callback:v16];
}

+ (void)streamWithEngine:(id)a3 uuid:(id)a4 definition:(id)a5 startsPaused:(BOOL)a6 delegate:(id)a7 renderBlock:(id)a8 callback:(id)a9
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
      v77 = 443;
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
      v77 = 470;
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
  v48 = **(Phase::Logger::GetInstance(v46) + 928);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v15 description];
    v50 = [v49 UTF8String];
    v51 = [v63 UUIDString];
    v52 = [v45 UUIDString];
    *buf = 136316418;
    v75 = "PHASEExternalStream.mm";
    v76 = 1024;
    v77 = 482;
    v78 = 2080;
    v79 = v50;
    v80 = 2112;
    v81 = v51;
    v82 = 2112;
    v83 = v52;
    v84 = 1024;
    v85 = v11;
    _os_log_impl(&dword_23A302000, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating external output stream: %s, uuid [%@, %@], startsPaused %d", buf, 0x36u);
  }

  objc_initWeak(buf, val);
  objc_initWeak(&location, v61);
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __105__PHASEExternalOutputStream_streamWithEngine_uuid_definition_startsPaused_delegate_renderBlock_callback___block_invoke;
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
  (*(*v47 + 16))(v47, v65, v28, v67, v11, v69, v64);

  objc_destroyWeak(&v71);
  objc_destroyWeak(&v70);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
LABEL_19:
}

void __105__PHASEExternalOutputStream_streamWithEngine_uuid_definition_startsPaused_delegate_renderBlock_callback___block_invoke(uint64_t a1, void *a2)
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
      v13 = [[PHASEExternalOutputStream alloc] initWithStreamGroupUUID:*(a1 + 32) streamUUID:*(a1 + 40) engine:WeakRetained streamDefinition:*(a1 + 48) startsPaused:*(a1 + 88) delegate:v5 renderBlock:*(a1 + 64)];
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
      v17 = 495;
      v18 = 2080;
      v19 = [v11 UTF8String];
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", buf, 0x1Cu);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.coreaudio.phase" code:1346920806 userInfo:v9];

    (*(*(a1 + 56) + 16))();
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PHASEExternalStream *)self streamUUID];
  v5 = [(PHASEExternalStream *)self uuid];
  v6 = [(PHASEExternalOutputStream *)self definition];
  v7 = [v3 stringWithFormat:@"<PHASEExternalOutputStream: %p, streamUUID=%@, streamGroupUUID=%@, audioSessionToken=0x%x>", self, v4, v5, objc_msgSend(v6, "audioSessionToken")];

  return v7;
}

@end