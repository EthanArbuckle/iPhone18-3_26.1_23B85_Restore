@interface EKNotificationCollection
+ (id)knownRelationshipMultiValueKeys;
- (BOOL)save:(id *)a3;
- (BOOL)validate:(id *)a3;
- (EKNotificationCollection)initWithOptions:(id)a3;
- (unsigned)flags;
- (void)_setNotificationsCollectionFlag;
- (void)addNotification:(id)a3;
- (void)removeNotification:(id)a3;
- (void)setSource:(id)a3;
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

- (EKNotificationCollection)initWithOptions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EKNotificationCollection;
  v5 = [(EKObject *)&v13 init];
  if (v5)
  {
    v6 = [v4 source];
    [(EKNotificationCollection *)v5 setSource:v6];

    v7 = [v4 externalID];
    [(EKNotificationCollection *)v5 setExternalID:v7];

    v8 = [v4 externalIDTag];
    [(EKNotificationCollection *)v5 setExternalIDTag:v8];

    [(EKNotificationCollection *)v5 _setNotificationsCollectionFlag];
    v9 = [v4 source];
    v10 = [v9 eventStore];
    v11 = [(EKObject *)v5 persistentObject];
    [v10 _registerObject:v11];
  }

  return v5;
}

- (void)addNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Adding nil Notification to notification collection."];
    v4 = 0;
  }

  [(EKObject *)self addCachedMeltedObject:v4 forMultiValueKey:*MEMORY[0x1E69927B0]];
}

- (void)removeNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Removing nil Notification from notification collection."];
    v4 = 0;
  }

  [(EKObject *)self removeCachedMeltedObject:v4 forMultiValueKey:*MEMORY[0x1E69927B0]];
}

- (BOOL)validate:(id *)a3
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

    else if (a3)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:32];
      v5 = v6;
      LOBYTE(v5) = 0;
      *a3 = v6;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)save:(id *)a3
{
  if (a3)
  {
    *a3 = 0;
  }

  [(EKObject *)self insertPersistentObjectIfNeeded];
  [(EKObject *)self updatePersistentObject];
  return 1;
}

- (void)setSource:(id)a3
{
  v4 = *MEMORY[0x1E6992870];
  v5 = a3;
  [(EKObject *)self updateMeltedAndCachedSingleRelationObject:v5 forKey:v4 frozenClass:+[EKSource frozenClass]];
}

- (void)_setNotificationsCollectionFlag
{
  v3 = [(EKNotificationCollection *)self flags]| 0x40;

  [(EKNotificationCollection *)self setFlags:v3];
}

- (unsigned)flags
{
  v2 = [(EKObject *)self singleChangedValueForKey:*MEMORY[0x1E6992760]];
  v3 = [v2 unsignedIntValue];

  return v3;
}

@end