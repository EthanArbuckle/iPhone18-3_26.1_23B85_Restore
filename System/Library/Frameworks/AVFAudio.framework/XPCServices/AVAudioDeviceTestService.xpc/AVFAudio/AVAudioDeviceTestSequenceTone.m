@interface AVAudioDeviceTestSequenceTone
- (AVAudioDeviceTestSequenceTone)init;
- (AVAudioDeviceTestSequenceTone)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioDeviceTestSequenceTone

- (AVAudioDeviceTestSequenceTone)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AVAudioDeviceTestSequenceTone;
  v5 = [(AVAudioDeviceTestSequence *)&v15 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"frequency"];
    v5->_frequency = v6;
    [v4 decodeDoubleForKey:@"amplitude"];
    v5->_amplitude = v7;
    [v4 decodeDoubleForKey:@"soundLevel"];
    v5->_soundLevel = v8;
    v5->_numberOfPulses = [v4 decodeIntForKey:@"numberOfPulses"];
    [v4 decodeDoubleForKey:@"pulseDuration"];
    v5->_pulseDuration = v9;
    [v4 decodeDoubleForKey:@"pauseDuration"];
    v5->_pauseDuration = v10;
    [v4 decodeDoubleForKey:@"rampDuration"];
    v5->_rampDuration = v11;
    [v4 decodeDoubleForKey:@"startDelay"];
    v5->_startDelay = v12;
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = AVAudioDeviceTestSequenceTone;
  v4 = a3;
  [(AVAudioDeviceTestSequence *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"frequency" forKey:{self->_frequency, v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"amplitude" forKey:self->_amplitude];
  [v4 encodeDouble:@"soundLevel" forKey:self->_soundLevel];
  [v4 encodeInt:self->_numberOfPulses forKey:@"numberOfPulses"];
  [v4 encodeDouble:@"pulseDuration" forKey:self->_pulseDuration];
  [v4 encodeDouble:@"pauseDuration" forKey:self->_pauseDuration];
  [v4 encodeDouble:@"rampDuration" forKey:self->_rampDuration];
  [v4 encodeDouble:@"startDelay" forKey:self->_startDelay];
  [v4 encodeDouble:@"duration" forKey:self->_duration];
}

- (AVAudioDeviceTestSequenceTone)init
{
  v3.receiver = self;
  v3.super_class = AVAudioDeviceTestSequenceTone;
  result = [(AVAudioDeviceTestSequence *)&v3 init];
  if (result)
  {
    result->_frequency = 0.0;
    result->_amplitude = 0.0;
    result->_soundLevel = 0.0;
    result->_numberOfPulses = 0;
    result->_pulseDuration = 200.0;
    result->_pauseDuration = 200.0;
    result->_rampDuration = 35.0;
    result->_startDelay = 150.0;
    result->_duration = 0.0;
  }

  return result;
}

@end