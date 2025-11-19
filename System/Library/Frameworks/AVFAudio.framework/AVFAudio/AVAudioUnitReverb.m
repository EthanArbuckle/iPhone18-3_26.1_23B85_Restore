@interface AVAudioUnitReverb
- (AVAudioUnitReverb)init;
- (float)wetDryMix;
- (void)loadFactoryPreset:(AVAudioUnitReverbPreset)preset;
- (void)setWetDryMix:(float)wetDryMix;
@end

@implementation AVAudioUnitReverb

- (float)wetDryMix
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super.super._impl);
  [(AVAudioUnit *)self valueForParam:0];
  v4 = v3;
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }

  return v4;
}

- (void)setWetDryMix:(float)wetDryMix
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super.super._impl);
  *&v5 = wetDryMix;
  [(AVAudioUnit *)self setValue:0 forParam:v5];
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    v6 = v7;

    std::recursive_mutex::unlock(v6);
  }
}

- (void)loadFactoryPreset:(AVAudioUnitReverbPreset)preset
{
  v3 = preset;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super.super._impl);
  v5 = v3;
  (*(*self->super.super.super._impl + 144))(self->super.super.super._impl, 10, 0, 0, &v5, 4);
  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  if (v7 == 1)
  {
    std::recursive_mutex::unlock(v6);
  }
}

- (AVAudioUnitReverb)init
{
  v6 = xmmword_1BA6CF370;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AVAudioUnitReverb;
  v2 = [(AVAudioUnitEffect *)&v5 initWithAudioComponentDescription:&v6];
  v3 = v2;
  if (v2)
  {
    [(AVAudioUnitReverb *)v2 loadFactoryPreset:3];
  }

  return v3;
}

@end