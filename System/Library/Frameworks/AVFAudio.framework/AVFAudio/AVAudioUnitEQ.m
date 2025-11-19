@interface AVAudioUnitEQ
- (AVAudioUnitEQ)initWithNumberOfBands:(NSUInteger)numberOfBands;
- (NSArray)bands;
- (float)globalGain;
- (void)setGlobalGain:(float)globalGain;
@end

@implementation AVAudioUnitEQ

- (void)setGlobalGain:(float)globalGain
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super.super.super._impl);
  *&v5 = globalGain;
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

- (float)globalGain
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

- (NSArray)bands
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super.super.super._impl);
  v3 = *(self->super.super.super._impl + 22);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudioUnitEQ)initWithNumberOfBands:(NSUInteger)numberOfBands
{
  if (numberOfBands >= 0x3E8)
  {
    v3 = 999;
  }

  else
  {
    v3 = numberOfBands;
  }

  v5 = v3;
  operator new();
}

@end