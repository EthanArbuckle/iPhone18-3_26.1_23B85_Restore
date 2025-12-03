@interface MPVocalsControlCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setContinuous:(BOOL)continuous;
- (void)setMaxVocalsLevel:(float)level;
- (void)setMinVocalsLevel:(float)level;
- (void)setVocalsControlActive:(BOOL)active;
- (void)setVocalsLevel:(float)level;
@end

@implementation MPVocalsControlCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_vocalsControlActive];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69B0D88]];

  *&v5 = self->_vocalsLevel;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69B0D98]];

  *&v7 = self->_minVocalsLevel;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x1E69B0DA8]];

  *&v9 = self->_maxVocalsLevel;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v3 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B0DA0]];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_continuous];
  [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69B0D90]];

  v12 = [v3 copy];

  return v12;
}

- (void)setContinuous:(BOOL)continuous
{
  if (self->_continuous != continuous)
  {
    self->_continuous = continuous;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setMaxVocalsLevel:(float)level
{
  if (self->_maxVocalsLevel != level)
  {
    self->_maxVocalsLevel = level;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setMinVocalsLevel:(float)level
{
  if (self->_minVocalsLevel != level)
  {
    self->_minVocalsLevel = level;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setVocalsLevel:(float)level
{
  if (self->_vocalsLevel != level)
  {
    self->_vocalsLevel = level;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setVocalsControlActive:(BOOL)active
{
  if (self->_vocalsControlActive != active)
  {
    self->_vocalsControlActive = active;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end