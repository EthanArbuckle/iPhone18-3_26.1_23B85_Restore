@interface NTKCharacterRendererMickey
- (NTKCharacterRendererMickey)initWithLoader:(id)loader;
- (int)getBlinkFrameFor15sTime:(float)time;
@end

@implementation NTKCharacterRendererMickey

- (NTKCharacterRendererMickey)initWithLoader:(id)loader
{
  v6.receiver = self;
  v6.super_class = NTKCharacterRendererMickey;
  v3 = [(NTKCharacterRenderer *)&v6 initWithCharacter:0 loader:loader prefix:@"Mickey"];
  v4 = v3;
  if (v3)
  {
    [(NTKCharacterRenderer *)v3 _setPoseSpecs:&mickeyPoseSpecs];
    [(NTKCharacterRenderer *)v4 _setStateSpecs:&mickeyStateSpecs];
    [(NTKCharacterRendererMickey *)v4 _getBlinkDuration];
    [(NTKCharacterRenderer *)v4 _setBlinkDuration:?];
  }

  return v4;
}

- (int)getBlinkFrameFor15sTime:(float)time
{
  timeCopy = time;
  if (timeCopy < 0.05)
  {
    return 0;
  }

  if (timeCopy < 0.1)
  {
    return 1;
  }

  if (timeCopy >= 0.15)
  {
    return timeCopy < 0.2;
  }

  return 2;
}

@end