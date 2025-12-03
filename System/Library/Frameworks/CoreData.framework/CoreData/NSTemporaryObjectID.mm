@interface NSTemporaryObjectID
+ (Class)classForStore:(id)store;
+ (unsigned)allocateBatch:(id *)batch forEntity:(id)entity count:(unsigned int)count;
+ (void)_storeDeallocated;
+ (void)initialize;
+ (void)setObjectStoreIdentifier:(id)identifier;
- (BOOL)_isPersistentStoreAlive;
- (BOOL)isEqual:(id)equal;
- (id)URIRepresentation;
- (id)_retainedURIString;
- (id)_storeIdentifier;
- (id)persistentStore;
- (void)_setPersistentStore:(id)store;
- (void)dealloc;
- (void)release;
@end

@implementation NSTemporaryObjectID

+ (void)initialize
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_getClass("NSTemporaryObjectID") == self)
  {
    objc_opt_self();
    memset(out, 0, sizeof(out));
    uuid_generate_random(out);
    v3 = [_NS128bitWrapper alloc];
    if (v3)
    {
      v5.receiver = v3;
      v5.super_class = _NS128bitWrapper;
      v3 = objc_msgSendSuper2(&v5, sel_init);
      if (v3)
      {
        v3->bits = *out;
      }
    }

    qword_1ED4BE848 = v3;
    _CoreDataProcessInstanceTempIDCounter = 1;
    object_getIndexedIvars(self);
    qword_1ED4BE850 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    _NSTemporaryObjectID_Default_Class = objc_allocateClassPair(self, "NSTemporaryObjectID_default", 0x18uLL);
    objc_registerClassPair(_NSTemporaryObjectID_Default_Class);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)release
{
  if (atomic_fetch_add_explicit(&self->_cd_rc, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    self->_cd_rc += 0x20000000;
    [(NSTemporaryObjectID *)self dealloc];
  }
}

- (id)persistentStore
{
  Class = object_getClass(self);
  result = object_getIndexedIvars(Class);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

- (void)dealloc
{
  self->_entity = 0;
  if (object_getClass(self) != _NSTemporaryObjectID_Default_Class)
  {
    Class = object_getClass(self);
    _PFfastFactoryRelease2(Class);
  }

  _PFDeallocateObject(self);
}

- (BOOL)_isPersistentStoreAlive
{
  Class = object_getClass(self);
  IndexedIvars = object_getIndexedIvars(Class);
  if (IndexedIvars)
  {
    v4 = IndexedIvars[1];

    LOBYTE(IndexedIvars) = [v4 _isPersistentStoreAlive];
  }

  return IndexedIvars;
}

+ (void)_storeDeallocated
{
  IndexedIvars = object_getIndexedIvars(self);
  if (IndexedIvars)
  {
    IndexedIvars[1] = 0;
    __dmb(0xBu);
  }
}

+ (void)setObjectStoreIdentifier:(id)identifier
{
  IndexedIvars = object_getIndexedIvars(self);
  v5 = IndexedIvars[2];
  if (v5 != identifier)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = CFRetain([identifier copy]);
    IndexedIvars[2] = v6;
  }
}

+ (Class)classForStore:(id)store
{
  v42 = *MEMORY[0x1E69E9840];
  if (!store)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Store must not be nil." userInfo:0]);
  }

  Name = class_getName(self);
  snprintf(__str, 0x100uLL, "%s_%x", Name, 0);
  os_unfair_lock_lock(&_MergedGlobals_7);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = qword_1ED4BE850;
  v7 = [qword_1ED4BE850 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v37 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v36 + 1) + 8 * v10);
      IndexedIvars = object_getIndexedIvars(v11);
      if (IndexedIvars)
      {
        if (!*(IndexedIvars + 1))
        {
          v13 = -1;
          atomic_compare_exchange_strong(IndexedIvars, &v13, 0);
          if (v13 == -1)
          {
            break;
          }
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }
    }

    if (!v11)
    {
      goto LABEL_15;
    }

