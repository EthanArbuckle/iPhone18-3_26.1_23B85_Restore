@interface MPPrepareForSetPlaybackQueueCommand
- (MPPrepareForSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)type;
- (id)_mediaRemoteCommandInfoOptions;
- (void)setProactiveCommandOptions:(id)options;
@end

@implementation MPPrepareForSetPlaybackQueueCommand

- (id)_mediaRemoteCommandInfoOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  proactiveCommandOptions = self->_proactiveCommandOptions;
  if (proactiveCommandOptions)
  {
    [dictionary setObject:proactiveCommandOptions forKeyedSubscript:*MEMORY[0x1E69B0CF0]];
  }

  os_unfair_lock_unlock(&self->_lock);

  return dictionary;
}

- (void)setProactiveCommandOptions:(id)options
{
  optionsCopy = options;
  os_unfair_lock_lock(&self->_lock);
  if ([optionsCopy isEqual:self->_proactiveCommandOptions])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [optionsCopy copy];
    proactiveCommandOptions = self->_proactiveCommandOptions;
    self->_proactiveCommandOptions = v4;

    os_unfair_lock_unlock(&self->_lock);
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPPrepareForSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)type
{
  v4.receiver = self;
  v4.super_class = MPPrepareForSetPlaybackQueueCommand;
  result = [(MPRemoteCommand *)&v4 initWithMediaRemoteCommandType:*&type];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end