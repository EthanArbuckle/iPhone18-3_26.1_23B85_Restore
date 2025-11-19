@interface MPPreloadPlaybackSessionCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setSupportedSessionTypes:(id)a3;
@end

@implementation MPPreloadPlaybackSessionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_supportedSessionTypes count])
  {
    [v3 setObject:self->_supportedSessionTypes forKeyedSubscript:*MEMORY[0x1E69B0D50]];
  }

  return v3;
}

- (void)setSupportedSessionTypes:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_supportedSessionTypes isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    supportedSessionTypes = self->_supportedSessionTypes;
    self->_supportedSessionTypes = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end