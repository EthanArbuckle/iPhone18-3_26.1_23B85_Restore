@interface NSBatchUpdateRequest
+ (NSBatchUpdateRequest)batchUpdateRequestWithEntityName:(NSString *)entityName;
+ (id)decodeFromXPCArchive:(id)a3 withContext:(id)a4 withPolicy:(id)a5;
- (NSBatchUpdateRequest)init;
- (NSBatchUpdateRequest)initWithEntity:(NSEntityDescription *)entity;
- (NSBatchUpdateRequest)initWithEntityName:(NSString *)entityName;
- (NSEntityDescription)entity;
- (NSString)description;
- (NSString)entityName;
- (id)encodeForXPC;
- (void)_resolveEntityWithContext:(id)a3;
- (void)_setSecureOperation:(BOOL)a3;
- (void)_setValidatedPropertiesToUpdate:(id *)a1;
- (void)dealloc;
- (void)setPropertiesToUpdate:(NSDictionary *)propertiesToUpdate;
@end

@implementation NSBatchUpdateRequest

- (NSBatchUpdateRequest)init
{
  v3.receiver = self;
  v3.super_class = NSBatchUpdateRequest;
  result = [(NSBatchUpdateRequest *)&v3 init];
  if (result)
  {
    result->_flags = (*&result->_flags & 0xFFFFFFF8 | 1);
  }

  return result;
}

- (NSEntityDescription)entity
{
  if ((*&self->_flags & 8) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E696A778] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"This batch update request (%p) was created with a string name (%@), and cannot respond to -entity until used by an NSManagedObjectContext", self, self->_entity, 0), 0}]);
  }

  return self->_entity;
}

- (void)dealloc
{
  self->_entity = 0;

  self->_predicate = 0;
  self->_columnsToUpdate = 0;
  v3.receiver = self;
  v3.super_class = NSBatchUpdateRequest;
  [(NSPersistentStoreRequest *)&v3 dealloc];
}

- (id)encodeForXPC
{
  v2 = [[NSBatchUpdateRequestEncodingToken alloc] initForRequest:self];
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 setDelegate:objc_opt_class()];
  [v3 encodeObject:v2 forKey:@"root"];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  return v4;
}

