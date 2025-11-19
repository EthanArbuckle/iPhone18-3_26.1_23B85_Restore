@interface VCAudioInjector
+ (AudioStreamBasicDescription)internalAssetFormatWithFileFormat:(SEL)a3;
+ (BOOL)isAudioAvailable:(id)a3 fileName:(id)a4;
+ (id)defaultAudioFileNameWithFormat:(const AudioStreamBasicDescription *)a3;
+ (id)defaultReaderOutputSettings;
+ (int)setupReader:(id)a3 forAsset:(id)a4 assetAudioFormat:(AudioStreamBasicDescription *)a5 trackOutput:(id *)a6;
- (BOOL)setupAssetInjectionWithConfig:(id)a3;
- (VCAudioInjector)initWithConfig:(id)a3;
- (id)description;
- (int)allocateSampleBufferWithTrackOutput:(id)a3 assetAudioFormat:(const AudioStreamBasicDescription *)a4 sampleBuffer:(opaqueVCAudioBufferList *)a5;
- (int)loadAudioSamples;
- (int)loadEncodedAudioSamples;
- (int)loadRawAudioSamples;
- (int)loadSamplesFromTrackOutput:(id)a3 audioConverter:(OpaqueAudioConverter *)a4 audioBuffer:(opaqueVCAudioBufferList *)a5;
- (int)processSampleBuffer:(opaqueCMSampleBuffer *)a3 audioConverter:(OpaqueAudioConverter *)a4 audioBuffer:(opaqueVCAudioBufferList *)a5;
- (int)setupAVSyncWithStartHostTime:(double)a3 loopLength:(double)a4;
- (int)setupAudioConverterWithAssetFormat:(const AudioStreamBasicDescription *)a3 audioConverter:(OpaqueAudioConverter *)a4;
- (int)setupSineInjectionWithConfig:(id)a3;
- (void)cleanupAudioConverterProc;
- (void)completeSetupWithSampleBuffer:(opaqueVCAudioBufferList *)a3;
- (void)dealloc;
- (void)loadEncodedAudioSamples;
- (void)loadRawAudioSamples;
- (void)parseMediaTracksForAsset:(id)a3;
- (void)reportInjectorInitWithPath:(id)a3;
- (void)setAudioConverterProcAudioBufferList:(const AudioBufferList *)a3 blockBuffer:(OpaqueCMBlockBuffer *)a4;
@end

@implementation VCAudioInjector

- (VCAudioInjector)initWithConfig:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = VCAudioInjector;
  v4 = [(VCObject *)&v19 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (objc_opt_class() == v4)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v7 = VRTraceErrorLogLevelToCSTR();
        v8 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          *&buf[4] = v7;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioInjector initWithConfig:]";
          *&buf[22] = 1024;
          *&buf[24] = 121;
          *&buf[28] = 2112;
          *&buf[30] = a3;
          v9 = " [%s] %s:%d Loading audio: config=%@";
          v10 = v8;
          v11 = 38;
LABEL_12:
          _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v6 = [v4 performSelector:sel_logPrefix];
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
          *buf = 136316418;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = "[VCAudioInjector initWithConfig:]";
          *&buf[22] = 1024;
          *&buf[24] = 121;
          *&buf[28] = 2112;
          *&buf[30] = v6;
          *&buf[38] = 2048;
          v21 = v4;
          v22 = 2112;
          v23 = a3;
          v9 = " [%s] %s:%d %@(%p) Loading audio: config=%@";
          v10 = v13;
          v11 = 58;
          goto LABEL_12;
        }
      }
    }

    if ([a3 isValid])
    {
      *(v4 + 46) = 0;
      v4[188] = [a3 fromBeginning];
      *(v4 + 22) = [a3 path];
      if (a3)
      {
        [a3 audioFormat];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v14 = *buf;
      v15 = *&buf[16];
      *(v4 + 35) = *&buf[32];
      *(v4 + 248) = v14;
      *(v4 + 264) = v15;
      *(v4 + 98) = [a3 loopCount];
      [a3 loopLength];
      *(v4 + 51) = v16;
      *(v4 + 48) = 0;
      v4[416] = [a3 forceVoiceActive];
      v17 = [a3 reportingAgent];
      if (v17)
      {
        v17 = CFRetain(v17);
      }

      *(v4 + 1) = v17;
      pthread_cond_init((v4 + 200), 0);
      [v4 reportInjectorInitWithPath:{objc_msgSend(a3, "path")}];
      if ([a3 sineWaveFrequencyHz])
      {
        if (([v4 setupSineInjectionWithConfig:a3] & 0x80000000) != 0)
        {
          [VCAudioInjector initWithConfig:];
LABEL_26:

          v4 = 0;
        }
      }

      else
      {
        [v4 setupAssetInjectionWithConfig:a3];
      }

      [v5 drain];
      return v4;
    }

    [VCAudioInjector initWithConfig:v4];
    goto LABEL_26;
  }

  return v4;
}

- (void)reportInjectorInitWithPath:(id)a3
{
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v6 = v5;
  if (a3)
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:a3];
    v8 = [VCFileUtil sizeOfFile:v7];
    [VCFileUtil contentLengthOfFile:v7];
    v10 = v9;
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v8), @"CAIFS"}];
    [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", v10 * 1000.0), @"CAIFL"}];
    VCMediaRecorderUtil_PrintMediaURL(v7, 7);
  }

  else
  {
    [v5 setObject:&unk_1F579B400 forKeyedSubscript:@"CAIFS"];
    [v6 setObject:&unk_1F579E3F0 forKeyedSubscript:@"CAIFL"];
  }

  [(VCObject *)self reportingAgent];

  reportingGenericEvent();
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCAudioInjector dealloc]";
        v16 = 1024;
        v17 = 173;
        v6 = " [%s] %s:%d ";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCAudioInjector dealloc]";
        v16 = 1024;
        v17 = 173;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        v21 = self;
        v6 = " [%s] %s:%d %@(%p) ";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  pthread_cond_destroy(&self->_samplesConditional);

  VCAudioBufferList_Destroy(&self->_sampleBuffer);
  v11.receiver = self;
  v11.super_class = VCAudioInjector;
  [(VCObject *)&v11 dealloc];
}

- (id)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = VCAudioInjector;
  v4 = [(VCAudioInjector *)&v11 description];
  cannedMoviePath = self->_cannedMoviePath;
  fromBeginning = self->_fromBeginning;
  [(VCCannedAVSync *)self->_avSync base];
  v8 = v7;
  [(VCCannedAVSync *)self->_avSync modulo];
  return [v3 stringWithFormat:@"%@ path=%@, fromBeginning=%d, base=%0.2f, modulo=%0.2f", v4, cannedMoviePath, fromBeginning, v8, v9];
}

