@interface MPSetSleepTimerCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setFireDate:(double)date;
- (void)setStopMode:(int64_t)mode;
- (void)setTime:(double)time;
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

- (void)setStopMode:(int64_t)mode
{
  if (self->_stopMode != mode)
  {
    self->_stopMode = mode;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setFireDate:(double)date
{
  if (self->_fireDate != date)
  {
    self->_fireDate = date;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setTime:(double)time
{
  if (self->_time != time)
  {
    self->_time = time;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end