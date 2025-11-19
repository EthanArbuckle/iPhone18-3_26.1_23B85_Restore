@interface NSFetchRequest
+ (NSFetchRequest)fetchRequestWithEntityName:(NSString *)entityName;
+ (id)_newDenormalizedFetchProperties:(id)a3;
+ (id)_stringForFetchRequestResultType:(unint64_t)a3;
+ (id)decodeFromXPCArchive:(id)a3 withContext:(id)a4 andPolicy:(id)a5;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (NSArray)affectedStores;
- (NSArray)execute:(NSError *)error;
- (NSEntityDescription)entity;
- (NSFetchRequest)init;
- (NSFetchRequest)initWithCoder:(id)a3;
- (NSFetchRequest)initWithEntityName:(NSString *)entityName;
- (NSString)entityName;
- (id)_newNormalizedFetchProperties:(uint64_t)a1;
- (id)_newValidatedProperties:(int)a3 groupBy:(void *)a4 error:;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeForXPC;
- (uint64_t)_bindExpressionDescriptionProperties:(uint64_t)result;
- (unint64_t)_fetchBatchLRUEntriesLimit;
- (unint64_t)hash;
- (void)_resolveEntityWithContext:(id)a3;
- (void)_setAsyncResultHandle:(id)a3;
- (void)_setDisablePersistentStoreResultCaching:(BOOL)a3;
- (void)_setFetchBatchLRUEntriesLimit:(unint64_t)a3;
- (void)_setFlagsFromXPCEncoding:(id)a3;
- (void)_throwIfNotEditable;
- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 uniquedMappings:(id)a8 entities:(id)a9;
- (void)allowEvaluation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAffectedStores:(NSArray *)affectedStores;
- (void)setAllocationSize:(unint64_t)a3;
- (void)setAllocationType:(unint64_t)a3;
- (void)setEntity:(NSEntityDescription *)entity;
- (void)setFetchLimit:(NSUInteger)fetchLimit;
- (void)setHavingPredicate:(NSPredicate *)havingPredicate;
- (void)setIncludesPendingChanges:(BOOL)includesPendingChanges;
- (void)setIncludesPropertyValues:(BOOL)includesPropertyValues;
- (void)setIncludesSubentities:(BOOL)includesSubentities;
- (void)setPredicate:(NSPredicate *)predicate;
- (void)setPropertiesToFetch:(NSArray *)propertiesToFetch;
- (void)setPropertiesToGroupBy:(NSArray *)propertiesToGroupBy;
- (void)setRelationshipKeyPathsForPrefetching:(NSArray *)relationshipKeyPathsForPrefetching;
- (void)setResultType:(NSFetchRequestResultType)resultType;
- (void)setReturnsDistinctResults:(BOOL)returnsDistinctResults;
- (void)setReturnsObjectsAsFaults:(BOOL)returnsObjectsAsFaults;
- (void)setShouldRefreshRefetchedObjects:(BOOL)shouldRefreshRefetchedObjects;
- (void)setSortDescriptors:(NSArray *)sortDescriptors;
@end

@implementation NSFetchRequest

- (void)_throwIfNotEditable
{
  if (![(NSFetchRequest *)self _isEditable])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Can't modify a named fetch request in an immutable model." userInfo:0]);
  }
}

- (NSFetchRequest)init
{
  v5.receiver = self;
  v5.super_class = NSFetchRequest;
  v2 = [(NSFetchRequest *)&v5 init];
  if (v2)
  {
    v3 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v3 = malloc_default_zone();
    }

    v2->_additionalPrivateIvars = malloc_type_zone_calloc(v3, 1uLL, 0x18uLL, 0x1080040E11204F7uLL);
    v2->_flags = (*&v2->_flags & 0xFFFE1B00 | 0x46);
    atomic_store(0, &v2->_additionalPrivateIvars->var4);
  }

  return v2;
}

- (NSEntityDescription)entity
{
  v2 = atomic_load(&self->_additionalPrivateIvars->var2);
  if (v2)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E696A778];
    v6 = MEMORY[0x1E696AEC0];
    v7 = atomic_load(&self->_entity);
    objc_exception_throw([v4 exceptionWithName:v5 reason:objc_msgSend(v6 userInfo:{"stringWithFormat:", @"This fetch request (%p) was created with a string name (%@), and cannot respond to -entity until used by an NSManagedObjectContext", self, v7, 0), 0}]);
  }

  return atomic_load(&self->_entity);
}

- (void)allowEvaluation
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(&self->_additionalPrivateIvars->var5);
  if ((v2 & 1) == 0)
  {
    predicate = self->_predicate;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSPredicate *)self->_predicate allowEvaluation];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    sortDescriptors = self->_sortDescriptors;
    v6 = [(NSArray *)sortDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(sortDescriptors);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 allowEvaluation];
          }
        }

        v7 = [(NSArray *)sortDescriptors countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    atomic_store(1u, &self->_additionalPrivateIvars->var5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)affectedStores
{
  v3.receiver = self;
  v3.super_class = NSFetchRequest;
  return [(NSPersistentStoreRequest *)&v3 affectedStores];
}

- (void)dealloc
{
  v3 = atomic_load(&self->_additionalPrivateIvars->var2);
  if (v3)
  {
    v4 = atomic_load(&self->_entity);
  }

  atomic_store(0, &self->_entity);

  self->_predicate = 0;
  self->_sortDescriptors = 0;

  self->_relationshipKeyPathsForPrefetching = 0;
  self->_valuesToFetch = 0;

  self->_groupByProperties = 0;
  self->_havingPredicate = 0;
  v5 = atomic_load(&self->_additionalPrivateIvars->var1);

  p_var0 = &self->_additionalPrivateIvars->var0;
  atomic_store(0, p_var0 + 1);
  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
    p_var0 = &self->_additionalPrivateIvars->var0;
  }

  malloc_zone_free(v7, p_var0);
  self->_additionalPrivateIvars = 0;
  v8.receiver = self;
  v8.super_class = NSFetchRequest;
  [(NSPersistentStoreRequest *)&v8 dealloc];
}

- (NSString)entityName
{
  v2 = atomic_load(&self->_additionalPrivateIvars->var2);
  result = atomic_load(&self->_entity);
  if ((v2 & 1) == 0)
  {
    return [(NSString *)result name];
  }

  return result;
}

+ (void)initialize
{
  objc_opt_self();
  objc_opt_class();
  if (objc_opt_class() == a1)
  {

    v3 = getprogname();
    if (v3)
    {
      if (*v3)
      {
        if (!strncmp("PhotosReliveWidget", v3, 0x12uLL))
        {
          _PF_XPCStore_DisableExplicitBufferedAllocations_91407470 = 1;
        }
      }
    }
  }
}

