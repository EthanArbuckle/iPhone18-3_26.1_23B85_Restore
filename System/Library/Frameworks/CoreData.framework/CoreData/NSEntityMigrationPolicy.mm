@interface NSEntityMigrationPolicy
- (BOOL)createDestinationInstancesForSourceInstance:(NSManagedObject *)sInstance entityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError *)error;
- (BOOL)createRelationshipsForDestinationInstance:(NSManagedObject *)dInstance entityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError *)error;
- (id)_nonNilValueOrDefaultValueForAttribute:(id)attribute source:(id)source destination:(id)destination;
@end

@implementation NSEntityMigrationPolicy

- (BOOL)createDestinationInstancesForSourceInstance:(NSManagedObject *)sInstance entityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError *)error
{
  v30 = *MEMORY[0x1E69E9840];
  destinationEntityName = [(NSEntityMapping *)mapping destinationEntityName];
  if (destinationEntityName)
  {
    destinationEntityName = [NSEntityDescription insertNewObjectForEntityForName:destinationEntityName inManagedObjectContext:[(NSMigrationManager *)manager destinationContext]];
    if (destinationEntityName)
    {
      v11 = destinationEntityName;
      v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{manager, @"manager", sInstance, @"source", destinationEntityName, @"destination", mapping, @"entityMapping", self, @"entityPolicy", 0}];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v24 = mapping;
      attributeMappings = [(NSEntityMapping *)mapping attributeMappings];
      v14 = [(NSArray *)attributeMappings countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          v17 = 0;
          do
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(attributeMappings);
            }

            v18 = *(*(&v25 + 1) + 8 * v17);
            if (manager)
            {
              migrationContext = manager->_migrationContext;
            }

            else
            {
              migrationContext = 0;
            }

            [(NSMigrationContext *)migrationContext setCurrentPropertyMapping:?];
            if ([v18 valueExpression])
            {
              v20 = [v12 mutableCopy];
              [v20 setValue:v18 forKey:@"propertyMapping"];
              -[NSString setValue:forKey:](v11, "setValue:forKey:", [objc_msgSend(v18 "valueExpression")], objc_msgSend(v18, "name"));
            }

            ++v17;
          }

          while (v15 != v17);
          v21 = [(NSArray *)attributeMappings countByEnumeratingWithState:&v25 objects:v29 count:16];
          v15 = v21;
        }

        while (v21);
      }

      [(NSMigrationManager *)manager associateSourceInstance:sInstance withDestinationInstance:v11 forEntityMapping:v24];
      LOBYTE(destinationEntityName) = 1;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return destinationEntityName;
}

- (BOOL)createRelationshipsForDestinationInstance:(NSManagedObject *)dInstance entityMapping:(NSEntityMapping *)mapping manager:(NSMigrationManager *)manager error:(NSError *)error
{
  v55 = *MEMORY[0x1E69E9840];
  name = [(NSEntityMapping *)mapping name];
  v11 = -[NSMigrationManager sourceInstancesForEntityMappingNamed:destinationInstances:](manager, "sourceInstancesForEntityMappingNamed:destinationInstances:", name, [MEMORY[0x1E695DEC8] arrayWithObject:dInstance]);
  if ([(NSArray *)v11 count])
  {
    if ([(NSArray *)v11 count]>= 2)
    {
      if (error)
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = *MEMORY[0x1E696A250];
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"More than one source for destination in default mapping policy", @"reason", v11, @"source", dInstance, @"destination", 0}];
        goto LABEL_7;
      }

LABEL_73:
      result = 0;
      goto LABEL_74;
    }

    v48 = error;
    v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{manager, @"manager", -[NSArray objectAtIndex:](v11, "objectAtIndex:", 0), @"source", dInstance, @"destination", mapping, @"entityMapping", self, @"entityPolicy", 0}];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    relationshipMappings = [(NSEntityMapping *)mapping relationshipMappings];
    v22 = [(NSArray *)relationshipMappings countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (!v22)
    {
      goto LABEL_63;
    }

    v23 = v22;
    v24 = *v51;
LABEL_11:
    v25 = 0;
    while (1)
    {
      if (*v51 != v24)
      {
        objc_enumerationMutation(relationshipMappings);
      }

      v26 = *(*(&v50 + 1) + 8 * v25);
      if (manager)
      {
        migrationContext = manager->_migrationContext;
      }

      else
      {
        migrationContext = 0;
      }

      [(NSMigrationContext *)migrationContext setCurrentPropertyMapping:?];
      if (![v26 valueExpression])
      {
        goto LABEL_54;
      }

      v28 = [(NSMigrationManager *)manager destinationEntityForEntityMapping:mapping];
      name2 = [v26 name];
      if (v28)
      {
        v30 = [(NSDictionary *)[(NSEntityDescription *)v28 propertiesByName] objectForKey:name2];
      }

      else
      {
        v30 = 0;
      }

      v31 = [v20 mutableCopy];
      [v31 setValue:v26 forKey:@"propertyMapping"];
      v32 = [objc_msgSend(v26 "valueExpression")];
      if ([v30 isToMany])
      {
        if (![v30 isOrdered])
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [v32 set];
              goto LABEL_52;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [MEMORY[0x1E695DFD8] setWithArray:v32];
              goto LABEL_52;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [MEMORY[0x1E695DFD8] setWithObject:v32];
LABEL_52:
              v32 = v36;
            }

            else
            {
              if (v32)
              {
                error = v48;
                if (!v48)
                {
                  goto LABEL_73;
                }

                v40 = MEMORY[0x1E696ABC0];
                v41 = *MEMORY[0x1E696A250];
                v42 = MEMORY[0x1E695DF20];
                v47 = dInstance;
                v46 = v32;
                v45 = v26;
                v43 = @"Unknown/unsupported type for toMany relationship destination";
                goto LABEL_72;
              }

              v32 = NSSet_EmptySet;
            }
          }

          [-[NSManagedObject mutableSetValueForKey:](dInstance mutableSetValueForKey:{objc_msgSend(v26, "name")), "unionSet:", v32}];
          goto LABEL_54;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [MEMORY[0x1E695DFB8] orderedSetWithSet:v32];
            goto LABEL_48;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v32];
            goto LABEL_48;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v32];
