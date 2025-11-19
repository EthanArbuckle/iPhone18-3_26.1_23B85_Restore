@interface MPVocalsControlCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setContinuous:(BOOL)a3;
- (void)setMaxVocalsLevel:(float)a3;
- (void)setMinVocalsLevel:(float)a3;
- (void)setVocalsControlActive:(BOOL)a3;
- (void)setVocalsLevel:(float)a3;
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

- (void)setContinuous:(BOOL)a3
{
  if (self->_continuous != a3)
  {
    self->_continuous = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setMaxVocalsLevel:(float)a3
{
  if (self->_maxVocalsLevel != a3)
  {
    self->_maxVocalsLevel = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setMinVocalsLevel:(float)a3
{
  if (self->_minVocalsLevel != a3)
  {
    self->_minVocalsLevel = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setVocalsLevel:(float)a3
{
  if (self->_vocalsLevel != a3)
  {
    self->_vocalsLevel = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setVocalsControlActive:(BOOL)a3
{
  if (self->_vocalsControlActive != a3)
  {
    self->_vocalsControlActive = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end