@interface NSBatchInsertRequest
+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler;
+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler;
+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries;
+ (id)decodeFromXPCArchive:(id)archive withContext:(id)context withPolicy:(id)policy;
- (NSBatchInsertRequest)init;
- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity dictionaryHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity managedObjectHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity objects:(NSArray *)dictionaries;
- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler;
- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries;
- (NSEntityDescription)entity;
- (NSString)entityName;
- (id)description;
- (id)encodeForXPC;
- (void)_resolveEntityWithContext:(id)context;
- (void)_resolveEntityWithSQLCore:(uint64_t)core;
- (void)_setSecureOperation:(BOOL)operation;
- (void)dealloc;
- (void)setDictionaryHandler:(void *)dictionaryHandler;
- (void)setManagedObjectHandler:(void *)managedObjectHandler;
@end

@implementation NSBatchInsertRequest

- (id)encodeForXPC
{
  v2 = [[NSBatchInsertRequestEncodingToken alloc] initForRequest:self];
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
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  if (policy)
  {
    v8 = [v8 setByAddingObjectsFromSet:{objc_msgSend(policy, "allowableClassesForClientWithContext:", context)}];
  }

  v9 = [v7 decodeObjectOfClasses:v8 forKey:@"root"];

  result = [v9 objectsToInsert];
  if (result)
  {
    v11 = -[NSBatchInsertRequest initWithEntityName:objects:]([NSBatchInsertRequest alloc], "initWithEntityName:objects:", [v9 entityName], objc_msgSend(v9, "objectsToInsert"));
    -[NSBatchInsertRequest setResultType:](v11, "setResultType:", [v9 resultType]);
    -[NSBatchInsertRequest _setSecureOperation:](v11, "_setSecureOperation:", [v9 secure]);

    return v11;
  }

  return result;
}

+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries
{
  v4 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName objects:dictionaries];

  return v4;
}

+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler
{
  v4 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName dictionaryHandler:handler];

  return v4;
}

+ (NSBatchInsertRequest)batchInsertRequestWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler
{
  v4 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName managedObjectHandler:handler];

  return v4;
}

- (NSBatchInsertRequest)init
{
  if (dword_1ED4BEEC8 == 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"-init results in undefined behavior for NSBatchInsertRequest" userInfo:0]);
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: -init results in undefined behavior for NSBatchInsertRequest\n", buf, 2u);
  }

  v3 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_18565F000, v3, OS_LOG_TYPE_FAULT, "CoreData: -init results in undefined behavior for NSBatchInsertRequest", v5, 2u);
  }

  return 0;
}

- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName objects:(NSArray *)dictionaries
{
  v8.receiver = self;
  v8.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v8 init];
  if (v6)
  {
    if ([(NSArray *)dictionaries count])
    {
      v6->_objectsToInsert = [(NSArray *)dictionaries copy];
      v6->_entity = [(NSString *)entityName copy];
      v6->_flags = (*&v6->_flags & 0xFFFFFFF8 | 4);
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity objects:(NSArray *)dictionaries
{
  v8.receiver = self;
  v8.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v8 init];
  if (v6)
  {
    if ([(NSArray *)dictionaries count])
    {
      v6->_objectsToInsert = [(NSArray *)dictionaries copy];
      v6->_entity = entity;
      *&v6->_flags &= 0xFFFFFFFC;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity dictionaryHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertDictionaryHandler = _Block_copy(handler);
      v7->_entity = entity;
      *&v7->_flags &= 0xFFFFFFFC;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSBatchInsertRequest)initWithEntity:(NSEntityDescription *)entity managedObjectHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertManagedObjectHandler = _Block_copy(handler);
      v7->_entity = entity;
      *&v7->_flags &= 0xFFFFFFFC;
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName dictionaryHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertDictionaryHandler = _Block_copy(handler);
      v7->_entity = entityName;
      v7->_flags = (*&v7->_flags & 0xFFFFFFF8 | 4);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (NSBatchInsertRequest)initWithEntityName:(NSString *)entityName managedObjectHandler:(void *)handler
{
  v9.receiver = self;
  v9.super_class = NSBatchInsertRequest;
  v6 = [(NSBatchInsertRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (handler)
    {
      v6->_insertManagedObjectHandler = _Block_copy(handler);
      v7->_entity = entityName;
      v7->_flags = (*&v7->_flags & 0xFFFFFFF8 | 4);
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  self->_entity = 0;

  self->_objectsToInsert = 0;
  insertDictionaryHandler = self->_insertDictionaryHandler;
  if (insertDictionaryHandler)
  {
    _Block_release(insertDictionaryHandler);
    self->_insertDictionaryHandler = 0;
  }

  insertManagedObjectHandler = self->_insertManagedObjectHandler;
  if (insertManagedObjectHandler)
  {
    _Block_release(insertManagedObjectHandler);
    self->_insertManagedObjectHandler = 0;
  }

  v5.receiver = self;
  v5.super_class = NSBatchInsertRequest;
  [(NSPersistentStoreRequest *)&v5 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x1E696AEC0];
  entityName = [(NSBatchInsertRequest *)self entityName];
  resultType = [(NSBatchInsertRequest *)self resultType];
  objc_opt_self();
  if (resultType >= (NSBatchInsertRequestResultTypeCount|NSBatchInsertRequestResultTypeObjectIDs))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"'%ld' is an unknown NSBatchInsertRequestResultType value", resultType), 0}]);
  }

  v7 = off_1E6EC2A20[resultType];
  if (self->_objectsToInsert)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu objects", -[NSArray count](-[NSBatchInsertRequest objectsToInsert](self, "objectsToInsert"), "count")];
  }

  else
  {
    v8 = @"handler provided";
  }

  v9 = [v4 stringWithFormat:@"<NSBatchInsertRequest : entity = %@ resultType = %@ and %@>", entityName, v7, v8];
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (NSString)entityName
{
  result = self->_entity;
  if ((*&self->_flags & 4) == 0)
  {
    return [(NSString *)result name];
  }

  return result;
}

- (NSEntityDescription)entity
{
  if ((*&self->_flags & 4) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696A778] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"This batch insert request (%p) was created with a string name (%@), and cannot respond to -entity until used by an NSManagedObjectContext", self, self->_entity, 0), 0}]);
  }

  return self->_entity;
}

