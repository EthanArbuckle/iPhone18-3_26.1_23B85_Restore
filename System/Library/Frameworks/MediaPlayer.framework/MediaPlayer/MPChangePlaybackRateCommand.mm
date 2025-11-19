@interface MPChangePlaybackRateCommand
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithPlaybackRate:(float)a3;
- (void)setExtendedSupportedPlaybackRates:(id)a3;
- (void)setPreferredRate:(float)a3;
- (void)setSupportedPlaybackRates:(NSArray *)supportedPlaybackRates;
@end

@implementation MPChangePlaybackRateCommand

- (id)_mediaRemoteCommandInfoOptions
{
  if (self->_supportedPlaybackRates)
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
    [v3 setObject:self->_supportedPlaybackRates forKeyedSubscript:*MEMORY[0x1E69B0D40]];
    extendedSupportedPlaybackRates = self->_extendedSupportedPlaybackRates;
    if (extendedSupportedPlaybackRates)
    {
      [v3 setObject:extendedSupportedPlaybackRates forKeyedSubscript:*MEMORY[0x1E69B0C60]];
    }

    if (fabsf(self->_preferredRate) > 0.00000011921)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B0CC8]];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)newCommandEventWithPlaybackRate:(float)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v11 = *MEMORY[0x1E69B1188];
  *&v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [(MPRemoteCommand *)self newCommandEventWithCommandType:v5 options:v8];

  return v9;
}

- (void)setPreferredRate:(float)a3
{
  if (vabds_f32(self->_preferredRate, a3) > 0.00000011921)
  {
    self->_preferredRate = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setExtendedSupportedPlaybackRates:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_extendedSupportedPlaybackRates isEqualToArray:?])
  {
    v4 = [v6 copy];
    extendedSupportedPlaybackRates = self->_extendedSupportedPlaybackRates;
    self->_extendedSupportedPlaybackRates = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setSupportedPlaybackRates:(NSArray *)supportedPlaybackRates
{
  v6 = supportedPlaybackRates;
  if (![(NSArray *)self->_supportedPlaybackRates isEqualToArray:?])
  {
    v4 = [(NSArray *)v6 copy];
    v5 = self->_supportedPlaybackRates;
    self->_supportedPlaybackRates = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end