- (BOOL)setupAssetInjectionWithConfig:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = +[CannedVideoCapture cannedVideoTypeForPath:](CannedVideoCapture, "cannedVideoTypeForPath:", [a3 path]);
  self->_assetType = v5;
  if ((v5 - 3) <= 0xFFFFFFFD)
  {
    v22 = -2142699519;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector setupAssetInjectionWithConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          assetType = self->_assetType;
          v36 = 136316418;
          v37 = v28;
          v38 = 2080;
          v39 = "[VCAudioInjector setupAssetInjectionWithConfig:]";
          v40 = 1024;
          v41 = 192;
          v42 = 2112;
          v43 = v24;
          v44 = 2048;
          v45 = self;
          v46 = 1024;
          v47 = assetType;
          v31 = " [%s] %s:%d %@(%p) Invalid asset type. assetType=%d";
          v32 = v29;
LABEL_50:
          _os_log_error_impl(&dword_1DB56E000, v32, OS_LOG_TYPE_ERROR, v31, &v36, 0x36u);
        }
      }
    }
  }

  else
  {
    if (!+[VCAudioInjector isAudioAvailable:fileName:](VCAudioInjector, "isAudioAvailable:fileName:", [a3 path], objc_msgSend(a3, "fileName")))
    {
      [VCAudioInjector setupAssetInjectionWithConfig:];
      v22 = v36;
      return v22 != 0;
    }

    [a3 startHostTime];
    v7 = v6;
    [a3 loopLength];
    v9 = [(VCAudioInjector *)self setupAVSyncWithStartHostTime:v7 loopLength:v8];
    if (v9 < 0)
    {
      v25 = v9;
      if (objc_opt_class() == self)
      {
        v22 = -2142699519;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioInjector setupAssetInjectionWithConfig:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v26 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
        }

        else
        {
          v26 = &stru_1F570E008;
        }

        v22 = -2142699519;
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v33 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v36 = 136316418;
            v37 = v33;
            v38 = 2080;
            v39 = "[VCAudioInjector setupAssetInjectionWithConfig:]";
            v40 = 1024;
            v41 = 198;
            v42 = 2112;
            v43 = v26;
            v44 = 2048;
            v45 = self;
            v46 = 1024;
            v47 = v25;
            v31 = " [%s] %s:%d %@(%p) Failed to setup the AV sync. result=%x";
LABEL_49:
            v32 = v34;
            goto LABEL_50;
          }
        }
      }
    }

    else
    {
      v10 = [(VCAudioInjector *)self loadAudioSamples];
      v11 = objc_opt_class();
      if ((v10 & 0x80000000) == 0)
      {
        if (v11 == self)
        {
          if (VRTraceGetErrorLogLevelForModule() < 6)
          {
            goto LABEL_16;
          }

          v13 = VRTraceErrorLogLevelToCSTR();
          v14 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v15 = self->_assetType;
          v36 = 136315906;
          v37 = v13;
          v38 = 2080;
          v39 = "[VCAudioInjector setupAssetInjectionWithConfig:]";
          v40 = 1024;
          v41 = 202;
          v42 = 1024;
          LODWORD(v43) = v15;
          v16 = " [%s] %s:%d Audio injector loaded successfully. assetType=%d";
          v17 = v14;
          v18 = 34;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v12 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
          }

          else
          {
            v12 = &stru_1F570E008;
          }

          if (VRTraceGetErrorLogLevelForModule() < 6)
          {
            goto LABEL_16;
          }

          v19 = VRTraceErrorLogLevelToCSTR();
          v20 = *MEMORY[0x1E6986650];
          if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_16;
          }

          v21 = self->_assetType;
          v36 = 136316418;
          v37 = v19;
          v38 = 2080;
          v39 = "[VCAudioInjector setupAssetInjectionWithConfig:]";
          v40 = 1024;
          v41 = 202;
          v42 = 2112;
          v43 = v12;
          v44 = 2048;
          v45 = self;
          v46 = 1024;
          v47 = v21;
          v16 = " [%s] %s:%d %@(%p) Audio injector loaded successfully. assetType=%d";
          v17 = v20;
          v18 = 54;
        }

        _os_log_impl(&dword_1DB56E000, v17, OS_LOG_TYPE_DEFAULT, v16, &v36, v18);
LABEL_16:
        v22 = v10;
        return v22 != 0;
      }

      v22 = -2142699519;
      if (v11 == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioInjector setupAssetInjectionWithConfig:];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v27 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
        }

        else
        {
          v27 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v35 = VRTraceErrorLogLevelToCSTR();
          v34 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            v36 = 136316418;
            v37 = v35;
            v38 = 2080;
            v39 = "[VCAudioInjector setupAssetInjectionWithConfig:]";
            v40 = 1024;
            v41 = 201;
            v42 = 2112;
            v43 = v27;
            v44 = 2048;
            v45 = self;
            v46 = 1024;
            v47 = v10;
            v31 = " [%s] %s:%d %@(%p) Failed to load the audio samples. result=%x";
            goto LABEL_49;
          }
        }
      }
    }
  }

  return v22 != 0;
}

- (int)loadAudioSamples
{
  v27 = *MEMORY[0x1E69E9840];
  assetType = self->_assetType;
  if (assetType != 2)
  {
    if (assetType == 1)
    {

      return [(VCAudioInjector *)self loadRawAudioSamples];
    }

    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return -2142699505;
      }

      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return -2142699505;
      }

      v8 = self->_assetType;
      v15 = 136315906;
      v16 = v6;
      v17 = 2080;
      v18 = "[VCAudioInjector loadAudioSamples]";
      v19 = 1024;
      v20 = 217;
      v21 = 1024;
      LODWORD(v22) = v8;
      v9 = " [%s] %s:%d Unknown _assetType=%d";
      v10 = v7;
      v11 = 34;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v5 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v5 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return -2142699505;
      }

      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return -2142699505;
      }

      v14 = self->_assetType;
      v15 = 136316418;
      v16 = v12;
      v17 = 2080;
      v18 = "[VCAudioInjector loadAudioSamples]";
      v19 = 1024;
      v20 = 217;
      v21 = 2112;
      v22 = v5;
      v23 = 2048;
      v24 = self;
      v25 = 1024;
      v26 = v14;
      v9 = " [%s] %s:%d %@(%p) Unknown _assetType=%d";
      v10 = v13;
      v11 = 54;
    }

    _os_log_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v15, v11);
    return -2142699505;
  }

  return [(VCAudioInjector *)self loadEncodedAudioSamples];
}

- (int)setupAVSyncWithStartHostTime:(double)a3 loopLength:(double)a4
{
  v35 = *MEMORY[0x1E69E9840];
  if (a3 >= 0.0)
  {
    avSync = objc_alloc_init(VCCannedAVSync);
    self->_avSync = avSync;
    if (a4 > 0.0)
    {
      [(VCCannedAVSync *)avSync setModulo:a4];
      avSync = self->_avSync;
    }

    [(VCCannedAVSync *)avSync setBase:a3];
    v6 = self->_avSync;
  }

  else
  {
    self->_isSharedAVSync = 1;
    v6 = +[VCCannedAVSync sharedCannedAVSync];
    self->_avSync = v6;
  }

  [(VCCannedAVSync *)v6 modulo];
  self->_samplesInLoop = vcvtad_u64_f64(v9 * self->_outputFormat.mSampleRate);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_17;
    }

    v11 = VRTraceErrorLogLevelToCSTR();
    v12 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    samplesInLoop = self->_samplesInLoop;
    v21 = 136316418;
    v22 = v11;
    v23 = 2080;
    v24 = "[VCAudioInjector setupAVSyncWithStartHostTime:loopLength:]";
    v25 = 1024;
    v26 = 241;
    v27 = 2112;
    v28 = self;
    v29 = 1024;
    *v30 = samplesInLoop;
    *&v30[4] = 2048;
    *&v30[6] = a4;
    v14 = " [%s] %s:%d injector=%@, _samplesInLoop=%d, loopLength=%f";
    v15 = v12;
    v16 = 54;
    goto LABEL_16;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
  }

  else
  {
    v10 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v17 = VRTraceErrorLogLevelToCSTR();
    v18 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_samplesInLoop;
      v21 = 136316930;
      v22 = v17;
      v23 = 2080;
      v24 = "[VCAudioInjector setupAVSyncWithStartHostTime:loopLength:]";
      v25 = 1024;
      v26 = 241;
      v27 = 2112;
      v28 = v10;
      v29 = 2048;
      *v30 = self;
      *&v30[8] = 2112;
      *&v30[10] = self;
      v31 = 1024;
      v32 = v19;
      v33 = 2048;
      v34 = a4;
      v14 = " [%s] %s:%d %@(%p) injector=%@, _samplesInLoop=%d, loopLength=%f";
      v15 = v18;
      v16 = 74;
LABEL_16:
      _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, &v21, v16);
    }
  }

LABEL_17:
  if (self->_avSync)
  {
    return 0;
  }

  else
  {
    return -2142699517;
  }
}

+ (BOOL)isAudioAvailable:(id)a3 fileName:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = [CannedVideoCapture cannedVideoTypeForPath:?];
  if (v6 == 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", a3, a4];
    v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v13.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v21.st_blksize = v13;
    *v21.st_qspare = v13;
    v21.st_birthtimespec = v13;
    *&v21.st_size = v13;
    v21.st_mtimespec = v13;
    v21.st_ctimespec = v13;
    *&v21.st_uid = v13;
    v21.st_atimespec = v13;
    *&v21.st_dev = v13;
    v14 = stat([v12 UTF8String], &v21);

    if (!v14 && (v21.st_mode & 0xF000) == 0x8000)
    {
      goto LABEL_9;
    }

LABEL_16:
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      v15 = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR);
      if (!v15)
      {
        return v15;
      }

      +[VCAudioInjector isAudioAvailable:fileName:];
    }

    LOBYTE(v15) = 0;
    return v15;
  }

  if (v6 != 2)
  {
    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E695DFF8] URLWithString:a3];
  v8 = objc_alloc(MEMORY[0x1E6988168]);
  v19 = *MEMORY[0x1E6987BB8];
  v20 = MEMORY[0x1E695E118];
  v9 = [v8 initWithURL:v7 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v20, &v19, 1)}];
  if (!v9)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioInjector isAudioAvailable:v17 fileName:v7];
      }
    }

    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  if (!v11 || ![v11 count])
  {

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        [VCAudioInjector isAudioAvailable:v16 fileName:v7];
      }
    }

    goto LABEL_16;
  }

LABEL_9:
  LOBYTE(v15) = 1;
  return v15;
}

