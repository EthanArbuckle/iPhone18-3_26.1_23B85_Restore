@interface _NSFaultingMutableSet
- (BOOL)_isIdenticalFault:(id)fault;
- (BOOL)containsObject:(id)object;
- (BOOL)intersectsSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSet:(id)set;
- (BOOL)isSubsetOfSet:(id)set;
- (_NSFaultingMutableSet)initWithSource:(id)source destinations:(id)destinations forRelationship:(id)relationship inContext:(id)context;
- (_NSFaultingMutableSet)initWithSource:(id)source forRelationship:(id)relationship asFault:(BOOL)fault;
- (id)allObjects;
- (id)anyObject;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test;
- (id)valueForKey:(id)key;
- (id)valueForKeyPath:(id)path;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getObjects:(id *)objects;
- (void)intersectSet:(id)set;
- (void)makeObjectsPerformSelector:(SEL)selector;
- (void)makeObjectsPerformSelector:(SEL)selector withObject:(id)object;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)setValue:(id)value forKey:(id)key;
- (void)turnIntoFault;
- (void)unionSet:(id)set;
- (void)willRead;
- (void)willReadWithContents:(id)contents;
@end

@implementation _NSFaultingMutableSet

- (void)willRead
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {

    [(_NSFaultingMutableSet *)self willReadWithContents:0];
  }
}

- (void)dealloc
{
  realSet = self->_realSet;
  if (realSet && (*&self->_flags & 1) != 0)
  {

    PF_FREE_OBJECT_ARRAY(self->_realSet);
  }

  else
  {
  }

  self->_realSet = 0;
  self->_source = 0;

  _PFDeallocateObject(self);
}

- (unint64_t)count
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return CFSetGetCount(realSet);
}

- (id)allObjects
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet allObjects];
}

- (void)removeAllObjects
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  CFSetRemoveAllValues(realSet);
}

- (_NSFaultingMutableSet)initWithSource:(id)source forRelationship:(id)relationship asFault:(BOOL)fault
{
  faultCopy = fault;
  v15.receiver = self;
  v15.super_class = _NSFaultingMutableSet;
  v8 = [(_NSFaultingMutableSet *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = source;
    if ([relationship _isRelationship])
    {
      v10 = *&v9->_flags & 0xFFFFFFFD | (2 * (([relationship deleteRule] - 1) < 2));
    }

    else
    {
      v10 = *&v9->_flags & 0xFFFFFFFD;
    }

    v9->_flags = v10;
    v9->_flags = (v10 & 0xFFFF0003);
    v11 = *&v9->_flags | ([relationship _entitysReferenceID] << 16);
    if (faultCopy)
    {
      v9->_flags = (v11 | 1);
      v9->_realSet = 0;
    }

    else
    {
      v9->_flags = (v11 & 0xFFFFFFFE);
      v14.version = *MEMORY[0x1E695E9F8];
      *&v14.retain = *(MEMORY[0x1E695E9F8] + 8);
      v12 = *(MEMORY[0x1E695E9F8] + 24);
      v14.equal = 0;
      v14.hash = 0;
      v14.copyDescription = v12;
      v9->_realSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v14);
    }
  }

  return v9;
}

