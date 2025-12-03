@interface MPFeedbackCommand
- (id)_mediaRemoteCommandInfoOptions;
- (id)newCommandEventWithState:(int64_t)state;
- (void)setActive:(BOOL)active;
- (void)setLocalizedShortTitle:(NSString *)localizedShortTitle;
- (void)setPresentationStyle:(int64_t)style;
@end

@implementation MPFeedbackCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  if ([(MPRemoteCommand *)self mediaRemoteCommandType]!= 128)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_active];
    [v3 setObject:v4 forKey:*MEMORY[0x1E69B0C68]];
  }

  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    [v3 setObject:localizedTitle forKey:*MEMORY[0x1E69B0C80]];
  }

  localizedShortTitle = self->_localizedShortTitle;
  if (localizedShortTitle)
  {
    [v3 setObject:localizedShortTitle forKey:*MEMORY[0x1E69B0C78]];
  }

  if (self->_presentationStyle)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v7 forKey:*MEMORY[0x1E69B0CD0]];
  }

  return v3;
}

- (id)newCommandEventWithState:(int64_t)state
{
  v11[1] = *MEMORY[0x1E69E9840];
  mediaRemoteCommandType = [(MPRemoteCommand *)self mediaRemoteCommandType];
  v10 = *MEMORY[0x1E69B1140];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:state == -1];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(MPRemoteCommand *)self newCommandEventWithCommandType:mediaRemoteCommandType options:v7];

  return v8;
}

- (void)setPresentationStyle:(int64_t)style
{
  if (self->_presentationStyle != style)
  {
    self->_presentationStyle = style;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setLocalizedShortTitle:(NSString *)localizedShortTitle
{
  v6 = localizedShortTitle;
  if (![(NSString *)self->_localizedShortTitle isEqualToString:?])
  {
    v4 = [(NSString *)v6 copy];
    v5 = self->_localizedShortTitle;
    self->_localizedShortTitle = v4;

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

@end