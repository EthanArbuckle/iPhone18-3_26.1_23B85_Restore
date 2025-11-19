@interface PHASEPushStreamNodeDefinition
- (PHASEPushStreamNodeDefinition)init;
- (PHASEPushStreamNodeDefinition)initWithMixerDefinition:(PHASEMixerDefinition *)mixerDefinition format:(AVAudioFormat *)format;
- (PHASEPushStreamNodeDefinition)initWithMixerDefinition:(PHASEMixerDefinition *)mixerDefinition format:(AVAudioFormat *)format identifier:(NSString *)identifier;
- (void)setTargetLKFS:(id)a3;
@end

@implementation PHASEPushStreamNodeDefinition

- (PHASEPushStreamNodeDefinition)init
{
  [(PHASEPushStreamNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEPushStreamNodeDefinition)initWithMixerDefinition:(PHASEMixerDefinition *)mixerDefinition format:(AVAudioFormat *)format identifier:(NSString *)identifier
{
  v8 = mixerDefinition;
  v9 = format;
  v10 = identifier;
  v11 = [(PHASEPushStreamNodeDefinition *)self initWithMixerDefinition:v8 format:v9];
  v12 = v11;
  if (v11)
  {
    [(PHASEDefinition *)v11 setIdentifier:v10];
  }

  return v12;
}

- (PHASEPushStreamNodeDefinition)initWithMixerDefinition:(PHASEMixerDefinition *)mixerDefinition format:(AVAudioFormat *)format
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = mixerDefinition;
  v7 = format;
  v32.receiver = self;
  v32.super_class = PHASEPushStreamNodeDefinition;
  v8 = [(PHASEGeneratorNodeDefinition *)&v32 initInternal:v6];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = [(AVAudioFormat *)v7 commonFormat];
  if (v9 == 1)
  {
    if ([(AVAudioFormat *)v7 channelCount]< 2 || (v9 = [(AVAudioFormat *)v7 isInterleaved], !v9))
    {
      v15 = [(AVAudioFormat *)v7 channelLayout];
      v16 = v15 == 0;

      if (!v16)
      {
        v17 = v7;
        v18 = v8[10];
        v8[10] = v17;
LABEL_20:

        *(v8 + 72) = 0;
        v26 = [MEMORY[0x277CCABB0] numberWithDouble:-12.0];
        v27 = v8[11];
        v8[11] = v26;

LABEL_21:
        v14 = v8;
        goto LABEL_22;
      }

      v19 = [(AVAudioFormat *)v7 channelCount];
      switch(v19)
      {
        case 0:
          v29 = **(Phase::Logger::GetInstance(v19) + 448);
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_8;
          }

          *buf = 136315394;
          v34 = "PHASESoundEventNodes.mm";
          v35 = 1024;
          v36 = 665;
          v11 = "%25s:%-5d Failed to initialize new instance of PHASEPushStreamNodeDefinition. An AVAudioFormat object with a nil channelLayout and channelCount of 0 was provided which is invalid.";
          v12 = v29;
          v13 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_7;
        case 1:
          v20 = 6553601;
          v21 = **(Phase::Logger::GetInstance(v19) + 448);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
LABEL_19:
            v18 = [objc_alloc(MEMORY[0x277CB8368]) initWithLayoutTag:v20];
            v23 = objc_alloc(MEMORY[0x277CB83A8]);
            [(AVAudioFormat *)v7 sampleRate];
            v24 = [v23 initStandardFormatWithSampleRate:v18 channelLayout:?];
            v25 = v8[10];
            v8[10] = v24;

            goto LABEL_20;
          }

          *buf = 136315394;
          v34 = "PHASESoundEventNodes.mm";
          v35 = 1024;
          v36 = 672;
          v22 = "%25s:%-5d An AVAudioFormat object with a nil channelLayout and channelCount of 1 was provided to PHASEPushStreamNodeDefinition.initWithMixerDefinition. Note that a mono channelLayout will be automatically assigned to the audio format property.";
          break;
        case 2:
          v20 = 6619138;
          v21 = **(Phase::Logger::GetInstance(v19) + 448);
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 136315394;
          v34 = "PHASESoundEventNodes.mm";
          v35 = 1024;
          v36 = 681;
          v22 = "%25s:%-5d An AVAudioFormat object with a nil channelLayout and channelCount of 2 was provided to PHASEPushStreamNodeDefinition.initWithMixerDefinition. Note that a stereo channelLayout will be automatically assigned to the audio format property";
          break;
        default:
          v30 = **(Phase::Logger::GetInstance(v19) + 448);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = [(AVAudioFormat *)v7 channelCount];
            *buf = 136315650;
            v34 = "PHASESoundEventNodes.mm";
            v35 = 1024;
            v36 = 692;
            v37 = 1024;
            v38 = v31;
            _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d It's unexpected to have an AVAudioFormat object with a nil channelLayout for a channel count of %d. Please verify the AVAudioFormat API has not changed for channelCounts > 2.", buf, 0x18u);
          }

          goto LABEL_8;
      }

      _os_log_impl(&dword_23A302000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x12u);
      goto LABEL_19;
    }
  }

  v10 = **(Phase::Logger::GetInstance(v9) + 448);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v34 = "PHASESoundEventNodes.mm";
    v35 = 1024;
    v36 = 649;
    v11 = "%25s:%-5d Audio Format must be deinterleaved 32-bit floating-point PCM.";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
LABEL_7:
    _os_log_impl(&dword_23A302000, v12, v13, v11, buf, 0x12u);
  }

LABEL_8:
  v14 = 0;
LABEL_22:

  return v14;
}

- (void)setTargetLKFS:(id)a3
{
  v12 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [v12 doubleValue];
  v9 = PHASEGetPropertyBounded<double>(v6, v7, v8, -100.0, 0.0);

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  targetLKFS = self->_targetLKFS;
  self->_targetLKFS = v10;
}

@end