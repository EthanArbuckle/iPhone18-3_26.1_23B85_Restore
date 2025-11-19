@interface _NSFaultingMutableOrderedSet
- (BOOL)_isIdenticalFault:(id)a3;
- (BOOL)_reorderObjectsToLocationsByOrderKey:(id)a3 error:(id *)a4;
- (BOOL)containsObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrderedSet:(id)a3;
- (_BYTE)willChange;
- (_NSFaultingMutableOrderedSet)initWithOrderedSet:(id)a3;
- (_NSFaultingMutableOrderedSet)initWithSource:(id)a3 destinations:(id)a4 forRelationship:(id)a5 inContext:(id)a6;
- (_NSFaultingMutableOrderedSet)initWithSource:(id)a3 forRelationship:(id)a4 asFault:(BOOL)a5;
- (id)_newOrderKeys;
- (id)_orderedObjectsAndKeys;
- (id)_updateOrderKeysFromOrderOfObjectIDs:(id *)result;
- (id)allObjects;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionWithLocale:(id)a3;
- (id)indexesOfObjectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (id)indexesOfObjectsWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectEnumerator;
- (id)valueForKey:(id)a3;
- (id)valueForKeyPath:(id)a3;
- (uint64_t)_orderKeyForObject:(uint64_t)a1;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)indexOfObject:(id)a3;
- (unint64_t)indexOfObjectAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5;
- (unint64_t)indexOfObjectWithOptions:(unint64_t)a3 passingTest:(id)a4;
- (void)_populateOrderKeysUsingSnapshot:(void *)a3 orderKeys:(void *)a4 newIndexes:(void *)a5 reorderedIndexes:;
- (void)_setProcessingIdempotentKVO:(BOOL)a3;
- (void)addObject:(id)a3;
- (void)addObjects:(const void *)a3 count:(unint64_t)a4;
- (void)addObjectsFromArray:(id)a3;
- (void)dealloc;
- (void)enumerateObjectsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5;
- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)getObjects:(id *)a3;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(const void *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)minusOrderedSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsInArray:(id)a3;
- (void)removeObjectsInRange:(_NSRange)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)setValue:(id)a3 forKey:(id)a4;
- (void)sortRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5;
- (void)turnIntoFault;
- (void)unionOrderedSet:(id)a3;
- (void)unionSet:(id)a3;
- (void)willRead;
- (void)willReadWithContents:(id)a3;
@end

@implementation _NSFaultingMutableOrderedSet

- (void)willRead
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {

    [(_NSFaultingMutableOrderedSet *)self willReadWithContents:0];
  }
}

- (unint64_t)count
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet count];
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

  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    v5 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v5 = malloc_default_zone();
      orderKeys = self->_orderKeys;
    }

    malloc_zone_free(v5, orderKeys);
    self->_orderKeys = 0;
  }

  self->_grottyHack = 0;
  self->_realSet = 0;
  self->_source = 0;

  self->_forcedKeys = 0;

  _PFDeallocateObject(self);
}

- (_NSFaultingMutableOrderedSet)initWithOrderedSet:(id)a3
{
  v7.receiver = self;
  v7.super_class = _NSFaultingMutableOrderedSet;
  v4 = [(_NSFaultingMutableOrderedSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_source = 0;
    v4->_realSet = a3;
    *&v5->_flags &= 0xFFE0u;
  }

  return v5;
}

- (_NSFaultingMutableOrderedSet)initWithSource:(id)a3 forRelationship:(id)a4 asFault:(BOOL)a5
{
  v5 = a5;
  v14.receiver = self;
  v14.super_class = _NSFaultingMutableOrderedSet;
  v8 = [(_NSFaultingMutableOrderedSet *)&v14 init];
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
    v9->_flags = (v10 & 0xFFFF001F);
    v11 = *&v9->_flags & 0xFFE3 | ([a4 _entitysReferenceID] << 16);
    if (v5)
    {
      v12 = 0;
      v9->_flags = (v11 | 1);
    }

    else
    {
      v9->_flags = (v11 & 0xFFFFFFE2);
      v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    v9->_realSet = v12;
    v9->_orderKeys = 0;
  }

  return v9;
}

- (_NSFaultingMutableOrderedSet)initWithSource:(id)a3 destinations:(id)a4 forRelationship:(id)a5 inContext:(id)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [(_NSFaultingMutableOrderedSet *)self initWithSource:a3 forRelationship:a5 asFault:0, a6];
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

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  flags = self->_flags;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name];
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
  v8 = [(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name];
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

- (void)willReadWithContents:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  if (*&self->_flags)
  {
    realSet = self->_realSet;
    v6 = [(NSManagedObject *)self->_source managedObjectContext];
    v7 = [(NSManagedObject *)self->_source entity];
    if (a3)
    {
      v8 = [a3 count];
      v9 = MEMORY[0x1EEE9AC00](v8);
      v12 = &v28 - v11;
      if (v9 > 0x200)
      {
        v12 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v28 - v11, 8 * v10);
      }

      [a3 getObjects:v12 range:{0, v8}];
      self->_realSet = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v12 count:v8];
      if (v8 >= 0x201)
      {
        NSZoneFree(0, v12);
      }

      if (!realSet)
      {
        goto LABEL_30;
      }
    }

    else
    {
      isa = v7->_properties[*(&self->_flags + 1) + 3].super.super.isa;
      source = self->_source;
      if (source)
      {
        v15 = _insertion_fault_handler;
      }

      else
      {
        v15 = 0;
      }

      v16 = [(NSFaultHandler *)v15 retainedFulfillAggregateFaultForObject:isa andRelationship:v6 withContext:?];
      v17 = [v16 count];
      if (v17)
      {
        v18 = v17;
        v28 = &v28;
        v19 = MEMORY[0x1EEE9AC00](v17);
        v21 = &v28 - v20;
        if (v19 > 0x200)
        {
          v21 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(&v28 - v20, 8 * v19);
        }

        [v16 getObjects:{v21, v28, v29}];
        for (i = 0; i != v18; ++i)
        {
          *&v21[8 * i] = [NSManagedObjectContext _retainedObjectWithID:v6 optionalHandler:*&v21[8 * i] withInlineStorage:0];
        }

        v23 = 0;
        self->_realSet = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v21 count:v18];
        do
        {
        }

        while (v18 != v23);
        if (v18 >= 0x201)
        {
          NSZoneFree(0, v21);
        }
      }

      else
      {
        self->_realSet = objc_alloc_init(MEMORY[0x1E695DFA0]);
      }

      if (!realSet)
      {
        goto LABEL_30;
      }
    }

    v25 = *realSet;
    v24 = realSet[1];
    if (*realSet)
    {
      [self->_realSet unionSet:*realSet];
    }

    if (v24)
    {
      [self->_realSet minusSet:v24];
    }

    PF_FREE_OBJECT_ARRAY(realSet);