- (unint64_t)_fetchBatchLRUEntriesLimit
{
  flags = self->_flags;
  v3 = ((*&flags >> 17) & 0xF) == 0;
  v4 = 1 << (((*&flags >> 17) & 0xF) - 1);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (id)encodeForXPC
{
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v5 addObject:{-[NSFetchRequest entityName](self, "entityName")}];
  [v5 addObject:{-[NSFetchRequest _XPCEncodedFlags](self, "_XPCEncodedFlags")}];
  v6 = [(NSFetchRequest *)self sortDescriptors];
  if (v6)
  {
    [v5 addObject:v6];
  }

  else
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  }

  v7 = [(NSFetchRequest *)self predicate];
  if (v7)
  {
    if (isKindOfClass)
    {
      v7 = [(NSPredicate *)v7 predicateWithSubstitutionVariables:[(NSFetchRequest *)self substitutionVariables]];
    }

    v8 = [+[_NSXPCStorePredicateRemapper defaultInstance](_NSXPCStorePredicateRemapper createPredicateForFetchFromPredicate:"createPredicateForFetchFromPredicate:", v7];
    [v5 addObject:v8];
  }

  else
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  }

  v9 = [(NSFetchRequest *)self havingPredicate];
  if (v9)
  {
    if (isKindOfClass)
    {
      v9 = [(NSPredicate *)v9 predicateWithSubstitutionVariables:[(NSFetchRequest *)self substitutionVariables]];
    }

    [v5 addObject:v9];
  }

  else
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  }

  v10 = [(NSFetchRequest *)self relationshipKeyPathsForPrefetching];
  if (v10)
  {
    [v5 addObject:v10];
  }

  else
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  }

  [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", -[NSFetchRequest fetchOffset](self, "fetchOffset"))}];
  [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", -[NSFetchRequest fetchLimit](self, "fetchLimit"))}];
  [v5 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", -[NSFetchRequest fetchBatchSize](self, "fetchBatchSize"))}];
  if ([(NSFetchRequest *)self resultType]== 2 || ![(NSFetchRequest *)self resultType])
  {
    v11 = [(NSFetchRequest *)self _newNormalizedFetchProperties:?];
    [v5 addObject:v11];
  }

  else
  {
    [v5 addObject:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}];
  }

  v12 = [(NSFetchRequest *)self _newNormalizedFetchProperties:?];
  [v5 addObject:v12];

  v13 = [_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:v5];
  [v3 drain];
  v14 = 0;
  return v13;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSFetchRequest *)self entityName];
  v22.receiver = self;
  v22.super_class = NSFetchRequest;
  v5 = objc_msgSend(objc_alloc(MEMORY[0x1E696AD60]), "initWithFormat:", @"%@ (entity: %@; predicate: (%@); sortDescriptors: (%@); "), -[NSFetchRequest description](&v22, sel_description), v4, -[NSFetchRequest predicate](self, "predicate"), -[NSFetchRequest sortDescriptors](self, "sortDescriptors");
  v6 = [(NSFetchRequest *)self fetchLimit];
  if (v6)
  {
    [v5 appendFormat:@"limit: %u; ", v6];
  }

  v7 = [(NSFetchRequest *)self fetchOffset];
  if (v7)
  {
    [v5 appendFormat:@"offset: %u; ", v7];
  }

  v8 = [(NSFetchRequest *)self fetchBatchSize];
  if (v8)
  {
    [v5 appendFormat:@"batch size: %u; ", v8];
  }

  v9 = [NSFetchRequest _stringForFetchRequestResultType:(self->_flags >> 3) & 7];
  v10 = [(__CFString *)v9 length];
  v11 = @"unknown request type";
  if (v10)
  {
    v11 = v9;
  }

  [v5 appendFormat:@"type: %@; ", v11];
  v12 = [(NSArray *)[(NSFetchRequest *)self affectedStores] valueForKey:@"identifier"];
  if (v12)
  {
    [v5 appendFormat:@"affected stores: (%@); ", v12];
  }

  if (![(NSFetchRequest *)self includesSubentities])
  {
    [v5 appendString:@"includesSubentities: NO; "];
  }

  if (![(NSFetchRequest *)self includesPropertyValues])
  {
    [v5 appendString:@"includesPropertyValues: NO; "];
  }

  if (![(NSFetchRequest *)self returnsObjectsAsFaults])
  {
    [v5 appendString:@"returnsObjectsAsFaults: NO; "];
  }

  if (![(NSFetchRequest *)self includesPendingChanges])
  {
    [v5 appendString:@"includesPendingChanges: NO; "];
  }

  if ([(NSFetchRequest *)self returnsDistinctResults])
  {
    [v5 appendString:@"returnsDistinctResults: YES; "];
  }

  flags = self->_flags;
  if ((*&flags & 0x400) != 0)
  {
    [v5 appendString:@"shouldRefreshRefetchedObjects: YES; "];
    flags = self->_flags;
  }

  v14 = (*&flags >> 14) & 7;
  if (v14 == 1)
  {
    v15 = @"NSFetchRequestBufferAllocationType";
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_28;
    }

    v15 = @"NSFetchRequestVMBufferAllocationType";
  }

  [v5 appendFormat:@"allocation type: %@; ", v15];
