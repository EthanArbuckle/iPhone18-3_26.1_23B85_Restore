@interface PHObjectDeleteValidator
- (BOOL)recordObjectID:(id)d;
- (BOOL)validateForDeleteWithRequestsByObjectID:(id)d error:(id *)error;
- (PHObjectDeleteValidator)initWithEntityName:(id)name managedObjectContext:(id)context;
@end

@implementation PHObjectDeleteValidator

- (BOOL)validateForDeleteWithRequestsByObjectID:(id)d error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([(NSMutableSet *)self->_deletedObjectIDs count])
  {
    v7 = MEMORY[0x1E695D5E0];
    name = [(NSEntityDescription *)self->_entity name];
    v9 = [v7 fetchRequestWithEntityName:name];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", self->_deletedObjectIDs];
    [v9 setPredicate:v10];

    [(NSManagedObjectContext *)self->_context executeFetchRequest:v9 error:0];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v24 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          objectID = [v16 objectID];
          v18 = [dCopy objectForKey:objectID];

          LODWORD(v16) = [v18 validateForDeleteManagedObject:v16 error:error];
          if (!v16)
          {
            v19 = 0;
            goto LABEL_12;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v19 = 1;
LABEL_12:
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

- (BOOL)recordObjectID:(id)d
{
  dCopy = d;
  entity = [dCopy entity];
  v6 = entity;
  if (self->_entity && [entity isKindOfEntity:?])
  {
    [(NSMutableSet *)self->_deletedObjectIDs addObject:dCopy];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PHObjectDeleteValidator)initWithEntityName:(id)name managedObjectContext:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = PHObjectDeleteValidator;
  v8 = [(PHObjectDeleteValidator *)&v14 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deletedObjectIDs = v8->_deletedObjectIDs;
    v8->_deletedObjectIDs = v9;

    v11 = PLSafeEntityForNameInManagedObjectContext();
    entity = v8->_entity;
    v8->_entity = v11;

    objc_storeStrong(&v8->_context, context);
  }

  return v8;
}

@end