LABEL_30:
    flags = self->_flags;
    self->_flags = (flags & 0xFFFFFFFE);
    [(NSManagedObject *)self->_source _commitPhotoshoperyForRelationshipAtIndex:self newValue:?];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (_BYTE)willChange
{
  if (result)
  {
    v1 = result;
    result = [result willRead];
    if ((v1[12] & 0x10) != 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot mutate an immutable faulting NSOrderedSet" userInfo:0]);
    }
  }

  return result;
}

- (void)_setProcessingIdempotentKVO:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_flags = (*&self->_flags & 0xFFFFFFFB | v3);
}

- (id)_updateOrderKeysFromOrderOfObjectIDs:(id *)result
{
  v80 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if ([result[2] count])
    {
      v4 = [v3[2] count];
      if (!v3[4])
      {
        v5 = v4;
        v6 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v6 = malloc_default_zone();
        }

        v3[4] = malloc_type_zone_calloc(v6, v5, 4uLL, 0x100004052888210uLL);
      }

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v7 = [a2 count];
      v8 = MEMORY[0x1EEE9AC00](v7);
      v11 = (v34 - v10);
      v12 = 8 * v9;
      v35 = v8;
      v36 = v3;
      v34[1] = v13;
      if (v8 > 0x200)
      {
        v11 = NSAllocateScannedUncollectable();
        v15 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v34 - v10, 8 * v9);
        MEMORY[0x1EEE9AC00](v14);
        v15 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v15, v12);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v16 = [a2 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v43;
        do
        {
          v20 = 0;
          v21 = v18;
          do
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(a2);
            }

            v22 = *(*(&v42 + 1) + 8 * v20);
            v18 = v21 + 1;
            *&v15[8 * v21] = v21 + 1;
            v11[v21] = v22;
            ++v20;
            ++v21;
          }

          while (v17 != v20);
          v17 = [a2 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v17);
      }

      v23 = _PFStackAllocatorCreate(&v48, 1024);
      memset(&v41, 0, 24);
      *&v41.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
      v41.hash = *(MEMORY[0x1E695E9D8] + 40);
      v24 = CFDictionaryCreate(v23, v11, v15, v35, &v41, 0);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = v36[2];
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = *v38;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(v25);
            }

            Value = CFDictionaryGetValue(v24, [*(*(&v37 + 1) + 8 * i) objectID]);
            if (Value)
            {
              *(v36[4] + v28) = *(a2[4] + 4 * (Value - 1));
            }

            ++v28;
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v27);
      }

      if (v35 >= 0x201)
      {
        NSZoneFree(0, v15);
        NSZoneFree(0, v11);
      }

      v3 = v36;
      if (*(&v49 + 1))
      {
        if (v24)
        {
          CFRelease(v24);
        }
      }

      else
      {
        *(&v48 + 1) = v48;
      }
    }

    v32 = v3[5];
    if (v32)
    {
    }

    result = a2;
    v3[5] = result;
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_populateOrderKeysUsingSnapshot:(void *)a3 orderKeys:(void *)a4 newIndexes:(void *)a5 reorderedIndexes:
{
  v92 = a3;
  v96 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_161;
  }

  v8 = result;
  result = [*(result + 2) count];
  v9 = result;
  if (a5)
  {
    v10 = *a4;
    v11 = *a5;
    if (v8[4])
    {
      v12 = 1;
    }

    else
    {
      v12 = result == 0;
    }

    if (v12)
    {
      result = memset(*a5, 1, result);
      if (v9)
      {
        v13 = v8[4];
        do
        {
          v14 = *v13++;
          *v10++ = v14;
          --v9;
        }

        while (v9);
      }

      goto LABEL_161;
    }
  }

  else
  {
    if (v8[4])
    {
      v15 = 1;
    }

    else
    {
      v15 = result == 0;
    }

    if (v15)
    {
      goto LABEL_161;
    }

    v11 = 0;
    v10 = 0;
  }

  v16 = [a2 count];
  v17 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v17 = malloc_default_zone();
  }

  v18 = v9;
  result = malloc_type_zone_calloc(v17, v9, 4uLL, 0x100004052888210uLL);
  v8[4] = result;
  v88 = a2;
  if (!a2 || !v92 || !v16 || (v19 = v16, result = [v92 count], v16 != result))
  {
    if ((v9 + 1) < 0x400000)
    {
      if (!v9)
      {
        goto LABEL_31;
      }

      v23 = 1024;
    }

    else
    {
      v23 = 0xFFFFFFFF / (v9 + 1);
    }

    v24 = 0;
    v25 = 2 * v23;
    do
    {
      *(v8[4] + 4 * v24) = v25;
      v25 += v23;
      ++v24;
    }

    while (v9 != v24);
LABEL_31:
    if (a5)
    {
      result = memset(v11, 1, v9);
      if (v9)
      {
        v26 = v8[4];
        do
        {
          v27 = *v26++;
          *v10++ = v27;
          --v18;
        }

        while (v18);
      }
    }

    goto LABEL_161;
  }

  v89 = v11;
  v87 = &v85;
  (MEMORY[0x1EEE9AC00])();
  v22 = &v85 - v20;
  v86 = v21;
  if (v9 > 0x200uLL)
  {
    v22 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v85 - v20, 8 * v21);
  }

  v28 = v8[2];
  v93 = v22;
  [v28 getObjects:v22 range:{0, v9}];
  v29 = 0;
  if (v16 >= 6)
  {
    memset(&keyCallBacks, 0, 24);
    *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
    keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
    memset(&valueCallBacks, 0, 24);
    *&valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
    MEMORY[0x1EEE9AC00](0);
    v31 = (&v85 - v30);
    if (v16 > 0x200uLL)
    {
      v31 = NSAllocateScannedUncollectable();
      [v88 getObjects:v31 range:{0, v16}];
      v33 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v85 - v30, 8 * v16);
      v32 = [v88 getObjects:v31 range:{0, v16}];
      MEMORY[0x1EEE9AC00](v32);
      v33 = &v85 - ((8 * v16 + 15) & 0xFFFFFFFF0);
      bzero(v33, 8 * v19);
    }

    [v92 getObjects:v33 range:{0, v19}];
    v29 = CFDictionaryCreate(*MEMORY[0x1E695E480], v31, v33, v19, &keyCallBacks, &valueCallBacks);
    if (v19 >= 0x201)
    {
      v34 = v29;
      NSZoneFree(0, v31);
      NSZoneFree(0, v33);
      v29 = v34;
    }
  }

  v90 = v29;
  v91 = a5;
  if (v9)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 1;
    v39 = v93;
    while (1)
    {
      v40 = *&v39[8 * v35];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v42 = *&v39[8 * v35];
      if ((isKindOfClass & 1) == 0)
      {
        v42 = [*&v39[8 * v35] objectID];
      }

      v43 = v8[6];
      if (!v43)
      {
        goto LABEL_52;
      }

      v44 = [v43 objectForKey:v42];
      v45 = v44;
      if (v91 && v44)
      {
        v89[v35] = 1;
        goto LABEL_58;
      }

      if (!v44)
      {
LABEL_52:
        if (v90)
        {
          Value = CFDictionaryGetValue(v90, v42);
        }

        else
        {
          v47 = [v88 indexOfObject:v42];
          if (v47 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v45 = 0;
            goto LABEL_58;
          }

          Value = [v92 objectAtIndex:v47];
        }

        v45 = Value;
      }

LABEL_58:
      v48 = [v45 unsignedIntValue];
      if (v45 && v48)
      {
        if (v37)
        {
          v49 = v37 < v48;
        }

        else
        {
          v49 = 1;
        }

        v50 = v49;
        if (v38)
        {
          v37 = v48;
        }

        v38 &= v50;
        *(v8[4] + 4 * v35) = v48;
      }

      else
      {
        v38 &= v45 == 0;
        ++v36;
        if (v37)
        {
          ++v37;
        }

        else
        {
          v37 = 0;
        }
      }

      v39 = v93;
      if (v9 == ++v35)
      {
        goto LABEL_75;
      }
    }
  }

  v36 = 0;
  v38 = 1;
  v39 = v93;
