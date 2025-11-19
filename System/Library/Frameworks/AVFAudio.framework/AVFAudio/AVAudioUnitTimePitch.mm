@interface AVAudioUnitTimePitch
- (AVAudioUnitTimePitch)init;
- (float)overlap;
- (float)pitch;
- (float)rate;
- (void)setOverlap:(float)overlap;
- (void)setPitch:(float)pitch;
- (void)setRate:(float)rate;
@end

@implementation AVAudioUnitTimePitch

- (float)overlap
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, [(AVAudioNode *)self impl]);
  [(AVAudioUnit *)self valueForParam:4];
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

- (float)pitch
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v6, [(AVAudioNode *)self impl]);
  [(AVAudioUnit *)self valueForParam:1];
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

- (void)setOverlap:(float)overlap
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, [(AVAudioNode *)self impl]);
  *&v5 = overlap;
  [(AVAudioUnit *)self setValue:4 forParam:v5];
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

- (void)setPitch:(float)pitch
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, [(AVAudioNode *)self impl]);
  *&v5 = pitch;
  [(AVAudioUnit *)self setValue:1 forParam:v5];
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

- (AVAudioUnitTimePitch)init
{
  v4 = xmmword_1BA6CF380;
  v5 = 0;
  v3.receiver = self;
  v3.super_class = AVAudioUnitTimePitch;
  return [(AVAudioUnitTimeEffect *)&v3 initWithAudioComponentDescription:&v4];
}

@end