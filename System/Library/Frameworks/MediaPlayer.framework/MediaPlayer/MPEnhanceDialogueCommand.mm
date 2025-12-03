@interface MPEnhanceDialogueCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setActive:(BOOL)active;
@end

@implementation MPEnhanceDialogueCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E69B0C68];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end