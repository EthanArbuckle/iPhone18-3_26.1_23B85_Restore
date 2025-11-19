@interface ADAudioPowerCoreSpeechProvider
- (ADAudioPowerCoreSpeechProvider)initWithChannel:(unint64_t)a3 speechController:(id)a4;
- (BOOL)getAveragePower:(float *)a3 andPeakPower:(float *)a4;
@end

@implementation ADAudioPowerCoreSpeechProvider

- (BOOL)getAveragePower:(float *)a3 andPeakPower:(float *)a4
{
  speechController = self->_speechController;
  if (speechController)
  {
    if (a3 | a4)
    {
      [(CSSpeechController *)speechController updateMeters];
      if (a3)
      {
        [(CSSpeechController *)self->_speechController averagePowerForChannel:self->_channel];
        *a3 = v8;
      }

      if (a4)
      {
        [(CSSpeechController *)self->_speechController peakPowerForChannel:self->_channel];
        *a4 = v9;
      }

      LOBYTE(speechController) = 1;
    }

    else
    {
      LOBYTE(speechController) = 0;
    }
  }

  return speechController;
}

- (ADAudioPowerCoreSpeechProvider)initWithChannel:(unint64_t)a3 speechController:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ADAudioPowerCoreSpeechProvider;
  v8 = [(ADAudioPowerCoreSpeechProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_channel = a3;
    objc_storeStrong(&v8->_speechController, a4);
  }

  return v9;
}

@end