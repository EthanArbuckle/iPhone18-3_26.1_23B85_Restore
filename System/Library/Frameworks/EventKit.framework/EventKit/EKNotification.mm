@interface EKNotification
+ (id)knownRelationshipSingleValueKeys;
+ (id)knownRelationshipWeakKeys;
- (BOOL)save:(id *)save;
- (EKObjectID)objectID;
@end

@implementation EKNotification

+ (id)knownRelationshipSingleValueKeys
{
  if (knownRelationshipSingleValueKeys_onceToken_1 != -1)
  {
    +[EKNotification knownRelationshipSingleValueKeys];
  }

  v3 = knownRelationshipSingleValueKeys_keys_1;

  return v3;
}

void __50__EKNotification_knownRelationshipSingleValueKeys__block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = *MEMORY[0x1E6992A98];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = knownRelationshipSingleValueKeys_keys_1;
  knownRelationshipSingleValueKeys_keys_1 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)knownRelationshipWeakKeys
{
  if (knownRelationshipWeakKeys_onceToken_2 != -1)
  {
    +[EKNotification knownRelationshipWeakKeys];
  }

  v3 = knownRelationshipWeakKeys_keys_2;

  return v3;
}

void __43__EKNotification_knownRelationshipWeakKeys__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E6992AC0];
  v4[0] = *MEMORY[0x1E6992A98];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = knownRelationshipWeakKeys_keys_2;
  knownRelationshipWeakKeys_keys_2 = v1;

  v3 = *MEMORY[0x1E69E9840];
}

- (EKObjectID)objectID
{
  persistentObject = [(EKObject *)self persistentObject];
  objectID = [persistentObject objectID];

  return objectID;
}

- (BOOL)save:(id *)save
{
  if (save)
  {
    *save = 0;
    if ([(EKObject *)self isNew])
    {
      v5 = [MEMORY[0x1E696ABC0] errorWithEKErrorCode:35 description:{@"In order to save a new notification, add it to a NotificationCollection, save, and commit the collection instead."}];
      v6 = v5;
      result = 0;
      *save = v5;
      return result;
    }
  }

  else if ([(EKObject *)self isNew])
  {
    return 0;
  }

  [(EKObject *)self updatePersistentObject];
  return 1;
}

@end