LABEL_28:
  v16 = [(NSFetchRequest *)self allocationSize];
  if (v16)
  {
    [v5 appendFormat:@"allocation size: %u; ", v16];
  }

  v17 = [(NSFetchRequest *)self relationshipKeyPathsForPrefetching];
  if ([(NSArray *)v17 count])
  {
    [v5 appendFormat:@"relationshipKeyPathsForPrefetching: (%@); ", v17];
  }

  v18 = [(NSFetchRequest *)self propertiesToFetch];
  if ([(NSArray *)v18 count])
  {
    [v5 appendFormat:@"propertiesToFetch: (%@); ", v18];
  }

  v19 = [(NSFetchRequest *)self havingPredicate];
  if (v19)
  {
    [v5 appendFormat:@"havingPredicate: (%@); ", v19];
  }

  v20 = [(NSFetchRequest *)self propertiesToGroupBy];
  if ([(NSArray *)v20 count])
  {
    [v5 appendFormat:@"propertiesToGroupBy: (%@); ", v20];
  }

  [v5 appendString:@""]);
  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)_newNormalizedFetchProperties:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if (a2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a2, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (!v4)
    {
      goto LABEL_19;
    }

    v5 = v4;
    v6 = *v19;
    while (1)
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        if ([v8 isNSString])
        {
          v9 = v3;
          v10 = v8;
LABEL_13:
          [v9 addObject:v10];
          goto LABEL_14;
        }

        v11 = [v8 _propertyType];
        if (v11 > 7)
        {
          goto LABEL_14;
        }

        if (((1 << v11) & 0xD4) != 0)
        {
          v10 = [v8 name];
          v9 = v3;
          goto LABEL_13;
        }

        if (v11 == 5)
        {
          v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
          [v12 addObject:{objc_msgSend(v8, "name")}];
          [v12 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", objc_msgSend(v8, "expressionResultType"))}];
          [v12 addObject:{objc_msgSend(v8, "expression")}];
          [v3 addObject:v12];
        }

LABEL_14:
        ++v7;
      }

      while (v5 != v7);
      v13 = [a2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v5 = v13;
      if (!v13)
      {
LABEL_19:
        v14 = *MEMORY[0x1E69E9840];
        return v3;
      }
    }
  }

  v16 = [MEMORY[0x1E695DFB0] null];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)_newDenormalizedFetchProperties:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E695DFB0] null] == a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a3, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(a3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if ([v9 isNSString])
          {
            [v4 addObject:v9];
          }

          else
          {
            v10 = objc_alloc_init(NSExpressionDescription);
            -[NSPropertyDescription setName:](v10, "setName:", [v9 objectAtIndex:0]);
            -[NSExpressionDescription setExpressionResultType:](v10, "setExpressionResultType:", [objc_msgSend(v9 objectAtIndex:{1), "unsignedIntegerValue"}]);
            -[NSExpressionDescription setExpression:](v10, "setExpression:", [v9 objectAtIndex:2]);
            [v4 addObject:v10];
          }
        }

        v6 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (id)decodeFromXPCArchive:(id)a3 withContext:(id)a4 andPolicy:(id)a5
{
  v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a3 error:0];
  [v8 setDelegate:a4];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = +[_NSXPCStoreUtilities classesForFetchArchive];
  if (a5)
  {
    v10 = [v10 setByAddingObjectsFromSet:{objc_msgSend(a5, "allowableClassesForClientWithContext:", a4)}];
  }

  v11 = [v8 decodeObjectOfClasses:v10 forKey:@"root"];

  v12 = +[NSFetchRequest fetchRequestWithEntityName:](NSFetchRequest, "fetchRequestWithEntityName:", [v11 objectAtIndex:0]);
  -[NSFetchRequest _setFlagsFromXPCEncoding:](v12, "_setFlagsFromXPCEncoding:", [v11 objectAtIndex:1]);
  v13 = [v11 objectAtIndex:2];
  if (v9 != v13)
  {
    [(NSFetchRequest *)v12 setSortDescriptors:v13];
  }

  v14 = [v11 objectAtIndex:3];
  if (v9 != v14)
  {
    [(NSFetchRequest *)v12 setPredicate:v14];
  }

  v15 = [v11 objectAtIndex:4];
  if (v9 != v15)
  {
    [(NSFetchRequest *)v12 setHavingPredicate:v15];
  }

  v16 = [v11 objectAtIndex:5];
  if (v9 != v16)
  {
    [(NSFetchRequest *)v12 setRelationshipKeyPathsForPrefetching:v16];
  }

  -[NSFetchRequest setFetchOffset:](v12, "setFetchOffset:", [objc_msgSend(v11 objectAtIndex:{6), "unsignedIntegerValue"}]);
  -[NSFetchRequest setFetchLimit:](v12, "setFetchLimit:", [objc_msgSend(v11 objectAtIndex:{7), "unsignedLongValue"}]);
  -[NSFetchRequest setFetchBatchSize:](v12, "setFetchBatchSize:", [objc_msgSend(v11 objectAtIndex:{8), "unsignedIntegerValue"}]);
  v17 = [v11 objectAtIndex:9];
  if (v9 != v17)
  {
    v18 = [a1 _newDenormalizedFetchProperties:v17];
    [(NSFetchRequest *)v12 setPropertiesToFetch:v18];
  }

  v19 = [v11 objectAtIndex:10];
  if (v9 != v19)
  {
    v20 = [a1 _newDenormalizedFetchProperties:v19];
    [(NSFetchRequest *)v12 setPropertiesToGroupBy:v20];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:-[NSFetchRequest propertiesToGroupBy](self forKey:{"propertiesToGroupBy"), @"NSValuesToGroupBy"}];
  [a3 encodeObject:-[NSFetchRequest havingPredicate](self forKey:{"havingPredicate"), @"NSHavingPredicate"}];
  [a3 encodeInt:-[NSFetchRequest fetchOffset](self forKey:{"fetchOffset"), @"NSFetchOffset"}];
  [a3 encodeObject:-[NSFetchRequest propertiesToFetch](self forKey:{"propertiesToFetch"), @"NSValuesToFetch"}];
  v5 = atomic_load(&self->_additionalPrivateIvars->var2);
  if (v5)
  {
    v6 = atomic_load(&self->_entity);
    [a3 encodeObject:v6 forKey:@"NSEntity"];
  }

  else
  {
    [a3 encodeConditionalObject:-[NSFetchRequest entity](self forKey:{"entity"), @"NSEntity"}];
  }

  [a3 encodeObject:-[NSFetchRequest predicate](self forKey:{"predicate"), @"NSPredicate"}];
  [a3 encodeObject:-[NSFetchRequest sortDescriptors](self forKey:{"sortDescriptors"), @"NSSortDescriptors"}];
  [a3 encodeInt:-[NSFetchRequest fetchLimit](self forKey:{"fetchLimit"), @"NSFetchLimit"}];
  [a3 encodeInt:-[NSFetchRequest fetchBatchSize](self forKey:{"fetchBatchSize"), @"NSBatchSize"}];
  [a3 encodeObject:-[NSFetchRequest relationshipKeyPathsForPrefetching](self forKey:{"relationshipKeyPathsForPrefetching"), @"NSRelationshipKeyPathsForPrefetching"}];
  [a3 encodeInteger:-[NSFetchRequest resultType](self forKey:{"resultType"), @"NSResultType"}];
  [a3 encodeInteger:-[NSFetchRequest allocationType](self forKey:{"allocationType"), @"NSAllocationType"}];
  if ([(NSFetchRequest *)self allocationSize])
  {
    [a3 encodeInteger:-[NSFetchRequest allocationSize](self forKey:{"allocationSize"), @"NSAllocationSize"}];
  }

  v7 = [(NSFetchRequest *)self returnsDistinctResults];
  if ([(NSFetchRequest *)self includesSubentities])
  {
    v7 |= 2uLL;
  }

  if ([(NSFetchRequest *)self includesPropertyValues])
  {
    v7 |= 4uLL;
  }

  if ([(NSFetchRequest *)self returnsObjectsAsFaults])
  {
    v7 |= 8uLL;
  }

  if ([(NSFetchRequest *)self includesPendingChanges])
  {
    v7 |= 0x10uLL;
  }

  if ([(NSFetchRequest *)self shouldRefreshRefetchedObjects])
  {
    v7 |= 0x20uLL;
  }

  if ([(NSFetchRequest *)self _disablePersistentStoreResultCaching])
  {
    v7 |= 0x40uLL;
  }

  if ([(NSFetchRequest *)self purgeableResult])
  {
    v7 |= 0x80uLL;
  }

  [a3 encodeBool:1 forKey:@"NSHasFetchRequestFlags"];
  v8 = [(NSFetchRequest *)self _encodedFetchRequestFlagsForFlags:v7];

  [a3 encodeInteger:v8 forKey:@"NSFetchRequestFlags"];
}

