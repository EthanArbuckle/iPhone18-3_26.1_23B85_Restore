@interface RCAmplitudeAnalyzer
- (float)calculateAmplitude:(float *)a3 sampleCount:(int)a4 channelCount:(int)a5;
@end

@implementation RCAmplitudeAnalyzer

- (float)calculateAmplitude:(float *)a3 sampleCount:(int)a4 channelCount:(int)a5
{
  if ([(NSData *)self->_processingBuffer length]< 4 * a4)
  {
    v9 = [[NSMutableData alloc] initWithLength:4 * a4];
    processingBuffer = self->_processingBuffer;
    self->_processingBuffer = v9;
  }

  if (a5 < 1)
  {
    return 0.0;
  }

  v11 = 0.0;
  v12 = a5;
  do
  {
    v13 = *a3++;
    __C = 0.0;
    v14 = [(NSData *)self->_processingBuffer bytes];
    vDSP_vabs(v13, 1, v14, 1, a4);
    vDSP_maxv(v14, 1, &__C, a4);
    if (v11 < __C)
    {
      v11 = __C;
    }

    --v12;
  }

  while (v12);
  return v11;
}

@end