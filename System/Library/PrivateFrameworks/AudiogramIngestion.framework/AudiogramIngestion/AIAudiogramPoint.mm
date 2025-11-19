@interface AIAudiogramPoint
- (AIAudiogramPoint)initWithSymbolName:(id)a3 frequency:(double)a4 dbValue:(double)a5 confidence:(double)a6;
@end

@implementation AIAudiogramPoint

- (AIAudiogramPoint)initWithSymbolName:(id)a3 frequency:(double)a4 dbValue:(double)a5 confidence:(double)a6
{
  v10 = a3;
  v14.receiver = self;
  v14.super_class = AIAudiogramPoint;
  v11 = [(AIAudiogramPoint *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(AIAudiogramPoint *)v11 setSymbolName:v10];
    [(AIAudiogramPoint *)v12 setFrequency:a4];
    [(AIAudiogramPoint *)v12 setDbValue:a5];
    [(AIAudiogramPoint *)v12 setConfidence:a6];
  }

  return v12;
}

@end