@interface AVAudioUnitVarispeed
- (AVAudioUnitVarispeed)init;
- (float)rate;
- (void)setRate:(float)rate;
@end

@implementation AVAudioUnitVarispeed

- (float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, [(AVAudioNode *)self impl]);
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

- (void)setRate:(float)rate
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, [(AVAudioNode *)self impl]);
  *&v5 = rate;
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

- (AVAudioUnitVarispeed)init
{
  v4 = xmmword_1BA6CF340;
  v5 = 0;
  v3.receiver = self;
  v3.super_class = AVAudioUnitVarispeed;
  return [(AVAudioUnitTimeEffect *)&v3 initWithAudioComponentDescription:&v4];
}

@end