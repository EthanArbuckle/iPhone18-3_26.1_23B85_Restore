@interface _NSFaultingMutableSet
- (BOOL)_isIdenticalFault:(id)a3;
- (BOOL)containsObject:(id)a3;
- (BOOL)intersectsSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSet:(id)a3;
- (BOOL)isSubsetOfSet:(id)a3;
- (_NSFaultingMutableSet)initWithSource:(id)a3 destinations:(id)a4 forRelationship:(id)a5 inContext:(id)a6;
- (_NSFaultingMutableSet)initWithSource:(id)a3 forRelationship:(id)a4 asFault:(BOOL)a5;
- (id)allObjects;
- (id)anyObject;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionWithLocale:(id)a3;
- (id)member:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectEnumerator;
- (id)objectsWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)valueForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3;
- (void)intersectSet:(id)a3;
- (void)makeObjectsPerformSelector:(SEL)a3;
- (void)makeObjectsPerformSelector:(SEL)a3 withObject:(id)a4;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)setSet:(id)a3;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)turnIntoFault;
- (void)unionSet:(id)a3;
- (void)willRead;
- (void)willReadWithContents:(id)a3;
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

- (_NSFaultingMutableSet)initWithSource:(id)a3 forRelationship:(id)a4 asFault:(BOOL)a5
{
  v5 = a5;
  v15.receiver = self;
  v15.super_class = _NSFaultingMutableSet;
  v8 = [(_NSFaultingMutableSet *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_source = a3;
    if ([a4 _isRelationship])
    {
      v10 = *&v9->_flags & 0xFFFFFFFD | (2 * (([a4 deleteRule] - 1) < 2));
    }

    else
    {
      v10 = *&v9->_flags & 0xFFFFFFFD;
    }

    v9->_flags = v10;
    v9->_flags = (v10 & 0xFFFF0003);
    v11 = *&v9->_flags | ([a4 _entitysReferenceID] << 16);
    if (v5)
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

- (_NSFaultingMutableSet)initWithSource:(id)a3 destinations:(id)a4 forRelationship:(id)a5 inContext:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(_NSFaultingMutableSet *)self initWithSource:a3 forRelationship:a5 asFault:0, a6];
  if (v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(a4);
          }

          CFSetAddValue(v7->_realSet, *(*(&v14 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [a4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)willReadWithContents:(id)a3
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
    v8 = [(NSManagedObject *)self->_source managedObjectContext];
    v9 = *([(NSManagedObject *)self->_source entity][96] + 24 + 8 * *(&self->_flags + 1));
    self->_realSet = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
    ptr = realSet;
    if (a3)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v10 = [a3 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
              objc_enumerationMutation(a3);
            }

            CFSetAddValue(self->_realSet, *(*(&v28 + 1) + 8 * i));
          }

          v11 = [a3 countByEnumeratingWithState:&v28 objects:v37 count:16];
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

      v16 = [(NSFaultHandler *)v15 retainedFulfillAggregateFaultForObject:v9 andRelationship:v8 withContext:?];
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

              v21 = [NSManagedObjectContext _retainedObjectWithID:v8 optionalHandler:*(*(&v32 + 1) + 8 * j) withInlineStorage:0];
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

- (id)copyWithZone:(_NSZone *)a3
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
      *v13 = [*realSet mutableCopyWithZone:a3];
      v13[1] = [realSet[1] mutableCopyWithZone:a3];
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

- (id)mutableCopyWithZone:(_NSZone *)a3
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
  v6 = [(NSPropertyDescription *)[(_NSFaultingMutableSet *)self relationship] name];
  source = self->_source;
  if (*&flags)
  {
    v8 = [v5 stringWithFormat:@"Relationship '%@' fault on managed object (%p) %@", v6, self->_source, source, v12];
  }

  else
  {
    v8 = [v5 stringWithFormat:@"Relationship '%@' on managed object (%p) %@ with objects %@", v6, source, source, objc_msgSend(self->_realSet, "description")];
  }

  v9 = v8;
  v10 = v8;
  objc_autoreleasePoolPop(v3);

  return v9;
}

- (id)descriptionWithLocale:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  flags = self->_flags;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(NSPropertyDescription *)[(_NSFaultingMutableSet *)self relationship] name];
  source = self->_source;
  if (*&flags)
  {
    v10 = [v7 stringWithFormat:@"Relationship '%@' fault on managed object (%p) %@", v8, self->_source, source, v14];
  }

  else
  {
    v10 = [v7 stringWithFormat:@"Relationship '%@' on managed object (%p) %@ with objects %@", v8, source, source, objc_msgSend(self->_realSet, "descriptionWithLocale:", a3)];
  }

  v11 = v10;
  v12 = v10;
  objc_autoreleasePoolPop(v5);

  return v11;
}

- (id)member:(id)a3
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
      result = [*realSet member:a3];
      if (result)
      {
        return result;
      }
    }

    [(_NSFaultingMutableSet *)self willRead];
  }

  v7 = self->_realSet;

  return CFSetGetValue(v7, a3);
}