- (void)completeSetupWithSampleBuffer:(opaqueVCAudioBufferList *)a3
{
  os_unfair_lock_lock(&self->_samplesMutex);
  v5 = *a3;
  self->_sampleBuffer = *a3;
  self->_audioSampleCount = VCAudioBufferList_GetSampleCount(v5);
  os_unfair_lock_unlock(&self->_samplesMutex);
  *a3 = 0;
  [(VCAudioInjector *)self setIsReadyToInject:1];
  [(VCObject *)self reportingAgent];

  reportingGenericEvent();
}

- (void)setAudioConverterProcAudioBufferList:(const AudioBufferList *)a3 blockBuffer:(OpaqueCMBlockBuffer *)a4
{
  v4 = *&a3->mNumberBuffers;
  self->_audioConverterProc.audioBufferList.mBuffers[0].mData = a3->mBuffers[0].mData;
  *&self->_audioConverterProc.audioBufferList.mNumberBuffers = v4;
  blockBuffer = self->_audioConverterProc.blockBuffer;
  self->_audioConverterProc.blockBuffer = a4;
  if (a4)
  {
    CFRetain(a4);
  }

  if (blockBuffer)
  {

    CFRelease(blockBuffer);
  }
}

- (void)cleanupAudioConverterProc
{
  p_audioConverterProc = &self->_audioConverterProc;
  blockBuffer = self->_audioConverterProc.blockBuffer;
  if (blockBuffer)
  {
    CFRelease(blockBuffer);
    p_audioConverterProc->blockBuffer = 0;
  }

  previousBlockBuffer = p_audioConverterProc->previousBlockBuffer;
  if (previousBlockBuffer)
  {
    CFRelease(previousBlockBuffer);
    p_audioConverterProc->previousBlockBuffer = 0;
  }

  p_audioConverterProc->audioBufferList.mBuffers[0].mData = 0;
  p_audioConverterProc->audioBufferList.mBuffers[0].mDataByteSize = 0;
}

+ (AudioStreamBasicDescription)internalAssetFormatWithFileFormat:(SEL)a3
{
  v39 = *MEMORY[0x1E69E9840];
  mChannelsPerFrame = a4->mChannelsPerFrame;
  retstr->mSampleRate = a4->mSampleRate;
  *&retstr->mFormatID = 0xC6C70636DLL;
  retstr->mBytesPerPacket = 2 * mChannelsPerFrame;
  retstr->mFramesPerPacket = 1;
  retstr->mBytesPerFrame = 2 * mChannelsPerFrame;
  retstr->mChannelsPerFrame = mChannelsPerFrame;
  *&retstr->mBitsPerChannel = 16;
  v37 = 0u;
  v38 = 0u;
  *__str = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *v31 = 0u;
  v32 = 0u;
  if (objc_opt_class() == a2)
  {
    result = VRTraceGetErrorLogLevelForModule();
    if (result >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v17 = 136316162;
        v18 = v10;
        v19 = 2080;
        v20 = "+[VCAudioInjector internalAssetFormatWithFileFormat:]";
        v21 = 1024;
        v22 = 335;
        v23 = 2080;
        v24 = FormatToCStr(a4, __str, 0x40uLL);
        v25 = 2080;
        v26 = FormatToCStr(retstr, v31, 0x40uLL);
        v12 = " [%s] %s:%d assetAudioFormat=%s, internalAssetFormat=%s";
        v13 = v11;
        v14 = 48;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_DEFAULT, v12, &v17, v14);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [a2 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    result = VRTraceGetErrorLogLevelForModule();
    if (result >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      result = os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v17 = 136316674;
        v18 = v15;
        v19 = 2080;
        v20 = "+[VCAudioInjector internalAssetFormatWithFileFormat:]";
        v21 = 1024;
        v22 = 335;
        v23 = 2112;
        v24 = v8;
        v25 = 2048;
        v26 = a2;
        v27 = 2080;
        v28 = FormatToCStr(a4, __str, 0x40uLL);
        v29 = 2080;
        v30 = FormatToCStr(retstr, v31, 0x40uLL);
        v12 = " [%s] %s:%d %@(%p) assetAudioFormat=%s, internalAssetFormat=%s";
        v13 = v16;
        v14 = 68;
        goto LABEL_11;
      }
    }
  }

  return result;
}

+ (id)defaultReaderOutputSettings
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69582C8];
  v5[0] = *MEMORY[0x1E69582B0];
  v5[1] = v2;
  v6[0] = &unk_1F579B418;
  v6[1] = &unk_1F579B430;
  v3 = *MEMORY[0x1E69582D0];
  v5[2] = *MEMORY[0x1E69582E8];
  v5[3] = v3;
  v6[2] = MEMORY[0x1E695E110];
  v6[3] = MEMORY[0x1E695E110];
  v5[4] = *MEMORY[0x1E69582F0];
  v6[4] = MEMORY[0x1E695E110];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
}

