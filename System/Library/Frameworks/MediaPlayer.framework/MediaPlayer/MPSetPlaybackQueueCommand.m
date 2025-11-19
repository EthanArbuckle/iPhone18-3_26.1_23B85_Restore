@interface MPSetPlaybackQueueCommand
- (MPSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)a3;
- (id)_mediaRemoteCommandInfoOptions;
- (void)registerSpecializedQueueIdentifier:(id)a3 localizedName:(id)a4 queueType:(int64_t)a5 queueParameters:(id)a6;
- (void)registerSupportedCustomQueueIdentifier:(id)a3;
- (void)registerSupportedQueueType:(int64_t)a3;
- (void)setUpNextItemCount:(int64_t)a3;
- (void)unregisterSpecializedQueueIdentifier:(id)a3;
- (void)unregisterSupportedCustomQueueIdentifier:(id)a3;
- (void)unregisterSupportedQueueType:(int64_t)a3;
@end

@implementation MPSetPlaybackQueueCommand

- (id)_mediaRemoteCommandInfoOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_registeredSpecializedQueues count])
  {
    [v3 setObject:self->_registeredSpecializedQueues forKeyedSubscript:*MEMORY[0x1E69B0D20]];
  }

  if ([(NSMutableSet *)self->_registeredQueueTypes count])
  {
    v4 = [(NSMutableSet *)self->_registeredQueueTypes allObjects];
    [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x1E69B0D38]];
  }

  if ([(NSMutableSet *)self->_registeredCustomQueueIdentifiers count])
  {
    v5 = [(NSMutableSet *)self->_registeredCustomQueueIdentifiers allObjects];
    [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x1E69B0D28]];
  }

  if (self->_upNextItemCount >= 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69B0D80]];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)unregisterSupportedCustomQueueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_registeredCustomQueueIdentifiers removeObject:v4];

  if (![(NSMutableSet *)self->_registeredCustomQueueIdentifiers count])
  {
    registeredQueueTypes = self->_registeredQueueTypes;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:7];
    [(NSMutableSet *)registeredQueueTypes removeObject:v6];
  }

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)registerSupportedCustomQueueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  registeredQueueTypes = self->_registeredQueueTypes;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:7];
  [(NSMutableSet *)registeredQueueTypes addObject:v6];

  [(NSMutableSet *)self->_registeredCustomQueueIdentifiers addObject:v4];
  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)unregisterSupportedQueueType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  registeredQueueTypes = self->_registeredQueueTypes;
  if ((a3 - 1) > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A2741B40[a3 - 1];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [(NSMutableSet *)registeredQueueTypes removeObject:v7];

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)registerSupportedQueueType:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  registeredQueueTypes = self->_registeredQueueTypes;
  if ((a3 - 1) > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A2741B40[a3 - 1];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [(NSMutableSet *)registeredQueueTypes addObject:v7];

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)unregisterSpecializedQueueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_registeredSpecializedQueues removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)registerSpecializedQueueIdentifier:(id)a3 localizedName:(id)a4 queueType:(int64_t)a5 queueParameters:(id)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [a6 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
  }

  v16 = v14;

  [v16 setObject:v10 forKeyedSubscript:*MEMORY[0x1E69B0C80]];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B0C98]];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_registeredSpecializedQueues setObject:v16 forKeyedSubscript:v11];

  os_unfair_lock_unlock(&self->_lock);
  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)setUpNextItemCount:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_upNextItemCount == a3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_upNextItemCount = a3;
    os_unfair_lock_unlock(&self->_lock);

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)a3
{
  v11.receiver = self;
  v11.super_class = MPSetPlaybackQueueCommand;
  v3 = [(MPRemoteCommand *)&v11 initWithMediaRemoteCommandType:*&a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    registeredSpecializedQueues = v3->_registeredSpecializedQueues;
    v3->_registeredSpecializedQueues = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredQueueTypes = v3->_registeredQueueTypes;
    v3->_registeredQueueTypes = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredCustomQueueIdentifiers = v3->_registeredCustomQueueIdentifiers;
    v3->_registeredCustomQueueIdentifiers = v8;

    v3->_lock._os_unfair_lock_opaque = 0;
    [(MPSetPlaybackQueueCommand *)v3 registerSupportedQueueType:1];
    [(MPSetPlaybackQueueCommand *)v3 registerSupportedQueueType:2];
    [(MPSetPlaybackQueueCommand *)v3 registerSupportedQueueType:3];
    [(MPSetPlaybackQueueCommand *)v3 registerSupportedQueueType:5];
    [(MPSetPlaybackQueueCommand *)v3 registerSupportedQueueType:6];
  }

  return v3;
}

@end