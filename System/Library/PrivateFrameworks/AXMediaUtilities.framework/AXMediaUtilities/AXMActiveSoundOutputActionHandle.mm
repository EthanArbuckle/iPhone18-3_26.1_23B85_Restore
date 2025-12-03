@interface AXMActiveSoundOutputActionHandle
- (float)pitch;
- (float)rate;
- (void)setPitch:(float)pitch;
- (void)setQuantizedRate:(int64_t)rate;
- (void)setRate:(float)rate;
- (void)stop;
@end

@implementation AXMActiveSoundOutputActionHandle

- (void)stop
{
  handleProvider = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [handleProvider stop];
}

- (float)pitch
{
  handleProvider = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [handleProvider pitch];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)pitch
{
  handleProvider = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  *&v4 = pitch;
  [handleProvider setPitch:v4];
}

- (float)rate
{
  handleProvider = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [handleProvider rate];
  v4 = v3;

  return v4;
}

- (void)setRate:(float)rate
{
  handleProvider = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  *&v4 = rate;
  [handleProvider setRate:v4];
}

- (void)setQuantizedRate:(int64_t)rate
{
  handleProvider = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [handleProvider setQuantizedRate:rate];
}

@end