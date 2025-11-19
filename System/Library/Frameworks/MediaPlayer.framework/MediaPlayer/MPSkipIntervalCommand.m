@interface MPSkipIntervalCommand
- (MPSkipIntervalCommand)initWithMediaRemoteCommandType:(unsigned int)a3;
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithInterval:(double)a3;
- (void)setPreferredIntervals:(NSArray *)preferredIntervals;
@end

@implementation MPSkipIntervalCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v6[1] = *MEMORY[0x1E69E9840];
  preferredIntervals = self->_preferredIntervals;
  if (preferredIntervals)
  {
    v5 = *MEMORY[0x1E69B0CC0];
    v6[0] = preferredIntervals;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newCommandEventWithInterval:(double)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = *MEMORY[0x1E69B1238];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(MPRemoteCommand *)self newCommandEventWithCommandType:v5 options:v7];

  return v8;
}

- (void)setPreferredIntervals:(NSArray *)preferredIntervals
{
  v6 = preferredIntervals;
  if (![(NSArray *)self->_preferredIntervals isEqualToArray:?])
  {
    v4 = [(NSArray *)v6 copy];
    v5 = self->_preferredIntervals;
    self->_preferredIntervals = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPSkipIntervalCommand)initWithMediaRemoteCommandType:(unsigned int)a3
{
  v7.receiver = self;
  v7.super_class = MPSkipIntervalCommand;
  v3 = [(MPRemoteCommand *)&v7 initWithMediaRemoteCommandType:*&a3];
  v4 = v3;
  if (v3)
  {
    preferredIntervals = v3->_preferredIntervals;
    v3->_preferredIntervals = &unk_1F150AC48;
  }

  return v4;
}

@end