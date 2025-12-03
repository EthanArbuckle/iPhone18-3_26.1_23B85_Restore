@interface MPInsertIntoPlaybackQueueCommand
- (MPInsertIntoPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)type;
- (id)_mediaRemoteCommandInfoOptions;
- (void)registerSupportedCustomQueueIdentifier:(id)identifier;
- (void)registerSupportedQueueType:(int64_t)type;
- (void)setLastSectionContentItemID:(id)d;
- (void)setSupportedInsertionPositions:(id)positions;
- (void)unregisterSupportedCustomQueueIdentifier:(id)identifier;
- (void)unregisterSupportedQueueType:(int64_t)type;
@end

@implementation MPInsertIntoPlaybackQueueCommand

- (id)_mediaRemoteCommandInfoOptions
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSArray *)self->_supportedInsertionPositions count])
  {
    [dictionary setObject:self->_supportedInsertionPositions forKeyedSubscript:*MEMORY[0x1E69B0D30]];
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

  if ([(NSString *)self->_lastSectionContentItemID length])
  {
    [dictionary setObject:self->_lastSectionContentItemID forKeyedSubscript:*MEMORY[0x1E69B0C70]];
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
    [(NSMutableSet *)self->_registeredQueueTypes removeObject:&unk_1F1509D18];
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

- (void)setLastSectionContentItemID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  lastSectionContentItemID = self->_lastSectionContentItemID;
  if (lastSectionContentItemID == dCopy || ([(NSString *)lastSectionContentItemID isEqual:dCopy]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = [(NSString *)dCopy copy];
    v6 = self->_lastSectionContentItemID;
    self->_lastSectionContentItemID = v5;

    os_unfair_lock_unlock(&self->_lock);
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (void)setSupportedInsertionPositions:(id)positions
{
  positionsCopy = positions;
  os_unfair_lock_lock(&self->_lock);
  if ([positionsCopy isEqual:self->_supportedInsertionPositions])
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v4 = [positionsCopy copy];
    supportedInsertionPositions = self->_supportedInsertionPositions;
    self->_supportedInsertionPositions = v4;

    os_unfair_lock_unlock(&self->_lock);
    [(MPRemoteCommand *)self notifyPropagatablePropertyChanged];
  }
}

- (MPInsertIntoPlaybackQueueCommand)initWithMediaRemoteCommandType:(unsigned int)type
{
  v9.receiver = self;
  v9.super_class = MPInsertIntoPlaybackQueueCommand;
  v3 = [(MPRemoteCommand *)&v9 initWithMediaRemoteCommandType:*&type];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredQueueTypes = v3->_registeredQueueTypes;
    v3->_registeredQueueTypes = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    registeredCustomQueueIdentifiers = v3->_registeredCustomQueueIdentifiers;
    v3->_registeredCustomQueueIdentifiers = v6;

    v3->_lock._os_unfair_lock_opaque = 0;
    [(MPInsertIntoPlaybackQueueCommand *)v3 registerSupportedQueueType:1];
    [(MPInsertIntoPlaybackQueueCommand *)v3 registerSupportedQueueType:2];
    [(MPInsertIntoPlaybackQueueCommand *)v3 registerSupportedQueueType:3];
    [(MPInsertIntoPlaybackQueueCommand *)v3 registerSupportedQueueType:5];
    [(MPInsertIntoPlaybackQueueCommand *)v3 registerSupportedQueueType:6];
  }

  return v3;
}

@end