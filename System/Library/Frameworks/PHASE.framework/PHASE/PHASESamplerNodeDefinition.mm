@interface PHASESamplerNodeDefinition
- (PHASESamplerNodeDefinition)init;
- (PHASESamplerNodeDefinition)initWithSoundAssetIdentifier:(NSString *)soundAssetIdentifier mixerDefinition:(PHASEMixerDefinition *)mixerDefinition;
- (PHASESamplerNodeDefinition)initWithSoundAssetIdentifier:(NSString *)soundAssetIdentifier mixerDefinition:(PHASEMixerDefinition *)mixerDefinition identifier:(NSString *)identifier;
@end

@implementation PHASESamplerNodeDefinition

- (PHASESamplerNodeDefinition)init
{
  [(PHASESamplerNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESamplerNodeDefinition)initWithSoundAssetIdentifier:(NSString *)soundAssetIdentifier mixerDefinition:(PHASEMixerDefinition *)mixerDefinition identifier:(NSString *)identifier
{
  v8 = soundAssetIdentifier;
  v9 = mixerDefinition;
  v10 = identifier;
  v11 = [(PHASESamplerNodeDefinition *)self initWithSoundAssetIdentifier:v8 mixerDefinition:v9];
  v12 = v11;
  if (v11)
  {
    [(PHASEDefinition *)v11 setIdentifier:v10];
  }

  return v12;
}

- (PHASESamplerNodeDefinition)initWithSoundAssetIdentifier:(NSString *)soundAssetIdentifier mixerDefinition:(PHASEMixerDefinition *)mixerDefinition
{
  v7 = soundAssetIdentifier;
  v8 = mixerDefinition;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = PHASESamplerNodeDefinition;
    v9 = [(PHASEGeneratorNodeDefinition *)&v13 initInternal:v8];
    v10 = v9;
    if (v9)
    {
      objc_storeStrong(v9 + 9, soundAssetIdentifier);
      v10[10] = 0;
      v10[11] = 0;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a sampler with a nil soundAssetUID"];
    selfCopy = 0;
  }

  return selfCopy;
}

@end