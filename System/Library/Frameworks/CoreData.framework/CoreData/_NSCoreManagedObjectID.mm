@interface _NSCoreManagedObjectID
+ (Class)classWithStore:(id)store andEntity:(id)entity;
+ (id)_storeInfo1;
+ (id)managedObjectIDFromURIRepresentation:(id)representation;
+ (id)managedObjectIDFromUTF8String:(const char *)string length:(unint64_t)length;
+ (unsigned)allocateBatch:(id *)batch count:(unsigned int)count;
+ (void)_storeDeallocated;
+ (void)initialize;
+ (void)setObjectStoreIdentifier:(id)identifier;
- (BOOL)_isPersistentStoreAlive;
- (id)URIRepresentation;
- (id)_storeIdentifier;
- (id)_storeInfo1;
- (id)entity;
- (id)entityName;
- (id)persistentStore;
@end

@implementation _NSCoreManagedObjectID

- (id)URIRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      _storeIdentifier = [(_NSCoreManagedObjectID *)self _storeIdentifier];
      if (_storeIdentifier)
      {
        v5 = _storeIdentifier;
      }

      else
      {
        v5 = &stru_1EF3F1768;
      }

      v6 = [(__CFString *)v5 length];
      qmemcpy(relativeURLBytes, "x-coredata://", 13);
      if (v6 && (v7 = v6, [(__CFString *)v5 getCharacters:v26 range:0, v6], v7 >= 1))
      {
        for (i = 0; i != v7; ++i)
        {
          relativeURLBytes[i + 13] = v26[i];
        }

        v9 = i + 13;
      }

      else
      {
        v9 = 13;
      }

      v12 = v9 + 1;
      relativeURLBytes[v9] = 47;
      entityName = [(_NSCoreManagedObjectID *)self entityName];
      v14 = [entityName length];
      if (v14 && (v15 = v14, [entityName getCharacters:v26 range:{0, v14}], v15 >= 1))
      {
        v16 = v26;
        do
        {
          v17 = *v16;
          v16 += 2;
          v18 = v12 + 1;
          relativeURLBytes[v12++] = v17;
          --v15;
        }

        while (v15);
      }

      else
      {
        v18 = v12;
      }

      *&relativeURLBytes[v18] = 28719;
      v19 = snprintf(&relativeURLBytes[v18 + 2], 1022 - v18, "%qu", [(NSManagedObjectID *)self _referenceData64]);
      v20 = v18 + 2 + (v19 & ~(v19 >> 31));
      relativeURLBytes[v20] = 0;
    }

    else
    {
      v20 = 0;
    }

    v11 = CFURLCreateAbsoluteURLWithBytes(0, relativeURLBytes, v20, 0x8000100u, 0, 1u);
    v21 = v11;
    CFRelease(v11);
  }

  else
  {
    _retainedURIString = [(NSManagedObjectID *)self _retainedURIString];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:_retainedURIString];
  }

  v22 = v11;
  objc_autoreleasePoolPop(v3);
  result = v11;
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)initialize
{
  if (objc_getClass("_NSCoreManagedObjectID") == self)
  {
    objc_opt_self();
    object_getIndexedIvars(self);
    v3 = *MEMORY[0x1E695E480];
    qword_1ED4BE988 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    qword_1ED4BE990 = CFArrayCreateMutable(v3, 0, 0);
    qword_1ED4BE998 = CFArrayCreateMutable(v3, 0, 0);
  }
}

