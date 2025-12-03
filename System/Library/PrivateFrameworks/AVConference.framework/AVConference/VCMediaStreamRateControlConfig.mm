@interface VCMediaStreamRateControlConfig
- (VCMediaStreamRateControlConfig)init;
- (void)dealloc;
- (void)setMediaControlInfoGenerator:(void *)generator;
- (void)setVcMediaQueue:(tagVCMediaQueue *)queue;
@end

@implementation VCMediaStreamRateControlConfig

- (VCMediaStreamRateControlConfig)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaStreamRateControlConfig;
  result = [(VCMediaStreamRateControlConfig *)&v3 init];
  if (result)
  {
    result->_mediaQueue = 0xFFFFFFFFLL;
  }

  return result;
}

- (void)setMediaControlInfoGenerator:(void *)generator
{
  mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
  if (mediaControlInfoGenerator)
  {
    CFRelease(mediaControlInfoGenerator);
  }

  if (generator)
  {
    v6 = CFRetain(generator);
  }

  else
  {
    v6 = 0;
  }

  self->_mediaControlInfoGenerator = v6;
}

- (void)setVcMediaQueue:(tagVCMediaQueue *)queue
{
  vcMediaQueue = self->_vcMediaQueue;
  if (vcMediaQueue != queue)
  {
    if (vcMediaQueue)
    {
      CFRelease(vcMediaQueue);
    }

    if (queue)
    {
      v6 = CFRetain(queue);
    }

    else
    {
      v6 = 0;
    }

    self->_vcMediaQueue = v6;
  }
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  mediaControlInfoGenerator = self->_mediaControlInfoGenerator;
  if (mediaControlInfoGenerator)
  {
    CFRelease(mediaControlInfoGenerator);
  }

  vcMediaQueue = self->_vcMediaQueue;
  if (vcMediaQueue)
  {
    CFRelease(vcMediaQueue);
  }

  v5.receiver = self;
  v5.super_class = VCMediaStreamRateControlConfig;
  [(VCMediaStreamRateControlConfig *)&v5 dealloc];
}

@end