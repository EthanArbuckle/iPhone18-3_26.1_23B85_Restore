@interface MPToggleTransitionsCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setActive:(BOOL)a3;
- (void)setTransitionStyle:(int64_t)a3;
@end

@implementation MPToggleTransitionsCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69B0C68];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69B0D78];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_transitionStyle];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)setTransitionStyle:(int64_t)a3
{
  if (self->_transitionStyle != a3)
  {
    self->_transitionStyle = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end