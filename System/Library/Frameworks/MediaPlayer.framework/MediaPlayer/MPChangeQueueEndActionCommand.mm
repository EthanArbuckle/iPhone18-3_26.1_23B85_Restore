@interface MPChangeQueueEndActionCommand
- (id)_mediaRemoteCommandInfoOptions;
- (void)setCurrentQueueEndAction:(int64_t)action;
- (void)setSupportedQueueEndActions:(id)actions;
@end

@implementation MPChangeQueueEndActionCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v8 = *MEMORY[0x1E69B0C50];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentQueueEndAction];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  if ([(NSArray *)self->_supportedQueueEndActions count])
  {
    [v6 setObject:self->_supportedQueueEndActions forKeyedSubscript:*MEMORY[0x1E69B0D58]];
  }

  return v6;
}

- (void)setSupportedQueueEndActions:(id)actions
{
  actionsCopy = actions;
  if (![(NSArray *)self->_supportedQueueEndActions isEqualToArray:?])
  {
    v4 = [actionsCopy copy];
    supportedQueueEndActions = self->_supportedQueueEndActions;
    self->_supportedQueueEndActions = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setCurrentQueueEndAction:(int64_t)action
{
  if (self->_currentQueueEndAction != action)
  {
    self->_currentQueueEndAction = action;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end