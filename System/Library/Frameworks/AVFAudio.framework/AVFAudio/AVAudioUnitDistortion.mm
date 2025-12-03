@interface AVAudioUnitDistortion
- (AUPreset)FillOutAUPreset:(int64_t)preset;
- (AVAudioUnitDistortion)init;
- (float)preGain;
- (float)wetDryMix;
- (void)loadFactoryPreset:(AVAudioUnitDistortionPreset)preset;
- (void)setPreGain:(float)preGain;
- (void)setWetDryMix:(float)wetDryMix;
@end

@implementation AVAudioUnitDistortion

- (float)wetDryMix
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super.super._impl);
  [(AVAudioUnit *)self valueForParam:15];
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

- (float)preGain
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, self->super.super.super._impl);
  [(AVAudioUnit *)self valueForParam:14];
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
  [(AVAudioUnit *)self setValue:15 forParam:v5];
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

- (void)setPreGain:(float)preGain
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super.super._impl);
  *&v5 = preGain;
  [(AVAudioUnit *)self setValue:14 forParam:v5];
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

- (void)loadFactoryPreset:(AVAudioUnitDistortionPreset)preset
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super.super._impl);
  v6[0] = [(AVAudioUnitDistortion *)self FillOutAUPreset:preset];
  v6[1] = v5;
  (*(*self->super.super.super._impl + 144))(self->super.super.super._impl, 36, 0, 0, v6, 16);
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }
}

- (AUPreset)FillOutAUPreset:(int64_t)preset
{
  if (preset > 0x15)
  {
    v4 = 0;
    presetCopy = 0xFFFFFFFFLL;
  }

  else
  {
    presetCopy = preset;
    v4 = *(&off_1E7EF5610 + preset);
  }

  result.presetName = v4;
  result.presetNumber = presetCopy;
  return result;
}

- (AVAudioUnitDistortion)init
{
  v6 = xmmword_1BA6CF3C0;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = AVAudioUnitDistortion;
  v2 = [(AVAudioUnitEffect *)&v5 initWithAudioComponentDescription:&v6];
  v3 = v2;
  if (v2)
  {
    [(AVAudioUnitDistortion *)v2 loadFactoryPreset:0];
  }

  return v3;
}

@end