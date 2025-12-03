@interface AXMActiveSoundOutputActionHandleImpl
- (AXMActiveSound)activeSound;
- (AXMActiveSoundOutputActionHandleImpl)init;
- (AXMSoundComponent)soundComponent;
- (void)setPitch:(float)pitch;
- (void)setQuantizedRate:(int64_t)rate;
- (void)setRate:(float)rate;
- (void)stop;
@end

@implementation AXMActiveSoundOutputActionHandleImpl

- (AXMActiveSoundOutputActionHandleImpl)init
{
  v7.receiver = self;
  v7.super_class = AXMActiveSoundOutputActionHandleImpl;
  v2 = [(AXMActiveSoundOutputActionHandleImpl *)&v7 init];
  v4 = v2;
  if (v2)
  {
    LODWORD(v3) = 1065353216;
    [(AXMActiveSoundOutputActionHandleImpl *)v2 setRate:v3];
    LODWORD(v5) = 0;
    [(AXMActiveSoundOutputActionHandleImpl *)v4 setPitch:v5];
  }

  return v4;
}

- (void)setRate:(float)rate
{
  if (rate <= 0.03125)
  {
    rate = 0.03125;
  }

  if (rate >= 32.0)
  {
    rateCopy = 32.0;
  }

  else
  {
    rateCopy = rate;
  }

  self->_rate = rateCopy;
  activeSound = [(AXMActiveSoundOutputActionHandleImpl *)self activeSound];
  timePitch = [activeSound timePitch];
  *&v5 = rateCopy;
  [timePitch setRate:v5];
}

- (void)setPitch:(float)pitch
{
  if (pitch <= -2400.0)
  {
    pitch = -2400.0;
  }

  if (pitch >= 2400.0)
  {
    pitchCopy = 2400.0;
  }

  else
  {
    pitchCopy = pitch;
  }

  self->_pitch = pitchCopy;
  activeSound = [(AXMActiveSoundOutputActionHandleImpl *)self activeSound];
  timePitch = [activeSound timePitch];
  *&v5 = pitchCopy;
  [timePitch setPitch:v5];
}

- (void)setQuantizedRate:(int64_t)rate
{
  if (rate <= 0xA)
  {
    LODWORD(v3) = dword_1AE4522C0[rate];
    [(AXMActiveSoundOutputActionHandleImpl *)self setRate:v3];
  }
}

- (void)stop
{
  soundComponent = [(AXMActiveSoundOutputActionHandleImpl *)self soundComponent];
  activeSound = [(AXMActiveSoundOutputActionHandleImpl *)self activeSound];
  [soundComponent _stopActiveSound:activeSound];
}

- (AXMActiveSound)activeSound
{
  WeakRetained = objc_loadWeakRetained(&self->_activeSound);

  return WeakRetained;
}

- (AXMSoundComponent)soundComponent
{
  WeakRetained = objc_loadWeakRetained(&self->_soundComponent);

  return WeakRetained;
}

@end