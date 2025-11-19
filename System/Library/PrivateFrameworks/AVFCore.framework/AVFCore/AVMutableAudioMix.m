@interface AVMutableAudioMix
+ (AVMutableAudioMix)audioMix;
- (NSArray)inputParameters;
- (void)setInputParameters:(NSArray *)inputParameters;
@end

@implementation AVMutableAudioMix

+ (AVMutableAudioMix)audioMix
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NSArray)inputParameters
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMix;
  return [(AVAudioMix *)&v3 inputParameters];
}

- (void)setInputParameters:(NSArray *)inputParameters
{
  v3.receiver = self;
  v3.super_class = AVMutableAudioMix;
  [(AVAudioMix *)&v3 setInputParameters:inputParameters];
}

@end