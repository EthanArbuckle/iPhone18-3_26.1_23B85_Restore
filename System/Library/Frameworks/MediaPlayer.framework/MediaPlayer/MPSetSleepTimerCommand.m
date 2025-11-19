@interface MPSetSleepTimerCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setFireDate:(double)a3;
- (void)setStopMode:(int64_t)a3;
- (void)setTime:(double)a3;
@end

@implementation MPSetSleepTimerCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_time];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69B0D18]];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stopMode];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B0D10]];

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_fireDate];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69B0D08]];

  v7 = [v3 copy];

  return v7;
}

- (void)setStopMode:(int64_t)a3
{
  if (self->_stopMode != a3)
  {
    self->_stopMode = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setFireDate:(double)a3
{
  if (self->_fireDate != a3)
  {
    self->_fireDate = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setTime:(double)a3
{
  if (self->_time != a3)
  {
    self->_time = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end