@interface ADAudioPowerCoreSpeechProvider
- (ADAudioPowerCoreSpeechProvider)initWithChannel:(unint64_t)channel speechController:(id)controller;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
@end

@implementation ADAudioPowerCoreSpeechProvider

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  speechController = self->_speechController;
  if (speechController)
  {
    if (power | peakPower)
    {
      [(CSSpeechController *)speechController updateMeters];
      if (power)
      {
        [(CSSpeechController *)self->_speechController averagePowerForChannel:self->_channel];
        *power = v8;
      }

      if (peakPower)
      {
        [(CSSpeechController *)self->_speechController peakPowerForChannel:self->_channel];
        *peakPower = v9;
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

- (ADAudioPowerCoreSpeechProvider)initWithChannel:(unint64_t)channel speechController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = ADAudioPowerCoreSpeechProvider;
  v8 = [(ADAudioPowerCoreSpeechProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_channel = channel;
    objc_storeStrong(&v8->_speechController, controller);
  }

  return v9;
}

@end