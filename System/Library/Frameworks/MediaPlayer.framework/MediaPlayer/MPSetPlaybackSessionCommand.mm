@interface MPSetPlaybackSessionCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setCurrentPlaybackSessionIdentifier:(id)identifier;
- (void)setExportableSessionTypes:(id)types;
- (void)setRequirements:(id)requirements;
- (void)setSupportedSessionTypes:(id)types;
@end

@implementation MPSetPlaybackSessionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSString *)self->_currentPlaybackSessionIdentifier length])
  {
    [dictionary setObject:self->_currentPlaybackSessionIdentifier forKeyedSubscript:*MEMORY[0x1E69B0CA0]];
  }

  if ([(NSArray *)self->_exportableSessionTypes count])
  {
    [dictionary setObject:self->_exportableSessionTypes forKeyedSubscript:*MEMORY[0x1E69B0C48]];
  }

  if ([(NSArray *)self->_supportedSessionTypes count])
  {
    [dictionary setObject:self->_supportedSessionTypes forKeyedSubscript:*MEMORY[0x1E69B0D50]];
  }

  if ([(NSDictionary *)self->_requirements count])
  {
    [dictionary setObject:self->_requirements forKeyedSubscript:*MEMORY[0x1E69B0CB0]];
  }

  return dictionary;
}

- (void)setRequirements:(id)requirements
{
  requirementsCopy = requirements;
  requirements = self->_requirements;
  if (requirements != requirementsCopy)
  {
    v9 = requirementsCopy;
    v6 = [(NSDictionary *)requirements isEqual:requirementsCopy];
    requirementsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSDictionary *)v9 copy];
      v8 = self->_requirements;
      self->_requirements = v7;

      [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
      requirementsCopy = v9;
    }
  }
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

- (void)setExportableSessionTypes:(id)types
{
  typesCopy = types;
  if (([(NSArray *)self->_exportableSessionTypes isEqual:?]& 1) == 0)
  {
    v4 = [typesCopy copy];
    exportableSessionTypes = self->_exportableSessionTypes;
    self->_exportableSessionTypes = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCurrentPlaybackSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([(NSString *)self->_currentPlaybackSessionIdentifier isEqual:?]& 1) == 0)
  {
    v4 = [identifierCopy copy];
    currentPlaybackSessionIdentifier = self->_currentPlaybackSessionIdentifier;
    self->_currentPlaybackSessionIdentifier = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end