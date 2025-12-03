@interface AVAudioDeviceTestResult
- (AVAudioDeviceTestResult)initWithCoder:(id)coder;
- (AVAudioDeviceTestResult)initWithData:(id)data inputID:(int64_t)d outputID:(int64_t)iD sampleRate:(double)rate correlationValue:(double)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioDeviceTestResult

- (AVAudioDeviceTestResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AVAudioDeviceTestResult;
  v5 = [(AVAudioDeviceTestResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    data = v5->_data;
    v5->_data = v6;

    v5->_outputID = [coderCopy decodeIntegerForKey:@"outputID"];
    v5->_inputID = [coderCopy decodeIntegerForKey:@"inputID"];
    [coderCopy decodeDoubleForKey:@"sampleRate"];
    v5->_sampleRate = v8;
    [coderCopy decodeDoubleForKey:@"correlationValue"];
    v5->_correlationValue = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"data"];
  [coderCopy encodeInteger:self->_outputID forKey:@"outputID"];
  [coderCopy encodeInteger:self->_inputID forKey:@"inputID"];
  [coderCopy encodeDouble:@"sampleRate" forKey:self->_sampleRate];
  [coderCopy encodeDouble:@"correlationValue" forKey:self->_correlationValue];
}

- (AVAudioDeviceTestResult)initWithData:(id)data inputID:(int64_t)d outputID:(int64_t)iD sampleRate:(double)rate correlationValue:(double)value
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = AVAudioDeviceTestResult;
  v14 = [(AVAudioDeviceTestResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, data);
    v15->_inputID = d;
    v15->_outputID = iD;
    v15->_sampleRate = rate;
    v15->_correlationValue = value;
  }

  return v15;
}

@end