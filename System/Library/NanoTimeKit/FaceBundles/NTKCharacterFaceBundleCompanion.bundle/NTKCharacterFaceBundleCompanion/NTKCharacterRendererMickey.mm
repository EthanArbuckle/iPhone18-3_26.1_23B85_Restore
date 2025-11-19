@interface NTKCharacterRendererMickey
- (NTKCharacterRendererMickey)initWithLoader:(id)a3;
- (int)getBlinkFrameFor15sTime:(float)a3;
@end

@implementation NTKCharacterRendererMickey

- (NTKCharacterRendererMickey)initWithLoader:(id)a3
{
  v6.receiver = self;
  v6.super_class = NTKCharacterRendererMickey;
  v3 = [(NTKCharacterRenderer *)&v6 initWithCharacter:0 loader:a3 prefix:@"Mickey"];
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

- (int)getBlinkFrameFor15sTime:(float)a3
{
  v3 = a3;
  if (v3 < 0.05)
  {
    return 0;
  }

  if (v3 < 0.1)
  {
    return 1;
  }

  if (v3 >= 0.15)
  {
    return v3 < 0.2;
  }

  return 2;
}

@end