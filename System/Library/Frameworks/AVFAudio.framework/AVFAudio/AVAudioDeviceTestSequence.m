@interface AVAudioDeviceTestSequence
- (AVAudioDeviceTestSequence)init;
- (AVAudioDeviceTestSequence)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioDeviceTestSequence

- (AVAudioDeviceTestSequence)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AVAudioDeviceTestSequence;
  v5 = [(AVAudioDeviceTestSequence *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stimulusURL"];
    stimulusURL = v5->_stimulusURL;
    v5->_stimulusURL = v6;

    v5->_outputID = [v4 decodeIntegerForKey:@"outputID"];
    v5->_outputMode = [v4 decodeIntegerForKey:@"outputMode"];
    [v4 decodeFloatForKey:@"volume"];
    v5->_volume = v8;
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inputProcessingChain"];
    inputProcessingChain = v5->_inputProcessingChain;
    v5->_inputProcessingChain = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputProcessingChain"];
    outputProcessingChain = v5->_outputProcessingChain;
    v5->_outputProcessingChain = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    mode = v5->_mode;
    v5->_mode = v13;

    v5->_calculateCrossCorrelationPeak = [v4 decodeBoolForKey:@"calculateCrossCorrelationPeak"];
    v5->_processSequenceAsynchronously = [v4 decodeBoolForKey:@"processSequenceAsynchronously"];
    v5->_parallelCrossCorrelationCalculation = [v4 decodeBoolForKey:@"parallelCrossCorrelationCalculation"];
    v5->_numberOfChannels = [v4 decodeIntegerForKey:@"numberOfChannels"];
    v15 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"micBufferNumbers"];
    micBufferNumbers = v5->_micBufferNumbers;
    v5->_micBufferNumbers = v15;

    v5->_requiresBluetoothOutput = [v4 decodeBoolForKey:@"requiresBluetoothOutput"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"microphone"];
    microphone = v5->_microphone;
    v5->_microphone = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  stimulusURL = self->_stimulusURL;
  v6 = a3;
  [v6 encodeObject:stimulusURL forKey:@"stimulusURL"];
  [v6 encodeInteger:self->_outputID forKey:@"outputID"];
  [v6 encodeInteger:self->_outputMode forKey:@"outputMode"];
  *&v5 = self->_volume;
  [v6 encodeFloat:@"volume" forKey:v5];
  [v6 encodeObject:self->_inputProcessingChain forKey:@"inputProcessingChain"];
  [v6 encodeObject:self->_outputProcessingChain forKey:@"outputProcessingChain"];
  [v6 encodeObject:self->_mode forKey:@"mode"];
  [v6 encodeBool:self->_calculateCrossCorrelationPeak forKey:@"calculateCrossCorrelationPeak"];
  [v6 encodeBool:self->_processSequenceAsynchronously forKey:@"processSequenceAsynchronously"];
  [v6 encodeBool:self->_parallelCrossCorrelationCalculation forKey:@"parallelCrossCorrelationCalculation"];
  [v6 encodeInteger:self->_numberOfChannels forKey:@"numberOfChannels"];
  [v6 encodeObject:self->_micBufferNumbers forKey:@"micBufferNumbers"];
  [v6 encodeBool:self->_requiresBluetoothOutput forKey:@"requiresBluetoothOutput"];
  [v6 encodeObject:self->_microphone forKey:@"microphone"];
}

- (AVAudioDeviceTestSequence)init
{
  v12.receiver = self;
  v12.super_class = AVAudioDeviceTestSequence;
  v2 = [(AVAudioDeviceTestSequence *)&v12 init];
  v3 = v2;
  if (v2)
  {
    mode = v2->_mode;
    v2->_mode = 0;

    v3->_calculateCrossCorrelationPeak = 0;
    stimulusURL = v3->_stimulusURL;
    v3->_stimulusURL = 0;

    v3->_outputID = 0;
    v3->_outputMode = 0;
    v3->_volume = 0.5;
    inputProcessingChain = v3->_inputProcessingChain;
    v3->_inputProcessingChain = 0;

    outputProcessingChain = v3->_outputProcessingChain;
    v3->_outputProcessingChain = 0;

    v3->_processSequenceAsynchronously = 0;
    v3->_parallelCrossCorrelationCalculation = 0;
    micBufferNumbers = v3->_micBufferNumbers;
    v9 = MEMORY[0x1E695E0F0];
    v3->_numberOfChannels = 0;
    v3->_micBufferNumbers = v9;

    v3->_requiresBluetoothOutput = 0;
    microphone = v3->_microphone;
    v3->_microphone = 0;
  }

  return v3;
}

@end