- (_NSFaultingMutableSet)initWithSource:(id)source destinations:(id)destinations forRelationship:(id)relationship inContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  context = [(_NSFaultingMutableSet *)self initWithSource:source forRelationship:relationship asFault:0, context];
  if (context)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [destinations countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(destinations);
          }

          CFSetAddValue(context->_realSet, *(*(&v14 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [destinations countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return context;
}

- (void)willReadWithContents:(id)contents
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  if (*&self->_flags)
  {
    realSet = self->_realSet;
    callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
    v7 = *(MEMORY[0x1E695E9F8] + 24);
    callBacks.equal = 0;
    callBacks.hash = 0;
    callBacks.copyDescription = v7;
    managedObjectContext = [(NSManagedObject *)self->_source managedObjectContext];
    v9 = *([(NSManagedObject *)self->_source entity][96] + 24 + 8 * *(&self->_flags + 1));
    self->_realSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
    ptr = realSet;
    if (contents)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [contents countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(contents);
            }

            CFSetAddValue(self->_realSet, *(*(&v28 + 1) + 8 * i));
          }

          v11 = [contents countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v11);
      }
    }

    else
    {
      v26 = v5;
      source = self->_source;
      if (source)
      {
        v15 = _insertion_fault_handler;
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NSFaultHandler *)v15 retainedFulfillAggregateFaultForObject:v9 andRelationship:managedObjectContext withContext:?];
      if ([v16 count])
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [NSManagedObjectContext _retainedObjectWithID:managedObjectContext optionalHandler:*(*(&v32 + 1) + 8 * j) withInlineStorage:0];
              CFSetAddValue(self->_realSet, v21);
            }

            v18 = [v16 countByEnumeratingWithState:&v32 objects:v38 count:16];
          }

          while (v18);
        }
      }

      v5 = v26;
    }

    if (ptr)
    {
      v23 = *ptr;
      v22 = ptr[1];
      if (*ptr)
      {
        [self->_realSet unionSet:*ptr];
      }

      if (v22)
      {
        [self->_realSet minusSet:v22];
      }

      PF_FREE_OBJECT_ARRAY(ptr);
    }

    flags = self->_flags;
    self->_flags = (flags & 0xFFFFFFFE);
    [(NSManagedObject *)self->_source _commitPhotoshoperyForRelationshipAtIndex:self newValue:?];
  }

  objc_autoreleasePoolPop(v5);
  v25 = *MEMORY[0x1E69E9840];
}

- (void)turnIntoFault
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  realSet = self->_realSet;
  if (realSet && (*&self->_flags & 1) != 0)
  {

    PF_FREE_OBJECT_ARRAY(self->_realSet);
  }

  else
  {
  }

  self->_realSet = 0;
  *&self->_flags |= 1u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {
    v11 = [[_NSFaultingMutableSet alloc] initWithSource:self->_source forRelationship:[(_NSFaultingMutableSet *)self relationship] asFault:1];
    realSet = self->_realSet;
    if (realSet)
    {
      v13 = PF_ALLOCATE_OBJECT_ARRAY(2);
      *v13 = [*realSet mutableCopyWithZone:zone];
      v13[1] = [realSet[1] mutableCopyWithZone:zone];
      *(v11 + 2) = v13;
    }

    *(v11 + 3) = *(v11 + 3) & 0xFFFFFFFD | (2 * ((*&self->_flags >> 1) & 1));
    goto LABEL_19;
  }

  Count = CFSetGetCount(self->_realSet);
  if (Count)
  {
    v6 = Count;
    callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
    v7 = *(MEMORY[0x1E695E9F8] + 24);
    if (Count >= 0x201)
    {
      v8 = 1;
    }

    else
    {
      v8 = Count;
    }

    callBacks.equal = 0;
    callBacks.hash = 0;
    callBacks.copyDescription = v7;
    v9 = (8 * v8 + 15) & 0xFFFFFFFFFFFFFFF0;
    v10 = (&v18 - v9);
    if (Count > 0x200)
    {
      v10 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v18 - v9, 8 * Count);
    }

    CFSetGetValues(self->_realSet, v10);
    v11 = CFSetCreate(*MEMORY[0x1E695E480], v10, v6, &callBacks);
    if (v6 >= 0x201)
    {
      NSZoneFree(0, v10);
    }

