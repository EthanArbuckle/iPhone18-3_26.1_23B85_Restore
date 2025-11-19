@interface MPSetPlaybackSessionCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setCurrentPlaybackSessionIdentifier:(id)a3;
- (void)setExportableSessionTypes:(id)a3;
- (void)setRequirements:(id)a3;
- (void)setSupportedSessionTypes:(id)a3;
@end

@implementation MPSetPlaybackSessionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSString *)self->_currentPlaybackSessionIdentifier length])
  {
    [v3 setObject:self->_currentPlaybackSessionIdentifier forKeyedSubscript:*MEMORY[0x1E69B0CA0]];
  }

  if ([(NSArray *)self->_exportableSessionTypes count])
  {
    [v3 setObject:self->_exportableSessionTypes forKeyedSubscript:*MEMORY[0x1E69B0C48]];
  }

  if ([(NSArray *)self->_supportedSessionTypes count])
  {
    [v3 setObject:self->_supportedSessionTypes forKeyedSubscript:*MEMORY[0x1E69B0D50]];
  }

  if ([(NSDictionary *)self->_requirements count])
  {
    [v3 setObject:self->_requirements forKeyedSubscript:*MEMORY[0x1E69B0CB0]];
  }

  return v3;
}

- (void)setRequirements:(id)a3
{
  v4 = a3;
  requirements = self->_requirements;
  if (requirements != v4)
  {
    v9 = v4;
    v6 = [(NSDictionary *)requirements isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      v8 = self->_requirements;
      self->_requirements = v7;

      [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
      v4 = v9;
    }
  }
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

- (void)setExportableSessionTypes:(id)a3
{
  v6 = a3;
  if (([(NSArray *)self->_exportableSessionTypes isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    exportableSessionTypes = self->_exportableSessionTypes;
    self->_exportableSessionTypes = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCurrentPlaybackSessionIdentifier:(id)a3
{
  v6 = a3;
  if (([(NSString *)self->_currentPlaybackSessionIdentifier isEqual:?]& 1) == 0)
  {
    v4 = [v6 copy];
    currentPlaybackSessionIdentifier = self->_currentPlaybackSessionIdentifier;
    self->_currentPlaybackSessionIdentifier = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end