LABEL_75:
  if (v90)
  {
    CFRelease(v90);
  }

  v51 = v8[6];
  v52 = v89;
  if (v51)
  {

    v8[6] = 0;
  }

  if (v36 == v9)
  {
    v53 = 1;
  }

  else
  {
    v53 = v38;
  }

  if ((v53 & 1) == 0)
  {
    v54 = 0;
    v55 = 0;
    v56 = 2;
    v57 = 1;
    while (1)
    {
      v58 = v57;
      v59 = (preserveOrderKeyFuncs[v54])(v8[4], v9, v55, 1);
      if (v59 == ~v36 + v9)
      {
        break;
      }

      v57 = 0;
      v60 = v59 <= v55;
      if (v59 <= v55)
      {
        v55 = v55;
      }

      else
      {
        v55 = v59;
      }

      if (!v60)
      {
        v56 = v54;
      }

      v54 = 1;
      if ((v58 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    v56 = v54;
LABEL_93:
    if (v56 <= 1)
    {
      v61 = v56;
    }

    else
    {
      v61 = 0;
    }

    (preserveOrderKeyFuncs[v61])(v8[4], v9, v55, 0);
    v52 = v89;
    v39 = v93;
  }

  if (v9 >= 0x201uLL)
  {
    NSZoneFree(0, v39);
  }

  result = v91;
  if (!v9)
  {
LABEL_128:
    v70 = v86;
    if (result && v9)
    {
      goto LABEL_159;
    }

    goto LABEL_161;
  }

  v62 = 0;
  v63 = 0;
  v64 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v65 = v8[4];
    v66 = *(v65 + 4 * v62);
    if (v64 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v66)
      {
        v64 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }
    }

    else
    {
      if (!v66)
      {
        goto LABEL_125;
      }

      if (v64)
      {
        v63 = *(v65 + 4 * (v64 - 1));
        v67 = (v66 - v63) / (v62 - (v64 - 1));
        v68 = v67 + v63;
        if (!v67)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v62 >= v66 >> 10)
        {
          v67 = v66 / (v62 + 1);
        }

        else
        {
          v67 = 1024;
        }

        v68 = v66 - v67 * v62;
        if (!v67)
        {
LABEL_116:
          *(v65 + 4 * v62) = 0;
          goto LABEL_125;
        }
      }

      if (v64 && v67 == 1 && v66 - v63 == v62 - v64 + 1)
      {
        goto LABEL_116;
      }

      if (v64 < v62)
      {
        do
        {
          if (v68 <= 1)
          {
            v69 = 1;
          }

          else
          {
            v69 = v68;
          }

          *(v8[4] + 4 * v64) = v69;
          if (result)
          {
            v52[v64] = 1;
          }

          v68 = v69 + v67;
          ++v64;
        }

        while (v62 != v64);
      }

      v64 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_125:
    ++v62;
  }

  while (v62 != v9);
  if (v64)
  {
    if (v64 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_128;
    }

    v71 = v8[4];
    v72 = *(v71 + 4 * v64 - 4);
    if (v64 >= 1 && v64 + (v9 ^ 0xFFFFFFFFLL) <= v72)
    {
      v73 = v71 - 4;
      while (1)
      {
        v72 = *(v73 + 4 * v64);
        if (v72 && (v9 ^ 0xFFFFFFFFLL) + v64 >= v72)
        {
          break;
        }

        if (v64-- <= 1)
        {
          goto LABEL_140;
        }
      }
    }

    if ((v72 + ((v9 - v64) << 10)) < 0x100000000)
    {
      v76 = 1024;
    }

    else
    {
      v76 = (v72 ^ 0xFFFFFFFFLL) / (v9 - v64);
    }

    if (v9 > v64)
    {
      v81 = v76 + v72;
      if (v81 <= 1)
      {
        LODWORD(v81) = 1;
      }

      do
      {
        *(v8[4] + 4 * v64) = v81;
        if (result)
        {
          v52[v64] = 1;
        }

        ++v64;
        LODWORD(v81) = v81 + v76;
      }

      while (v9 != v64);
    }

    v70 = v86;
    if (result)
    {
LABEL_159:
      v82 = v8[4];
      do
      {
        v83 = *v82++;
        *v10++ = v83;
        --v70;
      }

      while (v70);
    }
  }

  else
  {
LABEL_140:
    if ((v9 + 1) < 0x400000)
    {
      v75 = 1024;
    }

    else
    {
      v75 = 0xFFFFFFFF / (v9 + 1);
    }

    v77 = 0;
    v78 = 2 * v75;
    do
    {
      *(v8[4] + 4 * v77) = v78;
      v78 += v75;
      ++v77;
    }

    while (v9 != v77);
    if (result)
    {
      result = memset(v52, 1, v9);
      v79 = v8[4];
      do
      {
        v80 = *v79++;
        *v10++ = v80;
        --v18;
      }

      while (v18);
    }
  }

LABEL_161:
  v84 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)_orderKeyForObject:(uint64_t)a1
{
  while (1)
  {
    if (!a1)
    {
      return 0;
    }

    v4 = [*(a1 + 16) indexOfObject:a2];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    a1 = *(a1 + 40);
    if (!a1)
    {
      return 0;
    }
  }

  if (!*(a1 + 32))
  {
    return 0;
  }

  v5 = v4;
  if (v4 >= [*(a1 + 16) count])
  {
    [objc_msgSend(MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Index of object > number of objects" userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a1, @"_NSFaultingMutableOrderedSet", "raise"}];
  }

  return *(*(a1 + 32) + 4 * v5);
}

- (id)_newOrderKeys
{
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_28;
  }

  v2 = [a1[2] count];
  v3 = v2;
  v4 = v1[4];
  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v2 == 0;
    }

    if (v6)
    {
      goto LABEL_27;
    }

    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          v18 = v3;
LABEL_30:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: nil order keys and %d objects in real set\n", buf, 8u);
        }
      }

      else if (v10)
      {
        *buf = 67109120;
        v18 = v3;
        goto LABEL_30;
      }
    }

    _NSCoreDataLog_console(1, "nil order keys and %d objects in real set", v3);
    objc_autoreleasePoolPop(v7);