LABEL_19:
    v17 = *MEMORY[0x1E69E9840];
    return v11;
  }

  v14 = NSSet_EmptySet;
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  [(_NSFaultingMutableSet *)self willRead];
  v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:CFSetGetCount(self->_realSet)];
  [v4 setSet:self->_realSet];
  return v4;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  flags = self->_flags;
  v5 = MEMORY[0x1E696AEC0];
  name = [(NSPropertyDescription *)[(_NSFaultingMutableSet *)self relationship] name];
  source = self->_source;
  if (*&flags)
  {
    v8 = [v5 stringWithFormat:@"Relationship '%@' fault on managed object (%p) %@", name, self->_source, source, v12];
  }

  else
  {
    v8 = [v5 stringWithFormat:@"Relationship '%@' on managed object (%p) %@ with objects %@", name, source, source, objc_msgSend(self->_realSet, "description")];
  }

  v9 = v8;
  v10 = v8;
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)descriptionWithLocale:(id)locale
{
  v5 = objc_autoreleasePoolPush();
  flags = self->_flags;
  v7 = MEMORY[0x1E696AEC0];
  name = [(NSPropertyDescription *)[(_NSFaultingMutableSet *)self relationship] name];
  source = self->_source;
  if (*&flags)
  {
    v10 = [v7 stringWithFormat:@"Relationship '%@' fault on managed object (%p) %@", name, self->_source, source, v14];
  }

  else
  {
    v10 = [v7 stringWithFormat:@"Relationship '%@' on managed object (%p) %@ with objects %@", name, source, source, objc_msgSend(self->_realSet, "descriptionWithLocale:", locale)];
  }

  v11 = v10;
  v12 = v10;
  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)member:(id)member
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {
    realSet = self->_realSet;
    if (realSet)
    {
      result = [*realSet member:member];
      if (result)
      {
        return result;
      }
    }

    [(_NSFaultingMutableSet *)self willRead];
  }

  v7 = self->_realSet;

  return CFSetGetValue(v7, member);
}

- (void)addObject:(id)object
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;
  if (*&self->_flags)
  {
    if (!realSet)
    {
      realSet = PF_ALLOCATE_OBJECT_ARRAY(2);
      *realSet = 0;
      realSet[1] = 0;
      self->_realSet = realSet;
    }

    v7 = *realSet;
    if (!*realSet)
    {
      v9.version = *MEMORY[0x1E695E9F8];
      *&v9.retain = *(MEMORY[0x1E695E9F8] + 8);
      v8 = *(MEMORY[0x1E695E9F8] + 24);
      v9.equal = 0;
      v9.hash = 0;
      v9.copyDescription = v8;
      v7 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v9);
      *realSet = v7;
    }

    [(__CFSet *)v7 addObject:object];
    [realSet[1] removeObject:object];
  }

  else
  {
    v6 = self->_realSet;

    CFSetAddValue(v6, object);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet countByEnumeratingWithState:state objects:objects count:count];
}

- (void)enumerateObjectsWithOptions:(unint64_t)options usingBlock:(id)block
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet enumerateObjectsWithOptions:options usingBlock:block];
}

- (id)objectsWithOptions:(unint64_t)options passingTest:(id)test
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectsWithOptions:options passingTest:test];
}

- (id)objectEnumerator
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectEnumerator];
}

- (void)getObjects:(id *)objects
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  CFSetGetValues(realSet, objects);
}

- (id)anyObject
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {
    realSet = self->_realSet;
    if (realSet && [*realSet count])
    {
      p_realSet = self->_realSet;
      goto LABEL_9;
    }

    [(_NSFaultingMutableSet *)self willRead];
  }

  p_realSet = &self->_realSet;
LABEL_9:
  v5 = *p_realSet;

  return [v5 anyObject];
}

- (BOOL)containsObject:(id)object
{
  [(_NSFaultingMutableSet *)self willRead];
  if (*&self->_flags)
  {
    realSet = self->_realSet;
    if (realSet && ([*realSet containsObject:object] & 1) != 0)
    {
      return 1;
    }

    [(_NSFaultingMutableSet *)self willRead];
  }

  return CFSetContainsValue(self->_realSet, object) != 0;
}

- (BOOL)intersectsSet:(id)set
{
  if (set == self)
  {
    return 1;
  }

  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet intersectsSet:set];
}