+ (int)setupReader:(id)a3 forAsset:(id)a4 assetAudioFormat:(AudioStreamBasicDescription *)a5 trackOutput:(id *)a6
{
  v80 = *MEMORY[0x1E69E9840];
  v11 = [a1 defaultReaderOutputSettings];
  if (!v11)
  {
    +[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:];
    return *buf;
  }

  v12 = v11;
  v13 = [a4 tracksWithMediaType:*MEMORY[0x1E69875A0]];
  v14 = v13;
  if (!v13 || ![v13 count])
  {
    if (objc_opt_class() == a1)
    {
      v21 = -2142699510;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v21;
      }

      v28 = VRTraceErrorLogLevelToCSTR();
      v29 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return v21;
      }

      *buf = 136316162;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
      *&buf[22] = 1024;
      *&buf[24] = 358;
      *&buf[28] = 2112;
      *&buf[30] = v14;
      *&buf[38] = 2112;
      v73 = a4;
      v30 = " [%s] %s:%d Failed to get audioTracks=%@ from asset=%@";
      v31 = v29;
      v32 = 48;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      v21 = -2142699510;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        return v21;
      }

      v38 = VRTraceErrorLogLevelToCSTR();
      v39 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        return v21;
      }

      *buf = 136316674;
      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
      *&buf[22] = 1024;
      *&buf[24] = 358;
      *&buf[28] = 2112;
      *&buf[30] = v24;
      *&buf[38] = 2048;
      v73 = a1;
      v74 = 2112;
      v75 = v14;
      v76 = 2112;
      v77 = a4;
      v30 = " [%s] %s:%d %@(%p) Failed to get audioTracks=%@ from asset=%@";
      v31 = v39;
      v32 = 68;
    }

    _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, v30, buf, v32);
    return v21;
  }

  v15 = [v14 objectAtIndex:0];
  if (v15)
  {
    v16 = v15;
    v17 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v15 outputSettings:v12];
    if (v17)
    {
      v18 = v17;
      [v17 setAlwaysCopiesSampleData:0];
      [a3 setPreparesMediaDataForRealTimeConsumption:1];
      [a3 addOutput:v18];
      v19 = [v16 formatDescriptions];
      v20 = v19;
      if (v19 && [v19 count])
      {
        +[VCAudioInjector internalAssetFormatWithFileFormat:](VCAudioInjector, "internalAssetFormatWithFileFormat:", CMAudioFormatDescriptionGetStreamBasicDescription([v20 objectAtIndex:0]));
        v21 = 0;
        v22 = *&buf[16];
        *&a5->mSampleRate = *buf;
        *&a5->mBytesPerPacket = v22;
        *&a5->mBitsPerChannel = *&buf[32];
        *a6 = v18;
        return v21;
      }

      if (objc_opt_class() == a1)
      {
        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v33 = VRTraceErrorLogLevelToCSTR();
        v34 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136316418;
        *&buf[4] = v33;
        *&buf[12] = 2080;
        *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
        *&buf[22] = 1024;
        *&buf[24] = 372;
        *&buf[28] = 2112;
        *&buf[30] = v20;
        *&buf[38] = 2112;
        v73 = v16;
        v74 = 2112;
        v75 = a4;
        v35 = " [%s] %s:%d Failed to retrieve the formatDescriptions=%@ for track=%@ asset=%@";
        v36 = v34;
        v37 = 58;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v25 = [a1 performSelector:sel_logPrefix];
        }

        else
        {
          v25 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() < 3)
        {
          return 0;
        }

        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          return 0;
        }

        *buf = 136316930;
        *&buf[4] = v40;
        *&buf[12] = 2080;
        *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
        *&buf[22] = 1024;
        *&buf[24] = 372;
        *&buf[28] = 2112;
        *&buf[30] = v25;
        *&buf[38] = 2048;
        v73 = a1;
        v74 = 2112;
        v75 = v20;
        v76 = 2112;
        v77 = v16;
        v78 = 2112;
        v79 = a4;
        v35 = " [%s] %s:%d %@(%p) Failed to retrieve the formatDescriptions=%@ for track=%@ asset=%@";
        v36 = v41;
        v37 = 78;
      }

      _os_log_error_impl(&dword_1DB56E000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      return 0;
    }

    v21 = -2142699510;
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        __str = 0;
        v44 = [objc_msgSend(v16 "description")];
        v45 = [objc_msgSend(v12 "description")];
        v46 = a4 ? [objc_msgSend(a4 "description")] : "<nil>";
        asprintf(&__str, "Instantiation of AVAssetReaderTrackOutput for track=%s with settings=%s failed for asset=%s", v44, v45, v46);
        if (__str)
        {
          __lasts = 0;
          v66 = strtok_r(__str, "\n", &__lasts);
          v67 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v68 = VRTraceErrorLogLevelToCSTR();
              v69 = *v67;
              if (os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = v68;
                *&buf[12] = 2080;
                *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
                *&buf[22] = 1024;
                *&buf[24] = 364;
                *&buf[28] = 2080;
                *&buf[30] = "";
                *&buf[38] = 2080;
                v73 = v66;
                _os_log_error_impl(&dword_1DB56E000, v69, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v66 = strtok_r(0, "\n", &__lasts);
          }

          while (v66);
          goto LABEL_83;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v27 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v27 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        __str = 0;
        v50 = [(__CFString *)v27 UTF8String];
        v51 = [objc_msgSend(v16 "description")];
        v52 = [objc_msgSend(v12 "description")];
        v53 = a4 ? [objc_msgSend(a4 "description")] : "<nil>";
        asprintf(&__str, "%s(%p) Instantiation of AVAssetReaderTrackOutput for track=%s with settings=%s failed for asset=%s", v50, a1, v51, v52, v53);
        if (__str)
        {
          __lasts = 0;
          v58 = strtok_r(__str, "\n", &__lasts);
          v59 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v60 = VRTraceErrorLogLevelToCSTR();
              v61 = *v59;
              if (os_log_type_enabled(*v59, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = v60;
                *&buf[12] = 2080;
                *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
                *&buf[22] = 1024;
                *&buf[24] = 364;
                *&buf[28] = 2080;
                *&buf[30] = "";
                *&buf[38] = 2080;
                v73 = v58;
                _os_log_error_impl(&dword_1DB56E000, v61, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v58 = strtok_r(0, "\n", &__lasts);
          }

          while (v58);
LABEL_83:
          free(__str);
        }
      }
    }
  }

  else
  {
    v21 = -2142699510;
    if (objc_opt_class() == a1)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        __str = 0;
        v42 = [objc_msgSend(v14 "description")];
        v43 = a4 ? [objc_msgSend(a4 "description")] : "<nil>";
        asprintf(&__str, "Failed to get audio track from tracks=%s asset=%s", v42, v43);
        if (__str)
        {
          __lasts = 0;
          v62 = strtok_r(__str, "\n", &__lasts);
          v63 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v64 = VRTraceErrorLogLevelToCSTR();
              v65 = *v63;
              if (os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = v64;
                *&buf[12] = 2080;
                *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
                *&buf[22] = 1024;
                *&buf[24] = 361;
                *&buf[28] = 2080;
                *&buf[30] = "";
                *&buf[38] = 2080;
                v73 = v62;
                _os_log_error_impl(&dword_1DB56E000, v65, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v62 = strtok_r(0, "\n", &__lasts);
          }

          while (v62);
          goto LABEL_83;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [a1 performSelector:sel_logPrefix];
      }

      else
      {
        v26 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        __str = 0;
        v47 = [(__CFString *)v26 UTF8String];
        v48 = [objc_msgSend(v14 "description")];
        v49 = a4 ? [objc_msgSend(a4 "description")] : "<nil>";
        asprintf(&__str, "%s(%p) Failed to get audio track from tracks=%s asset=%s", v47, a1, v48, v49);
        if (__str)
        {
          __lasts = 0;
          v54 = strtok_r(__str, "\n", &__lasts);
          v55 = MEMORY[0x1E6986650];
          do
          {
            if (VRTraceGetErrorLogLevelForModule() >= 3)
            {
              v56 = VRTraceErrorLogLevelToCSTR();
              v57 = *v55;
              if (os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
              {
                *buf = 136316162;
                *&buf[4] = v56;
                *&buf[12] = 2080;
                *&buf[14] = "+[VCAudioInjector setupReader:forAsset:assetAudioFormat:trackOutput:]";
                *&buf[22] = 1024;
                *&buf[24] = 361;
                *&buf[28] = 2080;
                *&buf[30] = "";
                *&buf[38] = 2080;
                v73 = v54;
                _os_log_error_impl(&dword_1DB56E000, v57, OS_LOG_TYPE_ERROR, " [%s] %s:%d %s %s", buf, 0x30u);
              }
            }

            v54 = strtok_r(0, "\n", &__lasts);
          }

          while (v54);
          goto LABEL_83;
        }
      }
    }
  }

  return v21;
}

- (int)setupAudioConverterWithAssetFormat:(const AudioStreamBasicDescription *)a3 audioConverter:(OpaqueAudioConverter *)a4
{
  v60 = *MEMORY[0x1E69E9840];
  p_outputFormat = &self->_outputFormat;
  v8 = *&self->_outputFormat.mBytesPerPacket;
  *&v44.mSampleRate = *&self->_outputFormat.mSampleRate;
  *&v44.mBytesPerPacket = v8;
  *&v44.mBitsPerChannel = *&self->_outputFormat.mBitsPerChannel;
  v9 = AudioConverterNew(a3, &v44, a4);
  if (v9)
  {
    v26 = v9;
    v24 = -2142699505;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector setupAudioConverterWithAssetFormat:audioConverter:];
        }
      }

      return v24;
    }

    if (objc_opt_respondsToSelector())
    {
      v27 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v27 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v24;
    }

    v30 = VRTraceErrorLogLevelToCSTR();
    v31 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v24;
    }

    inPropertyData = 136316418;
    v50 = v30;
    v51 = 2080;
    v52 = "[VCAudioInjector setupAudioConverterWithAssetFormat:audioConverter:]";
    v53 = 1024;
    v54 = 389;
    v55 = 2112;
    *v56 = v27;
    *&v56[8] = 2048;
    v57 = self;
    v58 = 1024;
    *v59 = v26;
    v32 = " [%s] %s:%d %@(%p) Failed to create the audio converter! err=%d";
    v33 = v31;
    v34 = 54;
LABEL_38:
    _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, v32, &inPropertyData, v34);
    return v24;
  }

  mChannelsPerFrame = p_outputFormat->mChannelsPerFrame;
  if (mChannelsPerFrame == a3->mChannelsPerFrame)
  {
    goto LABEL_5;
  }

  if (mChannelsPerFrame == 1)
  {
    inPropertyData = 1;
    AudioConverterSetProperty(*a4, 0x63686D70u, 4u, &inPropertyData);
LABEL_5:
    p_audioConverterProc = &self->_audioConverterProc;
    v12 = *&a3->mBitsPerChannel;
    v13 = *&a3->mBytesPerPacket;
    *&self->_audioConverterProc.streamDesc.mSampleRate = *&a3->mSampleRate;
    *&self->_audioConverterProc.streamDesc.mBytesPerPacket = v13;
    *&self->_audioConverterProc.streamDesc.mBitsPerChannel = v12;
    *__str = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v17 = FormatToCStr(&p_audioConverterProc->streamDesc, __str, 0x40uLL);
      inPropertyData = 136315906;
      v50 = v15;
      v51 = 2080;
      v52 = "[VCAudioInjector setupAudioConverterWithAssetFormat:audioConverter:]";
      v53 = 1024;
      v54 = 399;
      v55 = 2080;
      *v56 = v17;
      v18 = " [%s] %s:%d streamDescription=%s";
      v19 = v16;
      v20 = 38;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v14 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() < 7)
      {
        return 0;
      }

      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v23 = FormatToCStr(&self->_audioConverterProc.streamDesc, __str, 0x40uLL);
      inPropertyData = 136316418;
      v50 = v21;
      v51 = 2080;
      v52 = "[VCAudioInjector setupAudioConverterWithAssetFormat:audioConverter:]";
      v53 = 1024;
      v54 = 399;
      v55 = 2112;
      *v56 = v14;
      *&v56[8] = 2048;
      v57 = self;
      v58 = 2080;
      *v59 = v23;
      v18 = " [%s] %s:%d %@(%p) streamDescription=%s";
      v19 = v22;
      v20 = 58;
    }

    _os_log_impl(&dword_1DB56E000, v19, OS_LOG_TYPE_DEFAULT, v18, &inPropertyData, v20);
    return 0;
  }

  if (objc_opt_class() == self)
  {
    v35 = a3;
    v24 = -2142699505;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return v24;
    }

    v36 = VRTraceErrorLogLevelToCSTR();
    v37 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return v24;
    }

    v38 = v35->mChannelsPerFrame;
    v39 = p_outputFormat->mChannelsPerFrame;
    inPropertyData = 136316162;
    v50 = v36;
    v51 = 2080;
    v52 = "[VCAudioInjector setupAudioConverterWithAssetFormat:audioConverter:]";
    v53 = 1024;
    v54 = 393;
    v55 = 1024;
    *v56 = v38;
    *&v56[4] = 1024;
    *&v56[6] = v39;
    v32 = " [%s] %s:%d Unable to map the asset channels=%d to output channels=%d!";
    v33 = v37;
    v34 = 40;
    goto LABEL_38;
  }

  v28 = a3;
  if (objc_opt_respondsToSelector())
  {
    v29 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
  }

  else
  {
    v29 = &stru_1F570E008;
  }

  v24 = -2142699505;
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    v40 = VRTraceErrorLogLevelToCSTR();
    v41 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      v42 = v28->mChannelsPerFrame;
      v43 = p_outputFormat->mChannelsPerFrame;
      inPropertyData = 136316674;
      v50 = v40;
      v51 = 2080;
      v52 = "[VCAudioInjector setupAudioConverterWithAssetFormat:audioConverter:]";
      v53 = 1024;
      v54 = 393;
      v55 = 2112;
      *v56 = v29;
      *&v56[8] = 2048;
      v57 = self;
      v58 = 1024;
      *v59 = v42;
      *&v59[4] = 1024;
      *&v59[6] = v43;
      v32 = " [%s] %s:%d %@(%p) Unable to map the asset channels=%d to output channels=%d!";
      v33 = v41;
      v34 = 60;
      goto LABEL_38;
    }
  }

  return v24;
}

