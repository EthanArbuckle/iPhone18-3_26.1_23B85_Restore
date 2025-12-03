@interface VCSessionParticipantOneToOneConfig
- (VCSessionParticipantOneToOneConfig)init;
- (void)dealloc;
- (void)setAudioMediaControlInfoGenerator:(void *)generator;
- (void)setVcMediaQueue:(tagVCMediaQueue *)queue;
- (void)setVideoMediaControlInfoGenerator:(void *)generator;
@end

@implementation VCSessionParticipantOneToOneConfig

- (VCSessionParticipantOneToOneConfig)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCSessionParticipantOneToOneConfig;
  result = [(VCObject *)&v3 init];
  if (result)
  {
    result->_mediaQueue = 0xFFFFFFFFLL;
  }

  return result;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  vcMediaQueue = self->_vcMediaQueue;
  if (vcMediaQueue)
  {
    CFRelease(vcMediaQueue);
  }

  audioMediaControlInfoGenerator = self->_audioMediaControlInfoGenerator;
  if (audioMediaControlInfoGenerator)
  {
    CFRelease(audioMediaControlInfoGenerator);
  }

  videoMediaControlInfoGenerator = self->_videoMediaControlInfoGenerator;
  if (videoMediaControlInfoGenerator)
  {
    CFRelease(videoMediaControlInfoGenerator);
  }

  v6.receiver = self;
  v6.super_class = VCSessionParticipantOneToOneConfig;
  [(VCObject *)&v6 dealloc];
}

- (void)setAudioMediaControlInfoGenerator:(void *)generator
{
  audioMediaControlInfoGenerator = self->_audioMediaControlInfoGenerator;
  if (audioMediaControlInfoGenerator != generator)
  {
    if (audioMediaControlInfoGenerator)
    {
      CFRelease(audioMediaControlInfoGenerator);
    }

    self->_audioMediaControlInfoGenerator = 0;
    if (generator)
    {
      self->_audioMediaControlInfoGenerator = CFRetain(generator);
    }
  }
}

- (void)setVideoMediaControlInfoGenerator:(void *)generator
{
  videoMediaControlInfoGenerator = self->_videoMediaControlInfoGenerator;
  if (videoMediaControlInfoGenerator != generator)
  {
    if (videoMediaControlInfoGenerator)
    {
      CFRelease(videoMediaControlInfoGenerator);
    }

    self->_videoMediaControlInfoGenerator = 0;
    if (generator)
    {
      self->_videoMediaControlInfoGenerator = CFRetain(generator);
    }
  }
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

@end