LABEL_14:
    atomic_fetch_add_explicit(object_getIndexedIvars(v11), 1u, memory_order_relaxed);
  }

  else
  {
LABEL_15:
    for (i = 1; ; ++i)
    {
      Class = objc_getClass(__str);
      if (!Class)
      {
        break;
      }

      v11 = Class;
LABEL_21:
      v20 = object_getIndexedIvars(v11);
      if (!*(v20 + 1))
      {
        v21 = -1;
        atomic_compare_exchange_strong(v20, &v21, 0);
        if (v21 == -1)
        {
          goto LABEL_14;
        }
      }

      v22 = class_getName(self);
      snprintf(__str, 0x100uLL, "%s_%x", v22, i);
    }

    while (1)
    {
      ClassPair = objc_allocateClassPair(self, __str, 0x18uLL);
      if (ClassPair)
      {
        break;
      }

      v17 = class_getName(self);
      v18 = i + 1;
      snprintf(__str, 0x100uLL, "%s_%x", v17, i);
      v19 = objc_getClass(__str);
      ++i;
      if (v19)
      {
        v11 = v19;
        i = v18;
        goto LABEL_21;
      }
    }

    v11 = ClassPair;
    v23 = object_getClass(ClassPair);
    ClassMethod = class_getClassMethod(v11, sel__retain_1);
    Implementation = method_getImplementation(ClassMethod);
    TypeEncoding = method_getTypeEncoding(ClassMethod);
    class_addMethod(v23, sel_retain, Implementation, TypeEncoding);
    v27 = class_getClassMethod(v11, sel__release_1);
    v28 = method_getImplementation(v27);
    v29 = method_getTypeEncoding(v27);
    class_addMethod(v23, sel_release, v28, v29);
    objc_registerClassPair(v11);
    CFArrayAppendValue(qword_1ED4BE850, v11);
  }

  v30 = object_getIndexedIvars(v11);
  if (!v30[1])
  {
    v31 = v30;
    *v30 = 0;
    v30[1] = store;
    v32 = [objc_msgSend(store "identifier")];
    if (v32)
    {
      v33 = v32;
      v31[2] = CFRetain(v32);
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_7);
  v34 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (unsigned)allocateBatch:(id *)batch forEntity:(id)entity count:(unsigned int)count
{
  countCopy = count;
  batchCopy = batch;
  if (_PFAllocateObjects(_NSTemporaryObjectID_Default_Class, batch, count, 0) != count)
  {
    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(&_CoreDataProcessInstanceTempIDCounter, countCopy, memory_order_relaxed);
  if (countCopy)
  {
    v9 = add_explicit + 1;
    v10 = countCopy;
    do
    {
      v11 = *batchCopy++;
      *(v11 + 12) = v9;
      *(v11 + 16) = entity;
      ++v9;
      --v10;
    }

    while (v10);
  }

  return countCopy;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (equal)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->_counter == *(equal + 3);
    }
  }

  return 0;
}

- (void)_setPersistentStore:(id)store
{
  Class = object_getClass(self);
  IndexedIvars = object_getIndexedIvars(Class);
  if (store && IndexedIvars[1] != store)
  {
    v7 = _PFFastStoreTemporaryIDClass(store);
    atomic_fetch_add_explicit(object_getIndexedIvars(v7), 1u, memory_order_relaxed);

    object_setClass(self, v7);
  }
}

- (id)_storeIdentifier
{
  Class = object_getClass(self);
  result = object_getIndexedIvars(Class);
  if (result)
  {
    v4 = result;
    result = *(result + 2);
    if (!result)
    {
      [objc_opt_class() setObjectStoreIdentifier:{objc_msgSend(v4[1], "identifier")}];
      return v4[2];
    }
  }

  return result;
}

- (id)_retainedURIString
{
  _storeIdentifier = [(NSTemporaryObjectID *)self _storeIdentifier];
  if (_storeIdentifier)
  {
    v4 = _storeIdentifier;
  }

  else
  {
    v4 = &stru_1EF3F1768;
  }

  counter = self->_counter;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [-[NSTemporaryObjectID entity](self "entity")];
  _referenceData = [(NSTemporaryObjectID *)self _referenceData];
  if (counter)
  {
    return [v6 initWithFormat:@"%@://%@/%@/t%@%d", @"x-coredata", v4, v7, _referenceData, self->_counter];
  }

  else
  {
    return [v6 initWithFormat:@"%@://%@/%@/t%@", @"x-coredata", v4, v7, _referenceData, v10];
  }
}

- (id)URIRepresentation
{
  v3 = objc_autoreleasePoolPush();
  _retainedURIString = [(NSTemporaryObjectID *)self _retainedURIString];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:_retainedURIString];

  v6 = v5;
  objc_autoreleasePoolPop(v3);

  return v5;
}

@end