- (NSFetchRequest)initWithCoder:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = NSFetchRequest;
  v4 = [(NSFetchRequest *)&v46 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v43 = __32__NSFetchRequest_initWithCoder___block_invoke;
    v44 = &unk_1E6EC16F0;
    v45 = v5;
    v6 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v6 = malloc_default_zone();
    }

    *(v4 + 4) = malloc_type_zone_calloc(v6, 1uLL, 0x18uLL, 0x1080040E11204F7uLL);
    if ([a3 decodeBoolForKey:@"NSHasFetchRequestFlags"])
    {
      v7 = [a3 decodeIntegerForKey:@"NSFetchRequestFlags"];
      [v4 setReturnsDistinctResults:v7 & 1];
      [v4 setIncludesSubentities:(v7 >> 1) & 1];
      [v4 setIncludesPropertyValues:(v7 >> 2) & 1];
      [v4 setReturnsObjectsAsFaults:(v7 >> 3) & 1];
      [v4 setIncludesPendingChanges:(v7 >> 4) & 1];
      [v4 setShouldRefreshRefetchedObjects:(v7 >> 5) & 1];
      [v4 _setDisablePersistentStoreResultCaching:(v7 >> 6) & 1];
      [v4 setResultType:{objc_msgSend(a3, "decodeIntegerForKey:", @"NSResultType"}];
      [v4 setAllocationType:{objc_msgSend(a3, "decodeIntegerForKey:", @"NSAllocationType"}];
      [v4 setPurgeableResult:(v7 >> 7) & 1];
    }

    else
    {
      *(v4 + 26) = *(v4 + 26) & 0xFFFE1B00 | 0x46;
      atomic_store(0, (*(v4 + 4) + 18));
    }

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    atomic_store([a3 decodeObjectOfClasses:objc_msgSend(v8 forKey:{"setWithObjects:", v9, objc_opt_class(), 0), @"NSEntity"}], v4 + 6);
    v10 = atomic_load(v4 + 6);
    if ([v10 isNSString])
    {
      atomic_store(1u, (*(v4 + 4) + 16));
      v11 = atomic_load(v4 + 6);
      v12 = v11;
    }

    else if (atomic_load(v4 + 6))
    {
      if (v5)
      {
        v14 = v5[3];
      }

      else
      {
        v14 = 0;
      }

      v15 = atomic_load(v4 + 6);
      [v14 addObject:v15];
      atomic_load(v4 + 6);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v17 = &unk_1EF434EC8;
      }

      else
      {
        v17 = &unk_1EF434EA0;
      }

      if (v5 == 0 || (isKindOfClass & 1) == 0)
      {
        goto LABEL_33;
      }

      if (!v5[1])
      {
        v17 = &unk_1EF434EC8;
        goto LABEL_33;
      }
    }

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    *(v4 + 7) = [a3 decodeObjectOfClasses:objc_msgSend(v18 forKey:{"setWithObjects:", v19, objc_opt_class(), 0), @"NSPredicate"}];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    *(v4 + 8) = [a3 decodeObjectOfClasses:objc_msgSend(v20 forKey:{"setWithObjects:", v21, objc_opt_class(), 0), @"NSSortDescriptors"}];
    if ((byte_1ED4BEECE & 1) == 0)
    {
      v22 = *(v4 + 7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [*(v4 + 7) allowEvaluation];
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = *(v4 + 8);
      v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v24)
      {
        v25 = *v39;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v39 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v27 allowEvaluation];
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v24);
      }
    }

    *(v4 + 10) = [a3 decodeIntForKey:@"NSFetchLimit"];
    **(v4 + 4) = [a3 decodeIntForKey:@"NSFetchOffset"];
    *(v4 + 9) = [a3 decodeIntegerForKey:@"NSBatchSize"];
    *(v4 + 11) = [a3 decodeIntegerForKey:@"NSAllocationSize"];
    v28 = MEMORY[0x1E695DFD8];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [a3 decodeObjectOfClasses:objc_msgSend(v28 forKey:{"setWithObjects:", v29, v30, v31, objc_opt_class(), 0), @"NSValuesToFetch"}];
    *(v4 + 5) = v32;
    if (!v32 || ([v32 isNSArray] & 1) != 0)
    {
      *(v4 + 3) = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSHavingPredicate"];
      v33 = MEMORY[0x1E695DFD8];
      v34 = objc_opt_class();
      v35 = objc_opt_class();
      *(v4 + 2) = [a3 decodeObjectOfClasses:objc_msgSend(v33 forKey:{"setWithObjects:", v34, v35, objc_opt_class(), 0), @"NSValuesToGroupBy"}];
LABEL_34:
      v43(v42);
      goto LABEL_35;
    }

    v17 = &unk_1EF434EF0;
LABEL_33:
    [a3 failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v17)}];

    v4 = 0;
    goto LABEL_34;
  }

LABEL_35:
  v36 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = NSFetchRequest;
  v4 = [(NSPersistentStoreRequest *)&v11 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    v6 = atomic_load(&self->_additionalPrivateIvars->var2);
    v7 = atomic_load(&self->_entity);
    if (v6)
    {
      atomic_store(v7, v4 + 6);
      atomic_store(1u, (v5[4] + 16));
    }

    else
    {
      atomic_store(v7, v4 + 6);
    }

    v5[7] = self->_predicate;
    v5[8] = [(NSArray *)self->_sortDescriptors copy];
    v5[10] = self->_fetchLimit;
    v5[11] = self->_allocationSize;
    v5[9] = self->_batchSize;
    additionalPrivateIvars = self->_additionalPrivateIvars;
    *v5[4] = additionalPrivateIvars->var0;
    LOBYTE(additionalPrivateIvars) = atomic_load(&additionalPrivateIvars->var2);
    atomic_store(additionalPrivateIvars & 1, (v5[4] + 16));
    *(v5 + 26) = *&self->_flags & 0xFFFFFEFF;
    atomic_store(0, (v5[4] + 20));
    v5[12] = [(NSArray *)self->_relationshipKeyPathsForPrefetching copy];
    v5[5] = [(NSArray *)self->_valuesToFetch copy];
    v5[3] = [(NSPredicate *)self->_havingPredicate copy];
    v5[2] = [(NSArray *)self->_groupByProperties copy];
    *(v5 + 26) = v5[13] & 0xFFFE3FFF | (((*&self->_flags >> 14) & 7) << 14);
    v9 = atomic_load(&self->_additionalPrivateIvars->var4);
    atomic_store(v9 & 1, (v5[4] + 18));
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSEntityDescription *)[(NSFetchRequest *)self entity] hash]^ __rbit32([(NSFetchRequest *)self resultType]);
  [(NSFetchRequest *)self predicate];
  v4 = [(NSFetchRequest *)self sortDescriptors];
  if ([(NSArray *)v4 count])
  {
    v5 = [-[NSArray objectAtIndex:](v4 objectAtIndex:{0), "key"}];
    if (v5)
    {
      v3 ^= [v5 hash];
    }
  }

  v6 = [(NSFetchRequest *)self propertiesToFetch];
  if ([(NSArray *)v6 count])
  {
    v7 = [(NSArray *)v6 objectAtIndex:0];
    if (([v7 isNSString] & 1) == 0)
    {
      v7 = [v7 name];
    }

    v3 ^= [v7 hash];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_37;
  }

  if (!a3)
  {
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_36;
  }

  v5 = [(NSFetchRequest *)self entityName];
  v6 = [a3 entityName];
  if (v5 != v6)
  {
    v7 = v6;
    LOBYTE(v6) = 0;
    if (!v5)
    {
      return v6;
    }

    if (!v7)
    {
      return v6;
    }

    LODWORD(v6) = [(NSString *)v5 isEqual:?];
    if (!v6)
    {
      return v6;
    }
  }

  if ((*(a3 + 26) ^ *&self->_flags) & 0x1FE4FF) != 0 || (v8 = atomic_load(&self->_additionalPrivateIvars->var3), v9 = atomic_load((*(a3 + 4) + 17)), ((v9 ^ v8)) || (v10 = atomic_load(&self->_additionalPrivateIvars->var4), v11 = atomic_load((*(a3 + 4) + 18)), ((v11 ^ v10)) || (v12 = -[NSFetchRequest fetchLimit](self, "fetchLimit"), v12 != [a3 fetchLimit]) || (v13 = -[NSFetchRequest fetchBatchSize](self, "fetchBatchSize"), v13 != objc_msgSend(a3, "fetchBatchSize")) || (v14 = -[NSFetchRequest fetchOffset](self, "fetchOffset"), v14 != objc_msgSend(a3, "fetchOffset")))
  {
LABEL_36:
    LOBYTE(v6) = 0;
    return v6;
  }

  v15 = [(NSFetchRequest *)self predicate];
  v6 = [a3 predicate];
  if (v15 == v6 || (v16 = v6, LOBYTE(v6) = 0, v15) && v16 && (LODWORD(v6) = [(NSPredicate *)v15 isEqual:?], v6))
  {
    v17 = [(NSFetchRequest *)self sortDescriptors];
    v6 = [a3 sortDescriptors];
    if (v17 == v6 || (v18 = v6, LOBYTE(v6) = 0, v17) && v18 && (LODWORD(v6) = [(NSArray *)v17 isEqual:?], v6))
    {
      v19 = [(NSFetchRequest *)self propertiesToFetch];
      v6 = [a3 propertiesToFetch];
      if (v19 == v6 || (v20 = v6, LOBYTE(v6) = 0, v19) && v20 && (LODWORD(v6) = [(NSArray *)v19 isEqual:?], v6))
      {
        v21 = [(NSFetchRequest *)self havingPredicate];
        v6 = [a3 havingPredicate];
        if (v21 == v6 || (v22 = v6, LOBYTE(v6) = 0, v21) && v22 && (LODWORD(v6) = [(NSPredicate *)v21 isEqual:?], v6))
        {
          v23 = [(NSFetchRequest *)self propertiesToGroupBy];
          v6 = [a3 propertiesToGroupBy];
          if (v23 != v6)
          {
            v24 = v6;
            LOBYTE(v6) = 0;
            if (v23 && v24)
            {

              LOBYTE(v6) = [(NSArray *)v23 isEqual:?];
            }

            return v6;
          }

LABEL_37:
          LOBYTE(v6) = 1;
        }
      }
    }
  }

  return v6;
}

