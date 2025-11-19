@interface AVTClassicPresentationConfiguration
+ (id)sharedConfiguration;
@end

@implementation AVTClassicPresentationConfiguration

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    +[AVTClassicPresentationConfiguration sharedConfiguration];
  }

  v3 = sharedConfiguration_sharedConfiguration;

  return v3;
}

uint64_t __58__AVTClassicPresentationConfiguration_sharedConfiguration__block_invoke()
{
  v0 = [(AVTPresentationConfiguration *)[AVTClassicPresentationConfiguration alloc] _initWithStyle:0];
  v1 = sharedConfiguration_sharedConfiguration;
  sharedConfiguration_sharedConfiguration = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end