LABEL_27:
    v1 = NSArray_EmptyArray;
    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](v2);
  v12 = &buf[-v11];
  if (v3 > 0x200)
  {
    v12 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&buf[-v11], 8 * v3);
  }

  v13 = 0;
  do
  {
    *&v12[8 * v13] = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v1[4] + v13)];
    ++v13;
  }

  while (v3 != v13);
  v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v12 count:v3];
  v14 = 0;
  do
  {
  }

  while (v3 != v14);
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v12);
  }

LABEL_28:
  v15 = *MEMORY[0x1E69E9840];
  return v1;
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
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  *&self->_flags |= 1u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (*&self->_flags)
  {
    v6 = [[_NSFaultingMutableOrderedSet alloc] initWithSource:self->_source forRelationship:[(_NSFaultingMutableOrderedSet *)self relationship] asFault:1];
    realSet = self->_realSet;
    if (realSet)
    {
      v10 = PF_ALLOCATE_OBJECT_ARRAY(2);
      *v10 = [*realSet mutableCopyWithZone:a3];
      v10[1] = [realSet[1] mutableCopyWithZone:a3];
      v6->_realSet = v10;
    }

    v6->_flags = (*&v6->_flags & 0xFFFFFFFD | (2 * ((*&self->_flags >> 1) & 1)));
    return v6;
  }

  if ([self->_realSet count])
  {
    v5 = [[_NSFaultingMutableOrderedSet alloc] initWithSource:self->_source forRelationship:[(_NSFaultingMutableOrderedSet *)self relationship] asFault:0];
    v6 = v5;
    v7 = self->_realSet;
    if (v7)
    {
      v8 = v5->_realSet;
      if (v8)
      {

        v7 = self->_realSet;
      }

      v6->_realSet = v7;
      *&self->_flags |= 8u;
      *&v6->_flags |= 0x10u;
    }

    return v6;
  }

  v12 = NSOrderedSet_EmptyOrderedSet;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  v4 = objc_alloc(MEMORY[0x1E695DFA0]);
  realSet = self->_realSet;

  return [v4 initWithOrderedSet:realSet];
}