+ (Class)classWithStore:(id)store andEntity:(id)entity
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(entity "name")];
  if (!v7 || !*v7)
  {
    v41 = MEMORY[0x1E695DF30];
    v42 = *MEMORY[0x1E695D940];
    v43 = @"Entity name must not be nil.";
    goto LABEL_46;
  }

  if (!store)
  {
    v41 = MEMORY[0x1E695DF30];
    v42 = *MEMORY[0x1E695D940];
    v43 = @"Store must not be nil.";
LABEL_46:
    objc_exception_throw([v41 exceptionWithName:v42 reason:v43 userInfo:0]);
  }

  generatedNameSuffix = [self generatedNameSuffix];
  v9 = generatedNameSuffix;
  v10 = *generatedNameSuffix;
  if (v10 == 54)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2 * (v10 == 105);
  }

  snprintf(__str, 0x100uLL, "_NSObjectID_%s_%x", generatedNameSuffix, 0);
  os_unfair_lock_lock(&_MergedGlobals_69);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = &_MergedGlobals_69 + 8 * v11;
  v12 = *(v44 + 3);
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
LABEL_9:
    v16 = 0;
    while (1)
    {
      if (*v46 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v45 + 1) + 8 * v16);
      IndexedIvars = object_getIndexedIvars(v17);
      if (IndexedIvars)
      {
        v19 = IndexedIvars[1];
        if (!v19)
        {
          break;
        }

        if (v19 == entity && IndexedIvars[2] == store)
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
        if (v14)
        {
          goto LABEL_9;
        }

        goto LABEL_23;
      }
    }

    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_22:
    atomic_fetch_add_explicit(object_getIndexedIvars(v17), 1u, memory_order_relaxed);
  }

  else
  {
LABEL_23:
    for (i = 1; ; ++i)
    {
      Class = objc_getClass(__str);
      if (!Class)
      {
        break;
      }

      v17 = Class;
LABEL_29:
      if (!*(object_getIndexedIvars(v17) + 1))
      {
        goto LABEL_22;
      }

      snprintf(__str, 0x100uLL, "_NSObjectID_%s_%x", v9, i);
    }

    while (1)
    {
      ClassPair = objc_allocateClassPair(self, __str, 0x40uLL);
      if (ClassPair)
      {
        break;
      }

      v24 = i + 1;
      snprintf(__str, 0x100uLL, "_NSObjectID_%s_%x", v9, i);
      v25 = objc_getClass(__str);
      ++i;
      if (v25)
      {
        v17 = v25;
        i = v24;
        goto LABEL_29;
      }
    }

    v17 = ClassPair;
    v26 = object_getClass(ClassPair);
    ClassMethod = class_getClassMethod(v17, sel__retain_1);
    Implementation = method_getImplementation(ClassMethod);
    TypeEncoding = method_getTypeEncoding(ClassMethod);
    class_addMethod(v26, sel_retain, Implementation, TypeEncoding);
    v30 = class_getClassMethod(v17, sel__release_1);
    v31 = method_getImplementation(v30);
    v32 = method_getTypeEncoding(v30);
    class_addMethod(v26, sel_release, v31, v32);
    objc_registerClassPair(v17);
    CFArrayAppendValue(*(v44 + 3), v17);
  }

  v33 = object_getIndexedIvars(v17);
  if (!v33[1])
  {
    v34 = v33;
    *v33 = 0;
    v33[2] = store;
    v33[5] = 0;
    v35 = [objc_msgSend(store "identifier")];
    if (v35)
    {
      v36 = v35;
      v34[5] = CFRetain(v35);
    }

    v34[1] = entity;
    v34[6] = 0;
    v34[3] = 0;
    *(v34 + 8) = [objc_msgSend(entity "name")] & 0x3F;
    if ([self isSubclassOfClass:objc_opt_class()])
    {
      v37 = 3;
    }

    else if ([self isSubclassOfClass:objc_opt_class()])
    {
      v37 = 2;
    }

    else
    {
      v37 = 4;
    }

    *(v34 + 1) = v37;
    if (entity)
    {
      v38 = *(entity + 40);
    }

    else
    {
      v38 = 0;
    }

    *(v34 + 14) = v38;
  }

  os_unfair_lock_unlock(&_MergedGlobals_69);
  v39 = *MEMORY[0x1E69E9840];
  return v17;
}

+ (unsigned)allocateBatch:(id *)batch count:(unsigned int)count
{
  v5 = _PFAllocateObjects(self, batch, count, 0);
  atomic_fetch_add_explicit(object_getIndexedIvars(self), v5, memory_order_relaxed);
  return v5;
}

