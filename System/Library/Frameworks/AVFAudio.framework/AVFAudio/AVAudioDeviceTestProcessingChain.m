@interface AVAudioDeviceTestProcessingChain
- (AVAudioDeviceTestProcessingChain)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioDeviceTestProcessingChain

- (AVAudioDeviceTestProcessingChain)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AVAudioDeviceTestProcessingChain;
  v5 = [(AVAudioDeviceTestProcessingChain *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"graphURL"];
    graphURL = v5->_graphURL;
    v5->_graphURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processingStripURL"];
    processingStripURL = v5->_processingStripURL;
    v5->_processingStripURL = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  graphURL = self->_graphURL;
  v5 = a3;
  [v5 encodeObject:graphURL forKey:@"graphURL"];
  [v5 encodeObject:self->_processingStripURL forKey:@"processingStripURL"];
}

@end