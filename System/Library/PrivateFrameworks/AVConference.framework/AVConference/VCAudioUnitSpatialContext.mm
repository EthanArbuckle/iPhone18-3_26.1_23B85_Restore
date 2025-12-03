@interface VCAudioUnitSpatialContext
- (VCAudioUnitSpatialContext)initWithAudioSessionId:(unsigned int)id maxChannelCountMic:(unsigned int)mic maxChannelCountSpeaker:(unsigned int)speaker spatialMetadata:(OpaqueCMBlockBuffer *)metadata;
- (void)dealloc;
- (void)setSpatialMetadata:(OpaqueCMBlockBuffer *)metadata;
@end

@implementation VCAudioUnitSpatialContext

- (VCAudioUnitSpatialContext)initWithAudioSessionId:(unsigned int)id maxChannelCountMic:(unsigned int)mic maxChannelCountSpeaker:(unsigned int)speaker spatialMetadata:(OpaqueCMBlockBuffer *)metadata
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCAudioUnitSpatialContext;
  v10 = [(VCAudioUnitSpatialContext *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_audioSessionId = id;
    v10->_maxChannelCountMic = mic;
    v10->_maxChannelCountSpeaker = speaker;
    if (metadata)
    {
      v12 = CFRetain(metadata);
    }

    else
    {
      v12 = 0;
    }

    v11->_spatialMetadata = v12;
  }

  return v11;
}

- (void)setSpatialMetadata:(OpaqueCMBlockBuffer *)metadata
{
  spatialMetadata = self->_spatialMetadata;
  if (spatialMetadata != metadata)
  {
    if (spatialMetadata)
    {
      CFRelease(spatialMetadata);
    }

    if (metadata)
    {
      v6 = CFRetain(metadata);
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