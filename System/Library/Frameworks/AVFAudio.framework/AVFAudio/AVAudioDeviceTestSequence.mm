@interface AVAudioDeviceTestSequence
- (AVAudioDeviceTestSequence)init;
- (AVAudioDeviceTestSequence)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioDeviceTestSequence

- (AVAudioDeviceTestSequence)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AVAudioDeviceTestSequence;
  v5 = [(AVAudioDeviceTestSequence *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stimulusURL"];
    stimulusURL = v5->_stimulusURL;
    v5->_stimulusURL = v6;

    v5->_outputID = [coderCopy decodeIntegerForKey:@"outputID"];
    v5->_outputMode = [coderCopy decodeIntegerForKey:@"outputMode"];
    [coderCopy decodeFloatForKey:@"volume"];
    v5->_volume = v8;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputProcessingChain"];
    inputProcessingChain = v5->_inputProcessingChain;
    v5->_inputProcessingChain = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputProcessingChain"];
    outputProcessingChain = v5->_outputProcessingChain;
    v5->_outputProcessingChain = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    mode = v5->_mode;
    v5->_mode = v13;

    v5->_calculateCrossCorrelationPeak = [coderCopy decodeBoolForKey:@"calculateCrossCorrelationPeak"];
    v5->_processSequenceAsynchronously = [coderCopy decodeBoolForKey:@"processSequenceAsynchronously"];
    v5->_parallelCrossCorrelationCalculation = [coderCopy decodeBoolForKey:@"parallelCrossCorrelationCalculation"];
    v5->_numberOfChannels = [coderCopy decodeIntegerForKey:@"numberOfChannels"];
    v15 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"micBufferNumbers"];
    micBufferNumbers = v5->_micBufferNumbers;
    v5->_micBufferNumbers = v15;

    v5->_requiresBluetoothOutput = [coderCopy decodeBoolForKey:@"requiresBluetoothOutput"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"microphone"];
    microphone = v5->_microphone;
    v5->_microphone = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  stimulusURL = self->_stimulusURL;
  coderCopy = coder;
  [coderCopy encodeObject:stimulusURL forKey:@"stimulusURL"];
  [coderCopy encodeInteger:self->_outputID forKey:@"outputID"];
  [coderCopy encodeInteger:self->_outputMode forKey:@"outputMode"];
  *&v5 = self->_volume;
  [coderCopy encodeFloat:@"volume" forKey:v5];
  [coderCopy encodeObject:self->_inputProcessingChain forKey:@"inputProcessingChain"];
  [coderCopy encodeObject:self->_outputProcessingChain forKey:@"outputProcessingChain"];
  [coderCopy encodeObject:self->_mode forKey:@"mode"];
  [coderCopy encodeBool:self->_calculateCrossCorrelationPeak forKey:@"calculateCrossCorrelationPeak"];
  [coderCopy encodeBool:self->_processSequenceAsynchronously forKey:@"processSequenceAsynchronously"];
  [coderCopy encodeBool:self->_parallelCrossCorrelationCalculation forKey:@"parallelCrossCorrelationCalculation"];
  [coderCopy encodeInteger:self->_numberOfChannels forKey:@"numberOfChannels"];
  [coderCopy encodeObject:self->_micBufferNumbers forKey:@"micBufferNumbers"];
  [coderCopy encodeBool:self->_requiresBluetoothOutput forKey:@"requiresBluetoothOutput"];
  [coderCopy encodeObject:self->_microphone forKey:@"microphone"];
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