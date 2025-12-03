@interface PHASEAmbientMixerDefinition
- (PHASEAmbientMixerDefinition)init;
- (PHASEAmbientMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout orientation:(simd_quatf)orientation;
- (PHASEAmbientMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout orientation:(simd_quatf)orientation identifier:(NSString *)identifier;
@end

@implementation PHASEAmbientMixerDefinition

- (PHASEAmbientMixerDefinition)init
{
  [(PHASEAmbientMixerDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEAmbientMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout orientation:(simd_quatf)orientation identifier:(NSString *)identifier
{
  v13 = *orientation.vector.i64;
  v7 = layout;
  v8 = identifier;
  v9 = [(PHASEAmbientMixerDefinition *)self initWithChannelLayout:v7 orientation:v13];
  v10 = v9;
  if (v9)
  {
    [(PHASEDefinition *)v9 setIdentifier:v8];
    v11 = v10;
  }

  return v10;
}

- (PHASEAmbientMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout orientation:(simd_quatf)orientation
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = layout;
  v20.receiver = self;
  v20.super_class = PHASEAmbientMixerDefinition;
  initInternal = [(PHASEMixerDefinition *)&v20 initInternal];
  if (!initInternal)
  {
    goto LABEL_11;
  }

  layout = [(AVAudioChannelLayout *)v6 layout];
  v10 = Phase::ChannelLayout::IsLayoutSupported(layout, v9);
  if (v10)
  {
    v11 = 1.0 - sqrtf(vmuls_lane_f32(orientation.vector.f32[3], orientation, 3) + (vmuls_lane_f32(orientation.vector.f32[2], orientation, 2) + (vmulq_f32(orientation, orientation).f32[0] + vmuls_lane_f32(orientation.vector.f32[1], *orientation.vector.f32, 1))));
    if (v11 < 0.0)
    {
      v11 = -v11;
    }

    if (v11 <= 0.1)
    {
      *(initInternal + 3) = orientation;
      objc_storeStrong(initInternal + 5, layout);
      v17 = initInternal;
      goto LABEL_12;
    }

    v12 = **(Phase::Logger::GetInstance(v10) + 448);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v22 = "PHASEMixer.mm";
      v23 = 1024;
      v24 = 222;
      v25 = 2048;
      v26 = orientation.vector.f32[0];
      v27 = 2048;
      v28 = orientation.vector.f32[1];
      v29 = 2048;
      v30 = orientation.vector.f32[2];
      v31 = 2048;
      v32 = orientation.vector.f32[3];
      v13 = "%25s:%-5d Failed to initialize Ambient Mixer Definition: orientation [%f, %f, %f, %f] must be normalized";
      v14 = v12;
      v15 = 58;
LABEL_10:
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }
  }

  else
  {
    v16 = **(Phase::Logger::GetInstance(v10) + 448);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "PHASEMixer.mm";
      v23 = 1024;
      v24 = 214;
      v13 = "%25s:%-5d Failed to initialize Ambient Mixer Definition: unsupported channel layout";
      v14 = v16;
      v15 = 18;
      goto LABEL_10;
    }
  }

LABEL_11:
  v17 = 0;
LABEL_12:

  return v17;
}

@end