- (NSArray)execute:(NSError *)error
{
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {

    return [v4 executeFetchRequest:self error:error];
  }

  else
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:&unk_1EF434F18];
    }

    return 0;
  }
}

- (void)setEntity:(NSEntityDescription *)entity
{
  v5 = atomic_load(&self->_additionalPrivateIvars->var2);
  if (v5)
  {
    v6 = [(NSEntityDescription *)entity name];
    v7 = atomic_load(&self->_entity);
    if (([(NSString *)v6 isEqual:v7]& 1) == 0)
    {
      [(NSFetchRequest *)self _throwIfNotEditable];
    }

    v8 = atomic_load(&self->_entity);

    atomic_store(0, &self->_additionalPrivateIvars->var2);
  }

  else
  {
    [(NSFetchRequest *)self _throwIfNotEditable];
  }

  atomic_store(entity, &self->_entity);
}

- (void)setPredicate:(NSPredicate *)predicate
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  v5 = self->_predicate;
  if (v5 != predicate)
  {

    self->_predicate = predicate;
  }
}

- (void)setSortDescriptors:(NSArray *)sortDescriptors
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  v5 = self->_sortDescriptors;
  if (v5 != sortDescriptors)
  {

    self->_sortDescriptors = [(NSArray *)sortDescriptors copy];
  }
}

- (void)setFetchLimit:(NSUInteger)fetchLimit
{
  v3 = fetchLimit;
  [(NSFetchRequest *)self _throwIfNotEditable];
  self->_fetchLimit = v3;
}

- (void)setRelationshipKeyPathsForPrefetching:(NSArray *)relationshipKeyPathsForPrefetching
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (self->_relationshipKeyPathsForPrefetching != relationshipKeyPathsForPrefetching)
  {
    v5 = [(NSArray *)relationshipKeyPathsForPrefetching copy];

    self->_relationshipKeyPathsForPrefetching = v5;
  }
}

- (void)setReturnsObjectsAsFaults:(BOOL)returnsObjectsAsFaults
{
  v3 = returnsObjectsAsFaults;
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 64;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFBF | v5);
}

- (void)setIncludesSubentities:(BOOL)includesSubentities
{
  v3 = includesSubentities;
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFD | v5);
}

- (void)setAllocationType:(unint64_t)a3
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (((a3 - 1 < 2) & _PF_XPCStore_DisableExplicitBufferedAllocations_91407470) != 0)
  {
    v5 = 49152;
  }

  else
  {
    v5 = (a3 & 7) << 14;
  }

  self->_flags = (*&self->_flags & 0xFFFE3FFF | v5);
}

- (void)setAllocationSize:(unint64_t)a3
{
  v3 = a3;
  [(NSFetchRequest *)self _throwIfNotEditable];
  self->_allocationSize = v3;
}

- (void)setIncludesPropertyValues:(BOOL)includesPropertyValues
{
  v3 = includesPropertyValues;
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFB | v5);
}

- (void)setResultType:(NSFetchRequestResultType)resultType
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  self->_flags = (*&self->_flags & 0xFFFFFFC7 | (8 * (resultType & 7)));
  if (resultType == 4 || resultType == 1)
  {

    [(NSFetchRequest *)self setIncludesPropertyValues:0];
  }
}

- (void)setIncludesPendingChanges:(BOOL)includesPendingChanges
{
  v3 = includesPendingChanges;
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 128;
  }

  self->_flags = (*&self->_flags & 0xFFFFFF7F | v5);
}

- (void)setReturnsDistinctResults:(BOOL)returnsDistinctResults
{
  v3 = returnsDistinctResults;
  [(NSFetchRequest *)self _throwIfNotEditable];
  self->_flags = (*&self->_flags & 0xFFFFFFFE | v3);
}

