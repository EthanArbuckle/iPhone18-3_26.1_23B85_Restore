@interface NSTemporaryObjectID
+ (Class)classForStore:(id)a3;
+ (unsigned)allocateBatch:(id *)a3 forEntity:(id)a4 count:(unsigned int)a5;
+ (void)_storeDeallocated;
+ (void)initialize;
+ (void)setObjectStoreIdentifier:(id)a3;
- (BOOL)_isPersistentStoreAlive;
- (BOOL)isEqual:(id)a3;
- (id)URIRepresentation;
- (id)_retainedURIString;
- (id)_storeIdentifier;
- (id)persistentStore;
- (void)_setPersistentStore:(id)a3;
- (void)dealloc;
- (void)release;
@end

@implementation NSTemporaryObjectID

+ (void)initialize
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_getClass("NSTemporaryObjectID") == a1)
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
    object_getIndexedIvars(a1);
    qword_1ED4BE850 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    _NSTemporaryObjectID_Default_Class = objc_allocateClassPair(a1, "NSTemporaryObjectID_default", 0x18uLL);
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
  IndexedIvars = object_getIndexedIvars(a1);
  if (IndexedIvars)
  {
    IndexedIvars[1] = 0;
    __dmb(0xBu);
  }
}

+ (void)setObjectStoreIdentifier:(id)a3
{
  IndexedIvars = object_getIndexedIvars(a1);
  v5 = IndexedIvars[2];
  if (v5 != a3)
  {
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = CFRetain([a3 copy]);
    IndexedIvars[2] = v6;
  }
}

+ (Class)classForStore:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Store must not be nil." userInfo:0]);
  }

  Name = class_getName(a1);
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

      v22 = class_getName(a1);
      snprintf(__str, 0x100uLL, "%s_%x", v22, i);
    }

    while (1)
    {
      ClassPair = objc_allocateClassPair(a1, __str, 0x18uLL);
      if (ClassPair)
      {
        break;
      }

      v17 = class_getName(a1);
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
    v30[1] = a3;
    v32 = [objc_msgSend(a3 "identifier")];
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

+ (unsigned)allocateBatch:(id *)a3 forEntity:(id)a4 count:(unsigned int)a5
{
  v5 = a5;
  v7 = a3;
  if (_PFAllocateObjects(_NSTemporaryObjectID_Default_Class, a3, a5, 0) != a5)
  {
    return 0;
  }

  add_explicit = atomic_fetch_add_explicit(&_CoreDataProcessInstanceTempIDCounter, v5, memory_order_relaxed);
  if (v5)
  {
    v9 = add_explicit + 1;
    v10 = v5;
    do
    {
      v11 = *v7++;
      *(v11 + 12) = v9;
      *(v11 + 16) = a4;
      ++v9;
      --v10;
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return self->_counter == *(a3 + 3);
    }
  }

  return 0;
}

- (void)_setPersistentStore:(id)a3
{
  Class = object_getClass(self);
  IndexedIvars = object_getIndexedIvars(Class);
  if (a3 && IndexedIvars[1] != a3)
  {
    v7 = _PFFastStoreTemporaryIDClass(a3);
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
  v3 = [(NSTemporaryObjectID *)self _storeIdentifier];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1EF3F1768;
  }

  counter = self->_counter;
  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  v7 = [-[NSTemporaryObjectID entity](self "entity")];
  v8 = [(NSTemporaryObjectID *)self _referenceData];
  if (counter)
  {
    return [v6 initWithFormat:@"%@://%@/%@/t%@%d", @"x-coredata", v4, v7, v8, self->_counter];
  }

  else
  {
    return [v6 initWithFormat:@"%@://%@/%@/t%@", @"x-coredata", v4, v7, v8, v10];
  }
}

- (id)URIRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(NSTemporaryObjectID *)self _retainedURIString];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  v6 = v5;
  objc_autoreleasePoolPop(v3);

  return v5;
}

@end