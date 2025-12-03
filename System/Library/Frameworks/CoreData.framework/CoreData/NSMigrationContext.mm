@interface NSMigrationContext
- (NSMigrationContext)initWithMigrationManager:(id)manager;
- (id)destinationInstancesForEntityMapping:(uint64_t)mapping sourceInstance:;
- (id)sourceInstancesForEntityMapping:(uint64_t)mapping destinationInstance:;
- (uint64_t)_createAssociationsByDestination:(uint64_t)destination fromSource:(void *)source forEntityMapping:;
- (uint64_t)_createAssociationsBySource:(uint64_t)source withDestination:(void *)destination forEntityMapping:;
- (uint64_t)associateSourceInstance:(const void *)instance withDestinationInstance:(void *)destinationInstance forEntityMapping:;
- (uint64_t)setCurrentEntityMapping:(uint64_t)result;
- (uint64_t)setCurrentPropertyMapping:(uint64_t)result;
- (void)clearAssociationTables;
- (void)dealloc;
@end

@implementation NSMigrationContext

- (NSMigrationContext)initWithMigrationManager:(id)manager
{
  v10.receiver = self;
  v10.super_class = NSMigrationContext;
  v4 = [(NSMigrationContext *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_migrationManager = manager;
    v4->_currentStep = 0;
    v6 = *MEMORY[0x1E695E480];
    v7 = MEMORY[0x1E695E9D8];
    v8 = MEMORY[0x1E695E9E8];
    v4->_bySourceAssociationTable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v5->_byDestinationAssociationTable = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v5->_byMappingBySourceAssociationTable = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v5->_byMappingByDestinationAssociationTable = CFDictionaryCreateMutable(v6, 0, v7, v8);
  }

  return v5;
}

- (void)dealloc
{
  self->_migrationManager = 0;
  [(NSMigrationContext *)self clearAssociationTables];

  self->_currentMapping = 0;
  self->_currentPropertyMapping = 0;

  self->_destinationConfigurationForCloudKitValidation = 0;
  v3.receiver = self;
  v3.super_class = NSMigrationContext;
  [(NSMigrationContext *)&v3 dealloc];
}

- (void)clearAssociationTables
{
  if (self)
  {

    *(self + 8) = 0;
    *(self + 16) = 0;

    *(self + 24) = 0;
    *(self + 32) = 0;
    *(self + 56) = 0;
  }
}

- (uint64_t)setCurrentEntityMapping:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 48) != a2)
    {
      [*(result + 40) willChangeValueForKey:@"currentEntityMapping"];

      *(v3 + 48) = a2;
      [*(v3 + 40) didChangeValueForKey:@"currentEntityMapping"];
    }

    v4 = *(v3 + 56) + 1;
    [*(v3 + 40) willChangeValueForKey:@"migrationProgress"];
    *(v3 + 56) = v4;
    v5 = *(v3 + 40);

    return [v5 didChangeValueForKey:@"migrationProgress"];
  }

  return result;
}

- (uint64_t)setCurrentPropertyMapping:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (*(result + 64) != a2)
    {
      [*(result + 40) willChangeValueForKey:@"currentPropertyMapping"];

      *(v3 + 64) = a2;
      v4 = *(v3 + 40);

      return [v4 didChangeValueForKey:@"currentPropertyMapping"];
    }
  }

  return result;
}

- (uint64_t)_createAssociationsBySource:(uint64_t)source withDestination:(void *)destination forEntityMapping:
{
  if (result)
  {
    v7 = result;
    Mutable = [*(result + 24) objectForKey:{objc_msgSend(destination, "name")}];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [*(v7 + 24) setObject:Mutable forKey:{objc_msgSend(destination, "name")}];
    }

    v9 = [(__CFDictionary *)Mutable objectForKey:a2];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(Mutable, a2, v9);
    }

    [v9 addObject:source];
    v10 = [*(v7 + 8) objectForKey:a2];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(*(v7 + 8), a2, v10);
    }

    return [v10 addObject:source];
  }

  return result;
}

- (uint64_t)_createAssociationsByDestination:(uint64_t)destination fromSource:(void *)source forEntityMapping:
{
  if (result)
  {
    v7 = result;
    Mutable = [*(result + 32) objectForKey:{objc_msgSend(source, "name")}];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      [*(v7 + 32) setObject:Mutable forKey:{objc_msgSend(source, "name")}];
    }

    v9 = [(__CFDictionary *)Mutable objectForKey:a2];
    if (!v9)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(Mutable, a2, v9);
    }

    [v9 addObject:destination];
    v10 = [*(v7 + 16) objectForKey:a2];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      CFDictionarySetValue(*(v7 + 16), a2, v10);
    }

    return [v10 addObject:destination];
  }

  return result;
}

- (uint64_t)associateSourceInstance:(const void *)instance withDestinationInstance:(void *)destinationInstance forEntityMapping:
{
  if (result)
  {
    v7 = result;
    [(NSMigrationContext *)result _createAssociationsBySource:a2 withDestination:instance forEntityMapping:destinationInstance];

    return [(NSMigrationContext *)v7 _createAssociationsByDestination:instance fromSource:a2 forEntityMapping:destinationInstance];
  }

  return result;
}

- (id)destinationInstancesForEntityMapping:(uint64_t)mapping sourceInstance:
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (a2)
    {
      if (!mapping)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = [objc_msgSend(v5[3] objectForKey:{objc_msgSend(a2, "name")), "allValues"}];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v7 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
            }

            v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v11);
        }

        goto LABEL_7;
      }

      v6 = [result[3] objectForKey:{objc_msgSend(a2, "name")}];
    }

    else
    {
      v6 = result[1];
    }

    v7 = [objc_msgSend(v6 objectForKey:{mapping), "copy"}];
LABEL_7:
    if (v7)
    {
      result = v7;
    }

    else
    {
      result = NSArray_EmptyArray;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)sourceInstancesForEntityMapping:(uint64_t)mapping destinationInstance:
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    if (a2)
    {
      if (!mapping)
      {
        v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v9 = [objc_msgSend(v5[4] objectForKey:{objc_msgSend(a2, "name")), "allValues"}];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [v7 addObjectsFromArray:*(*(&v14 + 1) + 8 * i)];
            }

            v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
          }

          while (v11);
        }

        goto LABEL_7;
      }

      v6 = [result[4] objectForKey:{objc_msgSend(a2, "name")}];
    }

    else
    {
      v6 = result[2];
    }

    v7 = [objc_msgSend(v6 objectForKey:{mapping), "copy"}];
LABEL_7:
    if (v7)
    {
      result = v7;
    }

    else
    {
      result = NSArray_EmptyArray;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end