- (int)processSampleBuffer:(opaqueCMSampleBuffer *)a3 audioConverter:(OpaqueAudioConverter *)a4 audioBuffer:(opaqueVCAudioBufferList *)a5
{
  v64 = *MEMORY[0x1E69E9840];
  blockBufferOut = 0;
  memset(&bufferListOut, 170, sizeof(bufferListOut));
  AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(a3, 0, &bufferListOut, 0x18uLL, 0, 0, 1u, &blockBufferOut);
  if (AudioBufferListWithRetainedBlockBuffer)
  {
    v32 = AudioBufferListWithRetainedBlockBuffer;
    if (objc_opt_class() == self)
    {
      v24 = -2142699510;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:];
        }
      }

      goto LABEL_28;
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v33 = &stru_1F570E008;
    }

    v24 = -2142699510;
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_28;
    }

    v38 = VRTraceErrorLogLevelToCSTR();
    v39 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136316418;
    v48 = v38;
    v49 = 2080;
    v50 = "[VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:]";
    v51 = 1024;
    v52 = 411;
    v53 = 2112;
    *v54 = v33;
    *&v54[8] = 2048;
    v55 = self;
    v56 = 1024;
    v57 = v32;
    v29 = " [%s] %s:%d %@(%p) CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer failed! err=%d";
    v30 = v39;
    v31 = 54;
LABEL_32:
    _os_log_error_impl(&dword_1DB56E000, v30, OS_LOG_TYPE_ERROR, v29, buf, v31);
    goto LABEL_28;
  }

  [(VCAudioInjector *)self setAudioConverterProcAudioBufferList:&bufferListOut blockBuffer:blockBufferOut];
  ioPropertyDataSize = 4;
  outPropertyData = bufferListOut.mBuffers[0].mDataByteSize;
  Property = AudioConverterGetProperty(a4, 0x636F6273u, &ioPropertyDataSize, &outPropertyData);
  if (Property)
  {
    v10 = Property;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v11 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v11 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v12 = VRTraceErrorLogLevelToCSTR();
        v13 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v48 = v12;
          v49 = 2080;
          v50 = "[VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:]";
          v51 = 1024;
          v52 = 423;
          v53 = 2112;
          *v54 = v11;
          *&v54[8] = 2048;
          v55 = self;
          v56 = 1024;
          v57 = v10;
          _os_log_error_impl(&dword_1DB56E000, v13, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Fetching kAudioConverterPropertyCalculateOutputBufferSize failed with status=%d", buf, 0x36u);
        }
      }
    }
  }

  AudioBufferList = VCAudioBufferList_GetAudioBufferList(a5);
  v15 = *(AudioBufferList + 16);
  *&outOutputData.mNumberBuffers = *AudioBufferList;
  outOutputData.mBuffers[0].mData = v15;
  SampleCount = VCAudioBufferList_GetSampleCount(a5);
  SampleCapacity = VCAudioBufferList_GetSampleCapacity(a5);
  v18 = outPropertyData;
  mBytesPerPacket = self->_outputFormat.mBytesPerPacket;
  v20 = outPropertyData / mBytesPerPacket;
  ioOutputDataPacketSize = outPropertyData / mBytesPerPacket;
  if (outPropertyData / mBytesPerPacket + SampleCount > SampleCapacity)
  {
    v34 = SampleCapacity;
    if (objc_opt_class() == self)
    {
      v24 = -2142699517;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_28;
      }

      v36 = VRTraceErrorLogLevelToCSTR();
      v37 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136316418;
      v48 = v36;
      v49 = 2080;
      v50 = "[VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:]";
      v51 = 1024;
      v52 = 431;
      v53 = 1024;
      *v54 = v34 - SampleCount;
      *&v54[4] = 1024;
      *&v54[6] = v20;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v34;
      v29 = " [%s] %s:%d Didn't preallocate enough memory for the asset! remainingSampleCapacity=%u, neededSamples=%u, totalCapacity=%u";
      v30 = v37;
      v31 = 46;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v35 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v35 = &stru_1F570E008;
      }

      v24 = -2142699517;
      if (VRTraceGetErrorLogLevelForModule() < 3)
      {
        goto LABEL_28;
      }

      v42 = v20;
      v40 = VRTraceErrorLogLevelToCSTR();
      v41 = *MEMORY[0x1E6986650];
      if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136316930;
      v48 = v40;
      v49 = 2080;
      v50 = "[VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:]";
      v51 = 1024;
      v52 = 431;
      v53 = 2112;
      *v54 = v35;
      *&v54[8] = 2048;
      v55 = self;
      v56 = 1024;
      v57 = v34 - SampleCount;
      v58 = 1024;
      v59 = v42;
      v60 = 1024;
      v61 = v34;
      v29 = " [%s] %s:%d %@(%p) Didn't preallocate enough memory for the asset! remainingSampleCapacity=%u, neededSamples=%u, totalCapacity=%u";
      v30 = v41;
      v31 = 66;
    }

    goto LABEL_32;
  }

  mNumberBuffers = outOutputData.mNumberBuffers;
  if (outOutputData.mNumberBuffers)
  {
    v22 = mBytesPerPacket * SampleCount;
    p_mData = &outOutputData.mBuffers[0].mData;
    do
    {
      *p_mData = *p_mData + v22;
      *(p_mData - 1) = v18;
      p_mData += 2;
      --mNumberBuffers;
    }

    while (mNumberBuffers);
  }

  if (!AudioConverterFillComplexBuffer(a4, _VCAudioInjector_AudioConverterInput, &self->_audioConverterProc, &ioOutputDataPacketSize, &outOutputData, 0))
  {
    VCAudioBufferList_SetSampleCount(a5, ioOutputDataPacketSize + SampleCount);
    pthread_cond_signal(&self->_samplesConditional);
    v24 = 0;
    goto LABEL_28;
  }

  v24 = -2142699510;
  if (objc_opt_class() != self)
  {
    if (objc_opt_respondsToSelector())
    {
      v25 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v25 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_28;
    }

    v26 = VRTraceErrorLogLevelToCSTR();
    v27 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 136316162;
    v48 = v26;
    v49 = 2080;
    v50 = "[VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:]";
    v51 = 1024;
    v52 = 442;
    v53 = 2112;
    *v54 = v25;
    *&v54[8] = 2048;
    v55 = self;
    v29 = " [%s] %s:%d %@(%p) AudioConverterFillComplexBuffer failed!";
    v30 = v27;
    v31 = 48;
    goto LABEL_32;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      [VCAudioInjector processSampleBuffer:audioConverter:audioBuffer:];
    }
  }

LABEL_28:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v24;
}

- (int)loadSamplesFromTrackOutput:(id)a3 audioConverter:(OpaqueAudioConverter *)a4 audioBuffer:(opaqueVCAudioBufferList *)a5
{
  v9 = [a3 copyNextSampleBuffer];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = [(VCAudioInjector *)self processSampleBuffer:v10 audioConverter:a4 audioBuffer:a5];
      CFRelease(v10);
      if (v11 < 0)
      {
        break;
      }

      v10 = [a3 copyNextSampleBuffer];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  [(VCAudioInjector *)self cleanupAudioConverterProc];
  return v11;
}

