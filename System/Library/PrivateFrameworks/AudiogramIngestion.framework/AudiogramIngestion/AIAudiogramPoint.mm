@interface AIAudiogramPoint
- (AIAudiogramPoint)initWithSymbolName:(id)name frequency:(double)frequency dbValue:(double)value confidence:(double)confidence;
@end

@implementation AIAudiogramPoint

- (AIAudiogramPoint)initWithSymbolName:(id)name frequency:(double)frequency dbValue:(double)value confidence:(double)confidence
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AIAudiogramPoint;
  v11 = [(AIAudiogramPoint *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(AIAudiogramPoint *)v11 setSymbolName:nameCopy];
    [(AIAudiogramPoint *)v12 setFrequency:frequency];
    [(AIAudiogramPoint *)v12 setDbValue:value];
    [(AIAudiogramPoint *)v12 setConfidence:confidence];
  }

  return v12;
}

@end