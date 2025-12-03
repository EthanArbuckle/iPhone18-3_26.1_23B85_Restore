@interface MPSetPlaybackQueueCommand
- (MPSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)type;
- (id)_mediaRemoteCommandInfoOptions;
- (void)registerSpecializedQueueIdentifier:(id)identifier localizedName:(id)name queueType:(int64_t)type queueParameters:(id)parameters;
- (void)registerSupportedCustomQueueIdentifier:(id)identifier;
- (void)registerSupportedQueueType:(int64_t)type;
- (void)setUpNextItemCount:(int64_t)count;
- (void)unregisterSpecializedQueueIdentifier:(id)identifier;
- (void)unregisterSupportedCustomQueueIdentifier:(id)identifier;
- (void)unregisterSupportedQueueType:(int64_t)type;
@end

@implementation MPSetPlaybackQueueCommand

- (id)_mediaRemoteCommandInfoOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableDictionary *)self->_registeredSpecializedQueues count])
  {
    [dictionary setObject:self->_registeredSpecializedQueues forKeyedSubscript:*MEMORY[0x1E69B0D20]];
  }

  if ([(NSMutableSet *)self->_registeredQueueTypes count])
  {
    allObjects = [(NSMutableSet *)self->_registeredQueueTypes allObjects];
    [dictionary setObject:allObjects forKeyedSubscript:*MEMORY[0x1E69B0D38]];
  }

  if ([(NSMutableSet *)self->_registeredCustomQueueIdentifiers count])
  {
    allObjects2 = [(NSMutableSet *)self->_registeredCustomQueueIdentifiers allObjects];
    [dictionary setObject:allObjects2 forKeyedSubscript:*MEMORY[0x1E69B0D28]];
  }

  if (self->_upNextItemCount >= 1)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E69B0D80]];
  }

  os_unfair_lock_unlock(&self->_lock);

  return dictionary;
}

- (void)unregisterSupportedCustomQueueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_registeredCustomQueueIdentifiers removeObject:identifierCopy];

  if (![(NSMutableSet *)self->_registeredCustomQueueIdentifiers count])
  {
    registeredQueueTypes = self->_registeredQueueTypes;
    v6 = [MEMORY[0x1E696AD98] numberWithInt:7];
    [(NSMutableSet *)registeredQueueTypes removeObject:v6];
  }

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)registerSupportedCustomQueueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  registeredQueueTypes = self->_registeredQueueTypes;
  v6 = [MEMORY[0x1E696AD98] numberWithInt:7];
  [(NSMutableSet *)registeredQueueTypes addObject:v6];

  [(NSMutableSet *)self->_registeredCustomQueueIdentifiers addObject:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)unregisterSupportedQueueType:(int64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  registeredQueueTypes = self->_registeredQueueTypes;
  if ((type - 1) > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A2741B40[type - 1];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [(NSMutableSet *)registeredQueueTypes removeObject:v7];

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)registerSupportedQueueType:(int64_t)type
{
  os_unfair_lock_lock(&self->_lock);
  registeredQueueTypes = self->_registeredQueueTypes;
  if ((type - 1) > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A2741B40[type - 1];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  [(NSMutableSet *)registeredQueueTypes addObject:v7];

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)unregisterSpecializedQueueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_registeredSpecializedQueues removeObjectForKey:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)registerSpecializedQueueIdentifier:(id)identifier localizedName:(id)name queueType:(int64_t)type queueParameters:(id)parameters
{
  nameCopy = name;
  identifierCopy = identifier;
  v12 = [parameters mutableCopy];
  v13 = v12;
  if (v12)
  {
    dictionary = v12;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v16 = dictionary;

  [v16 setObject:nameCopy forKeyedSubscript:*MEMORY[0x1E69B0C80]];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [v16 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B0C98]];

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_registeredSpecializedQueues setObject:v16 forKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);
  [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
}

- (void)setUpNextItemCount:(int64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_upNextItemCount == count)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_upNextItemCount = count;
    os_unfair_lock_unlock(&self->_lock);

    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPSetPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)type
{
  v11.receiver = self;
  v11.super_class = MPSetPlaybackQueueCommand;
  v3 = [(MPRemoteCommand *)&v11 initWithMediaRemoteCommandType:*&type];
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