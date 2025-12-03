@interface MPPreloadPlaybackSessionCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setSupportedSessionTypes:(id)types;
@end

@implementation MPPreloadPlaybackSessionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_supportedSessionTypes count])
  {
    [dictionary setObject:self->_supportedSessionTypes forKeyedSubscript:*MEMORY[0x1E69B0D50]];
  }

  return dictionary;
}

- (void)setSupportedSessionTypes:(id)types
{
  typesCopy = types;
  if (([(NSArray *)self->_supportedSessionTypes isEqual:?]& 1) == 0)
  {
    v4 = [typesCopy copy];
    supportedSessionTypes = self->_supportedSessionTypes;
    self->_supportedSessionTypes = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end