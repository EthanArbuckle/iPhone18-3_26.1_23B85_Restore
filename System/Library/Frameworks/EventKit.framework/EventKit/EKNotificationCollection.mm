@interface EKNotificationCollection
+ (id)knownRelationshipMultiValueKeys;
- (BOOL)save:(id *)save;
- (BOOL)validate:(id *)validate;
- (EKNotificationCollection)initWithOptions:(id)options;
- (unsigned)flags;
- (void)_setNotificationsCollectionFlag;
- (void)addNotification:(id)notification;
- (void)removeNotification:(id)notification;
- (void)setSource:(id)source;
@end

@implementation EKNotificationCollection

+ (id)knownRelationshipMultiValueKeys
{
  if (knownRelationshipMultiValueKeys_onceToken_0 != -1)
  {
    +[EKNotificationCollection knownRelationshipMultiValueKeys];
  }

  v3 = knownRelationshipMultiValueKeys_keys_0;

  return v3;
}

void __59__EKNotificationCollection_knownRelationshipMultiValueKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E69927B0];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipMultiValueKeys_keys_0;
  knownRelationshipMultiValueKeys_keys_0 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (EKNotificationCollection)initWithOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = EKNotificationCollection;
  v5 = [(EKObject *)&v13 init];
  if (v5)
  {
    source = [optionsCopy source];
    [(EKNotificationCollection *)v5 setSource:source];

    externalID = [optionsCopy externalID];
    [(EKNotificationCollection *)v5 setExternalID:externalID];

    externalIDTag = [optionsCopy externalIDTag];
    [(EKNotificationCollection *)v5 setExternalIDTag:externalIDTag];

    [(EKNotificationCollection *)v5 _setNotificationsCollectionFlag];
    source2 = [optionsCopy source];
    eventStore = [source2 eventStore];
    persistentObject = [(EKObject *)v5 persistentObject];
    [eventStore _registerObject:persistentObject];
  }

  return v5;
}

- (void)addNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (!notificationCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Adding nil Notification to notification collection."];
    notificationCopy = 0;
  }

  [(EKObject *)self addCachedMeltedObject:notificationCopy forMultiValueKey:*MEMORY[0x1E69927B0]];
}

- (void)removeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (!notificationCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Removing nil Notification from notification collection."];
    notificationCopy = 0;
  }

  [(EKObject *)self removeCachedMeltedObject:notificationCopy forMultiValueKey:*MEMORY[0x1E69927B0]];
}

- (BOOL)validate:(id *)validate
{
  v8.receiver = self;
  v8.super_class = EKNotificationCollection;
  LODWORD(v5) = [(EKObject *)&v8 validate:?];
  if (v5)
  {
    if ([(EKNotificationCollection *)self _hasNotificationsCollectionFlag])
    {
      LOBYTE(v5) = 1;
    }

    else if (validate)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:32];
      v5 = v6;
      LOBYTE(v5) = 0;
      *validate = v6;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)save:(id *)save
{
  if (save)
  {
    *save = 0;
  }

  [(EKObject *)self insertPersistentObjectIfNeeded];
  [(EKObject *)self updatePersistentObject];
  return 1;
}

- (void)setSource:(id)source
{
  v4 = *MEMORY[0x1E6992870];
  sourceCopy = source;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:sourceCopy forKey:v4 frozenClass:+[EKSource frozenClass]];
}

- (void)_setNotificationsCollectionFlag
{
  v3 = [(EKNotificationCollection *)self flags]| 0x40;

  [(EKNotificationCollection *)self setFlags:v3];
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992760]];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

@end