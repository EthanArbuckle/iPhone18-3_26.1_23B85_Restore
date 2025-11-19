@interface AXMActiveSoundOutputActionHandleImpl
- (AXMActiveSound)activeSound;
- (AXMActiveSoundOutputActionHandleImpl)init;
- (AXMSoundComponent)soundComponent;
- (void)setPitch:(float)a3;
- (void)setQuantizedRate:(int64_t)a3;
- (void)setRate:(float)a3;
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

- (void)setRate:(float)a3
{
  if (a3 <= 0.03125)
  {
    a3 = 0.03125;
  }

  if (a3 >= 32.0)
  {
    v3 = 32.0;
  }

  else
  {
    v3 = a3;
  }

  self->_rate = v3;
  v6 = [(AXMActiveSoundOutputActionHandleImpl *)self activeSound];
  v4 = [v6 timePitch];
  *&v5 = v3;
  [v4 setRate:v5];
}

- (void)setPitch:(float)a3
{
  if (a3 <= -2400.0)
  {
    a3 = -2400.0;
  }

  if (a3 >= 2400.0)
  {
    v3 = 2400.0;
  }

  else
  {
    v3 = a3;
  }

  self->_pitch = v3;
  v6 = [(AXMActiveSoundOutputActionHandleImpl *)self activeSound];
  v4 = [v6 timePitch];
  *&v5 = v3;
  [v4 setPitch:v5];
}

- (void)setQuantizedRate:(int64_t)a3
{
  if (a3 <= 0xA)
  {
    LODWORD(v3) = dword_1AE4522C0[a3];
    [(AXMActiveSoundOutputActionHandleImpl *)self setRate:v3];
  }
}

- (void)stop
{
  v4 = [(AXMActiveSoundOutputActionHandleImpl *)self soundComponent];
  v3 = [(AXMActiveSoundOutputActionHandleImpl *)self activeSound];
  [v4 _stopActiveSound:v3];
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