LABEL_48:
            v32 = v33;
          }

          else
          {
            if (v32)
            {
              error = v48;
              if (!v48)
              {
                goto LABEL_73;
              }

              v40 = MEMORY[0x1E696ABC0];
              v41 = *MEMORY[0x1E696A250];
              v42 = MEMORY[0x1E695DF20];
              v47 = dInstance;
              v46 = v32;
              v45 = v26;
              v43 = @"Unknown/unsupported type for ordered toMany relationship destination";
              goto LABEL_72;
            }

            v32 = NSOrderedSet_EmptyOrderedSet;
          }
        }

        v38 = +[_PFRoutines newOrderedSetFromCollection:byAddingItems:](_PFRoutines, v32, -[NSManagedObject valueForKey:](dInstance, "valueForKey:", [v26 name]));
        -[NSManagedObject setValue:forKey:](dInstance, "setValue:forKey:", v38, [v26 name]);

        goto LABEL_54;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = [v32 count];
        if (!v34)
        {
          goto LABEL_37;
        }

        if (v34 != 1)
        {
          goto LABEL_64;
        }

        anyObject = [v32 anyObject];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && v32)
            {
              error = v48;
              if (!v48)
              {
                goto LABEL_73;
              }

              v40 = MEMORY[0x1E696ABC0];
              v41 = *MEMORY[0x1E696A250];
              v42 = MEMORY[0x1E695DF20];
              v47 = dInstance;
              v46 = v32;
              v45 = v26;
              v43 = @"Unknown/unsupported type for toOne relationship destination";
              goto LABEL_72;
            }

            goto LABEL_38;
          }
        }

        v37 = [v32 count];
        if (!v37)
        {
LABEL_37:
          v32 = 0;
          goto LABEL_38;
        }

        if (v37 != 1)
        {
LABEL_64:
          error = v48;
          if (!v48)
          {
            goto LABEL_73;
          }

          v40 = MEMORY[0x1E696ABC0];
          v41 = *MEMORY[0x1E696A250];
          v42 = MEMORY[0x1E695DF20];
          v47 = dInstance;
          v46 = v32;
          v45 = v26;
          v43 = @"More than one relationship destination for a toOne relationship";
LABEL_72:
          v15 = [v42 dictionaryWithObjectsAndKeys:{v43, @"reason", mapping, @"entityMapping", v45, @"propertyMapping", v46, @"relationshipDestinations", v47, @"destination", 0}];
          v16 = v40;
          v17 = v41;
          goto LABEL_8;
        }

        anyObject = [v32 lastObject];
      }

      v32 = anyObject;
LABEL_38:
      -[NSManagedObject setValue:forKey:](dInstance, "setValue:forKey:", v32, [v26 name]);
LABEL_54:
      if (v23 == ++v25)
      {
        v39 = [(NSArray *)relationshipMappings countByEnumeratingWithState:&v50 objects:v54 count:16];
        v23 = v39;
        if (!v39)
        {
LABEL_63:
          result = 1;
          goto LABEL_74;
        }

        goto LABEL_11;
      }
    }
  }

  if (!error)
  {
    goto LABEL_73;
  }

  v12 = MEMORY[0x1E696ABC0];
  v13 = *MEMORY[0x1E696A250];
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Can't find source for destination in default mapping policy", @"reason", v11, @"source", dInstance, @"destination", 0}];
LABEL_7:
  v15 = v14;
  v16 = v12;
  v17 = v13;
LABEL_8:
  v18 = [v16 errorWithDomain:v17 code:134110 userInfo:v15];
  result = 0;
  *error = v18;
LABEL_74:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_nonNilValueOrDefaultValueForAttribute:(id)attribute source:(id)source destination:(id)destination
{
  v6 = -[NSEntityDescription _attributeNamed:]([destination entity], attribute);
  result = [source valueForKey:{objc_msgSend(objc_msgSend(objc_msgSend(source, "entity"), "_propertyWithRenamingIdentifier:", objc_msgSend(v6, "renamingIdentifier")), "name")}];
  if (!result)
  {

    return [v6 defaultValue];
  }

  return result;
}

@end