- (id)objectAtIndex:(unint64_t)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectAtIndex:a3];
}

- (unint64_t)indexOfObject:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexOfObject:a3];
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if (self->_orderKeys && [self->_realSet indexOfObject:a3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    PF_FREE_OBJECT_ARRAY(self->_orderKeys);
    self->_orderKeys = 0;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v7 = [self->_realSet mutableCopy];

    self->_realSet = v7;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet insertObject:a3 atIndex:a4];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet countByEnumeratingWithState:a3 objects:a4 count:a5];
}

- (void)enumerateObjectsWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  [realSet enumerateObjectsWithOptions:a3 usingBlock:a4];
}

- (void)enumerateObjectsAtIndexes:(id)a3 options:(unint64_t)a4 usingBlock:(id)a5
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  [realSet enumerateObjectsAtIndexes:a3 options:a4 usingBlock:a5];
}

- (unint64_t)indexOfObjectWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexOfObjectWithOptions:a3 passingTest:a4];
}

- (unint64_t)indexOfObjectAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexOfObjectAtIndexes:a3 options:a4 passingTest:a5];
}

- (id)indexesOfObjectsWithOptions:(unint64_t)a3 passingTest:(id)a4
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexesOfObjectsWithOptions:a3 passingTest:a4];
}

- (id)indexesOfObjectsAtIndexes:(id)a3 options:(unint64_t)a4 passingTest:(id)a5
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet indexesOfObjectsAtIndexes:a3 options:a4 passingTest:a5];
}

- (id)objectEnumerator
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet objectEnumerator];
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  [realSet getObjects:a3 range:{location, length}];
}

- (void)getObjects:(id *)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;
  v6 = [realSet count];

  [realSet getObjects:a3 range:{0, v6}];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v6 = [self->_realSet mutableCopy];

    self->_realSet = v6;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet removeObjectAtIndex:a3];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if (self->_orderKeys)
  {
    v7 = [self->_realSet indexOfObject:a4];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL || v7 != a3)
    {
      PF_FREE_OBJECT_ARRAY(self->_orderKeys);
      self->_orderKeys = 0;
    }
  }

  if ((*&self->_flags & 8) != 0)
  {
    v9 = [self->_realSet mutableCopy];

    self->_realSet = v9;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet replaceObjectAtIndex:a3 withObject:a4];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if ((*&self->_flags & 8) != 0)
  {
    v7 = [self->_realSet mutableCopy];

    self->_realSet = v7;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;

  [realSet setValue:a3 forKey:a4];
}

- (id)valueForKey:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKey:a3];
}

- (id)valueForKeyPath:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet valueForKeyPath:a3];
}