+ (id)managedObjectIDFromUTF8String:(const char *)string length:(unint64_t)length
{
  __endptr = 0;
  v7 = strtouq(string, &__endptr, 0);
  if (__endptr)
  {
    v8 = __endptr == string;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:string length:length encoding:4];
    v10 = [[self alloc] initWithObject:v9];
  }

  else
  {
    v11 = v7;
    if ([self isSubclassOfClass:objc_opt_class()])
    {
      v12 = [[self alloc] initWithPK64:v11];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:v11];
      v14 = [[self alloc] initWithObject:v13];

      v12 = v14;
    }

    return v12;
  }

  return v10;
}

+ (id)managedObjectIDFromURIRepresentation:(id)representation
{
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_msgSend(objc_msgSend(representation "path")];
  IndexedIvars = object_getIndexedIvars(self);
  v8 = IndexedIvars[2];
  v9 = [v6 characterAtIndex:0];
  v10 = [v6 substringFromIndex:1];
  if (v9 != 116 || (v11 = [[NSTemporaryObjectID alloc] initWithEntity:IndexedIvars[1] andUUIDString:v10], [(NSTemporaryObjectID *)v11 _setPersistentStore:v8], !v11))
  {
    v16 = 0;
    if (+[_PFRoutines convertCString:toUnsignedInt64:withBase:](_PFRoutines, [v10 UTF8String], &v16, 0))
    {
      if ([self isSubclassOfClass:objc_opt_class()])
      {
        v12 = [self alloc];
        v11 = [v12 initWithPK64:v16];
        if (v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = objc_alloc(MEMORY[0x1E696AD98]);
        v14 = [v13 initWithUnsignedLongLong:v16];
        v11 = [[self alloc] initWithObject:v14];

        if (v11)
        {
          goto LABEL_9;
        }
      }
    }

    v11 = [[self alloc] initWithObject:v10];
  }

LABEL_9:
  objc_autoreleasePoolPop(v5);

  return v11;
}

+ (void)setObjectStoreIdentifier:(id)identifier
{
  IndexedIvars = object_getIndexedIvars(self);
  v5 = IndexedIvars[5];
  if (v5 != identifier)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = CFRetain([identifier copy]);
    IndexedIvars[5] = v6;
  }
}

+ (id)_storeInfo1
{
  result = object_getIndexedIvars(self);
  if (result)
  {
    return *(result + 6);
  }

  return result;
}

+ (void)_storeDeallocated
{
  IndexedIvars = object_getIndexedIvars(self);
  if (IndexedIvars)
  {
    IndexedIvars[6] = 0;
    IndexedIvars[2] = 0;
    __dmb(0xBu);
  }
}

- (id)entity
{
  Class = object_getClass(self);
  result = object_getIndexedIvars(Class);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

- (id)entityName
{
  entity = [(_NSCoreManagedObjectID *)self entity];

  return [entity name];
}

- (id)persistentStore
{
  Class = object_getClass(self);
  result = object_getIndexedIvars(Class);
  if (result)
  {
    return *(result + 2);
  }

  return result;
}

- (id)_storeIdentifier
{
  Class = object_getClass(self);
  result = object_getIndexedIvars(Class);
  if (result)
  {
    v4 = result;
    result = *(result + 5);
    if (!result)
    {
      [objc_opt_class() setObjectStoreIdentifier:{objc_msgSend(v4[2], "identifier")}];
      return v4[5];
    }
  }

  return result;
}

- (id)_storeInfo1
{
  Class = object_getClass(self);
  result = object_getIndexedIvars(Class);
  if (result)
  {
    return *(result + 6);
  }

  return result;
}

- (BOOL)_isPersistentStoreAlive
{
  Class = object_getClass(self);
  IndexedIvars = object_getIndexedIvars(Class);
  if (IndexedIvars)
  {
    v4 = IndexedIvars[2];

    LOBYTE(IndexedIvars) = [v4 _isPersistentStoreAlive];
  }

  return IndexedIvars;
}

@end