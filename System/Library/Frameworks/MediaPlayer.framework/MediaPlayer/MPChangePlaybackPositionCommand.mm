@interface MPChangePlaybackPositionCommand
- (MPChangePlaybackPositionCommand)initWithMediaRemoteCommandType:(unsigned int)type;
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithPositionTime:(double)time;
- (void)setCanBeControlledByScrubbing:(BOOL)scrubbing;
- (void)setSupportsReferencePosition:(BOOL)position;
@end

@implementation MPChangePlaybackPositionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69B0C40];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_canBeControlledByScrubbing];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69B0D70];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsReferencePosition];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)newCommandEventWithPositionTime:(double)time
{
  v11[1] = *MEMORY[0x1E69E9840];
  mediaRemoteCommandType = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = *MEMORY[0x1E69B1168];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:time];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(MPRemoteCommand *)self newCommandEventWithCommandType:mediaRemoteCommandType options:v7];

  return v8;
}

- (void)setSupportsReferencePosition:(BOOL)position
{
  if (self->_supportsReferencePosition != position)
  {
    self->_supportsReferencePosition = position;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCanBeControlledByScrubbing:(BOOL)scrubbing
{
  if (self->_canBeControlledByScrubbing != scrubbing)
  {
    self->_canBeControlledByScrubbing = scrubbing;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPChangePlaybackPositionCommand)initWithMediaRemoteCommandType:(unsigned int)type
{
  v4.receiver = self;
  v4.super_class = MPChangePlaybackPositionCommand;
  result = [(MPRemoteCommand *)&v4 initWithMediaRemoteCommandType:*&type];
  if (result)
  {
    result->_canBeControlledByScrubbing = 0;
    result->_supportsReferencePosition = 0;
  }

  return result;
}

@end