- (BOOL)isEqualToOrderedSet:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  if (a3 == self || (*&self->_flags & 1) != 0 && [a3 isFault] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (source = self->_source, source == objc_msgSend(a3, "source")) && (v6 = -[_NSFaultingMutableOrderedSet relationship](self, "relationship"), v6 == objc_msgSend(a3, "relationship")))
  {
    v11 = 1;
  }

  else
  {
    v7 = [(_NSFaultingMutableOrderedSet *)self count];
    if (v7 == [a3 count])
    {
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      if (v7 >= 0x201)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      v10 = &v20 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v7 > 0x200)
      {
        v10 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v20 - ((8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v8);
      }

      [(_NSFaultingMutableOrderedSet *)self getObjects:v10];
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v20 = 0u;
      v12 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v21;
        while (2)
        {
          v16 = 0;
          v17 = &v10[8 * v14];
          v14 += v13;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(a3);
            }

            if (*&v17[8 * v16] != *(*(&v20 + 1) + 8 * v16))
            {
              v11 = 0;
              goto LABEL_31;
            }

            ++v16;
          }

          while (v13 != v16);
          v13 = [a3 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      v11 = 1;
LABEL_31:
      if (v7 >= 0x201)
      {
        NSZoneFree(0, v10);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isNSOrderedSet];
    if (v5)
    {

      LOBYTE(v5) = [(_NSFaultingMutableOrderedSet *)self isEqualToOrderedSet:a3];
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
          v6 = [(_NSFaultingMutableOrderedSet *)self relationship];
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

- (BOOL)containsObject:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willRead];
  realSet = self->_realSet;

  return [realSet containsObject:a3];
}

- (void)addObject:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if (self->_orderKeys && [self->_realSet indexOfObject:a3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    PF_FREE_OBJECT_ARRAY(self->_orderKeys);
    self->_orderKeys = 0;
  }

  if ((*&self->_flags & 8) != 0)
  {
    v5 = [self->_realSet mutableCopy];

    self->_realSet = v5;
    *&self->_flags &= ~8u;
  }

  realSet = self->_realSet;
  v7 = [realSet count];

  [realSet insertObject:a3 atIndex:v7];
}

- (void)addObjects:(const void *)a3 count:(unint64_t)a4
{
  v48 = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (a4 > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v13 = _PFStackAllocatorCreate(&v16, 1024);
    v14 = CFArrayCreate(v13, a3, a4, 0);
    self->_realSet = [_PFRoutines newOrderedSetFromCollection:v14 byAddingItems:?];
    if (*(&v17 + 1))
    {
      if (v14)
      {
        CFRelease(v14);
      }
    }

    else
    {
      *(&v16 + 1) = v16;
    }

    v15 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v8 = [self->_realSet mutableCopy];

      self->_realSet = v8;
      *&self->_flags &= ~8u;
    }

    v9 = self->_realSet;
    v10 = *MEMORY[0x1E69E9840];

    [v9 addObjects:a3 count:a4];
  }
}

- (void)addObjectsFromArray:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([a3 count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:a3 byAddingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 addObjectsFromArray:a3];
  }
}

- (void)insertObjects:(const void *)a3 count:(unint64_t)a4 atIndex:(unint64_t)a5
{
  v52 = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willChange];
  v9 = [self->_realSet count];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (v9 <= a5)
  {
    v14 = *MEMORY[0x1E69E9840];

    [(_NSFaultingMutableOrderedSet *)self addObjects:a3 count:a4];
  }

  else if (a4 > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = _PFStackAllocatorCreate(&v20, 1024);
    v18 = CFArrayCreate(v17, a3, a4, 0);
    self->_realSet = [_PFRoutines newOrderedSetFromCollection:v18 byInsertingItems:a5 atIndex:?];
    if (*(&v21 + 1))
    {
      if (v18)
      {
        CFRelease(v18);
      }
    }

    else
    {
      *(&v20 + 1) = v20;
    }

    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v11 = [self->_realSet mutableCopy];

      self->_realSet = v11;
      *&self->_flags &= ~8u;
    }

    v12 = self->_realSet;
    v13 = *MEMORY[0x1E69E9840];

    [v12 insertObjects:a3 count:a4 atIndex:a5];
  }
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  v8 = [a4 firstIndex];
  if (v8 >= [self->_realSet count])
  {

    [(_NSFaultingMutableOrderedSet *)self addObjectsFromArray:a3];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v9 = [self->_realSet mutableCopy];

      self->_realSet = v9;
      *&self->_flags &= ~8u;
    }

    realSet = self->_realSet;

    [realSet insertObjects:a3 atIndexes:a4];
  }
}

- (void)removeObjectsInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v24[1] = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (length > 2)
  {
    v10 = [self->_realSet count];
    if (location < v10)
    {
      v11 = v10;
      v12 = v10 + 1;
      v13 = 1;
      if (v10 + 1 > 1)
      {
        v13 = v10 + 1;
      }

      if (v12 >= 0x201)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v15 = v24 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v12 > 0x200)
      {
        v15 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(v24 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
      }

      [self->_realSet getObjects:v15];
      v16 = location + length >= v11;
      if (location + length >= v11)
      {
        v17 = v11;
      }

      else
      {
        v17 = location + length;
      }

      if (!v16)
      {
        v18 = location;
        v19 = v17;
        do
        {
          *&v15[8 * v18++] = *&v15[8 * v19];
          if (v18 >= v11)
          {
            break;
          }

          ++v19;
        }

        while (v19 < v11);
      }

      v20 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v15 count:v11 + location - v17];
      if (v12 >= 0x201)
      {
        NSZoneFree(0, v15);
      }

      realSet = self->_realSet;
      flags = self->_flags;
      if ((*&flags & 8) != 0)
      {
        self->_flags = (*&flags & 0xFFFFFFF7);
      }

      self->_realSet = v20;
    }

    v23 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v7 = [self->_realSet mutableCopy];

      self->_realSet = v7;
      *&self->_flags &= ~8u;
    }

    v8 = self->_realSet;
    v9 = *MEMORY[0x1E69E9840];

    [v8 removeObjectsInRange:{location, length}];
  }
}

- (void)removeAllObjects
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  flags = self->_flags;
  if ((*&flags & 8) != 0)
  {
    self->_flags = (*&flags & 0xFFFFFFF7);
  }

  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  self->_realSet = objc_alloc_init(MEMORY[0x1E695DFA0]);
}

- (void)removeObjectsInArray:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  v5 = [a3 count];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if (v5 > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v11 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:a3 byRemovingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v7 = [self->_realSet mutableCopy];

      self->_realSet = v7;
      *&self->_flags &= ~8u;
    }

    v8 = self->_realSet;

    [v8 removeObjectsInArray:a3];
  }
}

- (void)minusOrderedSet:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([a3 count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:a3 byRemovingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 minusOrderedSet:a3];
  }
}