- (BOOL)isEqualToSet:(id)set
{
  if (set == self)
  {
    return 1;
  }

  if (*&self->_flags)
  {
    if ([set isFault])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        source = self->_source;
        if (source == [set source])
        {
          relationship = [(_NSFaultingMutableSet *)self relationship];
          if (relationship == [set relationship])
          {
            return 1;
          }
        }
      }
    }
  }

  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet isEqualToSet:set];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(isNSSet) = 1;
  }

  else
  {
    isNSSet = [equal isNSSet];
    if (isNSSet)
    {

      LOBYTE(isNSSet) = [(_NSFaultingMutableSet *)self isEqualToSet:equal];
    }
  }

  return isNSSet;
}

- (BOOL)_isIdenticalFault:(id)fault
{
  if (fault == self)
  {
    return 1;
  }

  if (*&self->_flags)
  {
    if ([fault isFault])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        source = self->_source;
        if (source == [fault source])
        {
          relationship = [(_NSFaultingMutableSet *)self relationship];
          if (relationship == [fault relationship])
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

- (BOOL)isSubsetOfSet:(id)set
{
  if (set == self)
  {
    return 1;
  }

  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet isSubsetOfSet:set];
}

- (void)makeObjectsPerformSelector:(SEL)selector
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet makeObjectsPerformSelector:selector];
}

- (void)makeObjectsPerformSelector:(SEL)selector withObject:(id)object
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet makeObjectsPerformSelector:selector withObject:object];
}

- (void)removeObject:(id)object
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;
  if (*&self->_flags)
  {
    if (!realSet)
    {
      realSet = PF_ALLOCATE_OBJECT_ARRAY(2);
      *realSet = 0;
      realSet[1] = 0;
      self->_realSet = realSet;
    }

    if (!realSet[1])
    {
      v8.version = *MEMORY[0x1E695E9F8];
      *&v8.retain = *(MEMORY[0x1E695E9F8] + 8);
      v7 = *(MEMORY[0x1E695E9F8] + 24);
      v8.equal = 0;
      v8.hash = 0;
      v8.copyDescription = v7;
      realSet[1] = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v8);
    }

    [*realSet removeObject:object];
    [realSet[1] addObject:object];
  }

  else
  {
    v6 = self->_realSet;

    CFSetRemoveValue(v6, object);
  }
}

- (void)addObjectsFromArray:(id)array
{
  v20 = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableSet *)self willRead];
  if (*&self->_flags)
  {
    realSet = self->_realSet;
    if (!realSet)
    {
      realSet = PF_ALLOCATE_OBJECT_ARRAY(2);
      *realSet = 0;
      realSet[1] = 0;
      self->_realSet = realSet;
    }

    v10 = *realSet;
    if (!*realSet)
    {
      callBacks.version = *MEMORY[0x1E695E9F8];
      *&callBacks.retain = *(MEMORY[0x1E695E9F8] + 8);
      v11 = *(MEMORY[0x1E695E9F8] + 24);
      callBacks.equal = 0;
      callBacks.hash = 0;
      callBacks.copyDescription = v11;
      v10 = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
      *realSet = v10;
    }

    [(__CFSet *)v10 addObjectsFromArray:array];
    if ([realSet[1] count])
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:array];
      [realSet[1] minusSet:v12];
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [array countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(array);
          }

          CFSetAddValue(self->_realSet, *(*(&v14 + 1) + 8 * i));
        }

        v6 = [array countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(id)set
{
  if (set != self)
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet intersectSet:set];
  }
}

- (void)minusSet:(id)set
{
  if (set == self)
  {

    [(_NSFaultingMutableSet *)self removeAllObjects];
  }

  else
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet minusSet:set];
  }
}

- (void)unionSet:(id)set
{
  if (set != self)
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet unionSet:set];
  }
}

- (void)setSet:(id)set
{
  if (set != self)
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet setSet:set];
  }
}

- (void)setValue:(id)value forKey:(id)key
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet setValue:value forKey:key];
}

- (id)valueForKey:(id)key
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKey:key];
}

- (id)valueForKeyPath:(id)path
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKeyPath:path];
}

@end