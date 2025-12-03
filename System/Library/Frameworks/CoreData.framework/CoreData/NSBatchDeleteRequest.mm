@interface NSBatchDeleteRequest
+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy;
- (NSBatchDeleteRequest)initWithFetchRequest:(NSFetchRequest *)fetch;
- (NSBatchDeleteRequest)initWithObjectIDs:(NSArray *)objects;
- (NSFetchRequest)fetchRequest;
- (id)description;
- (id)encodeForXPC;
- (void)dealloc;
@end

@implementation NSBatchDeleteRequest

- (NSFetchRequest)fetchRequest
{
  v2 = self->_deleteTarget;

  return v2;
}

- (void)dealloc
{
  self->_deleteTarget = 0;
  v3.receiver = self;
  v3.super_class = NSBatchDeleteRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

- (id)encodeForXPC
{
  v2 = [[NSBatchDeleteRequestEncodingToken alloc] initForRequest:self];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 setDelegate:objc_opt_class()];
  [v3 encodeObject:v2 forKey:@"root"];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
}

+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy
{
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:archive error:0];
  [v7 setDelegate:context];
  v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"root"];

  v9 = -[NSBatchDeleteRequest initWithFetchRequest:]([NSBatchDeleteRequest alloc], "initWithFetchRequest:", +[NSFetchRequest decodeFromXPCArchive:withContext:andPolicy:](NSFetchRequest, "decodeFromXPCArchive:withContext:andPolicy:", [v8 fetchData], context, policy));
  -[NSBatchDeleteRequest setResultType:](v9, "setResultType:", [v8 resultType]);
  -[NSBatchDeleteRequest _setSecureOperation:](v9, "_setSecureOperation:", [v8 secure]);

  return v9;
}

- (NSBatchDeleteRequest)initWithObjectIDs:(NSArray *)objects
{
  v28 = *MEMORY[0x1E69E9840];
  if (![(NSArray *)objects count])
  {

    v19 = MEMORY[0x1E695DF30];
    v20 = *MEMORY[0x1E695D940];
    v18 = @"Must supply a non-zero number of objectIDs to request during initialization";
    v17 = 0;
LABEL_16:
    objc_exception_throw([v19 exceptionWithName:v20 reason:v18 userInfo:v17]);
  }

  superentity = [-[NSArray lastObject](objects "lastObject")];
  if (superentity)
  {
    if (atomic_load((superentity + 124)))
    {
      v7 = *(superentity + 72);
    }

    else
    {
      do
      {
        v7 = superentity;
        superentity = [superentity superentity];
      }

      while (superentity);
    }
  }

  else
  {
    v7 = 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(NSArray *)objects countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(objects);
        }

        if (([objc_msgSend(*(*(&v21 + 1) + 8 * i) "entity")] & 1) == 0)
        {

          v15 = MEMORY[0x1E695DF30];
          v16 = *MEMORY[0x1E695D940];
          v25 = @"objectIDs";
          v26 = objects;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v18 = @"mismatched objectIDs in batch delete initializer";
          v19 = v15;
          v20 = v16;
          goto LABEL_16;
        }
      }

      v9 = [(NSArray *)objects countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  v12 = objc_alloc_init(NSFetchRequest);
  [(NSFetchRequest *)v12 setEntity:v7];
  -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", objects]);
  [(NSFetchRequest *)v12 setIncludesPendingChanges:0];
  [(NSFetchRequest *)v12 setResultType:1];
  [(NSFetchRequest *)v12 _incrementInUseCounter];
  result = [(NSBatchDeleteRequest *)self initWithFetchRequest:v12];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

- (NSBatchDeleteRequest)initWithFetchRequest:(NSFetchRequest *)fetch
{
  if (!fetch || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Must supply a fetch request during initialization";
    goto LABEL_9;
  }

  if (![(NSFetchRequest *)fetch entityName])
  {

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = @"Fetch must have an entity";
LABEL_9:
    objc_exception_throw([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
  }

  v11.receiver = self;
  v11.super_class = NSBatchDeleteRequest;
  v5 = [(NSBatchDeleteRequest *)&v11 init];
  if (v5)
  {
    v6 = [(NSFetchRequest *)fetch copy];
    v5->_deleteTarget = v6;
    [(NSFetchRequest *)v6 setIncludesPropertyValues:0];
    [(NSFetchRequest *)v5->_deleteTarget setResultType:1];
    [(NSFetchRequest *)v5->_deleteTarget setPropertiesToFetch:0];
    [(NSFetchRequest *)v5->_deleteTarget setRelationshipKeyPathsForPrefetching:0];
    [(NSFetchRequest *)v5->_deleteTarget setShouldRefreshRefetchedObjects:0];
    [(NSFetchRequest *)v5->_deleteTarget setFetchBatchSize:0];
    [(NSFetchRequest *)v5->_deleteTarget setIncludesPendingChanges:0];
    [(NSFetchRequest *)v5->_deleteTarget _incrementInUseCounter];
  }

  return v5;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  resultType = self->_resultType;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSBatchDeleteRequest : resultType : %ld, fetch :%@ >", resultType, self->_deleteTarget];
  objc_autoreleasePoolPop(v3);

  return v5;
}

@end