+ (id)decodeFromXPCArchive:(id)a3 withContext:(id)a4 withPolicy:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a3 error:0];
  [v7 setDelegate:a4];
  v8 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  if (a5)
  {
    v8 = [v8 setByAddingObjectsFromSet:{objc_msgSend(a5, "allowableClassesForClientWithContext:", a4)}];
  }

  v9 = [v7 decodeObjectOfClasses:v8 forKey:@"root"];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [objc_msgSend(v9 columnsToUpdate];
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v15 constantValue] == 0;
        }

        else
        {
          v16 = [v15 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
        }

        v12 += v16;
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  if ([v9 nullValueCount] == v17)
  {
    v18 = -[NSBatchUpdateRequest initWithEntityName:]([NSBatchUpdateRequest alloc], "initWithEntityName:", [v9 entityName]);
    -[NSBatchUpdateRequest setPredicate:](v18, "setPredicate:", [v9 predicate]);
    -[NSBatchUpdateRequest setPropertiesToUpdate:](v18, "setPropertiesToUpdate:", [v9 columnsToUpdate]);
    -[NSBatchUpdateRequest setResultType:](v18, "setResultType:", [v9 resultType]);
    -[NSBatchUpdateRequest setIncludesSubentities:](v18, "setIncludesSubentities:", [v9 includeSubEntities]);
    -[NSBatchUpdateRequest _setSecureOperation:](v18, "_setSecureOperation:", [v9 secure]);
    result = v18;
  }

  else
  {
    result = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

+ (NSBatchUpdateRequest)batchUpdateRequestWithEntityName:(NSString *)entityName
{
  v3 = [[a1 alloc] initWithEntityName:entityName];

  return v3;
}

- (NSBatchUpdateRequest)initWithEntityName:(NSString *)entityName
{
  v4 = [(NSBatchUpdateRequest *)self init];
  if (v4)
  {
    v4->_entity = entityName;
    *&v4->_flags |= 8u;
  }

  return v4;
}

- (NSBatchUpdateRequest)initWithEntity:(NSEntityDescription *)entity
{
  v4 = [(NSBatchUpdateRequest *)self init];
  if (v4)
  {
    v4->_entity = entity;
  }

  return v4;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSBatchUpdateRequest : entity = %@, properties = %@, subentities = %d, predicate = %@", -[NSBatchUpdateRequest entityName](self, "entityName"), self->_columnsToUpdate, *&self->_flags & 1, self->_predicate];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (NSString)entityName
{
  result = self->_entity;
  if ((*&self->_flags & 8) == 0)
  {
    return [(NSString *)result name];
  }

  return result;
}

- (void)_setValidatedPropertiesToUpdate:(id *)a1
{
  v71 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v48 = [a2 countByEnumeratingWithState:&v50 objects:v70 count:16];
    if (v48)
    {
      v4 = *v51;
      v46 = v2;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v51 != v4)
        {
          objc_enumerationMutation(a2);
        }

        v6 = *(*(&v50 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [a2 objectForKey:v6];
        if ([v6 isNSString])
        {
          v47 = v7;
          v9 = [v6 componentsSeparatedByString:@"."];
          v10 = [v2 entity];
          if ([v9 count] != 1)
          {

            v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid string keypath %@ passed to propertiesToUpdate:", v6), 0}];
            v38 = *MEMORY[0x1E696A250];
            v68 = @"NSUnderlyingException";
            v69 = v37;
            v33 = [MEMORY[0x1E696ABC0] errorWithDomain:v38 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v69, &v68, 1)}];
            v2 = v46;
            v7 = v47;
            goto LABEL_33;
          }

          v11 = [objc_msgSend(v10 "propertiesByName")];
          v2 = v46;
          v7 = v47;
          if (!v11 || (v6 = v11, [v11 isTransient]))
          {

            v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid string key %@ passed to propertiesToUpdate:", 0), 0}];
            v19 = MEMORY[0x1E696ABC0];
            v20 = *MEMORY[0x1E696A250];
            v66 = @"NSUnderlyingException";
            v67 = v24;
            v21 = MEMORY[0x1E695DF20];
            v22 = &v67;
            v23 = &v66;
            goto LABEL_31;
          }
        }

        v12 = [v2 entity];
        v13 = [v6 name];
        if (!v12 || (v14 = [objc_msgSend(v12 "propertiesByName")]) == 0)
        {

          v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Attribute/relationship description names passed to propertiesToUpdate must match name on fetch entity (%@)", 0), 0}];
          v19 = MEMORY[0x1E696ABC0];
          v20 = *MEMORY[0x1E696A250];
          v64 = @"NSUnderlyingException";
          v65 = v18;
          v21 = MEMORY[0x1E695DF20];
          v22 = &v65;
          v23 = &v64;
          goto LABEL_31;
        }

        v15 = v14;
        if ([v14 isTransient])
        {

          v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid property %@ passed as key to propertiesToUpdate:", v15), 0}];
          v19 = MEMORY[0x1E696ABC0];
          v20 = *MEMORY[0x1E696A250];
          v62 = @"NSUnderlyingException";
          v63 = v25;
          v21 = MEMORY[0x1E695DF20];
          v22 = &v63;
          v23 = &v62;
          goto LABEL_31;
        }

        v16 = [v15 _propertyType];
        switch(v16)
        {
          case 4:

            v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid relationship (%@) passed to propertiesToUpdate:", v15), 0}];
            v19 = MEMORY[0x1E696ABC0];
            v20 = *MEMORY[0x1E696A250];
            v58 = @"NSUnderlyingException";
            v59 = v26;
            v21 = MEMORY[0x1E695DF20];
            v22 = &v59;
            v23 = &v58;
            goto LABEL_31;
          case 6:

            v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid derived attribute (%@) passed to propertiesToUpdate:", v15), 0}];
            v19 = MEMORY[0x1E696ABC0];
            v20 = *MEMORY[0x1E696A250];
            v56 = @"NSUnderlyingException";
            v57 = v28;
            v21 = MEMORY[0x1E695DF20];
            v22 = &v57;
            v23 = &v56;
LABEL_31:
            v29 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
            v30 = v19;
            v31 = v20;
            v32 = 134060;
LABEL_32:
            v33 = [v30 errorWithDomain:v31 code:v32 userInfo:v29];
LABEL_33:
            v17 = v33;
            objc_autoreleasePoolPop(v7);
            v3 = 0;
            goto LABEL_34;
          case 5:

            v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid expressionDescription %@ passed as key to propertiesToUpdate:", v15), 0}];
            v19 = MEMORY[0x1E696ABC0];
            v20 = *MEMORY[0x1E696A250];
            v60 = @"NSUnderlyingException";
            v61 = v27;
            v21 = MEMORY[0x1E695DF20];
            v22 = &v61;
            v23 = &v60;
            goto LABEL_31;
        }

        if (HIBYTE(dword_1ED4BEEC8) == 1)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v15 isOptional] & 1) == 0)
          {

            v39 = MEMORY[0x1E695DF20];
            v40 = [v15 name];
            v41 = [v39 dictionaryWithObjectsAndKeys:{v12, @"NSValidationErrorObject", v40, @"NSValidationErrorKey", objc_msgSend(MEMORY[0x1E695DFB0], "null"), @"NSValidationErrorValue", 0}];
            v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Invalid NULL value for key (%@) passed to propertiesToUpdate:", objc_msgSend(v15, "name")), v41}];
            v43 = MEMORY[0x1E696ABC0];
            v44 = *MEMORY[0x1E696A250];
            v54 = @"NSUnderlyingException";
            v55 = v42;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
            v30 = v43;
            v31 = v44;
            v32 = 1570;
            goto LABEL_32;
          }
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = [MEMORY[0x1E696ABC8] expressionForConstantValue:v8];
        }

        [v3 setObject:v8 forKey:v15];
        objc_autoreleasePoolPop(v7);
        if (v48 == ++v5)
        {
          v48 = [a2 countByEnumeratingWithState:&v50 objects:v70 count:16];
          if (v48)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v17 = 0;
LABEL_34:
    v34 = [v3 count];
    if (v34 != [a2 count])
    {

      if (v17)
      {
        v45 = v17;
      }

LABEL_46:
      objc_exception_throw([objc_msgSend(v17 "userInfo")]);
    }

    if (v17)
    {
      v35 = v17;
      if (!v3)
      {
        goto LABEL_46;
      }
    }

    else if (!v3)
    {
      v17 = 0;
      goto LABEL_46;
    }

    v2[5] = v3;
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)setPropertiesToUpdate:(NSDictionary *)propertiesToUpdate
{
  if (self->_columnsToUpdate != propertiesToUpdate)
  {
    if ((*&self->_flags & 8) != 0)
    {
      v5 = propertiesToUpdate;

      self->_columnsToUpdate = propertiesToUpdate;
    }

    else
    {

      [(NSBatchUpdateRequest *)&self->super.super.isa _setValidatedPropertiesToUpdate:?];
    }
  }
}

- (void)_resolveEntityWithContext:(id)a3
{
  if ((*&self->_flags & 8) == 0)
  {
    return;
  }

  v5 = [a3 _allowAncillaryEntities];
  v6 = [a3 persistentStoreCoordinator];
  if (v5)
  {
    if (!v6 || (v7 = v6[12]) == 0)
    {
LABEL_12:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Can't find entity for batch update (%@)", self->_entity), 0}]);
    }

    v8 = (v7 + 56);
  }

  else
  {
    v9 = [v6 managedObjectModel];
    if (!v9)
    {
      goto LABEL_12;
    }

    v8 = (v9 + 32);
  }

  v10 = [*v8 objectForKey:self->_entity];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = v10;
  entity = self->_entity;
  self->_entity = v11;
  *&self->_flags &= ~8u;
  v13 = self->_columnsToUpdate;
  [(NSBatchUpdateRequest *)&self->super.super.isa _setValidatedPropertiesToUpdate:v13];
}

- (void)_setSecureOperation:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFEF | v3);
}

@end