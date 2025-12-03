@interface NSConstraintValidator
- (id)initWithManagedObjectContext:(void *)context;
- (uint64_t)_addConstraintRoot:(void *)root forEntity:;
- (uint64_t)registerObject:(uint64_t)result;
- (uint64_t)registerObjects:(uint64_t)result;
- (uint64_t)reset;
- (uint64_t)validateForSave;
- (void)dealloc;
@end

@implementation NSConstraintValidator

- (uint64_t)validateForSave
{
  selfCopy = self;
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (*(selfCopy + 24))
    {
      v3 = [*(selfCopy + 16) count];
      if (v3)
      {
        v4 = v3;
        for (i = 0; i != v4; ++i)
        {
          v6 = *(selfCopy + 24);
          if (*(v6 + 8 * i))
          {
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v7 = *(v6 + 8 * i);
            v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v17;
              do
              {
                for (j = 0; j != v9; ++j)
                {
                  if (*v17 != v10)
                  {
                    objc_enumerationMutation(v7);
                  }

                  v12 = [(NSConstraintCache *)*(*(&v16 + 1) + 8 * j) validateForSave:?];
                  if ([v12 count])
                  {
                    [v2 addObjectsFromArray:v12];
                  }
                }

                v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
              }

              while (v9);
            }
          }
        }
      }
    }

    if ([v2 count])
    {
      v13 = *MEMORY[0x1E696A250];
      v20 = @"Conflicts";
      v21 = v2;
      selfCopy = [MEMORY[0x1E696ABC0] errorWithDomain:v13 code:1551 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v21, &v20, 1)}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (uint64_t)reset
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if (*(result + 24))
    {
      result = [*(result + 16) count];
      if (result)
      {
        v2 = result;
        for (i = 0; i != v2; ++i)
        {
          v4 = *(v1 + 24);
          if (*(v4 + 8 * i))
          {
            v12 = 0u;
            v13 = 0u;
            v10 = 0u;
            v11 = 0u;
            v5 = *(v4 + 8 * i);
            result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
            if (result)
            {
              v6 = result;
              v7 = *v11;
              do
              {
                v8 = 0;
                do
                {
                  if (*v11 != v7)
                  {
                    objc_enumerationMutation(v5);
                  }

                  [(NSConstraintCache *)*(*(&v10 + 1) + 8 * v8++) reset];
                }

                while (v6 != v8);
                result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
                v6 = result;
              }

              while (result);
            }
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  if (self->_cachesByEntity)
  {
    v3 = [(NSArray *)self->_entities count];
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        v6 = self->_cachesByEntity[i];
        if (v6)
        {

          self->_cachesByEntity[i] = 0;
        }
      }
    }

    PF_FREE_OBJECT_ARRAY(self->_cachesByEntity);
  }

  self->_modelMap = 0;
  self->_entities = 0;
  v7.receiver = self;
  v7.super_class = NSConstraintValidator;
  [(NSConstraintValidator *)&v7 dealloc];
}

- (id)initWithManagedObjectContext:(void *)context
{
  v21 = *MEMORY[0x1E69E9840];
  if (context)
  {
    v19.receiver = context;
    v19.super_class = NSConstraintValidator;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    if (v3)
    {
      persistentStoreCoordinator = [a2 persistentStoreCoordinator];
      v5 = persistentStoreCoordinator ? *(persistentStoreCoordinator + 96) : 0;
      v6 = v5;
      *(v3 + 1) = v6;
      v7 = [(_PFModelMap *)v6 entitiesForContext:a2 configuration:0];
      *(v3 + 2) = v7;
      *(v3 + 3) = 0;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * i);
            if ([(NSEntityDescription *)v12 _hasUniqueProperties])
            {
              if (!*(v3 + 3))
              {
                *(v3 + 3) = PF_CALLOC_OBJECT_ARRAY([*(v3 + 2) count]);
              }

              [NSConstraintCache createCachesForEntity:v12 forValidator:v3];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

- (uint64_t)_addConstraintRoot:(void *)root forEntity:
{
  if (result)
  {
    v4 = result;
    v5 = _PFModelMapSlotForEntity(*(result + 8), root);
    v6 = *(*(v4 + 24) + 8 * v5);
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      *(*(v4 + 24) + 8 * v5) = v6;
    }

    return [v6 addObject:a2];
  }

  return result;
}

- (uint64_t)registerObject:(uint64_t)result
{
  v17 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = [a2 entity];
    if (result)
    {
      v4 = result;
      do
      {
        v5 = *(v3 + 24);
        v6 = *(v5 + 8 * _PFModelMapSlotForEntity(*(v3 + 8), v4));
        if (v6)
        {
          v14 = 0u;
          v15 = 0u;
          v12 = 0u;
          v13 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v13;
            do
            {
              v10 = 0;
              do
              {
                if (*v13 != v9)
                {
                  objc_enumerationMutation(v6);
                }

                [(NSConstraintCache *)*(*(&v12 + 1) + 8 * v10++) registerObject:a2];
              }

              while (v8 != v10);
              v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
            }

            while (v8);
          }
        }

        result = [v4 superentity];
        v4 = result;
      }

      while (result);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)registerObjects:(uint64_t)result
{
  v13 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 24))
    {
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (result)
      {
        v4 = result;
        v5 = *v9;
        do
        {
          v6 = 0;
          do
          {
            if (*v9 != v5)
            {
              objc_enumerationMutation(a2);
            }

            [(NSConstraintValidator *)v2 registerObject:?];
          }

          while (v4 != v6);
          result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
          v4 = result;
        }

        while (result);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end