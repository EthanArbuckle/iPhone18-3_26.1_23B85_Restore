@interface PHASEChannelMixerDefinition
- (PHASEChannelMixerDefinition)init;
- (PHASEChannelMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout;
- (PHASEChannelMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout identifier:(NSString *)identifier;
@end

@implementation PHASEChannelMixerDefinition

- (PHASEChannelMixerDefinition)init
{
  [(PHASEChannelMixerDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEChannelMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout identifier:(NSString *)identifier
{
  v6 = layout;
  v7 = identifier;
  v8 = [(PHASEChannelMixerDefinition *)self initWithChannelLayout:v6];
  v9 = v8;
  if (v8)
  {
    [(PHASEDefinition *)v8 setIdentifier:v7];
    v10 = v9;
  }

  return v9;
}

- (PHASEChannelMixerDefinition)initWithChannelLayout:(AVAudioChannelLayout *)layout
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = layout;
  v13.receiver = self;
  v13.super_class = PHASEChannelMixerDefinition;
  v6 = [(PHASEMixerDefinition *)&v13 initInternal];
  if (!v6)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v7 = [(AVAudioChannelLayout *)v5 layout];
  v9 = Phase::ChannelLayout::IsLayoutSupported(v7, v8);
  if ((v9 & 1) == 0)
  {
    v11 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "PHASEMixer.mm";
      v16 = 1024;
      v17 = 169;
      _os_log_impl(&dword_23A302000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to initialize Channel Mixer Definition: unsupported channel layout", buf, 0x12u);
    }

    goto LABEL_6;
  }

  objc_storeStrong(v6 + 4, layout);
  v10 = v6;
LABEL_7:

  return v10;
}

@end