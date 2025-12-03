@interface AVAudioDeviceTestProcessingChain
- (AVAudioDeviceTestProcessingChain)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioDeviceTestProcessingChain

- (AVAudioDeviceTestProcessingChain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AVAudioDeviceTestProcessingChain;
  v5 = [(AVAudioDeviceTestProcessingChain *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"graphURL"];
    graphURL = v5->_graphURL;
    v5->_graphURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processingStripURL"];
    processingStripURL = v5->_processingStripURL;
    v5->_processingStripURL = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  graphURL = self->_graphURL;
  coderCopy = coder;
  [coderCopy encodeObject:graphURL forKey:@"graphURL"];
  [coderCopy encodeObject:self->_processingStripURL forKey:@"processingStripURL"];
}

@end