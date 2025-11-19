@interface _NSObserverList
+ (void)_copyObserversOfObject:(int)a3 creatingIfAbsent:;
+ (void)destroyObserverListForObject:(uint64_t)a1;
- (NSObservation)addBlockSink:(uint64_t)a3 toObservableObject:(uint64_t)a4 forTag:;
- (NSObservation)addObserver:(void *)a3 toObservableObject:;
- (_NSObserverList)init;
- (id)description;
- (void)_receiveBox:(id)a3;
- (void)dealloc;
- (void)finishObserving;
@end

@implementation _NSObserverList

+ (void)_copyObserversOfObject:(int)a3 creatingIfAbsent:
{
  v5 = objc_opt_self();
  if (qword_1ED440290 != -1)
  {
    dispatch_once(&qword_1ED440290, &__block_literal_global_85);
  }

  v6 = [a2 _observerStorageOfSize:qword_1ED440280];
  if (v6)
  {
    v7 = v6;
    os_unfair_lock_lock_with_options();
    if (!*v7)
    {
      objc_constructInstance(qword_1ED440288, v7);
      v7[1] = a2;
    }

    os_unfair_lock_unlock(&_MergedGlobals_152);

    return v7;
  }

  else
  {
    v9 = [a2 _observerStorage];
    os_unfair_lock_lock_with_options();
    if (v9)
    {
      v10 = *v9;
      if (!*v9 && a3)
      {
        v11 = objc_alloc_init(v5);
        *v9 = v11;
        v11[1] = a2;
        v10 = *v9;
      }

      v12 = v10;
      os_unfair_lock_unlock(&_MergedGlobals_152);
      return v12;
    }

    else
    {
      v13 = objc_getAssociatedObject(a2, "_NSObserverListInternalKey");
      if (!v13 && a3)
      {
        v13 = objc_alloc_init(v5);
        v13[1] = a2;
        objc_setAssociatedObject(a2, "_NSObserverListInternalKey", v13, 0x301);
      }

      os_unfair_lock_unlock(&_MergedGlobals_152);
      return v13;
    }
  }
}

+ (void)destroyObserverListForObject:(uint64_t)a1
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __48___NSObserverList_destroyObserverListForObject___block_invoke;
  v11 = &unk_1E69F2C00;
  v12 = v3;
  if (qword_1ED4402A0 != -1)
  {
    dispatch_once(&qword_1ED4402A0, &v8);
  }

  v4 = [a2 _observerStorageOfSize:{qword_1ED440298, v8, v9, v10, v11, v12, v13}];
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 8) == a2)
    {
      clearAllObservers(v4);
      objc_destructInstance(v5);
    }
  }

  else
  {
    v6 = [a2 _observerStorage];
    if (!v6)
    {
      NSLog(@"Using +destroyObserverListForObject: on an object without inline observer storage is invalid");
      abort();
    }

    v7 = *v6;
    if (v7)
    {
    }
  }
}

- (_NSObserverList)init
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = _NSObserverList;
  result = [(_NSObserverList *)&v3 init];
  if (result)
  {
    result->_observersLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSObservation)addBlockSink:(uint64_t)a3 toObservableObject:(uint64_t)a4 forTag:
{
  if (result)
  {
    v4 = result;
    v5 = [[NSObservation alloc] initWithObservable:a3 blockSink:a2 tag:a4];
    addObserver(v4, v5);

    return v5;
  }

  return result;
}

- (NSObservation)addObserver:(void *)a3 toObservableObject:
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if (([a2 conformsToProtocol:&unk_1EEF6F180] & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [NSString stringWithFormat:@"Attempt to add non-NSObserver object %@ as an observer of %@", a2, a3];
    goto LABEL_10;
  }

  if (([a3 conformsToProtocol:&unk_1EEF6F120] & 1) == 0)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [NSString stringWithFormat:@"Attempt to add %@ as an observer of non-NSObservable object %@", a2, a3];
LABEL_10:
    objc_exception_throw([v7 exceptionWithName:v8 reason:v9 userInfo:0]);
  }

  v6 = [[NSObservation alloc] initWithObservable:a3 observer:a2];
  addObserver(v5, a2);

  return v6;
}

- (void)finishObserving
{
  v12[1] = *MEMORY[0x1E69E9840];
  owner = self->_owner;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __34___NSObserverList_finishObserving__block_invoke;
  v10 = &unk_1E69F30D8;
  v11 = self;
  v12[0] = 0;
  StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v12);
  MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
  v6 = objc_constructInstance(v5, &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6[6] = 3;
  *(v6 + 1) = 0;
  *(v6 + 2) = owner;
  v9(v8, v6);
}

- (void)_receiveBox:(id)a3
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31___NSObserverList__receiveBox___block_invoke;
  v5[3] = &unk_1E69FA170;
  v5[4] = a3;
  v5[5] = self;
  withUnlockedObservers(self, v5);
  if (*(a3 + 6) == 3)
  {
    clearAllObservers(self);
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  clearAllObservers(self);
  v3.receiver = self;
  v3.super_class = _NSObserverList;
  [(_NSObserverList *)&v3 dealloc];
}

- (id)description
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__33;
  v9 = __Block_byref_object_dispose__33;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30___NSObserverList_description__block_invoke;
  v4[3] = &unk_1E69FA198;
  v4[4] = self;
  v4[5] = &v5;
  withUnlockedObservers(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end