@interface AVAudioMixEffect
- (AVAudioMixEffect)init;
@end

@implementation AVAudioMixEffect

- (AVAudioMixEffect)init
{
  v6.receiver = self;
  v6.super_class = AVAudioMixEffect;
  v3 = [(AVAudioMixEffect *)&v6 init];
  if (v3)
  {
    v4 = objc_opt_class();
    AVRequireConcreteObject(v3, a2, v4);
  }

  return v3;
}

@end