- (int)allocateSampleBufferWithTrackOutput:(id)a3 assetAudioFormat:(const AudioStreamBasicDescription *)a4 sampleBuffer:(opaqueVCAudioBufferList *)a5
{
  v28 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v22[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = v7;
  v8 = [a3 track];
  if (v8)
  {
    [v8 timeRange];
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  *time = *(v22 + 8);
  *&time[16] = *(&v22[1] + 1);
  Seconds = CMTimeGetSeconds(time);
  p_outputFormat = &self->_outputFormat;
  v11 = ((Seconds + 1.0) * self->_outputFormat.mSampleRate);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 7)
    {
      goto LABEL_15;
    }

    v13 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *time = 136316162;
    *&time[4] = v13;
    *&time[12] = 2080;
    *&time[14] = "[VCAudioInjector allocateSampleBufferWithTrackOutput:assetAudioFormat:sampleBuffer:]";
    *&time[22] = 1024;
    *&time[24] = 469;
    *&time[28] = 1024;
    *&time[30] = v11;
    *&time[34] = 2048;
    *&time[36] = Seconds;
    v15 = " [%s] %s:%d Estimated sampleCount=%u, assetTimeSeconds=%f";
    v16 = v14;
    v17 = 44;
    goto LABEL_14;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
  }

  else
  {
    v12 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v18 = VRTraceErrorLogLevelToCSTR();
    v19 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      *time = 136316674;
      *&time[4] = v18;
      *&time[12] = 2080;
      *&time[14] = "[VCAudioInjector allocateSampleBufferWithTrackOutput:assetAudioFormat:sampleBuffer:]";
      *&time[22] = 1024;
      *&time[24] = 469;
      *&time[28] = 2112;
      *&time[30] = v12;
      *&time[38] = 2048;
      *&time[40] = self;
      v24 = 1024;
      v25 = v11;
      v26 = 2048;
      v27 = Seconds;
      v15 = " [%s] %s:%d %@(%p) Estimated sampleCount=%u, assetTimeSeconds=%f";
      v16 = v19;
      v17 = 64;
LABEL_14:
      _os_log_impl(&dword_1DB56E000, v16, OS_LOG_TYPE_DEFAULT, v15, time, v17);
    }
  }

LABEL_15:
  v20 = *&p_outputFormat->mBytesPerPacket;
  *time = *&p_outputFormat->mSampleRate;
  *&time[16] = v20;
  *&time[32] = *&p_outputFormat->mBitsPerChannel;
  if (VCAudioBufferList_Allocate(time, v11, a5))
  {
    return 0;
  }

  else
  {
    return -2142699517;
  }
}

- (void)parseMediaTracksForAsset:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  inAudioConverter = 0;
  v38 = 0;
  v36 = 0;
  if ([a3 statusOfValueForKey:@"tracks" error:0] != 2)
  {
    [VCAudioInjector parseMediaTracksForAsset:?];
    goto LABEL_27;
  }

  v35 = 0;
  v5 = [MEMORY[0x1E6987E78] assetReaderWithAsset:a3 error:&v35];
  if (v5)
  {
    v6 = v35 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    [VCAudioInjector parseMediaTracksForAsset:];
    goto LABEL_27;
  }

  v7 = v5;
  if ([VCAudioInjector setupReader:v5 forAsset:a3 assetAudioFormat:v39 trackOutput:&v38]< 0)
  {
    [VCAudioInjector parseMediaTracksForAsset:];
    goto LABEL_27;
  }

  if ([(VCAudioInjector *)self setupAudioConverterWithAssetFormat:v39 audioConverter:&inAudioConverter]< 0)
  {
    [VCAudioInjector parseMediaTracksForAsset:];
    goto LABEL_27;
  }

  if (([v7 startReading] & 1) == 0)
  {
    [VCAudioInjector parseMediaTracksForAsset:?];
    goto LABEL_27;
  }

  if ([(VCAudioInjector *)self allocateSampleBufferWithTrackOutput:v38 assetAudioFormat:v39 sampleBuffer:&v36]< 0)
  {
    [VCAudioInjector parseMediaTracksForAsset:?];
    goto LABEL_27;
  }

  v8 = [(VCAudioInjector *)self loadSamplesFromTrackOutput:v38 audioConverter:inAudioConverter audioBuffer:v36];
  SampleCount = VCAudioBufferList_GetSampleCount(v36);
  SampleCapacity = VCAudioBufferList_GetSampleCapacity(v36);
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v42 = v12;
        v43 = 2080;
        v44 = "[VCAudioInjector parseMediaTracksForAsset:]";
        v45 = 1024;
        v46 = 506;
        v47 = 1024;
        *v48 = SampleCount;
        *&v48[4] = 1024;
        *&v48[6] = SampleCapacity;
        *v49 = 2048;
        *&v49[2] = 1.0 - SampleCount / SampleCapacity;
        v14 = " [%s] %s:%d Used sampleCount=%u, sampleCapacity=%u, overhead=%f";
        v15 = v13;
        v16 = 50;
LABEL_21:
        _os_log_impl(&dword_1DB56E000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v11 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316930;
        v42 = v17;
        v43 = 2080;
        v44 = "[VCAudioInjector parseMediaTracksForAsset:]";
        v45 = 1024;
        v46 = 506;
        v47 = 2112;
        *v48 = v11;
        *&v48[8] = 2048;
        *v49 = self;
        *&v49[8] = 1024;
        v50 = SampleCount;
        v51 = 1024;
        v52 = SampleCapacity;
        v53 = 2048;
        v54 = 1.0 - SampleCount / SampleCapacity;
        v14 = " [%s] %s:%d %@(%p) Used sampleCount=%u, sampleCapacity=%u, overhead=%f";
        v15 = v18;
        v16 = 70;
        goto LABEL_21;
      }
    }
  }

  if (SampleCount)
  {
    if (v8 < 0)
    {
      [VCAudioInjector parseMediaTracksForAsset:];
    }

    else
    {
      if (self->_loopLength == -1.0)
      {
        [(VCCannedAVSync *)self->_avSync clear];
        [(VCCannedAVSync *)self->_avSync addStreamWithCount:SampleCount rate:self->_outputFormat.mSampleRate];
        self->_samplesInLoop = SampleCount;
      }

      [(VCAudioInjector *)self completeSetupWithSampleBuffer:&v36];
    }
  }

  else
  {
    [VCAudioInjector parseMediaTracksForAsset:];
  }

LABEL_27:
  v19 = [(VCAudioInjector *)self isReadyToInject];
  v20 = v19;
  if (v19)
  {
    v21 = 7;
  }

  else
  {
    v21 = 3;
  }

  if (objc_opt_class() == self)
  {
    if (v21 > VRTraceGetErrorLogLevelForModule())
    {
      goto LABEL_47;
    }

    v23 = VRTraceErrorLogLevelToCSTR();
    v24 = *MEMORY[0x1E6986650];
    v25 = *MEMORY[0x1E6986650];
    if (v20)
    {
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_47;
      }

      v26 = [(VCAudioInjector *)self isReadyToInject];
      *buf = 136315906;
      v42 = v23;
      v43 = 2080;
      v44 = "[VCAudioInjector parseMediaTracksForAsset:]";
      v45 = 1024;
      v46 = 518;
      v47 = 1024;
      *v48 = v26;
      v27 = " [%s] %s:%d isReadyToInject=%{BOOL}d";
      v28 = v24;
      v29 = 34;
LABEL_42:
      _os_log_impl(&dword_1DB56E000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_47;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(VCAudioInjector *)v23 parseMediaTracksForAsset:?];
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v22 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v22 = &stru_1F570E008;
    }

    if (v21 <= VRTraceGetErrorLogLevelForModule())
    {
      v30 = VRTraceErrorLogLevelToCSTR();
      v31 = *MEMORY[0x1E6986650];
      v32 = *MEMORY[0x1E6986650];
      if (v20)
      {
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_47;
        }

        v33 = [(VCAudioInjector *)self isReadyToInject];
        *buf = 136316418;
        v42 = v30;
        v43 = 2080;
        v44 = "[VCAudioInjector parseMediaTracksForAsset:]";
        v45 = 1024;
        v46 = 518;
        v47 = 2112;
        *v48 = v22;
        *&v48[8] = 2048;
        *v49 = self;
        *&v49[8] = 1024;
        v50 = v33;
        v27 = " [%s] %s:%d %@(%p) isReadyToInject=%{BOOL}d";
        v28 = v31;
        v29 = 54;
        goto LABEL_42;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v34 = [(VCAudioInjector *)self isReadyToInject];
        *buf = 136316418;
        v42 = v30;
        v43 = 2080;
        v44 = "[VCAudioInjector parseMediaTracksForAsset:]";
        v45 = 1024;
        v46 = 518;
        v47 = 2112;
        *v48 = v22;
        *&v48[8] = 2048;
        *v49 = self;
        *&v49[8] = 1024;
        v50 = v34;
        _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) isReadyToInject=%{BOOL}d", buf, 0x36u);
      }
    }
  }

