@interface VCAudioUnitSpatialContext
- (VCAudioUnitSpatialContext)initWithAudioSessionId:(unsigned int)a3 maxChannelCountMic:(unsigned int)a4 maxChannelCountSpeaker:(unsigned int)a5 spatialMetadata:(OpaqueCMBlockBuffer *)a6;
- (void)dealloc;
- (void)setSpatialMetadata:(OpaqueCMBlockBuffer *)a3;
@end

@implementation VCAudioUnitSpatialContext

- (VCAudioUnitSpatialContext)initWithAudioSessionId:(unsigned int)a3 maxChannelCountMic:(unsigned int)a4 maxChannelCountSpeaker:(unsigned int)a5 spatialMetadata:(OpaqueCMBlockBuffer *)a6
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCAudioUnitSpatialContext;
  v10 = [(VCAudioUnitSpatialContext *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_audioSessionId = a3;
    v10->_maxChannelCountMic = a4;
    v10->_maxChannelCountSpeaker = a5;
    if (a6)
    {
      v12 = CFRetain(a6);
    }

    else
    {
      v12 = 0;
    }

    v11->_spatialMetadata = v12;
  }

  return v11;
}

- (void)setSpatialMetadata:(OpaqueCMBlockBuffer *)a3
{
  spatialMetadata = self->_spatialMetadata;
  if (spatialMetadata != a3)
  {
    if (spatialMetadata)
    {
      CFRelease(spatialMetadata);
    }

    if (a3)
    {
      v6 = CFRetain(a3);
    }

    else
    {
      v6 = 0;
    }

    self->_spatialMetadata = v6;
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  spatialMetadata = self->_spatialMetadata;
  if (spatialMetadata)
  {
    CFRelease(spatialMetadata);
  }

  v4.receiver = self;
  v4.super_class = VCAudioUnitSpatialContext;
  [(VCAudioUnitSpatialContext *)&v4 dealloc];
}

@end