- (void)_setSecureOperation:(BOOL)operation
{
  if (operation)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFF7 | v3);
}

- (void)_resolveEntityWithContext:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 4) != 0)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3052000000;
    v25 = __Block_byref_object_copy__18;
    v26 = __Block_byref_object_dispose__18;
    v5 = [objc_msgSend(context "persistentStoreCoordinator")];
    if (v5)
    {
      v5 = [*(v5 + 32) objectForKey:self->_entity];
    }

    v27 = v5;
    if (!v23[5])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [objc_msgSend(context "persistentStoreCoordinator")];
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
      if (v7)
      {
        v8 = *v19;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v19 != v8)
            {
              objc_enumerationMutation(v6);
            }

            ancillaryModels = [*(*(&v18 + 1) + 8 * i) ancillaryModels];
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __50__NSBatchInsertRequest__resolveEntityWithContext___block_invoke;
            v17[3] = &unk_1E6EC2A00;
            v17[4] = self;
            v17[5] = &v22;
            [ancillaryModels enumerateKeysAndObjectsUsingBlock:v17];
          }

          v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
        }

        while (v7);
      }
    }

    v11 = v23[5];
    if (!v11)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find entity for batch insert (%@)", self->_entity];
      objc_exception_throw([v15 exceptionWithName:*MEMORY[0x1E695D930] reason:v16 userInfo:0]);
    }

    v12 = v11;
    entity = self->_entity;
    self->_entity = v23[5];
    *&self->_flags &= ~4u;

    _Block_object_dispose(&v22, 8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __50__NSBatchInsertRequest__resolveEntityWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    result = [*(a3 + 32) objectForKey:*(*(a1 + 32) + 16)];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  return result;
}

- (void)_resolveEntityWithSQLCore:(uint64_t)core
{
  if (core && (*(core + 48) & 4) != 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3052000000;
    v15 = __Block_byref_object_copy__18;
    v16 = __Block_byref_object_dispose__18;
    v4 = [objc_msgSend(a2 "persistentStoreCoordinator")];
    if (v4)
    {
      v4 = [*(v4 + 32) objectForKey:*(core + 16)];
    }

    v17 = v4;
    v5 = v13[5];
    if (!v5)
    {
      ancillaryModels = [a2 ancillaryModels];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __50__NSBatchInsertRequest__resolveEntityWithSQLCore___block_invoke;
      v11[3] = &unk_1E6EC2A00;
      v11[4] = core;
      v11[5] = &v12;
      [ancillaryModels enumerateKeysAndObjectsUsingBlock:v11];
      v5 = v13[5];
      if (!v5)
      {
        v9 = MEMORY[0x1E695DF30];
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't find entity for batch insert (%@)", *(core + 16)];
        objc_exception_throw([v9 exceptionWithName:*MEMORY[0x1E695D930] reason:v10 userInfo:0]);
      }
    }

    v7 = v5;
    v8 = *(core + 16);
    *(core + 16) = v13[5];
    *(core + 48) &= ~4u;

    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __50__NSBatchInsertRequest__resolveEntityWithSQLCore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    result = [*(a3 + 32) objectForKey:*(*(a1 + 32) + 16)];
  }

  else
  {
    result = 0;
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }

  return result;
}

- (void)setDictionaryHandler:(void *)dictionaryHandler
{
  insertDictionaryHandler = self->_insertDictionaryHandler;
  if (insertDictionaryHandler)
  {
    _Block_release(insertDictionaryHandler);
    self->_insertDictionaryHandler = 0;
  }

  self->_insertDictionaryHandler = _Block_copy(dictionaryHandler);
}

- (void)setManagedObjectHandler:(void *)managedObjectHandler
{
  insertManagedObjectHandler = self->_insertManagedObjectHandler;
  if (insertManagedObjectHandler)
  {
    _Block_release(insertManagedObjectHandler);
    self->_insertManagedObjectHandler = 0;
  }

  self->_insertManagedObjectHandler = _Block_copy(managedObjectHandler);
}

@end