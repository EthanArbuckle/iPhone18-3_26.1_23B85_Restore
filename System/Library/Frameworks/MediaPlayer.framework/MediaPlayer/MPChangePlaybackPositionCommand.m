@interface MPChangePlaybackPositionCommand
- (MPChangePlaybackPositionCommand)initWithMediaRemoteCommandType:(unsigned int)a3;
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithPositionTime:(double)a3;
- (void)setCanBeControlledByScrubbing:(BOOL)a3;
- (void)setSupportsReferencePosition:(BOOL)a3;
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

- (id)newCommandEventWithPositionTime:(double)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = *MEMORY[0x1E69B1168];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(MPRemoteCommand *)self newCommandEventWithCommandType:v5 options:v7];

  return v8;
}

- (void)setSupportsReferencePosition:(BOOL)a3
{
  if (self->_supportsReferencePosition != a3)
  {
    self->_supportsReferencePosition = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCanBeControlledByScrubbing:(BOOL)a3
{
  if (self->_canBeControlledByScrubbing != a3)
  {
    self->_canBeControlledByScrubbing = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPChangePlaybackPositionCommand)initWithMediaRemoteCommandType:(unsigned int)a3
{
  v4.receiver = self;
  v4.super_class = MPChangePlaybackPositionCommand;
  result = [(MPRemoteCommand *)&v4 initWithMediaRemoteCommandType:*&a3];
  if (result)
  {
    result->_canBeControlledByScrubbing = 0;
    result->_supportsReferencePosition = 0;
  }

  return result;
}

@end