LABEL_47:
  if (inAudioConverter)
  {
    AudioConverterDispose(inAudioConverter);
  }

  if (v36)
  {
    VCAudioBufferList_Destroy(&v36);
  }
}

- (int)loadEncodedAudioSamples
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:self->_cannedMoviePath];
  v4 = objc_alloc(MEMORY[0x1E6988168]);
  v25 = *MEMORY[0x1E6987BB8];
  v26[0] = MEMORY[0x1E695E118];
  v5 = [v4 initWithURL:v3 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v26, &v25, 1)}];
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__VCAudioInjector_loadEncodedAudioSamples__block_invoke;
    v12[3] = &unk_1E85F37F0;
    v12[4] = self;
    v12[5] = v5;
    [v5 loadValuesAsynchronouslyForKeys:&unk_1F579D398 completionHandler:v12];
    return 0;
  }

  else
  {
    v6 = -2142699469;
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector loadEncodedAudioSamples];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v8 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v8 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v9 = VRTraceErrorLogLevelToCSTR();
        v10 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          cannedMoviePath = self->_cannedMoviePath;
          *buf = 136316418;
          v14 = v9;
          v15 = 2080;
          v16 = "[VCAudioInjector loadEncodedAudioSamples]";
          v17 = 1024;
          v18 = 531;
          v19 = 2112;
          v20 = v8;
          v21 = 2048;
          v22 = self;
          v23 = 2112;
          v24 = cannedMoviePath;
          _os_log_error_impl(&dword_1DB56E000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Initialization of (audio) AVURLAsset for cannedMoviePath=%@ failed", buf, 0x3Au);
        }
      }
    }
  }

  return v6;
}

uint64_t __42__VCAudioInjector_loadEncodedAudioSamples__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [*(a1 + 32) parseMediaTracksForAsset:*(a1 + 40)];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 168);
      v7 = *(v5 + 408);
      v8 = *(v5 + 400);
      v10 = 136316674;
      v11 = v3;
      v12 = 2080;
      v13 = "[VCAudioInjector loadEncodedAudioSamples]_block_invoke";
      v14 = 1024;
      v15 = 536;
      v16 = 2112;
      v17 = v5;
      v18 = 1024;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_1DB56E000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d injector=%@, _audioSampleCount=%d, _loopLength=%f, _samplesInLoop=%d", &v10, 0x3Cu);
    }
  }

  return [v2 drain];
}

+ (id)defaultAudioFileNameWithFormat:(const AudioStreamBasicDescription *)a3
{
  if ((a3->mFormatFlags & 1) == 0)
  {
    return @"1x22050.raw";
  }

  mSampleRate = a3->mSampleRate;
  if (a3->mSampleRate == 22050.0)
  {
    return @"1x22050-flt.raw";
  }

  if (mSampleRate == 24000.0)
  {
    return @"1x24000-flt.raw";
  }

  if (mSampleRate == 48000.0)
  {
    return @"2x48000-flt.raw";
  }

  return 0;
}

- (int)loadRawAudioSamples
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0;
  p_outputFormat = &self->_outputFormat;
  v4 = [VCAudioInjector defaultAudioFileNameWithFormat:&self->_outputFormat];
  if (!v4)
  {
    if (objc_opt_class() == self)
    {
      v22 = -2142699510;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector loadRawAudioSamples];
LABEL_48:
          v16 = 0;
          v5 = 0;
          v22 = -2142699510;
          goto LABEL_17;
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v24 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v24 = &stru_1F570E008;
      }

      v22 = -2142699510;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v28 = VRTraceErrorLogLevelToCSTR();
        v29 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleRate) = 136316162;
          *(&buf.mSampleRate + 4) = v28;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCAudioInjector loadRawAudioSamples]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 571;
          LOWORD(buf.mChannelsPerFrame) = 2112;
          *(&buf.mChannelsPerFrame + 2) = v24;
          HIWORD(buf.mReserved) = 2048;
          v38 = self;
          _os_log_error_impl(&dword_1DB56E000, v29, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to retrieve audio file name", &buf, 0x30u);
          goto LABEL_48;
        }
      }
    }

LABEL_53:
    v16 = 0;
    v5 = 0;
    goto LABEL_17;
  }

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", self->_cannedMoviePath, v4];
  v6 = objc_opt_class();
  if (!v5)
  {
    if (v6 == self)
    {
      v22 = -2142699517;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector loadRawAudioSamples];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v25 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v25 = &stru_1F570E008;
      }

      v22 = -2142699517;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v30 = VRTraceErrorLogLevelToCSTR();
        v31 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleRate) = 136316162;
          *(&buf.mSampleRate + 4) = v30;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCAudioInjector loadRawAudioSamples]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 574;
          LOWORD(buf.mChannelsPerFrame) = 2112;
          *(&buf.mChannelsPerFrame + 2) = v25;
          HIWORD(buf.mReserved) = 2048;
          v38 = self;
          _os_log_error_impl(&dword_1DB56E000, v31, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate the asset path", &buf, 0x30u);
        }
      }
    }

    goto LABEL_53;
  }

  if (v6 == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.mSampleRate) = 136315906;
        *(&buf.mSampleRate + 4) = v8;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioInjector loadRawAudioSamples]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 577;
        LOWORD(buf.mChannelsPerFrame) = 2112;
        *(&buf.mChannelsPerFrame + 2) = v5;
        v10 = " [%s] %s:%d reading sample data from assetPath=%@";
        v11 = v9;
        v12 = 38;
LABEL_13:
        _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v10, &buf, v12);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v7 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v13 = VRTraceErrorLogLevelToCSTR();
      v14 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.mSampleRate) = 136316418;
        *(&buf.mSampleRate + 4) = v13;
        LOWORD(buf.mFormatFlags) = 2080;
        *(&buf.mFormatFlags + 2) = "[VCAudioInjector loadRawAudioSamples]";
        HIWORD(buf.mFramesPerPacket) = 1024;
        buf.mBytesPerFrame = 577;
        LOWORD(buf.mChannelsPerFrame) = 2112;
        *(&buf.mChannelsPerFrame + 2) = v7;
        HIWORD(buf.mReserved) = 2048;
        v38 = self;
        v39 = 2112;
        v40 = v5;
        v10 = " [%s] %s:%d %@(%p) reading sample data from assetPath=%@";
        v11 = v14;
        v12 = 58;
        goto LABEL_13;
      }
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithContentsOfFile:v5];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 length];
    mBytesPerFrame = self->_outputFormat.mBytesPerFrame;
    v19 = *&self->_outputFormat.mBytesPerPacket;
    *&buf.mSampleRate = *&p_outputFormat->mSampleRate;
    *&buf.mBytesPerPacket = v19;
    *&buf.mBitsPerChannel = *&self->_outputFormat.mBitsPerChannel;
    if (VCAudioBufferList_Allocate(&buf, v17 / mBytesPerFrame, &v36))
    {
      AudioBufferList = VCAudioBufferList_GetAudioBufferList(v36);
      v21 = [v16 length] / self->_outputFormat.mBytesPerFrame;
      [v16 getBytes:*(AudioBufferList + 16) length:{objc_msgSend(v16, "length")}];
      *(AudioBufferList + 12) = [v16 length];
      VCAudioBufferList_SetSampleCount(v36, v21);
      [(VCCannedAVSync *)self->_avSync addStreamWithCount:v21 rate:p_outputFormat->mSampleRate];
      [(VCAudioInjector *)self completeSetupWithSampleBuffer:&v36];
      v22 = 0;
    }

    else
    {
      v22 = -2142699517;
      if (objc_opt_class() == self)
      {
        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          VRTraceErrorLogLevelToCSTR();
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            [VCAudioInjector loadRawAudioSamples];
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v27 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
        }

        else
        {
          v27 = &stru_1F570E008;
        }

        if (VRTraceGetErrorLogLevelForModule() >= 3)
        {
          v34 = VRTraceErrorLogLevelToCSTR();
          v35 = *MEMORY[0x1E6986650];
          if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.mSampleRate) = 136316162;
            *(&buf.mSampleRate + 4) = v34;
            LOWORD(buf.mFormatFlags) = 2080;
            *(&buf.mFormatFlags + 2) = "[VCAudioInjector loadRawAudioSamples]";
            HIWORD(buf.mFramesPerPacket) = 1024;
            buf.mBytesPerFrame = 582;
            LOWORD(buf.mChannelsPerFrame) = 2112;
            *(&buf.mChannelsPerFrame + 2) = v27;
            HIWORD(buf.mReserved) = 2048;
            v38 = self;
            _os_log_error_impl(&dword_1DB56E000, v35, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to allocate the sampleBuffer", &buf, 0x30u);
          }
        }
      }
    }
  }

  else
  {
    if (objc_opt_class() == self)
    {
      v22 = -2142699517;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector loadRawAudioSamples];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v26 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v26 = &stru_1F570E008;
      }

      v22 = -2142699517;
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v32 = VRTraceErrorLogLevelToCSTR();
        v33 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleRate) = 136316162;
          *(&buf.mSampleRate + 4) = v32;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCAudioInjector loadRawAudioSamples]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 579;
          LOWORD(buf.mChannelsPerFrame) = 2112;
          *(&buf.mChannelsPerFrame + 2) = v26;
          HIWORD(buf.mReserved) = 2048;
          v38 = self;
          _os_log_error_impl(&dword_1DB56E000, v33, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to load the asset data", &buf, 0x30u);
        }
      }
    }

    v16 = 0;
  }