- (void)addObject:(id)a3
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

    [(__CFSet *)v7 addObject:a3];
    [realSet[1] removeObject:a3];
  }

  else
  {
    v6 = self->_realSet;

    CFSetAddValue(v6, a3);
  }
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet enumerateObjectsWithOptions:a3 usingBlock:a4];
}

- (id)objectsWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectsWithOptions:a3 passingTest:a4];
}

- (id)objectEnumerator
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectEnumerator];
}

- (void)getObjects:(id *)a3
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  CFSetGetValues(realSet, a3);
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

- (BOOL)containsObject:(id)a3
{
  [(_NSFaultingMutableSet *)self willRead];
  if (*&self->_flags)
  {
    realSet = self->_realSet;
    if (realSet && ([*realSet containsObject:a3] & 1) != 0)
    {
      return 1;
    }

    [(_NSFaultingMutableSet *)self willRead];
  }

  return CFSetContainsValue(self->_realSet, a3) != 0;
}

- (BOOL)intersectsSet:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet intersectsSet:a3];
}

- (BOOL)isEqualToSet:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (*&self->_flags)
  {
    if ([a3 isFault])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        source = self->_source;
        if (source == [a3 source])
        {
          v6 = [(_NSFaultingMutableSet *)self relationship];
          if (v6 == [a3 relationship])
          {
            return 1;
          }
        }
      }
    }
  }

  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet isEqualToSet:a3];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isNSSet];
    if (v5)
    {

      LOBYTE(v5) = [(_NSFaultingMutableSet *)self isEqualToSet:a3];
    }
  }

  return v5;
}

- (BOOL)_isIdenticalFault:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (*&self->_flags)
  {
    if ([a3 isFault])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        source = self->_source;
        if (source == [a3 source])
        {
          v6 = [(_NSFaultingMutableSet *)self relationship];
          if (v6 == [a3 relationship])
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

- (BOOL)isSubsetOfSet:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet isSubsetOfSet:a3];
}

- (void)makeObjectsPerformSelector:(SEL)a3
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet makeObjectsPerformSelector:a3];
}

- (void)makeObjectsPerformSelector:(SEL)a3 withObject:(id)a4
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet makeObjectsPerformSelector:a3 withObject:a4];
}

- (void)removeObject:(id)a3
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

    [*realSet removeObject:a3];
    [realSet[1] addObject:a3];
  }

  else
  {
    v6 = self->_realSet;

    CFSetRemoveValue(v6, a3);
  }
}

- (void)addObjectsFromArray:(id)a3
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

    [(__CFSet *)v10 addObjectsFromArray:a3];
    if ([realSet[1] count])
    {
      v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a3];
      [realSet[1] minusSet:v12];
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
            objc_enumerationMutation(a3);
          }

          CFSetAddValue(self->_realSet, *(*(&v14 + 1) + 8 * i));
        }

        v6 = [a3 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)intersectSet:(id)a3
{
  if (a3 != self)
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet intersectSet:a3];
  }
}

- (void)minusSet:(id)a3
{
  if (a3 == self)
  {

    [(_NSFaultingMutableSet *)self removeAllObjects];
  }

  else
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet minusSet:a3];
  }
}

- (void)unionSet:(id)a3
{
  if (a3 != self)
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet unionSet:a3];
  }
}

- (void)setSet:(id)a3
{
  if (a3 != self)
  {
    [(_NSFaultingMutableSet *)self willRead];
    realSet = self->_realSet;

    [realSet setSet:a3];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  [realSet setValue:a3 forKey:a4];
}

- (id)valueForKey:(id)a3
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKey:a3];
}

- (id)valueForKeyPath:(id)a3
{
  [(_NSFaultingMutableSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKeyPath:a3];
}

@end