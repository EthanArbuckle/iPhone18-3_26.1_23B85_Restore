@interface MPPrepareForSetPlaybackQueueCommand
- (MPPrepareForSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)a3;
- (id)_mediaRemoteCommandInfoOptions;
- (void)setProactiveCommandOptions:(id)a3;
@end

@implementation MPPrepareForSetPlaybackQueueCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  proactiveCommandOptions = self->_proactiveCommandOptions;
  if (proactiveCommandOptions)
  {
    [v3 setObject:proactiveCommandOptions forKeyedSubscript:*MEMORY[0x1E69B0CF0]];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProactiveCommandOptions:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([v6 isEqual:self->_proactiveCommandOptions])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [v6 copy];
    proactiveCommandOptions = self->_proactiveCommandOptions;
    self->_proactiveCommandOptions = v4;

    os_unfair_lock_unlock(&self->_lock);
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPPrepareForSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)a3
{
  v4.receiver = self;
  v4.super_class = MPPrepareForSetPlaybackQueueCommand;
  result = [(MPRemoteCommand *)&v4 initWithMediaRemoteCommandType:*&a3];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

@end