LABEL_17:
  if (v36)
  {
    VCAudioBufferList_Destroy(&v36);
  }

  return v22;
}

- (int)setupSineInjectionWithConfig:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = 0;
  p_outputFormat = &self->_outputFormat;
  mSampleRate = self->_outputFormat.mSampleRate;
  [a3 startHostTime];
  v8 = v7;
  [a3 loopLength];
  mSampleRate_low = [(VCAudioInjector *)self setupAVSyncWithStartHostTime:v8 loopLength:v9];
  if (mSampleRate_low < 0)
  {
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          [VCAudioInjector setupSineInjectionWithConfig:];
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v39 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v39 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v40 = VRTraceErrorLogLevelToCSTR();
        v41 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.mSampleRate) = 136316418;
          *(&buf.mSampleRate + 4) = v40;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCAudioInjector setupSineInjectionWithConfig:]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 609;
          LOWORD(buf.mChannelsPerFrame) = 2112;
          *(&buf.mChannelsPerFrame + 2) = v39;
          HIWORD(buf.mReserved) = 2048;
          v44 = self;
          v45 = 1024;
          v46 = mSampleRate_low;
          _os_log_error_impl(&dword_1DB56E000, v41, OS_LOG_TYPE_ERROR, " [%s] %s:%d %@(%p) Failed to setup the AV sync. result=%x", &buf, 0x36u);
        }
      }
    }
  }

  else
  {
    v11 = mSampleRate;
    v12 = *&p_outputFormat->mBytesPerPacket;
    *&buf.mSampleRate = *&p_outputFormat->mSampleRate;
    *&buf.mBytesPerPacket = v12;
    *&buf.mBitsPerChannel = *&p_outputFormat->mBitsPerChannel;
    if (!VCAudioBufferList_Allocate(&buf, mSampleRate, &v42))
    {
      [VCAudioInjector setupSineInjectionWithConfig:];
      mSampleRate_low = LODWORD(buf.mSampleRate);
      goto LABEL_20;
    }

    AudioBufferList = VCAudioBufferList_GetAudioBufferList(v42);
    SampleFormat = VCAudioBufferList_GetSampleFormat(v42);
    Timestamp = VCAudioBufferList_GetTimestamp(v42);
    [a3 sineWaveAmplitude];
    v17 = v16;
    v18 = [a3 sineWaveFrequencyHz];
    if (v11)
    {
      v19 = 0;
      v20 = v18;
      v21 = *SampleFormat;
      v24 = *AudioBufferList;
      v22 = (AudioBufferList + 4);
      v23 = v24;
      do
      {
        v25 = sin((Timestamp + v19) * 6.28318531 * v20 / v21);
        if (v23)
        {
          v26 = v17 * v25;
          v27 = v23;
          v28 = v22;
          do
          {
            v29 = *v28;
            v28 += 2;
            *(v29 + 4 * v19) = v26;
            --v27;
          }

          while (v27);
        }

        ++v19;
      }

      while (v19 != v11);
    }

    VCAudioBufferList_SetSampleCount(v42, mSampleRate);
    [(VCAudioInjector *)self completeSetupWithSampleBuffer:&v42];
    if (objc_opt_class() == self)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v31 = VRTraceErrorLogLevelToCSTR();
        v32 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mSampleRate) = 136315650;
          *(&buf.mSampleRate + 4) = v31;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCAudioInjector setupSineInjectionWithConfig:]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 628;
          v33 = " [%s] %s:%d Successfully setup sine injection.";
          v34 = v32;
          v35 = 28;
LABEL_19:
          _os_log_impl(&dword_1DB56E000, v34, OS_LOG_TYPE_DEFAULT, v33, &buf, v35);
        }
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v30 = [(VCAudioInjector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v30 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v36 = VRTraceErrorLogLevelToCSTR();
        v37 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.mSampleRate) = 136316162;
          *(&buf.mSampleRate + 4) = v36;
          LOWORD(buf.mFormatFlags) = 2080;
          *(&buf.mFormatFlags + 2) = "[VCAudioInjector setupSineInjectionWithConfig:]";
          HIWORD(buf.mFramesPerPacket) = 1024;
          buf.mBytesPerFrame = 628;
          LOWORD(buf.mChannelsPerFrame) = 2112;
          *(&buf.mChannelsPerFrame + 2) = v30;
          HIWORD(buf.mReserved) = 2048;
          v44 = self;
          v33 = " [%s] %s:%d %@(%p) Successfully setup sine injection.";
          v34 = v37;
          v35 = 48;
          goto LABEL_19;
        }
      }
    }
  }

LABEL_20:
  VCAudioBufferList_Destroy(&v42);
  return mSampleRate_low;
}

- (void)initWithConfig:(uint64_t)a1 .cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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

- (void)initWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAssetInjectionWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = -2142699519;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAssetInjectionWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupAssetInjectionWithConfig:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)setupAssetInjectionWithConfig:.cold.4()
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)isAudioAvailable:(uint64_t)a1 fileName:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  if ([a2 absoluteString])
  {
    [objc_msgSend(objc_msgSend(a2 "absoluteString")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

+ (void)isAudioAvailable:(uint64_t)a1 fileName:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  if ([a2 absoluteString])
  {
    [objc_msgSend(objc_msgSend(a2 "absoluteString")];
  }

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);
}

+ (void)isAudioAvailable:fileName:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

+ (void)setupReader:forAsset:assetAudioFormat:trackOutput:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = -2142699517;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupAudioConverterWithAssetFormat:audioConverter:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processSampleBuffer:audioConverter:audioBuffer:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processSampleBuffer:audioConverter:audioBuffer:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

- (void)processSampleBuffer:audioConverter:audioBuffer:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)parseMediaTracksForAsset:(uint64_t)a1 .cold.1(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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

- (void)parseMediaTracksForAsset:(uint64_t)a1 .cold.2(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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

- (void)parseMediaTracksForAsset:.cold.3()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)parseMediaTracksForAsset:.cold.4()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    VCAudioBufferList_GetSampleCapacity(*v0);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v7 = 40;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      VCAudioBufferList_GetSampleCapacity(*v0);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v7 = 60;
      goto LABEL_11;
    }
  }
}

- (void)parseMediaTracksForAsset:(uint64_t)a1 .cold.5(uint64_t a1)
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
    OUTLINED_FUNCTION_9_0();
    v6 = 28;
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

- (void)parseMediaTracksForAsset:.cold.6()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)parseMediaTracksForAsset:.cold.7()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_2();
    v6 = 34;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_17_0();
      v6 = 54;
      goto LABEL_11;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_39_0();
}

- (void)parseMediaTracksForAsset:.cold.8()
{
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v0)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      return;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_2();
    v6 = 38;
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    return;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_9_9();
      OUTLINED_FUNCTION_17_0();
      v6 = 58;
      goto LABEL_11;
    }
  }
}

- (void)parseMediaTracksForAsset:(uint64_t)a1 .cold.9(uint64_t a1, void *a2)
{
  [a2 isReadyToInject];
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_9_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
}

- (void)loadEncodedAudioSamples
{
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)loadRawAudioSamples
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

- (void)setupSineInjectionWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_11_0();
  if (objc_opt_class() == v1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_28())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2();
    v7 = 28;
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_38_0())
  {
    OUTLINED_FUNCTION_37_0();
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_31())
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_17_0();
      v7 = 48;
      goto LABEL_11;
    }
  }

LABEL_9:
  *v0 = -2142699517;
  OUTLINED_FUNCTION_39_0();
}

- (void)setupSineInjectionWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

@end