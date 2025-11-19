@interface VCSessionParticipantOneToOneConfig
- (VCSessionParticipantOneToOneConfig)init;
- (void)dealloc;
- (void)setAudioMediaControlInfoGenerator:(void *)a3;
- (void)setVcMediaQueue:(tagVCMediaQueue *)a3;
- (void)setVideoMediaControlInfoGenerator:(void *)a3;
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

- (void)setAudioMediaControlInfoGenerator:(void *)a3
{
  audioMediaControlInfoGenerator = self->_audioMediaControlInfoGenerator;
  if (audioMediaControlInfoGenerator != a3)
  {
    if (audioMediaControlInfoGenerator)
    {
      CFRelease(audioMediaControlInfoGenerator);
    }

    self->_audioMediaControlInfoGenerator = 0;
    if (a3)
    {
      self->_audioMediaControlInfoGenerator = CFRetain(a3);
    }
  }
}

- (void)setVideoMediaControlInfoGenerator:(void *)a3
{
  videoMediaControlInfoGenerator = self->_videoMediaControlInfoGenerator;
  if (videoMediaControlInfoGenerator != a3)
  {
    if (videoMediaControlInfoGenerator)
    {
      CFRelease(videoMediaControlInfoGenerator);
    }

    self->_videoMediaControlInfoGenerator = 0;
    if (a3)
    {
      self->_videoMediaControlInfoGenerator = CFRetain(a3);
    }
  }
}

- (void)setVcMediaQueue:(tagVCMediaQueue *)a3
{
  vcMediaQueue = self->_vcMediaQueue;
  if (vcMediaQueue != a3)
  {
    if (vcMediaQueue)
    {
      CFRelease(vcMediaQueue);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_vcMediaQueue = v6;
  }
}

@end