- (void)unionOrderedSet:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([a3 count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:a3 byAddingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 unionOrderedSet:a3];
  }
}

- (void)minusSet:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([a3 count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:a3 byRemovingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 minusSet:a3];
  }
}

- (void)unionSet:(id)a3
{
  [(_NSFaultingMutableOrderedSet *)self willChange];
  orderKeys = self->_orderKeys;
  if (orderKeys)
  {
    PF_FREE_OBJECT_ARRAY(orderKeys);
    self->_orderKeys = 0;
  }

  if ([a3 count] > 2)
  {
    realSet = self->_realSet;
    flags = self->_flags;
    v10 = realSet;
    if ((*&flags & 8) != 0)
    {
      self->_flags = (*&flags & 0xFFFFFFF7);
      realSet = self->_realSet;
    }

    self->_realSet = [_PFRoutines newOrderedSetFromCollection:a3 byAddingItems:?];
  }

  else
  {
    if ((*&self->_flags & 8) != 0)
    {
      v6 = [self->_realSet mutableCopy];

      self->_realSet = v6;
      *&self->_flags &= ~8u;
    }

    v7 = self->_realSet;

    [v7 unionSet:a3];
  }
}

- (void)sortRange:(_NSRange)a3 options:(unint64_t)a4 usingComparator:(id)a5
{
  length = a3.length;
  location = a3.location;
  v36 = *MEMORY[0x1E69E9840];
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([(NSManagedObject *)self->_source managedObjectContext], a2);
  }

  v10 = 12;
  v11 = [*(-[NSManagedObject entity](self->_source "entity")[96] + 24 + 8 * *(&self->_flags + 1))];
  if ([(NSManagedObject *)self->_source hasFaultForRelationshipNamed:v11])
  {
    v12 = location;
    v13 = objc_alloc_init(NSFetchRequest);
    [(NSFetchRequest *)v13 setEntity:[(NSManagedObject *)self->_source entity]];
    -[NSFetchRequest setRelationshipKeyPathsForPrefetching:](v13, "setRelationshipKeyPathsForPrefetching:", [MEMORY[0x1E695DEC8] arrayWithObject:v11]);
    -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self == %@", -[NSManagedObject objectID](self->_source, "objectID")]);
    [(NSFetchRequest *)v13 setReturnsObjectsAsFaults:0];
    [(NSFetchRequest *)v13 setIncludesPendingChanges:0];
    if (!v13)
    {
LABEL_6:
      location = v12;
      goto LABEL_7;
    }

LABEL_5:
    [(NSManagedObjectContext *)[(NSManagedObject *)self->_source managedObjectContext] executeFetchRequest:v13 error:0];
    goto LABEL_6;
  }

  v34 = 12;
  v16 = [(NSManagedObject *)self->_source valueForKey:v11];
  v17 = [v16 count];
  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = v17;
  }

  if (v17)
  {
    v18 = v17;
    v32 = &v30;
    v33 = a4;
    v19 = MEMORY[0x1EEE9AC00](v17);
    v21 = &v30 - v20;
    if (v19 > 0x200)
    {
      v21 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v30 - v20, 8 * v19);
    }

    [v16 getObjects:v21];
    if (location >= v18 + location)
    {
      v22 = 0;
    }

    else
    {
      v30 = location;
      v31 = a5;
      v22 = 0;
      v23 = 8 * location;
      v24 = v18;
      do
      {
        v25 = *&v21[v23];
        v26 = (v25[4] >> 15) & 7;
        if (v26)
        {
          v27 = v26 == 5;
        }

        else
        {
          v27 = 1;
        }

        if (!v27)
        {
          v28 = [v25 objectID];
          if (([v28 isTemporaryID] & 1) == 0)
          {
            *&v21[8 * v22++] = v28;
          }
        }

        v23 += 8;
        --v24;
      }

      while (v24);
      if (v22)
      {
        v22 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v21 count:v22];
      }

      location = v30;
      a5 = v31;
    }

    if (v18 >= 0x201)
    {
      NSZoneFree(0, v21);
    }

    v12 = location;
    if ([v22 count])
    {
      v29 = [(NSDictionary *)[(NSEntityDescription *)[(NSManagedObject *)self->_source entity] relationshipsByName] objectForKey:v11];
      v13 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v13, "setEntity:", [v29 destinationEntity]);
      -[NSFetchRequest setPredicate:](v13, "setPredicate:", [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v22]);
      [(NSFetchRequest *)v13 setReturnsObjectsAsFaults:0];
      [(NSFetchRequest *)v13 setIncludesPendingChanges:0];
    }

    else
    {
      v13 = 0;
    }

    a4 = v33;

    v10 = v34;
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = v34;
LABEL_7:
  [(_NSFaultingMutableOrderedSet *)self willChange];
  if ((*(&self->super.super.super.isa + v10) & 8) != 0)
  {
    v14 = [self->_realSet mutableCopy];

    self->_realSet = v14;
    *(&self->super.super.super.isa + v10) &= ~8u;
  }

  if (length == 0x7FFFFFFFFFFFFFFFLL)
  {
    length = [self->_realSet count];
  }

  v35.receiver = self;
  v35.super_class = _NSFaultingMutableOrderedSet;
  [(_NSFaultingMutableOrderedSet *)&v35 sortRange:location options:length usingComparator:a4, a5];
  v15 = *MEMORY[0x1E69E9840];
}

