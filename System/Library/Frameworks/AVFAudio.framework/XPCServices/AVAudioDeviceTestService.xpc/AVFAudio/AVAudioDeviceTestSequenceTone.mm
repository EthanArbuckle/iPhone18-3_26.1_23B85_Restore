@interface AVAudioDeviceTestSequenceTone
- (AVAudioDeviceTestSequenceTone)init;
- (AVAudioDeviceTestSequenceTone)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioDeviceTestSequenceTone

- (AVAudioDeviceTestSequenceTone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = AVAudioDeviceTestSequenceTone;
  v5 = [(AVAudioDeviceTestSequence *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"frequency"];
    v5->_frequency = v6;
    [coderCopy decodeDoubleForKey:@"amplitude"];
    v5->_amplitude = v7;
    [coderCopy decodeDoubleForKey:@"soundLevel"];
    v5->_soundLevel = v8;
    v5->_numberOfPulses = [coderCopy decodeIntForKey:@"numberOfPulses"];
    [coderCopy decodeDoubleForKey:@"pulseDuration"];
    v5->_pulseDuration = v9;
    [coderCopy decodeDoubleForKey:@"pauseDuration"];
    v5->_pauseDuration = v10;
    [coderCopy decodeDoubleForKey:@"rampDuration"];
    v5->_rampDuration = v11;
    [coderCopy decodeDoubleForKey:@"startDelay"];
    v5->_startDelay = v12;
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = AVAudioDeviceTestSequenceTone;
  coderCopy = coder;
  [(AVAudioDeviceTestSequence *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"frequency" forKey:{self->_frequency, v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"amplitude" forKey:self->_amplitude];
  [coderCopy encodeDouble:@"soundLevel" forKey:self->_soundLevel];
  [coderCopy encodeInt:self->_numberOfPulses forKey:@"numberOfPulses"];
  [coderCopy encodeDouble:@"pulseDuration" forKey:self->_pulseDuration];
  [coderCopy encodeDouble:@"pauseDuration" forKey:self->_pauseDuration];
  [coderCopy encodeDouble:@"rampDuration" forKey:self->_rampDuration];
  [coderCopy encodeDouble:@"startDelay" forKey:self->_startDelay];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
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