- (id)_newValidatedProperties:(int)a3 groupBy:(void *)a4 error:
{
  v96 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_131:
    v77 = 0;
    goto LABEL_132;
  }

  [a1 _throwIfNotEditable];
  v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = a1;
  if ((a1[26] & 0x38) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  v73 = v7;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v74 = [a2 countByEnumeratingWithState:&v89 objects:v95 count:16];
  if (v74)
  {
    v75 = *v90;
    v76 = a3;
    v72 = a2;
LABEL_7:
    v8 = 0;
    while (1)
    {
      if (*v90 != v75)
      {
        objc_enumerationMutation(a2);
      }

      v9 = *(*(&v89 + 1) + 8 * v8);
      v78 = v8;
      if ([(NSExpressionDescription *)v9 isNSString])
      {
        v10 = [(NSExpressionDescription *)v9 componentsSeparatedByString:@"."];
        v11 = [v71 entity];
        v12 = [v10 count];
        if (v12 == 1)
        {
          v13 = [objc_msgSend(v11 "propertiesByName")];
          if (v13)
          {
            v14 = v13;
            if (v73 && [(NSPropertyDescription *)v13 isTransient])
            {
LABEL_118:

              v53 = MEMORY[0x1E695DF30];
              v54 = *MEMORY[0x1E695D940];
              v61 = @"setPropertiesToFetch:";
              if (a3)
              {
                v61 = @"setPropertiesToGroupBy:";
              }

              v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath %@ passed to %@", v9, v61];
              goto LABEL_129;
            }

            if (a3 && [(NSExpressionDescription *)v14 _propertyType]== 4 && [(NSExpressionDescription *)v14 maxCount]>= 2)
            {
LABEL_121:

              v53 = MEMORY[0x1E695DF30];
              v54 = *MEMORY[0x1E695D940];
              v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath %@ passed to setPropertiesToGroupBy:", v9, v68];
LABEL_129:
              v64 = [v53 exceptionWithName:v54 reason:v58 userInfo:0];
              if (!a4)
              {
                goto LABEL_131;
              }

              v77 = 0;
              *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v64, @"NSUnderlyingException"}];
              break;
            }
          }

          else
          {
            if (![(NSExpressionDescription *)v9 isEqualToString:@"objectID"])
            {
              goto LABEL_118;
            }

            v49 = objc_alloc_init(NSExpressionDescription);
            [(NSPropertyDescription *)v49 setName:@"objectID"];
            -[NSExpressionDescription setExpression:](v49, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
            [(NSExpressionDescription *)v49 setExpressionResultType:2000];
            v14 = v49;
          }

          goto LABEL_86;
        }

        v18 = v12;
        v19 = [v10 objectAtIndex:0];
        if (v11)
        {
          v20 = [objc_msgSend(v11 "propertiesByName")];
        }

        else
        {
          v20 = 0;
        }

        if ([(NSExpressionDescription *)v20 _propertyType]== 7)
        {
          if ([v10 count] >= 2)
          {
            v21 = 0;
            v22 = 1;
LABEL_28:
            v79 = v9;
            do
            {
              v23 = [v10 objectAtIndex:v22];
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              v24 = [(NSExpressionDescription *)v20 elements];
              v25 = [v24 countByEnumeratingWithState:&v85 objects:v94 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v86;
LABEL_31:
                v28 = 0;
                while (1)
                {
                  if (*v86 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v14 = *(*(&v85 + 1) + 8 * v28);
                  if ([v23 isEqualToString:{-[NSPropertyDescription name](v14, "name")}])
                  {
                    break;
                  }

                  if (v26 == ++v28)
                  {
                    v26 = [v24 countByEnumeratingWithState:&v85 objects:v94 count:16];
                    if (v26)
                    {
                      goto LABEL_31;
                    }

                    goto LABEL_37;
                  }
                }

                ++v22;
                v21 = 1;
                v9 = v14;
                v20 = v14;
                if ([v10 count] > v22)
                {
                  goto LABEL_28;
                }

                goto LABEL_86;
              }

LABEL_37:
              ++v22;
            }

            while ([v10 count] > v22);
            v9 = v79;
            v14 = v79;
            if (v21)
            {
              goto LABEL_86;
            }
          }

          v53 = MEMORY[0x1E695DF30];
          v54 = *MEMORY[0x1E695D940];
          v55 = MEMORY[0x1E696AEC0];
          v56 = @"setPropertiesToFetch:";
          v57 = v76 == 0;
LABEL_103:
          if (!v57)
          {
            v56 = @"setPropertiesToGroupBy:";
          }

          v58 = [v55 stringWithFormat:@"Invalid keypath %@ passed to %@:", v9, v56];
          goto LABEL_129;
        }

        if (v18)
        {
          v43 = [objc_msgSend(v11 "propertiesByName")];
          if (v43)
          {
            v44 = v43;
            v45 = 1;
            while (1)
            {
              if (v73 && [v44 isTransient])
              {
                goto LABEL_102;
              }

              if (a3 && [v44 _propertyType] == 4 && objc_msgSend(v44, "maxCount") >= 2)
              {
                goto LABEL_121;
              }

              v46 = [v44 _propertyType];
              if ((v46 & 0xFFFFFFFFFFFFFFFBLL) == 2)
              {
                break;
              }

              if (v46 != 4)
              {

                v53 = MEMORY[0x1E695DF30];
                v54 = *MEMORY[0x1E695D940];
                v59 = @"setPropertiesToFetch:";
                if (a3)
                {
                  v59 = @"setPropertiesToGroupBy:";
                }

                v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath %@ passed to %@ (invalid property type)", v9, v59];
                goto LABEL_129;
              }

              if ((a3 & 1) == 0 && [v44 isToMany])
              {

                v53 = MEMORY[0x1E695DF30];
                v54 = *MEMORY[0x1E695D940];
                v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid to many relationship in setPropertiesToFetch: (%@)", v9, v68];
                goto LABEL_129;
              }

              if (v18 == v45)
              {
                v14 = objc_alloc_init(NSExpressionDescription);
                [(NSPropertyDescription *)v14 setName:v9];
                -[NSExpressionDescription setExpression:](v14, "setExpression:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v9]);
                v51 = v14;
                v50 = 2000;
                goto LABEL_97;
              }

              v44 = [objc_msgSend(objc_msgSend(v44 "destinationEntity")];
              if (!v44)
              {
                goto LABEL_102;
              }
            }

            if (v18 == v45)
            {
              v14 = objc_alloc_init(NSExpressionDescription);
              [(NSPropertyDescription *)v14 setName:v9];
              -[NSExpressionDescription setExpression:](v14, "setExpression:", [MEMORY[0x1E696ABC8] expressionForKeyPath:v9]);
              v50 = [v44 attributeType];
              v51 = v14;
LABEL_97:
              [(NSExpressionDescription *)v51 setExpressionResultType:v50];
              goto LABEL_86;
            }

            v53 = MEMORY[0x1E695DF30];
            v54 = *MEMORY[0x1E695D940];
            v67 = @"setPropertiesToFetch:";
            if (a3)
            {
              v67 = @"setPropertiesToGroupBy:";
            }

            v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath %@ passed to %@ (non-terminal attribute)", v9, v67];
            goto LABEL_129;
          }

LABEL_102:

          v53 = MEMORY[0x1E695DF30];
          v54 = *MEMORY[0x1E695D940];
          v55 = MEMORY[0x1E696AEC0];
          v56 = @"setPropertiesToFetch:";
          v57 = a3 == 0;
          goto LABEL_103;
        }
      }

      else
      {
        v15 = [(NSExpressionDescription *)v9 _propertyType];
        if (v15 == 5)
        {
          if (a3)
          {
            v16 = [(NSExpressionDescription *)v9 expression];
            v17 = [(NSExpression *)v16 expressionType];
            if (v17 != 3)
            {
              if (v17 == 4 && sel_valueForKey_ != [(NSExpression *)v16 selector])
              {
                [(NSExpression *)v16 selector];
              }

              v53 = MEMORY[0x1E695DF30];
              v54 = *MEMORY[0x1E695D940];
              v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid keypath expression (%@) passed to setPropertiesToFetch:", v9, v68];
              goto LABEL_129;
            }
          }
        }

        else
        {
          v29 = v15;
          if (v73 && [(NSPropertyDescription *)v9 isTransient])
          {

            v53 = MEMORY[0x1E695DF30];
            v54 = *MEMORY[0x1E695D940];
            v62 = @"setPropertiesToFetch:";
            if (a3)
            {
              v62 = @"setPropertiesToGroupBy:";
            }

            v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property %@ passed to %@ (property is transient)", v9, v62];
            goto LABEL_129;
          }

          v30 = [v71 entity];
          v31 = [-[NSPropertyDescription _qualifiedName](v9 "_qualifiedName")];
          v80 = v9;
          v70 = v29;
          if ([v31 count] < 2)
          {
            v47 = [(NSPropertyDescription *)v9 name];
            if (!v30)
            {
              goto LABEL_109;
            }

            v33 = [objc_msgSend(v30 "propertiesByName")];
          }

          else
          {
            v32 = [v31 objectAtIndex:0];
            if (v30)
            {
              v33 = [objc_msgSend(v30 "propertiesByName")];
            }

            else
            {
              v33 = 0;
            }

            if ([v31 count] >= 2)
            {
              v35 = 1;
              do
              {
                v36 = [v31 objectAtIndex:v35];
                v81 = 0u;
                v82 = 0u;
                v83 = 0u;
                v84 = 0u;
                v37 = [v33 elements];
                v38 = [v37 countByEnumeratingWithState:&v81 objects:v93 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v82;
                  while (2)
                  {
                    for (i = 0; i != v39; ++i)
                    {
                      if (*v82 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = *(*(&v81 + 1) + 8 * i);
                      if ([v36 isEqualToString:{objc_msgSend(v42, "name")}])
                      {
                        v33 = v42;
                        goto LABEL_58;
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v81 objects:v93 count:16];
                    if (v39)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_58:
                ++v35;
              }

              while ([v31 count] > v35);
            }
          }

          if (!v33)
          {
LABEL_109:

            v53 = MEMORY[0x1E695DF30];
            v54 = *MEMORY[0x1E695D940];
            v60 = @"setPropertiesToFetch:";
            if (v76)
            {
              v60 = @"setPropertiesToGroupBy:";
            }

            v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attribute/relationship description names passed to %@ must match name on fetch entity (%@)", v60, v80];
            goto LABEL_129;
          }

          v9 = v80;
          if ((v76 & 1) != 0 || BYTE2(z9dsptsiQ80etb9782fsrs98bfdle88) == 1)
          {
            v48 = [(NSPropertyDescription *)v80 entity];
            if (v30)
            {
              v34 = v48;
              if (v30 != v48 && ([v30 _subentitiesIncludes:v48] & 1) == 0)
              {

                v53 = MEMORY[0x1E695DF30];
                v54 = *MEMORY[0x1E695D940];
                v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property (%@) passed to setPropertiesToFetch: (entity mismatch)", v80, v68];
                goto LABEL_129;
              }
            }
          }

          if (v70 == 4 && [(NSExpressionDescription *)v80 isToMany])
          {

            v53 = MEMORY[0x1E695DF30];
            v54 = *MEMORY[0x1E695D940];
            v63 = @"setPropertiesToFetch:";
            if (v76)
            {
              v63 = @"setPropertiesToGroupBy:";
            }

            v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid to many relationship (%@) passed to %@:", v80, v63];
            goto LABEL_129;
          }
        }
      }

      v14 = v9;
LABEL_86:
      if ([v77 indexOfObjectIdenticalTo:v14] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v77 addObject:v14];
      }

      v8 = v78 + 1;
      a3 = v76;
      a2 = v72;
      if (v78 + 1 == v74)
      {
        v52 = [v72 countByEnumeratingWithState:&v89 objects:v95 count:16];
        v74 = v52;
        if (v52)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

LABEL_132:
  v65 = *MEMORY[0x1E69E9840];
  return v77;
}

- (uint64_t)_bindExpressionDescriptionProperties:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (result)
    {
      v4 = result;
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(a2);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v7 expression];
            if ([v8 expressionType] == 3)
            {
              v9 = -[NSEntityDescription _attributeNamed:]([v3 entity], objc_msgSend(v8, "keyPath"));
            }

            else
            {
              v9 = 0;
            }

            [(NSExpressionDescription *)v7 setUnderlyingAttribute:v9];
          }

          ++v6;
        }

        while (v4 != v6);
        result = [a2 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = result;
      }

      while (result);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setPropertiesToFetch:(NSArray *)propertiesToFetch
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (self->_valuesToFetch != propertiesToFetch)
  {
    v5 = atomic_load(&self->_entity);
    if ([v5 isNSString])
    {
      atomic_store(0, &self->_additionalPrivateIvars->var6);
      v6 = [(NSArray *)propertiesToFetch copy];
    }

    else
    {
      v8 = 0;
      v7 = [(NSFetchRequest *)self _newValidatedProperties:0 groupBy:&v8 error:?];
      if (!v7)
      {
        objc_exception_throw([objc_msgSend(v8 "userInfo")]);
      }

      v6 = v7;
      atomic_store(1u, &self->_additionalPrivateIvars->var6);
    }

    self->_valuesToFetch = v6;
  }
}

- (void)setAffectedStores:(NSArray *)affectedStores
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  v5.receiver = self;
  v5.super_class = NSFetchRequest;
  [(NSPersistentStoreRequest *)&v5 setAffectedStores:affectedStores];
}

- (void)setShouldRefreshRefetchedObjects:(BOOL)shouldRefreshRefetchedObjects
{
  v3 = shouldRefreshRefetchedObjects;
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 1024;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFBFF | v5);
}

- (NSFetchRequest)initWithEntityName:(NSString *)entityName
{
  v4 = [(NSFetchRequest *)self init];
  v5 = v4;
  if (v4)
  {
    atomic_store(1u, &v4->_additionalPrivateIvars->var2);
    atomic_store([(NSString *)entityName copy], &v4->_entity);
  }

  return v5;
}

+ (NSFetchRequest)fetchRequestWithEntityName:(NSString *)entityName
{
  v3 = [objc_alloc(objc_opt_class()) initWithEntityName:entityName];

  return v3;
}

- (void)setPropertiesToGroupBy:(NSArray *)propertiesToGroupBy
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (self->_groupByProperties != propertiesToGroupBy)
  {
    v5 = atomic_load(&self->_entity);
    if ([v5 isNSString])
    {
      atomic_store(0, &self->_additionalPrivateIvars->var6);
      v6 = [(NSArray *)propertiesToGroupBy copy];
    }

    else
    {
      v8 = 0;
      v7 = [(NSFetchRequest *)self _newValidatedProperties:1 groupBy:&v8 error:?];
      if (!v7)
      {
        objc_exception_throw([objc_msgSend(v8 "userInfo")]);
      }

      v6 = v7;
      atomic_store(1u, &self->_additionalPrivateIvars->var6);
    }

    self->_groupByProperties = v6;
  }
}

- (void)setHavingPredicate:(NSPredicate *)havingPredicate
{
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (self->_havingPredicate != havingPredicate)
  {
    v5 = havingPredicate;

    self->_havingPredicate = havingPredicate;
  }
}

- (void)_setAsyncResultHandle:(id)a3
{
  v5 = atomic_load(&self->_additionalPrivateIvars->var1);
  if (v5)
  {
    v6 = v5 == a3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
  }

  if (a3)
  {
    atomic_store(1u, &self->_additionalPrivateIvars->var3);
  }

  atomic_store(a3, &self->_additionalPrivateIvars->var1);
}

- (void)_setDisablePersistentStoreResultCaching:(BOOL)a3
{
  v3 = a3;
  [(NSFetchRequest *)self _throwIfNotEditable];
  if (v3)
  {
    v5 = 0x2000;
  }

  else
  {
    v5 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFDFFF | v5);
}

- (void)_setFetchBatchLRUEntriesLimit:(unint64_t)a3
{
  if (a3)
  {
    v3 = 1024;
    if (a3 < 0x400)
    {
      v3 = a3;
    }

    self->_flags = (*&self->_flags & 0xFFE1FFFF | (((((__clz(__rbit32(v3)) << 17) + 0x20000) >> 17) & 0xF) << 17));
  }

  else
  {
    *&self->_flags &= 0xFFE1FFFF;
  }
}

- (void)_resolveEntityWithContext:(id)a3
{
  v4 = atomic_load(&self->_additionalPrivateIvars->var2);
  if (v4)
  {
    v6 = atomic_load(&self->_entity);
    if ([v6 isNSString])
    {
      v7 = [NSEntityDescription entityForName:v6 inManagedObjectContext:a3];
      if (!v7)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"NSFetchRequest could not locate an NSEntityDescription for entity name '%@'", v6), 0}]);
      }

      v8 = v7;
      v9 = atomic_load(&self->_entity);

      atomic_store(v8, &self->_entity);
      atomic_store(0, &self->_additionalPrivateIvars->var2);
    }
  }

  v10 = atomic_load(&self->_additionalPrivateIvars->var6);
  if ((v10 & 1) == 0)
  {
    v21 = 0;
    valuesToFetch = self->_valuesToFetch;
    if (valuesToFetch)
    {
      v12 = [(NSFetchRequest *)self _newValidatedProperties:0 groupBy:&v21 error:?];
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = v12;

      self->_valuesToFetch = v13;
    }

    groupByProperties = self->_groupByProperties;
    if (!groupByProperties)
    {
LABEL_12:
      additionalPrivateIvars = self->_additionalPrivateIvars;
      atomic_store(1u, &additionalPrivateIvars->var6);
      goto LABEL_14;
    }

    v15 = [(NSFetchRequest *)self _newValidatedProperties:1 groupBy:&v21 error:?];
    if (v15)
    {
      v16 = v15;

      self->_groupByProperties = v16;
      goto LABEL_12;
    }

LABEL_21:
    objc_exception_throw([objc_msgSend(v21 "userInfo")]);
  }

  additionalPrivateIvars = self->_additionalPrivateIvars;
