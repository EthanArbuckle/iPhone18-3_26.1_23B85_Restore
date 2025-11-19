@interface AXMActiveSoundOutputActionHandle
- (float)pitch;
- (float)rate;
- (void)setPitch:(float)a3;
- (void)setQuantizedRate:(int64_t)a3;
- (void)setRate:(float)a3;
- (void)stop;
@end

@implementation AXMActiveSoundOutputActionHandle

- (void)stop
{
  v2 = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [v2 stop];
}

- (float)pitch
{
  v2 = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [v2 pitch];
  v4 = v3;

  return v4;
}

- (void)setPitch:(float)a3
{
  v5 = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  *&v4 = a3;
  [v5 setPitch:v4];
}

- (float)rate
{
  v2 = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [v2 rate];
  v4 = v3;

  return v4;
}

- (void)setRate:(float)a3
{
  v5 = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  *&v4 = a3;
  [v5 setRate:v4];
}

- (void)setQuantizedRate:(int64_t)a3
{
  v4 = [(AXMActiveSoundOutputActionHandle *)self handleProvider];
  [v4 setQuantizedRate:a3];
}

@end