- (id)allObjects
{
  v11[1] = *MEMORY[0x1E69E9840];
  [(_NSFaultingMutableOrderedSet *)self willRead];
  v3 = [self->_realSet count];
  v4 = MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  if (v4 > 0x200)
  {
    v7 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v11 - v6, 8 * v5);
  }

  [self->_realSet getObjects:v7 range:{0, v3}];
  v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v3];
  if (v3 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  result = v8;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)_orderedObjectsAndKeys
{
  source = self->_source;
  if (source && (source->_cd_stateFlags & 0x38) != 0)
  {
    v3 = 0;
  }

  else
  {
    if (source)
    {
      v4 = _insertion_fault_handler;
    }

    else
    {
      v4 = 0;
    }

    v3 = [(NSFaultHandler *)v4 retainedOrderedFaultInformationForAggregateFaultForObject:[(_NSFaultingMutableOrderedSet *)self relationship] andRelationship:[(NSManagedObject *)self->_source managedObjectContext] withContext:0 error:?];
  }

  return v3;
}

- (BOOL)_reorderObjectsToLocationsByOrderKey:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];

  self->_forcedKeys = 0;
  if ([a3 count])
  {
    if (a4)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A250];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"bad input oidsAndLocations => should have an even number", @"Reason", 0}];
      v20 = v17;
      v21 = v18;
LABEL_14:
      v24 = [v20 errorWithDomain:v21 code:134060 userInfo:v19];
      LOBYTE(v9) = 0;
      *a4 = v24;
      goto LABEL_36;
    }

LABEL_15:
    LOBYTE(v9) = 0;
    goto LABEL_36;
  }

  source = self->_source;
  if (source)
  {
    v8 = _insertion_fault_handler;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSFaultHandler *)v8 retainedOrderedFaultInformationForAggregateFaultForObject:[(_NSFaultingMutableOrderedSet *)self relationship] andRelationship:[(NSManagedObject *)self->_source managedObjectContext] withContext:a4 error:?];
  if (!v9)
  {
    goto LABEL_36;
  }

  v10 = v9;
  if ([v9 count] != 2)
  {

    if (a4)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v48 = @"message";
      v49[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to retrieve ordering information from fault for object %@ and relationship %@", -[NSManagedObject objectID](self->_source, "objectID"), -[NSPropertyDescription name](-[_NSFaultingMutableOrderedSet relationship](self, "relationship"), "name")];
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v20 = v22;
      v21 = v23;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v11 = [objc_msgSend(v10 objectAtIndex:{0), "mutableCopy"}];
  v12 = [objc_msgSend(v10 objectAtIndex:{1), "mutableCopy"}];
  v13 = [v11 count];
  if (v13)
  {
    v14 = v13;
    v47 = 48;
    flags = self->_flags;
    v45 = v10;
    if (flags)
    {
      v16 = 0;
    }

    else
    {
      v16 = self->_realSet;
      [(_NSFaultingMutableOrderedSet *)self turnIntoFault];
    }

    v25 = [(NSManagedObject *)self->_source managedObjectContext];
    v44[1] = v44;
    MEMORY[0x1EEE9AC00](v25);
    v27 = v44 - v26;
    if (v14 > 0x200)
    {
      v27 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v44 - v26, 8 * v14);
    }

    [v11 getObjects:v27 range:{0, v14}];
    for (i = 0; i != v14; ++i)
    {
      *&v27[8 * i] = [NSManagedObjectContext _retainedObjectWithID:v25 optionalHandler:*&v27[8 * i] withInlineStorage:0];
    }

    v29 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v27 count:v14];
    [(_NSFaultingMutableOrderedSet *)self willReadWithContents:v29];

    for (j = 0; j != v14; ++j)
    {
    }

    if (v14 >= 0x201)
    {
      NSZoneFree(0, v27);
    }

    if (v16)
    {
    }

    v31 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
    *(&self->super.super.super.isa + v47) = v31;
    v32 = [a3 count];
    v33 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v11 copyItems:0];
    v46 = [(NSManagedObject *)self->_source mutableOrderedSetValueForKey:[(NSPropertyDescription *)[(_NSFaultingMutableOrderedSet *)self relationship] name]];
    if (v32)
    {
      v34 = 0;
      do
      {
        v35 = [a3 objectAtIndex:v34];
        v36 = v34 + 1;
        v37 = [a3 objectAtIndex:v34 + 1];
        v38 = [v33 indexOfObject:v35];
        if (v38 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v39 = v38;
          if (([objc_msgSend(v12 objectAtIndex:{v38), "isEqual:", v37}] & 1) == 0)
          {
            [v12 removeObjectAtIndex:v39];
            [v33 removeObjectAtIndex:v39];
            v40 = [v12 indexOfObject:v37 inSortedRange:0 options:objc_msgSend(v12 usingComparator:{"count"), 1024, &__block_literal_global_25}];
            v41 = [MEMORY[0x1E696AC90] indexSetWithIndex:v39];
            [v46 moveObjectsAtIndexes:v41 toIndex:v40];
            [v12 insertObject:v37 atIndex:v40];
            [v33 insertObject:v35 atIndex:v40];
            [*(&self->super.super.super.isa + v47) setObject:v37 forKey:v35];
          }
        }

        v34 = v36 + 1;
      }

      while (v36 + 1 < v32);
    }

    LOBYTE(v9) = 1;
  }

  else
  {

    LOBYTE(v9) = 1;
  }

LABEL_36:
  v42 = *MEMORY[0x1E69E9840];
  return v9;
}

@end