LABEL_14:
  v18 = atomic_load(&additionalPrivateIvars->var7);
  if ((v18 & 1) == 0)
  {
    v19 = self->_valuesToFetch;
    if (v19)
    {
      [(NSFetchRequest *)self _bindExpressionDescriptionProperties:v19];
    }

    v20 = self->_groupByProperties;
    if (v20)
    {
      [(NSFetchRequest *)self _bindExpressionDescriptionProperties:v20];
    }

    atomic_store(1u, &self->_additionalPrivateIvars->var7);
  }
}

- (void)_setFlagsFromXPCEncoding:(id)a3
{
  v4 = [a3 integerValue];
  self->_flags = v4;
  if ((*&v4 & 0x200) != 0)
  {
    atomic_store(1u, &self->_additionalPrivateIvars->var2);
  }
}

- (void)_writeIntoData:(id)a3 propertiesDict:(id)a4 uniquedPropertyNames:(id)a5 uniquedStrings:(id)a6 uniquedData:(id)a7 uniquedMappings:(id)a8 entities:(id)a9
{
  if (!_writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass_0)
  {
    _writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass_0 = objc_opt_class();
  }

  v12 = [a9 mapping];
  _writeInt32IntoData(a3, 0xBEEFCAFE);
  v39 = [a3 length];
  _writeInt32IntoData(a3, 0);
  v13 = [(NSArray *)self->_groupByProperties count];
  _writeInt32IntoData(a3, v13);
  if (v13)
  {
    v14 = v13;
    do
    {
      _writeInt64IntoData(a3, 0);
      --v14;
    }

    while (v14);
    v15 = 0;
    v16 = v13;
    do
    {
      v17 = [(NSArray *)self->_groupByProperties objectAtIndex:v15, v39];
      v18 = _writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass_0;
      if (v18 == objc_opt_class())
      {
        _writeInt32IntoData(a3, 0);
        _writeInt32IntoData(a3, [v12 indexForKey:{objc_msgSend(objc_msgSend(v17, "entity"), "name")}]);
        _writeNSPropertyProxyIntoData(a3, v17, a4);
      }

      else
      {
        if ([v17 isNSString])
        {
          _writeInt32IntoData(a3, 1u);
          v19 = a5;
        }

        else
        {
          _writeInt32IntoData(a3, 2u);
          v19 = a4;
        }

        _writeInt32IntoData(a3, [objc_msgSend(v19 objectForKey:{v17), "unsignedIntegerValue"}]);
      }

      ++v15;
    }

    while (v16 != v15);
  }

  if (self->_havingPredicate)
  {
    v20 = [objc_msgSend(a7 "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v20 = 0;
  }

  _writeInt32IntoData(a3, v20);
  _writeInt64IntoData(a3, [(NSFetchRequest *)self fetchOffset]);
  v21 = [(NSArray *)self->_valuesToFetch count];
  _writeInt32IntoData(a3, v21);
  if (v21)
  {
    v22 = v21;
    do
    {
      _writeInt64IntoData(a3, 0);
      --v22;
    }

    while (v22);
    v23 = 0;
    v24 = v21;
    do
    {
      v25 = [(NSArray *)self->_valuesToFetch objectAtIndex:v23, v39];
      v26 = _writeIntoData_propertiesDict_uniquedPropertyNames_uniquedStrings_uniquedData_uniquedMappings_entities__PropertyProxyClass_0;
      if (v26 == objc_opt_class())
      {
        _writeInt32IntoData(a3, 0);
        _writeInt32IntoData(a3, [v12 indexForKey:{objc_msgSend(objc_msgSend(v25, "entity"), "name")}]);
        _writeNSPropertyProxyIntoData(a3, v25, a4);
      }

      else
      {
        if ([v25 isNSString])
        {
          _writeInt32IntoData(a3, 1u);
          v27 = a5;
        }

        else
        {
          _writeInt32IntoData(a3, 2u);
          v27 = a4;
        }

        _writeInt32IntoData(a3, [objc_msgSend(v27 objectForKey:{v25), "unsignedIntegerValue"}]);
      }

      ++v23;
    }

    while (v24 != v23);
  }

  p_entity = &self->_entity;
  v29 = atomic_load(&self->_entity);
  if ([v29 isNSString])
  {
    _writeInt32IntoData(a3, 0);
    v30 = atomic_load(p_entity);
    v31 = [objc_msgSend(a5 objectForKey:{v30), "unsignedIntegerValue"}];
  }

  else
  {
    _writeInt32IntoData(a3, 1u);
    v32 = atomic_load(p_entity);
    v31 = [v12 indexForKey:{objc_msgSend(v32, "name")}];
  }

  _writeInt32IntoData(a3, v31);
  if (self->_predicate)
  {
    v33 = [objc_msgSend(a7 "objectForKey:"unsignedIntegerValue"")];
  }

  else
  {
    v33 = 0;
  }

  _writeInt32IntoData(a3, v33);
  sortDescriptors = self->_sortDescriptors;
  if (sortDescriptors && [(NSArray *)sortDescriptors count])
  {
    _writeInt32IntoData(a3, [(NSArray *)self->_sortDescriptors count]);
    _writePFEncodedArrayShapeIntoData(a3, self->_sortDescriptors, a7, 0);
  }

  else
  {
    _writeInt32IntoData(a3, 0);
  }

  _writeInt64IntoData(a3, self->_batchSize);
  _writeInt64IntoData(a3, self->_fetchLimit);
  v35 = [(NSArray *)self->_relationshipKeyPathsForPrefetching count];
  _writeInt32IntoData(a3, v35);
  if (v35)
  {
    _writePFEncodedArrayShapeIntoData(a3, self->_relationshipKeyPathsForPrefetching, a5, 0);
  }

  v36 = atomic_load(&self->_additionalPrivateIvars->var2);
  if (v36)
  {
    *&self->_flags |= 0x200u;
  }

  v37 = atomic_load(&self->_additionalPrivateIvars->var6);
  flags = self->_flags;
  if (v37)
  {
    flags = (*&flags | 0x800);
    self->_flags = flags;
  }

  _writeInt32IntoData(a3, *&flags);
  _writeInt32IntoData(a3, 0xBEEFCAFE);
  v43 = bswap32([a3 length] - v40);
  [a3 replaceBytesInRange:v40 withBytes:{4, &v43}];
}

+ (id)_stringForFetchRequestResultType:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 < 5 && ((0x17u >> a3) & 1) != 0)
  {
    result = off_1E6EC1FD8[a3];
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Unknown fetch request result type: %ld\n", &v8, 0xCu);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: Unknown fetch request result type: %ld", &v8, 0xCu);
    }

    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end