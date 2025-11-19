@interface NSObject
+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key;
+ (BOOL)implementsSelector:(SEL)a3;
+ (BOOL)instancesImplementSelector:(SEL)a3;
+ (NSSet)keyPathsForValuesAffectingValueForKey:(NSString *)key;
+ (id)_createMutableArrayValueGetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createMutableOrderedSetValueGetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createMutableSetValueGetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createOtherValueGetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createOtherValueSetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createValueGetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createValuePrimitiveGetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createValuePrimitiveSetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_createValueSetterWithContainerClassID:(id)a3 key:(id)a4;
+ (id)_keysForValuesAffectingValueForKey:(id)a3;
+ (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget;
+ (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget selector:(SEL)aSelector object:(id)anArgument;
+ (void)setKeys:(NSArray *)keys triggerChangeNotificationsForDependentKey:(NSString *)dependentKey;
- (BOOL)implementsSelector:(SEL)a3;
- (BOOL)validateValue:(id *)ioValue forKey:(NSString *)inKey error:(NSError *)outError;
- (BOOL)validateValue:(id *)ioValue forKeyPath:(NSString *)inKeyPath error:(NSError *)outError;
- (NSDictionary)dictionaryWithValuesForKeys:(NSArray *)keys;
- (NSMutableArray)mutableArrayValueForKey:(NSString *)key;
- (NSMutableArray)mutableArrayValueForKeyPath:(NSString *)keyPath;
- (NSMutableOrderedSet)mutableOrderedSetValueForKey:(NSString *)key;
- (NSMutableOrderedSet)mutableOrderedSetValueForKeyPath:(NSString *)keyPath;
- (NSMutableSet)mutableSetValueForKey:(NSString *)key;
- (NSMutableSet)mutableSetValueForKeyPath:(NSString *)keyPath;
- (id)_implicitObservationInfo;
- (id)addChainedObservers:(id)a3;
- (id)addObservationTransformer:(id)a3;
- (id)addObserver:(id)a3;
- (id)addObserver:(id)a3 forObservableKeyPath:(id)a4;
- (id)addObserverBlock:(id)a3;
- (id)replacementObjectForKeyedArchiver:(NSKeyedArchiver *)archiver;
- (id)replacementObjectForPortCoder:(NSPortCoder *)coder;
- (id)valueForKey:(NSString *)key;
- (id)valueForKeyPath:(NSString *)keyPath;
- (id)valueForUndefinedKey:(NSString *)key;
- (void)_addObserver:(id)a3 forProperty:(id)a4 options:(unint64_t)a5 context:(void *)a6;
- (void)_changeValueForKey:(id)a3 key:(id)a4 key:(id)a5 usingBlock:(id)a6;
- (void)_changeValueForKey:(id)a3 usingBlock:(id)a4;
- (void)_changeValueForKeys:(id *)a3 count:(unint64_t)a4 maybeOldValuesDict:(id)a5 maybeNewValuesDict:(id)a6 usingBlock:(id)a7;
- (void)_notifyObserversForKeyPath:(id)a3 change:(id)a4;
- (void)_notifyObserversOfChangeFromValuesForKeys:(id)a3 toValuesForKeys:(id)a4;
- (void)_receiveBox:(id)a3;
- (void)_removeObserver:(id)a3 forProperty:(id)a4;
- (void)_setSharedObservationInfo:(uint64_t)a1;
- (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
- (void)finishObserving;
- (void)observationInfo;
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context;
- (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait;
- (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array;
- (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay;
- (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay inModes:(NSArray *)modes;
- (void)performSelectorInBackground:(SEL)aSelector withObject:(id)arg;
- (void)performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait;
- (void)performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array;
- (void)receiveObservedError:(id)a3;
- (void)receiveObservedValue:(id)a3;
- (void)removeObservation:(id)a3;
- (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath;
- (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath context:(void *)context;
- (void)setObservation:(id)a3 forObservingKeyPath:(id)a4;
- (void)setObservationInfo:(void *)observationInfo;
- (void)setSharedObservers:(id)a3;
- (void)setValue:(id)value forKey:(NSString *)key;
- (void)setValue:(id)value forKeyPath:(NSString *)keyPath;
- (void)setValue:(id)value forUndefinedKey:(NSString *)key;
- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues;
- (void)willChange:(NSKeyValueChange)changeKind valuesAtIndexes:(NSIndexSet *)indexes forKey:(NSString *)key;
- (void)willChangeValueForKey:(NSString *)key withSetMutation:(NSKeyValueSetMutationKind)mutationKind usingObjects:(NSSet *)objects;
@end

@implementation NSObject

- (void)observationInfo
{
  if (NSKeyValueObservationInfoPerObject)
  {
    return CFDictionaryGetValue(NSKeyValueObservationInfoPerObject, ~self);
  }

  else
  {
    return 0;
  }
}

- (id)_implicitObservationInfo
{
  Value = self;
  if (self)
  {
    os_unfair_lock_lock(&NSKeyValueObservationInfoLock);
    if (NSKeyValueSharedObservationInfoPerObject)
    {
      Value = CFDictionaryGetValue(NSKeyValueSharedObservationInfoPerObject, ~Value);
    }

    else
    {
      Value = 0;
    }

    os_unfair_lock_unlock(&NSKeyValueObservationInfoLock);
  }

  return Value;
}

- (id)addObserver:(id)a3 forObservableKeyPath:(id)a4
{
  v7 = [a3 conformsToProtocol:&unk_1EEF6F120];
  v8 = off_1E69EED08;
  if (!v7)
  {
    v8 = off_1E69EECE0;
  }

  v9 = [objc_alloc(*v8) initWithObservable:self observer:a3 keyPath:a4];

  return v9;
}

- (void)setObservation:(id)a3 forObservingKeyPath:(id)a4
{
  os_unfair_lock_lock(&setObservation_forObservingKeyPath__lock);
  AssociatedObject = objc_getAssociatedObject(self, "strongObservingKeyPathsAssociationKey");
  if (!AssociatedObject)
  {
    AssociatedObject = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:0 capacity:0];
    objc_setAssociatedObject(self, "strongObservingKeyPathsAssociationKey", AssociatedObject, 0x301);
  }

  if (a3)
  {
    [(NSMapTable *)AssociatedObject setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMapTable *)AssociatedObject removeObjectForKey:a4];
  }

  os_unfair_lock_unlock(&setObservation_forObservingKeyPath__lock);
}

- (void)setSharedObservers:(id)a3
{
  if (a3)
  {

    [a3 _assignToObject:self];
  }

  else
  {
    [self _setSharedObservationInfo:?];
    if (![self observationInfo])
    {
      Class = object_getClass(self);
      v5 = _NSKVONotifyingOriginalClassForIsa(Class);
      if (v5)
      {
        if (Class != v5)
        {

          object_setClass(self, v5);
        }
      }
    }
  }
}

- (void)finishObserving
{
  v2 = [_NSObserverList _copyObserversOfObject:0 creatingIfAbsent:?];
  [v2 finishObserving];
}

- (id)addChainedObservers:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a3 reverseObjectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v7)
        {
          v10 = [v10 addObserver:v7];
        }

        v7 = v10;
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return [self addObserver:v7];
}

- (id)addObserverBlock:(id)a3
{
  if (qword_1ED43E7C0 != -1)
  {
    dispatch_once(&qword_1ED43E7C0, &__block_literal_global_12);
  }

  Class = object_getClass(self);
  if (class_getMethodImplementation(Class, sel_addObserver_) == _MergedGlobals_19_1 || [self _overrideUseFastBlockObservers])
  {
    v6 = [_NSObserverList _copyObserversOfObject:1 creatingIfAbsent:?];
    v7 = [(_NSObserverList *)v6 addBlockSink:a3 toObservableObject:self forTag:1];

    return v7;
  }

  else
  {
    v9 = [NSObservationSink handleValuesWithBlock:a3];

    return [self addObserver:v9];
  }
}

IMP __64__NSObject_DefaultObservationImplementations__addObserverBlock___block_invoke()
{
  v0 = objc_opt_class();
  result = class_getMethodImplementation(v0, sel_addObserver_);
  _MergedGlobals_19_1 = result;
  return result;
}

- (id)addObservationTransformer:(id)a3
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__NSObject_DefaultObservationImplementations__addObservationTransformer___block_invoke;
  v4[3] = &unk_1E69F3DB0;
  v4[4] = a3;
  return [self addObserver:[NSObservationTransformer mapValuesWithBlock:v4]];
}

- (void)receiveObservedError:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __68__NSObject_DefaultObservationImplementations__receiveObservedError___block_invoke;
  v12 = &unk_1E69F30D8;
  v13 = self;
  v14[0] = 0;
  StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v14);
  MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
  v8 = objc_constructInstance(v7, &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[6] = 2;
  *(v8 + 1) = a3;
  *(v8 + 2) = self;
  v11(v10, v8);
}

void __68__NSObject_DefaultObservationImplementations__receiveObservedError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [_NSObserverList _copyObserversOfObject:0 creatingIfAbsent:?];
  [v3 _receiveBox:a2];
}

- (void)receiveObservedValue:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __68__NSObject_DefaultObservationImplementations__receiveObservedValue___block_invoke;
  v12 = &unk_1E69F30D8;
  v13 = self;
  v14[0] = 0;
  StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v14);
  MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
  v8 = objc_constructInstance(v7, &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8[6] = 1;
  *(v8 + 1) = a3;
  *(v8 + 2) = self;
  v11(v10, v8);
}

void __68__NSObject_DefaultObservationImplementations__receiveObservedValue___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [_NSObserverList _copyObserversOfObject:0 creatingIfAbsent:?];
  [v3 _receiveBox:a2];
}

- (id)addObserver:(id)a3
{
  v5 = [_NSObserverList _copyObserversOfObject:1 creatingIfAbsent:?];
  v6 = [(_NSObserverList *)v5 addObserver:a3 toObservableObject:self];

  return v6;
}

- (void)removeObservation:(id)a3
{
  v4 = [_NSObserverList _copyObserversOfObject:0 creatingIfAbsent:?];
  [v4 removeObservation:a3];
}

- (void)_receiveBox:(id)a3
{
  v4 = *(a3 + 6);
  switch(v4)
  {
    case 3:

      [self finishObserving];
      break;
    case 2:
      v6 = *(a3 + 1);

      [self receiveObservedError:v6];
      break;
    case 1:
      v5 = *(a3 + 1);

      [self receiveObservedValue:v5];
      break;
    default:
      abort();
  }
}

+ (id)_createMutableArrayValueGetterWithContainerClassID:(id)a3 key:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  if (_NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(a1, a4))
  {
    v7 = _NSKVONotifyingOriginalClassForIsa(a1);
    v8 = NSKeyValueCachedMutableArrayGetters;
    if (!NSKeyValueCachedMutableArrayGetters)
    {
      v9 = *(MEMORY[0x1E695E9F8] + 16);
      *&callBacks.version = *MEMORY[0x1E695E9F8];
      *&callBacks.release = v9;
      callBacks.equal = NSKeyValueAccessorIsEqual;
      callBacks.hash = NSKeyValueAccessorHash;
      v8 = CFSetCreateMutable(0, 0, &callBacks);
      NSKeyValueCachedMutableArrayGetters = v8;
    }

    callBacks.version = 0;
    callBacks.retain = v7;
    callBacks.release = a4;
    if (a4)
    {
      v10 = CFHash(a4);
      v8 = NSKeyValueCachedMutableArrayGetters;
    }

    else
    {
      v10 = 0;
    }

    callBacks.copyDescription = (v10 ^ v7);
    Value = CFSetGetValue(v8, &callBacks);
    if (!Value)
    {
      Value = [v7 _createMutableArrayValueGetterWithContainerClassID_key_];
      CFSetAddValue(NSKeyValueCachedMutableArrayGetters, Value);
    }

    return [[NSKeyValueNotifyingMutableCollectionGetter alloc] initWithContainerClassID:a3 key:a4 mutableCollectionGetter:Value proxyClass:objc_opt_self()];
  }

  v11 = [a4 lengthOfBytesUsingEncoding:4];
  v12 = v11;
  v13 = v11 + 1;
  if (v11 == -1)
  {
    v14 = MEMORY[0x1EEE9AC00](-1);
    v15 = &v39;
    LOBYTE(v39) = 0;
  }

  else
  {
    v15 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v15 maxLength:v13 encoding:{4, v14}];
  if (v13 >= 2 && v15 && memchr(v15, 0, v12))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
  }

  if ([a4 length])
  {
    *v15 = __toupper(*v15);
  }

  v16 = _MergedGlobals_98;
  if (!_MergedGlobals_98)
  {
    v17 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v17;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    v16 = CFSetCreateMutable(0, 0, &callBacks);
    _MergedGlobals_98 = v16;
  }

  callBacks.version = 0;
  callBacks.retain = a1;
  callBacks.release = a4;
  if (a4)
  {
    v18 = CFHash(a4);
    v16 = _MergedGlobals_98;
  }

  else
  {
    v18 = 0;
  }

  callBacks.copyDescription = (v18 ^ a1);
  v21 = CFSetGetValue(v16, &callBacks);
  if (!v21)
  {
    v21 = [a1 _createValueGetterWithContainerClassID_key_];
    CFSetAddValue(_MergedGlobals_98, v21);
  }

  v22 = NSKeyValueMethodForPattern(a1, "insertObject:in%sAtIndex:", v15);
  v23 = NSKeyValueMethodForPattern(a1, "insert%s:atIndexes:", v15);
  v24 = NSKeyValueMethodForPattern(a1, "removeObjectFrom%sAtIndex:", v15);
  v25 = NSKeyValueMethodForPattern(a1, "remove%sAtIndexes:", v15);
  if (v22 | v23)
  {
    v26 = v25;
    if (v24 | v25)
    {
      v40 = a3;
      v27 = objc_alloc_init(NSKeyValueMutatingArrayMethodSet);
      v27->insertObjectAtIndex = v22;
      v27->insertObjectsAtIndexes = v23;
      v27->removeObjectAtIndex = v24;
      v27->removeObjectsAtIndexes = v26;
      v27->replaceObjectAtIndex = NSKeyValueMethodForPattern(a1, "replaceObjectIn%sAtIndex:withObject:", v15);
      v27->replaceObjectsAtIndexes = NSKeyValueMethodForPattern(a1, "replace%sAtIndexes:with%s:", v15, v15);
      if (objc_opt_isKindOfClass())
      {
        v28 = [NSKeyValueFastMutableCollection1Getter alloc];
        v29 = [v21 methods];
        v30 = [(NSKeyValueFastMutableCollection1Getter *)v28 initWithContainerClassID:v40 key:a4 nonmutatingMethods:v29 mutatingMethods:v27 proxyClass:objc_opt_self()];
      }

      else
      {
        v38 = [NSKeyValueFastMutableCollection2Getter alloc];
        v30 = [(NSKeyValueFastMutableCollection2Getter *)v38 initWithContainerClassID:v40 key:a4 baseGetter:v21 mutatingMethods:v27 proxyClass:objc_opt_self()];
      }

      v20 = v30;

      if (!v13)
      {
        return v20;
      }

LABEL_40:
      free(v15);
      return v20;
    }
  }

  v31 = NSKeyValueCachedSetters;
  if (!NSKeyValueCachedSetters)
  {
    v32 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v32;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    v31 = CFSetCreateMutable(0, 0, &callBacks);
    NSKeyValueCachedSetters = v31;
  }

  callBacks.version = 0;
  callBacks.retain = a1;
  callBacks.release = a4;
  v33 = a3;
  if (a4)
  {
    v34 = CFHash(a4);
    v31 = NSKeyValueCachedSetters;
  }

  else
  {
    v34 = 0;
  }

  callBacks.copyDescription = (v34 ^ a1);
  v35 = CFSetGetValue(v31, &callBacks);
  if (!v35)
  {
    v35 = [a1 _createValueSetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedSetters, v35);
  }

  if (objc_opt_isKindOfClass())
  {
    v36 = -[NSKeyValueIvarMutableCollectionGetter initWithContainerClassID:key:containerIsa:ivar:proxyClass:]([NSKeyValueIvarMutableCollectionGetter alloc], "initWithContainerClassID:key:containerIsa:ivar:proxyClass:", v33, a4, a1, [v35 ivar], objc_opt_self());
  }

  else
  {
    v36 = [[NSKeyValueSlowMutableCollectionGetter alloc] initWithContainerClassID:v33 key:a4 baseGetter:v21 baseSetter:v35 containerIsa:a1 proxyClass:objc_opt_self()];
  }

  v20 = v36;
  if (v13)
  {
    goto LABEL_40;
  }

  return v20;
}

- (id)valueForKey:(NSString *)key
{
  v11 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to retrieve a value for a nil key", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v9);
  }

  Class = object_getClass(self);
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  if (!_MergedGlobals_98)
  {
    v6 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v6;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    _MergedGlobals_98 = CFSetCreateMutable(0, 0, &callBacks);
  }

  callBacks.version = 0;
  callBacks.copyDescription = 0;
  callBacks.retain = Class;
  callBacks.release = key;
  callBacks.copyDescription = (CFHash(key) ^ Class);
  Value = CFSetGetValue(_MergedGlobals_98, &callBacks);
  if (!Value)
  {
    Value = [Class _createValueGetterWithContainerClassID_key_];
    CFSetAddValue(_MergedGlobals_98, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return _NSGetUsingKeyValueGetter(self, Value);
}

- (void)setValue:(id)value forKey:(NSString *)key
{
  v12 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: attempt to set a value for a nil key", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v10);
  }

  Class = object_getClass(self);
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  if (!NSKeyValueCachedSetters)
  {
    v8 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v8;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    NSKeyValueCachedSetters = CFSetCreateMutable(0, 0, &callBacks);
  }

  callBacks.version = 0;
  callBacks.copyDescription = 0;
  callBacks.retain = Class;
  callBacks.release = key;
  callBacks.copyDescription = (CFHash(key) ^ Class);
  v9 = CFSetGetValue(NSKeyValueCachedSetters, &callBacks);
  if (!v9)
  {
    v9 = [Class _createValueSetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedSetters, v9);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  _NSSetUsingKeyValueSetter(self, v9, value);
}

- (BOOL)validateValue:(id *)ioValue forKey:(NSString *)inKey error:(NSError *)outError
{
  v16[3] = *MEMORY[0x1E69E9840];
  v7 = [(NSString *)inKey lengthOfBytesUsingEncoding:4];
  v8 = v7;
  v9 = v7 + 1;
  if (v7 == -1)
  {
    v10 = MEMORY[0x1EEE9AC00](-1);
    v11 = v16;
    LOBYTE(v16[0]) = 0;
  }

  else
  {
    v11 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  }

  [(NSString *)inKey getCString:v11 maxLength:v9 encoding:4, v10];
  if (v9 >= 2 && v11 && memchr(v11, 0, v8))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
  }

  if ([(NSString *)inKey length])
  {
    *v11 = __toupper(*v11);
  }

  Class = object_getClass(self);
  if (!NSKeyValueMethodForPattern(Class, "validate%s:error:", v11))
  {
    v14 = 1;
    if (!v9)
    {
      return v14;
    }

    goto LABEL_11;
  }

  method_invoke();
  v14 = v13;
  if (v9)
  {
LABEL_11:
    free(v11);
  }

  return v14;
}

- (NSMutableArray)mutableArrayValueForKey:(NSString *)key
{
  v12 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v6 = NSKeyValueCachedMutableArrayGetters;
  if (!NSKeyValueCachedMutableArrayGetters)
  {
    v7 = *(MEMORY[0x1E695E9F8] + 16);
    *&v11.version = *MEMORY[0x1E695E9F8];
    *&v11.release = v7;
    v11.equal = NSKeyValueAccessorIsEqual;
    v11.hash = NSKeyValueAccessorHash;
    v6 = CFSetCreateMutable(0, 0, &v11);
    NSKeyValueCachedMutableArrayGetters = v6;
  }

  v11.version = 0;
  v11.retain = Class;
  *&v11.release = key;
  if (key)
  {
    v8 = CFHash(key);
    v6 = NSKeyValueCachedMutableArrayGetters;
  }

  else
  {
    v8 = 0;
  }

  v11.copyDescription = (v8 ^ Class);
  Value = CFSetGetValue(v6, &v11);
  if (!Value)
  {
    Value = [Class _createMutableArrayValueGetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedMutableArrayGetters, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return _NSGetUsingKeyValueGetter(self, Value);
}

- (NSMutableOrderedSet)mutableOrderedSetValueForKey:(NSString *)key
{
  v12 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v6 = NSKeyValueCachedMutableOrderedSetGetters;
  if (!NSKeyValueCachedMutableOrderedSetGetters)
  {
    v7 = *(MEMORY[0x1E695E9F8] + 16);
    *&v11.version = *MEMORY[0x1E695E9F8];
    *&v11.release = v7;
    v11.equal = NSKeyValueAccessorIsEqual;
    v11.hash = NSKeyValueAccessorHash;
    v6 = CFSetCreateMutable(0, 0, &v11);
    NSKeyValueCachedMutableOrderedSetGetters = v6;
  }

  v11.version = 0;
  v11.retain = Class;
  *&v11.release = key;
  if (key)
  {
    v8 = CFHash(key);
    v6 = NSKeyValueCachedMutableOrderedSetGetters;
  }

  else
  {
    v8 = 0;
  }

  v11.copyDescription = (v8 ^ Class);
  Value = CFSetGetValue(v6, &v11);
  if (!Value)
  {
    Value = [Class _createMutableOrderedSetValueGetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedMutableOrderedSetGetters, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return _NSGetUsingKeyValueGetter(self, Value);
}

- (NSMutableSet)mutableSetValueForKey:(NSString *)key
{
  v12 = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v6 = NSKeyValueCachedMutableSetGetters;
  if (!NSKeyValueCachedMutableSetGetters)
  {
    v7 = *(MEMORY[0x1E695E9F8] + 16);
    *&v11.version = *MEMORY[0x1E695E9F8];
    *&v11.release = v7;
    v11.equal = NSKeyValueAccessorIsEqual;
    v11.hash = NSKeyValueAccessorHash;
    v6 = CFSetCreateMutable(0, 0, &v11);
    NSKeyValueCachedMutableSetGetters = v6;
  }

  v11.version = 0;
  v11.retain = Class;
  *&v11.release = key;
  if (key)
  {
    v8 = CFHash(key);
    v6 = NSKeyValueCachedMutableSetGetters;
  }

  else
  {
    v8 = 0;
  }

  v11.copyDescription = (v8 ^ Class);
  Value = CFSetGetValue(v6, &v11);
  if (!Value)
  {
    Value = [Class _createMutableSetValueGetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedMutableSetGetters, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return _NSGetUsingKeyValueGetter(self, Value);
}

- (id)valueForKeyPath:(NSString *)keyPath
{
  v5 = [(NSString *)keyPath length];
  if (!keyPath)
  {
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v6 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(keyPath, v6);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = memchr(CStringPtr, 46, v5);
    if (v9)
    {
      v10 = (v9 - v8);
LABEL_9:
      v13 = v10 + 1;
      v14 = [(NSString *)keyPath _newSubstringWithRange:0 zone:?];
      v15 = [(NSString *)keyPath _newSubstringWithRange:v13 zone:v5 - v13, 0];
      v16 = [-[NSObject valueForKey:](self valueForKey:{v14), "valueForKeyPath:", v15}];

      return v16;
    }
  }

  else
  {
LABEL_7:
    v11 = [(NSString *)keyPath rangeOfString:@"." options:2 range:0, v5];
    if (v12)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  return [self valueForKey:keyPath];
}

- (void)setValue:(id)value forKeyPath:(NSString *)keyPath
{
  v7 = [(NSString *)keyPath length];
  if (!keyPath)
  {
    goto LABEL_7;
  }

  v8 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v8 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(keyPath, v8);
  if (CStringPtr)
  {
    v10 = CStringPtr;
    v11 = memchr(CStringPtr, 46, v7);
    if (v11)
    {
      v12 = (v11 - v10);
LABEL_9:
      v15 = v12 + 1;
      v17 = [(NSString *)keyPath _newSubstringWithRange:0 zone:?];
      v16 = [(NSString *)keyPath _newSubstringWithRange:v15 zone:v7 - v15, 0];
      [-[NSObject valueForKey:](self valueForKey:{v17), "setValue:forKeyPath:", value, v16}];

      return;
    }
  }

  else
  {
LABEL_7:
    v13 = [(NSString *)keyPath rangeOfString:@"." options:2 range:0, v7];
    if (v14)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  [self setValue:value forKey:keyPath];
}

- (BOOL)validateValue:(id *)ioValue forKeyPath:(NSString *)inKeyPath error:(NSError *)outError
{
  v9 = [(NSString *)inKeyPath length];
  if (!inKeyPath)
  {
    goto LABEL_7;
  }

  v10 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v10 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(inKeyPath, v10);
  if (CStringPtr)
  {
    v12 = CStringPtr;
    v13 = memchr(CStringPtr, 46, v9);
    if (v13)
    {
      v14 = (v13 - v12);
LABEL_9:
      v17 = v14 + 1;
      v18 = [(NSString *)inKeyPath _newSubstringWithRange:0 zone:?];
      v19 = [(NSString *)inKeyPath _newSubstringWithRange:v17 zone:v9 - v17, 0];
      v20 = [-[NSObject valueForKey:](self valueForKey:{v18), "validateValue:forKeyPath:error:", ioValue, v19, outError}];

      return v20;
    }
  }

  else
  {
LABEL_7:
    v15 = [(NSString *)inKeyPath rangeOfString:@"." options:2 range:0, v9];
    if (v16)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  return [self validateValue:ioValue forKey:inKeyPath error:outError];
}

- (NSMutableArray)mutableArrayValueForKeyPath:(NSString *)keyPath
{
  v5 = [(NSString *)keyPath length];
  if (!keyPath)
  {
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v6 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(keyPath, v6);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = memchr(CStringPtr, 46, v5);
    if (v9)
    {
      v10 = (v9 - v8);
LABEL_9:
      v13 = v10 + 1;
      v14 = [(NSString *)keyPath _newSubstringWithRange:0 zone:?];
      v15 = [(NSString *)keyPath _newSubstringWithRange:v13 zone:v5 - v13, 0];
      v16 = [-[NSObject valueForKey:](self valueForKey:{v14), "mutableArrayValueForKeyPath:", v15}];

      return v16;
    }
  }

  else
  {
LABEL_7:
    v11 = [(NSString *)keyPath rangeOfString:@"." options:2 range:0, v5];
    if (v12)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  return [self mutableArrayValueForKey:keyPath];
}

- (NSMutableOrderedSet)mutableOrderedSetValueForKeyPath:(NSString *)keyPath
{
  v5 = [(NSString *)keyPath length];
  if (!keyPath)
  {
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v6 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(keyPath, v6);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = memchr(CStringPtr, 46, v5);
    if (v9)
    {
      v10 = (v9 - v8);
LABEL_9:
      v13 = v10 + 1;
      v14 = [(NSString *)keyPath _newSubstringWithRange:0 zone:?];
      v15 = [(NSString *)keyPath _newSubstringWithRange:v13 zone:v5 - v13, 0];
      v16 = [-[NSObject valueForKey:](self valueForKey:{v14), "mutableOrderedSetValueForKeyPath:", v15}];

      return v16;
    }
  }

  else
  {
LABEL_7:
    v11 = [(NSString *)keyPath rangeOfString:@"." options:2 range:0, v5];
    if (v12)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  return [self mutableOrderedSetValueForKey:keyPath];
}

- (NSMutableSet)mutableSetValueForKeyPath:(NSString *)keyPath
{
  v5 = [(NSString *)keyPath length];
  if (!keyPath)
  {
    goto LABEL_7;
  }

  v6 = *MEMORY[0x1E695E0A8];
  if (*MEMORY[0x1E695E0A8] == -1)
  {
    v6 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(keyPath, v6);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = memchr(CStringPtr, 46, v5);
    if (v9)
    {
      v10 = (v9 - v8);
LABEL_9:
      v13 = v10 + 1;
      v14 = [(NSString *)keyPath _newSubstringWithRange:0 zone:?];
      v15 = [(NSString *)keyPath _newSubstringWithRange:v13 zone:v5 - v13, 0];
      v16 = [-[NSObject valueForKey:](self valueForKey:{v14), "mutableSetValueForKeyPath:", v15}];

      return v16;
    }
  }

  else
  {
LABEL_7:
    v11 = [(NSString *)keyPath rangeOfString:@"." options:2 range:0, v5];
    if (v12)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  return [self mutableSetValueForKey:keyPath];
}

- (id)valueForUndefinedKey:(NSString *)key
{
  v3 = key;
  v5 = [NSString stringWithFormat:@"[<%@ %p> valueForUndefinedKey:]: this class is not key value coding-compliant for the key %@.", objc_opt_class(), self, key];
  v6 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v7 = [v6 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", v3, @"NSUnknownUserInfoKey", 0}];
  v8 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSUnknownKeyException" reason:v5 userInfo:v7];

  [v8 raise];
  return 0;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
  v4 = key;
  v6 = [NSString stringWithFormat:@"[<%@ %p> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key %@.", objc_opt_class(), self, key];
  v7 = objc_alloc(MEMORY[0x1E695DF20]);
  if (!v4)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v8 = [v7 initWithObjectsAndKeys:{self, @"NSTargetObjectUserInfoKey", v4, @"NSUnknownUserInfoKey", 0}];
  v9 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSUnknownKeyException" reason:v6 userInfo:v8];

  [v9 raise];
}

- (NSDictionary)dictionaryWithValuesForKeys:(NSArray *)keys
{
  v5 = [(NSArray *)keys count];
  v6 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  v7 = malloc_type_malloc(8 * v5, 0x80040B8603338uLL);
  [(NSArray *)keys getObjects:v6 range:0, v5];
  v8 = [MEMORY[0x1E695DFB0] null];
  if (v5)
  {
    v9 = v8;
    v10 = v6;
    v11 = v7;
    v12 = v5;
    do
    {
      v13 = *v10++;
      v14 = [self valueForKey:v13];
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v9;
      }

      *v11++ = v15;
      --v12;
    }

    while (v12);
  }

  v16 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjects:v7 forKeys:v6 count:v5];
  free(v7);
  free(v6);
  return v16;
}

- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DFB0] null];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NSDictionary *)keyedValues countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(keyedValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSDictionary *)keyedValues objectForKey:v10];
        if (v11 == v5)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11;
        }

        [self setValue:v12 forKey:v10];
      }

      v7 = [(NSDictionary *)keyedValues countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }
}

+ (id)_createValueGetterWithContainerClassID:(id)a3 key:(id)a4
{
  v33[3] = *MEMORY[0x1E69E9840];
  v7 = [a4 lengthOfBytesUsingEncoding:4];
  v8 = v7 + 1;
  if (v7 == -1)
  {
    v9 = MEMORY[0x1EEE9AC00](-1);
    v10 = v33;
    LOBYTE(v33[0]) = 0;
  }

  else
  {
    v10 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v10 maxLength:v8 encoding:{4, v9}];
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v8 < 2 || v10 == 0;
  v13 = v12;
  if (!v12 && memchr(v10, 0, v11 - 1))
  {
    goto LABEL_52;
  }

  v14 = [a4 length];
  if (v14)
  {
    v14 = __toupper(*v10);
    *v10 = v14;
  }

  if (v8)
  {
    v15 = malloc_type_malloc(v8, 0x100004077774924uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v15 = v33;
    LOBYTE(v33[0]) = 0;
  }

  [a4 getCString:v15 maxLength:v8 encoding:4];
  if ((v13 & 1) == 0)
  {
    if (memchr(v10, 0, v11 - 1))
    {
LABEL_52:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
    }
  }

  v16 = NSKeyValueMethodForPattern(a1, "get%s", v10);
  if (v16 || (v16 = NSKeyValueMethodForPattern(a1, "%s", v15)) != 0 || (v16 = NSKeyValueMethodForPattern(a1, "is%s", v10)) != 0 || (v16 = NSKeyValueMethodForPattern(a1, "_get%s", v10)) != 0 || (v16 = NSKeyValueMethodForPattern(a1, "_%s", v15)) != 0)
  {
    v17 = [[NSKeyValueMethodGetter alloc] initWithContainerClassID:a3 key:a4 method:v16];
LABEL_28:
    v18 = v17;
    goto LABEL_29;
  }

  v20 = NSKeyValueMethodForPattern(a1, "countOf%s", v10);
  v21 = NSKeyValueMethodForPattern(a1, "objectIn%sAtIndex:", v10);
  v22 = NSKeyValueMethodForPattern(a1, "%sAtIndexes:", v15);
  v23 = NSKeyValueMethodForPattern(a1, "indexIn%sOfObject:", v10);
  if (v23 && v20)
  {
    if (v21 | v22)
    {
      v24 = v23;
      v25 = objc_alloc_init(NSKeyValueNonmutatingOrderedSetMethodSet);
      v25->count = v20;
      v25->objectAtIndex = v21;
      v25->indexOfObject = v24;
      v25->objectsAtIndexes = v22;
      v26 = v25;
      v25->getObjectsRange = NSKeyValueMethodForPattern(a1, "get%s:range:", v10);
      v18 = [[NSKeyValueCollectionGetter alloc] initWithContainerClassID:a3 key:a4 methods:v26 proxyClass:objc_opt_self()];

      goto LABEL_29;
    }
  }

  else if (!v20)
  {
    goto LABEL_41;
  }

  if (v21 | v22)
  {
    v27 = objc_alloc_init(NSKeyValueNonmutatingArrayMethodSet);
    v27->count = v20;
    v27->objectAtIndex = v21;
    v27->objectsAtIndexes = v22;
    v27->getObjectsRange = NSKeyValueMethodForPattern(a1, "get%s:range:", v10);
    v28 = [NSKeyValueCollectionGetter alloc];
LABEL_45:
    v18 = [(NSKeyValueCollectionGetter *)v28 initWithContainerClassID:a3 key:a4 methods:v27 proxyClass:objc_opt_self()];

LABEL_29:
    if (v18)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_41:
  v29 = NSKeyValueMethodForPattern(a1, "enumeratorOf%s", v10);
  v30 = NSKeyValueMethodForPattern(a1, "memberOf%s:", v10);
  if (v20)
  {
    if (v29)
    {
      v31 = v30;
      if (v30)
      {
        v27 = objc_alloc_init(NSKeyValueNonmutatingSetMethodSet);
        v27->count = v20;
        v27->objectAtIndex = v29;
        v27->getObjectsRange = v31;
        v28 = [NSKeyValueCollectionGetter alloc];
        goto LABEL_45;
      }
    }
  }

  if ([a1 accessInstanceVariablesDirectly])
  {
    v32 = NSKeyValueIvarForPattern(a1, "_%s", v15);
    if (v32 || (v32 = NSKeyValueIvarForPattern(a1, "_is%s", v10)) != 0 || (v32 = NSKeyValueIvarForPattern(a1, "%s", v15)) != 0 || (v32 = NSKeyValueIvarForPattern(a1, "is%s", v10)) != 0)
    {
      v17 = [[NSKeyValueIvarGetter alloc] initWithContainerClassID:a3 key:a4 containerIsa:a1 ivar:v32];
      goto LABEL_28;
    }
  }

LABEL_30:
  v18 = [a1 _createValuePrimitiveGetterWithContainerClassID:a3 key:a4];
LABEL_31:
  if (v8)
  {
    free(v10);
    free(v15);
  }

  return v18;
}

+ (id)_createValueSetterWithContainerClassID:(id)a3 key:(id)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = [a4 lengthOfBytesUsingEncoding:4];
  v8 = v7 + 1;
  if (v7 == -1)
  {
    v9 = MEMORY[0x1EEE9AC00](-1);
    v10 = v21;
    LOBYTE(v21[0]) = 0;
  }

  else
  {
    v10 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v10 maxLength:v8 encoding:{4, v9}];
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v8 < 2 || v10 == 0;
  v13 = v12;
  if (!v12 && memchr(v10, 0, v11 - 1))
  {
    goto LABEL_37;
  }

  v14 = [a4 length];
  if (v14)
  {
    v14 = __toupper(*v10);
    *v10 = v14;
  }

  if (v8)
  {
    v15 = malloc_type_malloc(v8, 0x100004077774924uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v15 = v21;
    LOBYTE(v21[0]) = 0;
  }

  [a4 getCString:v15 maxLength:v8 encoding:4];
  if ((v13 & 1) == 0)
  {
    if (memchr(v10, 0, v11 - 1))
    {
LABEL_37:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
    }
  }

  v16 = NSKeyValueMethodForPattern(a1, "set%s:", v10);
  if (v16 || (v16 = NSKeyValueMethodForPattern(a1, "_set%s:", v10)) != 0 || (v16 = NSKeyValueMethodForPattern(a1, "setIs%s:", v10)) != 0)
  {
    v17 = [[NSKeyValueMethodSetter alloc] initWithContainerClassID:a3 key:a4 method:v16];
    goto LABEL_26;
  }

  if ([a1 accessInstanceVariablesDirectly])
  {
    v20 = NSKeyValueIvarForPattern(a1, "_%s", v15);
    if (v20 || (v20 = NSKeyValueIvarForPattern(a1, "_is%s", v10)) != 0 || (v20 = NSKeyValueIvarForPattern(a1, "%s", v15)) != 0 || (v20 = NSKeyValueIvarForPattern(a1, "is%s", v10)) != 0)
    {
      v17 = [[NSKeyValueIvarSetter alloc] initWithContainerClassID:a3 key:a4 containerIsa:a1 ivar:v20];
LABEL_26:
      v18 = v17;
      if (v17)
      {
        goto LABEL_28;
      }
    }
  }

  v18 = [a1 _createValuePrimitiveSetterWithContainerClassID:a3 key:a4];
LABEL_28:
  if (v8)
  {
    free(v10);
    free(v15);
  }

  return v18;
}

+ (id)_createMutableOrderedSetValueGetterWithContainerClassID:(id)a3 key:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  if (_NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(a1, a4))
  {
    v7 = _NSKVONotifyingOriginalClassForIsa(a1);
    v8 = NSKeyValueCachedMutableOrderedSetGetters;
    if (!NSKeyValueCachedMutableOrderedSetGetters)
    {
      v9 = *(MEMORY[0x1E695E9F8] + 16);
      *&callBacks.version = *MEMORY[0x1E695E9F8];
      *&callBacks.release = v9;
      callBacks.equal = NSKeyValueAccessorIsEqual;
      callBacks.hash = NSKeyValueAccessorHash;
      v8 = CFSetCreateMutable(0, 0, &callBacks);
      NSKeyValueCachedMutableOrderedSetGetters = v8;
    }

    callBacks.version = 0;
    callBacks.retain = v7;
    callBacks.release = a4;
    if (a4)
    {
      v10 = CFHash(a4);
      v8 = NSKeyValueCachedMutableOrderedSetGetters;
    }

    else
    {
      v10 = 0;
    }

    callBacks.copyDescription = (v10 ^ v7);
    Value = CFSetGetValue(v8, &callBacks);
    if (!Value)
    {
      Value = [v7 _createMutableOrderedValueGetterWithContainerClassID_key_];
      CFSetAddValue(NSKeyValueCachedMutableOrderedSetGetters, Value);
    }

    return [[NSKeyValueNotifyingMutableCollectionGetter alloc] initWithContainerClassID:a3 key:a4 mutableCollectionGetter:Value proxyClass:objc_opt_self()];
  }

  v11 = [a4 lengthOfBytesUsingEncoding:4];
  v12 = v11;
  v13 = v11 + 1;
  if (v11 == -1)
  {
    v14 = MEMORY[0x1EEE9AC00](-1);
    v15 = &v39;
    LOBYTE(v39) = 0;
  }

  else
  {
    v15 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v15 maxLength:v13 encoding:{4, v14}];
  if (v13 >= 2 && v15 && memchr(v15, 0, v12))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
  }

  if ([a4 length])
  {
    *v15 = __toupper(*v15);
  }

  v16 = _MergedGlobals_98;
  if (!_MergedGlobals_98)
  {
    v17 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v17;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    v16 = CFSetCreateMutable(0, 0, &callBacks);
    _MergedGlobals_98 = v16;
  }

  callBacks.version = 0;
  callBacks.retain = a1;
  callBacks.release = a4;
  if (a4)
  {
    v18 = CFHash(a4);
    v16 = _MergedGlobals_98;
  }

  else
  {
    v18 = 0;
  }

  callBacks.copyDescription = (v18 ^ a1);
  v21 = CFSetGetValue(v16, &callBacks);
  if (!v21)
  {
    v21 = [a1 _createValueGetterWithContainerClassID_key_];
    CFSetAddValue(_MergedGlobals_98, v21);
  }

  v22 = NSKeyValueMethodForPattern(a1, "insertObject:in%sAtIndex:", v15);
  v23 = NSKeyValueMethodForPattern(a1, "insert%s:atIndexes:", v15);
  v24 = NSKeyValueMethodForPattern(a1, "removeObjectFrom%sAtIndex:", v15);
  v25 = NSKeyValueMethodForPattern(a1, "remove%sAtIndexes:", v15);
  if (v22 | v23)
  {
    v26 = v25;
    if (v24 | v25)
    {
      v40 = a3;
      v27 = objc_alloc_init(NSKeyValueMutatingOrderedSetMethodSet);
      v27->insertObjectAtIndex = v22;
      v27->insertObjectsAtIndexes = v23;
      v27->removeObjectAtIndex = v24;
      v27->removeObjectsAtIndexes = v26;
      v27->replaceObjectAtIndex = NSKeyValueMethodForPattern(a1, "replaceObjectIn%sAtIndex:withObject:", v15);
      v27->replaceObjectsAtIndexes = NSKeyValueMethodForPattern(a1, "replace%sAtIndexes:with%s:", v15, v15);
      if (objc_opt_isKindOfClass())
      {
        v28 = [NSKeyValueFastMutableCollection1Getter alloc];
        v29 = [v21 methods];
        v30 = [(NSKeyValueFastMutableCollection1Getter *)v28 initWithContainerClassID:v40 key:a4 nonmutatingMethods:v29 mutatingMethods:v27 proxyClass:objc_opt_self()];
      }

      else
      {
        v38 = [NSKeyValueFastMutableCollection2Getter alloc];
        v30 = [(NSKeyValueFastMutableCollection2Getter *)v38 initWithContainerClassID:v40 key:a4 baseGetter:v21 mutatingMethods:v27 proxyClass:objc_opt_self()];
      }

      v20 = v30;

      if (!v13)
      {
        return v20;
      }

LABEL_40:
      free(v15);
      return v20;
    }
  }

  v31 = NSKeyValueCachedSetters;
  if (!NSKeyValueCachedSetters)
  {
    v32 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v32;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    v31 = CFSetCreateMutable(0, 0, &callBacks);
    NSKeyValueCachedSetters = v31;
  }

  callBacks.version = 0;
  callBacks.retain = a1;
  callBacks.release = a4;
  v33 = a3;
  if (a4)
  {
    v34 = CFHash(a4);
    v31 = NSKeyValueCachedSetters;
  }

  else
  {
    v34 = 0;
  }

  callBacks.copyDescription = (v34 ^ a1);
  v35 = CFSetGetValue(v31, &callBacks);
  if (!v35)
  {
    v35 = [a1 _createValueSetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedSetters, v35);
  }

  if (objc_opt_isKindOfClass())
  {
    v36 = -[NSKeyValueIvarMutableCollectionGetter initWithContainerClassID:key:containerIsa:ivar:proxyClass:]([NSKeyValueIvarMutableCollectionGetter alloc], "initWithContainerClassID:key:containerIsa:ivar:proxyClass:", v33, a4, a1, [v35 ivar], objc_opt_self());
  }

  else
  {
    v36 = [[NSKeyValueSlowMutableCollectionGetter alloc] initWithContainerClassID:v33 key:a4 baseGetter:v21 baseSetter:v35 containerIsa:a1 proxyClass:objc_opt_self()];
  }

  v20 = v36;
  if (v13)
  {
    goto LABEL_40;
  }

  return v20;
}

+ (id)_createMutableSetValueGetterWithContainerClassID:(id)a3 key:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  if (_NSKVONotifyingMutatorsShouldNotifyForIsaAndKey(a1, a4))
  {
    v7 = _NSKVONotifyingOriginalClassForIsa(a1);
    v8 = NSKeyValueCachedMutableSetGetters;
    if (!NSKeyValueCachedMutableSetGetters)
    {
      v9 = *(MEMORY[0x1E695E9F8] + 16);
      *&callBacks.version = *MEMORY[0x1E695E9F8];
      *&callBacks.release = v9;
      callBacks.equal = NSKeyValueAccessorIsEqual;
      callBacks.hash = NSKeyValueAccessorHash;
      v8 = CFSetCreateMutable(0, 0, &callBacks);
      NSKeyValueCachedMutableSetGetters = v8;
    }

    callBacks.version = 0;
    callBacks.retain = v7;
    callBacks.release = a4;
    if (a4)
    {
      v10 = CFHash(a4);
      v8 = NSKeyValueCachedMutableSetGetters;
    }

    else
    {
      v10 = 0;
    }

    callBacks.copyDescription = (v10 ^ v7);
    Value = CFSetGetValue(v8, &callBacks);
    if (!Value)
    {
      Value = [v7 _createMutableSetValueGetterWithContainerClassID_key_];
      CFSetAddValue(NSKeyValueCachedMutableSetGetters, Value);
    }

    return [[NSKeyValueNotifyingMutableCollectionGetter alloc] initWithContainerClassID:a3 key:a4 mutableCollectionGetter:Value proxyClass:objc_opt_self()];
  }

  v11 = [a4 lengthOfBytesUsingEncoding:4];
  v12 = v11;
  v13 = v11 + 1;
  if (v11 == -1)
  {
    v14 = MEMORY[0x1EEE9AC00](-1);
    v15 = &v39;
    LOBYTE(v39) = 0;
  }

  else
  {
    v15 = malloc_type_malloc(v11 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v15 maxLength:v13 encoding:{4, v14}];
  if (v13 >= 2 && v15 && memchr(v15, 0, v12))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
  }

  if ([a4 length])
  {
    *v15 = __toupper(*v15);
  }

  v16 = _MergedGlobals_98;
  if (!_MergedGlobals_98)
  {
    v17 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v17;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    v16 = CFSetCreateMutable(0, 0, &callBacks);
    _MergedGlobals_98 = v16;
  }

  callBacks.version = 0;
  callBacks.retain = a1;
  callBacks.release = a4;
  if (a4)
  {
    v18 = CFHash(a4);
    v16 = _MergedGlobals_98;
  }

  else
  {
    v18 = 0;
  }

  callBacks.copyDescription = (v18 ^ a1);
  v21 = CFSetGetValue(v16, &callBacks);
  if (!v21)
  {
    v21 = [a1 _createValueGetterWithContainerClassID_key_];
    CFSetAddValue(_MergedGlobals_98, v21);
  }

  v22 = NSKeyValueMethodForPattern(a1, "add%sObject:", v15);
  v23 = NSKeyValueMethodForPattern(a1, "remove%s:", v15);
  v24 = NSKeyValueMethodForPattern(a1, "remove%sObject:", v15);
  v25 = NSKeyValueMethodForPattern(a1, "add%s:", v15);
  if (v22 | v25 && v24 | v23)
  {
    v26 = v25;
    v40 = a3;
    v27 = objc_alloc_init(NSKeyValueMutatingSetMethodSet);
    v27->addObject = v22;
    v27->intersectSet = NSKeyValueMethodForPattern(a1, "intersect%s:", v15);
    v27->minusSet = v23;
    v27->removeObject = v24;
    v27->setSet = NSKeyValueMethodForPattern(a1, "set%s:", v15);
    v27->unionSet = v26;
    if (objc_opt_isKindOfClass())
    {
      v28 = [NSKeyValueFastMutableCollection1Getter alloc];
      v29 = [v21 methods];
      v30 = [(NSKeyValueFastMutableCollection1Getter *)v28 initWithContainerClassID:v40 key:a4 nonmutatingMethods:v29 mutatingMethods:v27 proxyClass:objc_opt_self()];
    }

    else
    {
      v38 = [NSKeyValueFastMutableCollection2Getter alloc];
      v30 = [(NSKeyValueFastMutableCollection2Getter *)v38 initWithContainerClassID:v40 key:a4 baseGetter:v21 mutatingMethods:v27 proxyClass:objc_opt_self()];
    }

    v20 = v30;

    if (!v13)
    {
      return v20;
    }

LABEL_40:
    free(v15);
    return v20;
  }

  v31 = NSKeyValueCachedSetters;
  if (!NSKeyValueCachedSetters)
  {
    v32 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v32;
    callBacks.equal = NSKeyValueAccessorIsEqual;
    callBacks.hash = NSKeyValueAccessorHash;
    v31 = CFSetCreateMutable(0, 0, &callBacks);
    NSKeyValueCachedSetters = v31;
  }

  callBacks.version = 0;
  callBacks.retain = a1;
  callBacks.release = a4;
  v33 = a3;
  if (a4)
  {
    v34 = CFHash(a4);
    v31 = NSKeyValueCachedSetters;
  }

  else
  {
    v34 = 0;
  }

  callBacks.copyDescription = (v34 ^ a1);
  v35 = CFSetGetValue(v31, &callBacks);
  if (!v35)
  {
    v35 = [a1 _createValueSetterWithContainerClassID_key_];
    CFSetAddValue(NSKeyValueCachedSetters, v35);
  }

  if (objc_opt_isKindOfClass())
  {
    v36 = -[NSKeyValueIvarMutableCollectionGetter initWithContainerClassID:key:containerIsa:ivar:proxyClass:]([NSKeyValueIvarMutableCollectionGetter alloc], "initWithContainerClassID:key:containerIsa:ivar:proxyClass:", v33, a4, a1, [v35 ivar], objc_opt_self());
  }

  else
  {
    v36 = [[NSKeyValueSlowMutableCollectionGetter alloc] initWithContainerClassID:v33 key:a4 baseGetter:v21 baseSetter:v35 containerIsa:a1 proxyClass:objc_opt_self()];
  }

  v20 = v36;
  if (v13)
  {
    goto LABEL_40;
  }

  return v20;
}

+ (id)_createOtherValueGetterWithContainerClassID:(id)a3 key:(id)a4
{
  v7 = [NSKeyValueUndefinedGetter alloc];

  return [(NSKeyValueUndefinedGetter *)v7 initWithContainerClassID:a3 key:a4 containerIsa:a1];
}

+ (id)_createOtherValueSetterWithContainerClassID:(id)a3 key:(id)a4
{
  v7 = [NSKeyValueUndefinedSetter alloc];

  return [(NSKeyValueUndefinedSetter *)v7 initWithContainerClassID:a3 key:a4 containerIsa:a1];
}

+ (id)_createValuePrimitiveGetterWithContainerClassID:(id)a3 key:(id)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = [a4 lengthOfBytesUsingEncoding:4];
  v8 = v7 + 1;
  if (v7 == -1)
  {
    v9 = MEMORY[0x1EEE9AC00](-1);
    v10 = v21;
    LOBYTE(v21[0]) = 0;
  }

  else
  {
    v10 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v10 maxLength:v8 encoding:{4, v9}];
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v8 < 2 || v10 == 0;
  v13 = v12;
  if (!v12 && memchr(v10, 0, v11 - 1))
  {
    goto LABEL_36;
  }

  v14 = [a4 length];
  if (v14)
  {
    v14 = __toupper(*v10);
    *v10 = v14;
  }

  if (v8)
  {
    v15 = malloc_type_malloc(v8, 0x100004077774924uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v15 = v21;
    LOBYTE(v21[0]) = 0;
  }

  [a4 getCString:v15 maxLength:v8 encoding:4];
  if ((v13 & 1) == 0)
  {
    if (memchr(v10, 0, v11 - 1))
    {
LABEL_36:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
    }
  }

  v16 = NSKeyValueMethodForPattern(a1, "getPrimitive%s", v10);
  if (v16 || (v16 = NSKeyValueMethodForPattern(a1, "primitive%s", v10)) != 0)
  {
    v17 = [[NSKeyValueMethodGetter alloc] initWithContainerClassID:a3 key:a4 method:v16];
    goto LABEL_25;
  }

  if ([a1 accessInstanceVariablesDirectly])
  {
    v20 = NSKeyValueIvarForPattern(a1, "_%s", v15);
    if (v20 || (v20 = NSKeyValueIvarForPattern(a1, "_is%s", v10)) != 0 || (v20 = NSKeyValueIvarForPattern(a1, "%s", v15)) != 0 || (v20 = NSKeyValueIvarForPattern(a1, "is%s", v10)) != 0)
    {
      v17 = [[NSKeyValueIvarGetter alloc] initWithContainerClassID:a3 key:a4 containerIsa:a1 ivar:v20];
LABEL_25:
      v18 = v17;
      if (v17)
      {
        goto LABEL_27;
      }
    }
  }

  v18 = [a1 _createOtherValueGetterWithContainerClassID:a3 key:a4];
LABEL_27:
  if (v8)
  {
    free(v10);
    free(v15);
  }

  return v18;
}

+ (id)_createValuePrimitiveSetterWithContainerClassID:(id)a3 key:(id)a4
{
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = [a4 lengthOfBytesUsingEncoding:4];
  v8 = v7 + 1;
  if (v7 == -1)
  {
    v9 = MEMORY[0x1EEE9AC00](-1);
    v10 = v21;
    LOBYTE(v21[0]) = 0;
  }

  else
  {
    v10 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  }

  [a4 getCString:v10 maxLength:v8 encoding:{4, v9}];
  if (v8 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v8 < 2 || v10 == 0;
  v13 = v12;
  if (!v12 && memchr(v10, 0, v11 - 1))
  {
    goto LABEL_35;
  }

  v14 = [a4 length];
  if (v14)
  {
    v14 = __toupper(*v10);
    *v10 = v14;
  }

  if (v8)
  {
    v15 = malloc_type_malloc(v8, 0x100004077774924uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    v15 = v21;
    LOBYTE(v21[0]) = 0;
  }

  [a4 getCString:v15 maxLength:v8 encoding:4];
  if ((v13 & 1) == 0)
  {
    if (memchr(v10, 0, v11 - 1))
    {
LABEL_35:
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
    }
  }

  v16 = NSKeyValueMethodForPattern(a1, "setPrimitive%s:", v10);
  if (v16)
  {
    v17 = [[NSKeyValueMethodSetter alloc] initWithContainerClassID:a3 key:a4 method:v16];
    goto LABEL_30;
  }

  if ([a1 accessInstanceVariablesDirectly])
  {
    v18 = NSKeyValueIvarForPattern(a1, "_%s", v15);
    if (v18 || (v18 = NSKeyValueIvarForPattern(a1, "_is%s", v10)) != 0 || (v18 = NSKeyValueIvarForPattern(a1, "%s", v15)) != 0 || (v18 = NSKeyValueIvarForPattern(a1, "is%s", v10)) != 0)
    {
      v17 = [[NSKeyValueIvarSetter alloc] initWithContainerClassID:a3 key:a4 containerIsa:a1 ivar:v18];
LABEL_30:
      v19 = v17;
      if (v17)
      {
        goto LABEL_32;
      }
    }
  }

  v19 = [a1 _createOtherValueSetterWithContainerClassID:a3 key:a4];
LABEL_32:
  if (v8)
  {
    free(v10);
    free(v15);
  }

  return v19;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
  v6 = atomic_load(_NSKVO51127338RequiresSilencingExceptions);
  if ((v6 & 1) == 0)
  {
    v7 = [NSString stringWithFormat:@"%@: An -observeValueForKeyPath:ofObject:change:context: message was received but not handled.\nKey path: %@\nObserved object: %@\nChange: %@\nContext: %p", self, keyPath, object, change, context];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v7 userInfo:0]);
  }

  NSLog(@"%@: An -observeValueForKeyPath:ofObject:change:context: message was received but not handled.\nKey path: %@\nObserved object: %@\nChange: %@\nContext: %p", a2, self, keyPath, object, change, context);
}

- (void)_addObserver:(id)a3 forProperty:(id)a4 options:(unint64_t)a5 context:(void *)a6
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ((a5 & 4) != 0)
  {
    v23[0] = 0;
    v11 = [a4 keyPath];
    os_unfair_recursive_lock_unlock();
    if (a5)
    {
      v12 = [self valueForKeyPath:v11];
      if (!v12)
      {
        v12 = [MEMORY[0x1E695DFB0] null];
      }
    }

    else
    {
      v12 = 0;
    }

    v22[0] = 1;
    v22[1] = 0;
    v22[3] = 0;
    v22[4] = 0;
    v22[2] = v12;
    NSKeyValueNotifyObserver(a3, v11, self, a6, 0, 0, v22, v23);

    os_unfair_recursive_lock_lock_with_options();
  }

  v13 = _NSKeyValueRetainedObservationInfoForObject(self, *(a4 + 1));
  if ((a5 & 0x100) != 0 && (v14 = _CFGetTSD()) != 0)
  {
    v15 = *(v14 + 16);
  }

  else
  {
    v15 = 0;
  }

  [_NSKVODeallocSentinel _havingRegistrationLockHeldAttachSentinelToObjectIfNeeded:self];
  v23[0] = 0;
  v21 = 0;
  v16 = _NSKeyValueObservationInfoCreateByAdding(v13, a3, a4, a5, a6, v15, &v21, v23);
  _NSKeyValueReplaceObservationInfoForObject(self, *(a4 + 1), v13, v16);
  [a4 object:self didAddObservance:v23[0] recurse:1];
  if ((self & 0x8000000000000000) == 0)
  {
    Class = object_getClass(self);
    v18 = [a4 isaForAutonotifying];
    if (!v18 || Class == v18)
    {
      if (!_NSKVOUsesBaseClassObservationInfoImplementationForClass(Class))
      {
        v19 = _NSKeyValueContainerClassForIsa(Class);
        v20 = _NSKeyValueContainerClassGetNotifyingInfo(v19)[1];
        if (v20)
        {
          if (v20 != Class)
          {
            object_setClass(self, v20);
          }
        }
      }
    }

    else
    {
      object_setClass(self, v18);
      objc_setAssociatedObject(self, &_NSKeyValueObservingObservationInfoOverriderMayThrowOnDealloc, MEMORY[0x1E695E118], 1);
    }
  }

  if (v13)
  {
  }
}

- (void)_removeObserver:(id)a3 forProperty:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 1);
  v8 = _NSKeyValueRetainedObservationInfoForObject(self, v7);
  if (v8)
  {
    v9 = v8;
    v10 = _CFGetTSD();
    if (v10 && (v11 = v10, *(v10 + 32) == self) && *(v10 + 40) == a3 && [*(v10 + 48) isEqualToString:{objc_msgSend(a4, "keyPath")}])
    {
      v13 = *(v11 + 56);
      v12 = *(v11 + 64);
      v14 = *(v11 + 72);
    }

    else
    {
      v14 = 0;
      v12 = 0;
      v13 = 0;
    }

    v25[0] = 0;
    v24 = 0;
    v15 = _NSKeyValueObservationInfoCreateByRemoving(v9, a3, a4, v12, v14 & 1, v13, &v24, v25);
    if (v25[0])
    {
      v16 = v15;
      v17 = v25[0];
      _NSKeyValueReplaceObservationInfoForObject(self, *(a4 + 1), v9, v16);
      [a4 object:self didRemoveObservance:v25[0] recurse:1];
      if (!v16)
      {
        Class = object_getClass(self);
        v21 = *(v7 + 8);
        if (Class != v21)
        {
          if (_NSKVOUsesBaseClassObservationInfoImplementationForClass(v21) && ![self _implicitObservationInfo])
          {
            object_setClass(self, *(v7 + 8));
          }

          objc_setAssociatedObject(self, &_NSKeyValueObservingObservationInfoOverriderMayThrowOnDealloc, 0, 1);
        }
      }

      return;
    }

LABEL_25:
    v22 = objc_opt_class();
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Cannot remove an observer <%@ %p> for the key path %@ from <%@ %p> because it is not registered as an observer.", v22, a3, objc_msgSend(a4, "keyPath"), objc_opt_class(), self), 0}];
    objc_exception_throw(v23);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_25;
  }

  v18 = _CFGetTSD();
  if (v18)
  {
    v19 = *(v18 + 8);
    if (v19)
    {
      while (*v19 != self)
      {
        v19 = *(v19 + 16);
        if (!v19)
        {
          return;
        }
      }

      *(v19 + 8) = 0;
    }
  }
}

- (void)addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
  v11 = _NSKeyValueDebugger();
  [(_NSKeyValueDebugging *)v11 object:observer willAddObserver:keyPath forKeyPath:context context:?];
  os_unfair_recursive_lock_lock_with_options();
  Class = object_getClass(self);
  [self _addObserver:observer forProperty:NSKeyValuePropertyForIsaAndKeyPath(Class options:keyPath) context:options, context];

  os_unfair_recursive_lock_unlock();
}

- (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath context:(void *)context
{
  v9 = _NSKeyValueDebugger();
  v18 = context;
  [(_NSKeyValueDebugging *)v9 object:observer willRemoveObserver:keyPath forKeyPath:context context:?];
  v10 = _CFGetTSD();
  if (!v10)
  {
    v11 = malloc_default_zone();
    v10 = malloc_type_zone_calloc(v11, 1uLL, 0x58uLL, 0x2C221C3EuLL);
    _CFSetTSD();
  }

  v12 = *(v10 + 32);
  v13 = *(v10 + 40);
  v15 = *(v10 + 48);
  v14 = *(v10 + 56);
  v16 = *(v10 + 64);
  v17 = *(v10 + 72);
  *(v10 + 32) = self;
  *(v10 + 40) = observer;
  *(v10 + 48) = keyPath;
  *(v10 + 56) = 0;
  *(v10 + 64) = v18;
  *(v10 + 72) = 1;
  [self removeObserver:observer forKeyPath:keyPath];
  *(v10 + 32) = v12;
  *(v10 + 40) = v13;
  *(v10 + 48) = v15;
  *(v10 + 56) = v14;
  *(v10 + 64) = v16;
  *(v10 + 72) = v17;
}

- (void)removeObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath
{
  v7 = _NSKeyValueDebugger();
  if (v7)
  {
    v8 = v7;
    v9 = _CFGetTSD();
    if (v9)
    {
      v10 = *(v9 + 64);
    }

    else
    {
      v10 = 0;
    }

    [(_NSKeyValueDebugging *)v8 object:observer willRemoveObserver:keyPath forKeyPath:v10 context:?];
  }

  os_unfair_recursive_lock_lock_with_options();
  Class = object_getClass(self);
  [self _removeObserver:observer forProperty:NSKeyValuePropertyForIsaAndKeyPath(Class, keyPath)];

  os_unfair_recursive_lock_unlock();
}

- (void)willChange:(NSKeyValueChange)changeKind valuesAtIndexes:(NSIndexSet *)indexes forKey:(NSString *)key
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = changeKind;
  v5[1] = indexes;
  NSKeyValueWillChangeWithPerThreadPendingNotifications(self, key, 0, NSKeyValueWillChangeByOrderedToManyMutation, v5, 0);
}

- (void)willChangeValueForKey:(NSString *)key withSetMutation:(NSKeyValueSetMutationKind)mutationKind usingObjects:(NSSet *)objects
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = mutationKind;
  v5[1] = objects;
  NSKeyValueWillChangeWithPerThreadPendingNotifications(self, key, 0, NSKeyValueWillChangeBySetMutation, v5, 0);
}

+ (id)_keysForValuesAffectingValueForKey:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v4 = qword_1ED43F6E8;
  if (qword_1ED43F6E8 && (v5 = objc_opt_class(), (v6 = CFDictionaryGetValue(v4, v5)) != 0))
  {
    Value = CFDictionaryGetValue(v6, a3);
  }

  else
  {
    Value = 0;
  }

  os_unfair_lock_unlock(&_MergedGlobals_103);
  v8 = [MEMORY[0x1E695DFA8] set];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [Value countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(Value);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 rangeOfString:@"."];
        if (!v14)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [Value countByEnumeratingWithState:&v17 objects:v16 count:16];
    }

    while (v10);
  }

  return v8;
}

+ (NSSet)keyPathsForValuesAffectingValueForKey:(NSString *)key
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __84__NSObject_NSKeyValueObservingCustomization__keyPathsForValuesAffectingValueForKey___block_invoke;
  v8 = &unk_1E69F4828;
  v9 = a1;
  if (_class_isSwift() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    return [a1 __NS_swiftOverlay_keyPathsForValuesAffectingValueForKey:key foundationImplementation:v6];
  }

  else
  {
    return v7(v6, key);
  }
}

uint64_t __84__NSObject_NSKeyValueObservingCustomization__keyPathsForValuesAffectingValueForKey___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [a2 lengthOfBytesUsingEncoding:4];
  v5 = v4;
  v6 = v4 + 1;
  if (v4 == -1)
  {
    v7 = MEMORY[0x1EEE9AC00](-1);
    v8 = &v16;
    LOBYTE(v16) = 0;
  }

  else
  {
    v8 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  }

  [a2 getCString:v8 maxLength:v6 encoding:{4, v7}];
  if (v6 >= 2 && v8 && memchr(v8, 0, v5))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
  }

  if ([a2 length])
  {
    *v8 = __toupper(*v8);
  }

  v9 = strlen(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - ((v10 + 44) & 0xFFFFFFFFFFFFFFF0);
  snprintf(v11, v10 + 29, "keyPathsForValuesAffecting%s", v8);
  v12 = NSResolvedSelectorForName(*(a1 + 32), v11);
  if (v12 && class_getClassMethod(*(a1 + 32), v12))
  {
    method_invoke();
  }

  else
  {
    v13 = [*(a1 + 32) _keysForValuesAffectingValueForKey:a2];
  }

  v14 = v13;
  if (v6)
  {
    free(v8);
  }

  return v14;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(NSString *)key
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __83__NSObject_NSKeyValueObservingCustomization__automaticallyNotifiesObserversForKey___block_invoke;
  v8 = &unk_1E69F4850;
  v9 = a1;
  if (_class_isSwift() && (objc_opt_respondsToSelector() & 1) != 0)
  {
    return [a1 __NS_swiftOverlay_automaticallyNotifiesObserversForKey:key foundationImplementation:v6];
  }

  else
  {
    return v7(v6, key);
  }
}

uint64_t __83__NSObject_NSKeyValueObservingCustomization__automaticallyNotifiesObserversForKey___block_invoke(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = [a2 lengthOfBytesUsingEncoding:4];
  v5 = v4;
  v6 = v4 + 1;
  if (v4 == -1)
  {
    v7 = MEMORY[0x1EEE9AC00](-1);
    v8 = &v16;
    LOBYTE(v16) = 0;
  }

  else
  {
    v8 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
  }

  [a2 getCString:v8 maxLength:v6 encoding:{4, v7}];
  if (v6 >= 2 && v8 && memchr(v8, 0, v5))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Attempted to use a key or key path whose UTF-8 representation contains a NUL character" userInfo:0]);
  }

  if ([a2 length])
  {
    *v8 = __toupper(*v8);
  }

  v9 = strlen(v8);
  v10 = v9 + 35;
  if (v9 + 35 < 0x101)
  {
    if (v9 == -35)
    {
      v11 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v9);
      v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v11, v10);
    }
  }

  else
  {
    v11 = malloc_type_malloc(v9 + 35, 0x100004077774924uLL);
  }

  snprintf(v11, v10, "automaticallyNotifiesObserversOf%s", v8);
  v12 = NSResolvedSelectorForName(*(a1 + 32), v11);
  if (!v12 || !class_getClassMethod(*(a1 + 32), v12))
  {
    v14 = 1;
    if (!v6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  method_invoke();
  v14 = v13;
  if (v6)
  {
LABEL_19:
    free(v8);
  }

LABEL_20:
  if (v10 >= 0x101)
  {
    free(v11);
  }

  return v14;
}

- (void)setObservationInfo:(void *)observationInfo
{
  Mutable = NSKeyValueObservationInfoPerObject;
  if (!NSKeyValueObservationInfoPerObject)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    NSKeyValueObservationInfoPerObject = Mutable;
  }

  v6 = ~self;
  if (observationInfo)
  {

    CFDictionarySetValue(Mutable, v6, observationInfo);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, v6);
  }
}

+ (void)setKeys:(NSArray *)keys triggerChangeNotificationsForDependentKey:(NSString *)dependentKey
{
  os_unfair_lock_lock_with_options();
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:keys];
  Mutable = qword_1ED43F6E8;
  if (!qword_1ED43F6E8)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    qword_1ED43F6E8 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(qword_1ED43F6E8, a1, Value);
  }

  CFDictionarySetValue(Value, dependentKey, v7);

  os_unfair_lock_unlock(&_MergedGlobals_103);
}

- (void)_notifyObserversForKeyPath:(id)a3 change:(id)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v31 = self;
  v6 = _NSKeyValueRetainedObservationInfoForObject(self, 0);
  if (v6)
  {
    v7 = v6;
    v38[0] = 0;
    v8 = [v6[1] count];
    MEMORY[0x1EEE9AC00](v8);
    v10 = (v29 - v9);
    _NSKeyValueObservationInfoGetObservances(v7, v29 - v9, v8);
    if (v8)
    {
      v29[1] = v29;
      v30 = v7;
      v32 = a4;
      while (1)
      {
        v11 = *v10;
        if ([(NSKeyValueObservance *)*v10 tryRetainMembers])
        {
          break;
        }

LABEL_29:
        ++v10;
        if (!--v8)
        {
          v28 = v38[0];
          v7 = v30;
          goto LABEL_32;
        }
      }

      v12 = *(v11 + 8);
      v13 = [*(v11 + 16) restOfKeyPathIfContainedByValueForKeyPath:a3];
      if (v13)
      {
        v14 = v13;
        v15 = a3;
        v16 = [v13 length];
        v17 = [objc_msgSend(a4 objectForKey:{@"kind", "integerValue"}];
        if ((*(v11 + 40) & 0x20) != 0)
        {
          v23 = [a4 objectForKey:@"old"];
          v18 = v23;
          if (v16)
          {
            v18 = [v23 valueForKeyPath:v14];
          }

          if (!v18)
          {
            v18 = [MEMORY[0x1E695DFB0] null];
          }
        }

        else
        {
          v18 = 0;
        }

        if ((*(v11 + 40) & 0x10) != 0)
        {
          v25 = [a4 objectForKey:@"new"];
          v24 = v25;
          if (v16)
          {
            v24 = [v25 valueForKeyPath:v14];
          }

          a3 = v15;
          if (!v24)
          {
            v24 = [MEMORY[0x1E695DFB0] null];
          }
        }

        else
        {
          v24 = 0;
          a3 = v15;
        }

        v26 = [v32 objectForKey:@"indexes"];
        v21 = [*(v11 + 16) keyPath];
        v27 = *(v11 + 24);
        if (*(v11 + 41))
        {
          v22 = *(v11 + 32);
        }

        else
        {
          v22 = 0;
        }

        v33 = v17;
        v34 = v18;
        v35 = v24;
        v36 = v26;
      }

      else
      {
        if (![*(v11 + 16) matchesWithoutOperatorComponentsKeyPath:a3])
        {
LABEL_28:
          [(NSKeyValueObservance *)v11 releaseMembers];
          goto LABEL_29;
        }

        v19 = [objc_msgSend(a4 objectForKey:{@"kind", "integerValue"}];
        v20 = [a4 objectForKey:@"indexes"];
        v21 = [*(v11 + 16) keyPath];
        if (*(v11 + 41))
        {
          v22 = *(v11 + 32);
        }

        else
        {
          v22 = 0;
        }

        v27 = *(v11 + 24);
        v34 = 0;
        v35 = 0;
        v33 = v19;
        v36 = v20;
      }

      v37 = 0;
      NSKeyValueNotifyObserver(v12, v21, v31, v27, v22, 0, &v33, v38);
      a4 = v32;
      goto LABEL_28;
    }

    v28 = 0;
LABEL_32:
  }
}

- (void)_notifyObserversOfChangeFromValuesForKeys:(id)a3 toValuesForKeys:(id)a4
{
  v5 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v7 = [a3 count];
  v8 = [a4 count];
  v9 = v8 + v7;
  if ((v8 + v7) >> 60)
  {
    v20 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v8 + v7);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v20 userInfo:0];
    CFRelease(v20);
    objc_exception_throw(v21);
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 + v7;
  }

  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v35 = 0;
  v23 = self;
  if (v9 >= 0x101)
  {
    v12 = _CFCreateArrayStorage();
    v24 = v12;
  }

  else
  {
    v24 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = 0;
  v14 = [a4 countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(a4);
        }

        v17 = *(*(&v37 + 1) + 8 * i);
        if (![v5 objectForKey:v17])
        {
          *&v12[8 * v13++] = v17;
        }
      }

      v14 = [a4 countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v14);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = v9;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __98__NSObject_NSKeyValueObservingPrivate___notifyObserversOfChangeFromValuesForKeys_toValuesForKeys___block_invoke;
  v25[3] = &unk_1E69F4878;
  v25[8] = v12;
  v25[9] = v13;
  v25[4] = a4;
  v25[5] = &v31;
  v25[6] = v26;
  v25[7] = &v27;
  [v5 enumerateKeysAndObjectsUsingBlock:v25];
  v18 = v28[3];
  v19 = v32[3] + v13;
  if (v9 < v18 + v19)
  {
    __assert_rtn("[NSObject(NSKeyValueObservingPrivate) _notifyObserversOfChangeFromValuesForKeys:toValuesForKeys:]", "NSKeyValueObserving.m", 2606, "changedKeyCount + removedKeyCount + addedKeyCount <= countSum");
  }

  if (v19 + v18)
  {
    if (!v18)
    {
      if (v5)
      {
        if (a4)
        {
LABEL_29:
          [v23 _changeValueForKeys:v12 count:v19 maybeOldValuesDict:v5 maybeNewValuesDict:a4 usingBlock:0];
          goto LABEL_30;
        }
      }

      else
      {
        v5 = [MEMORY[0x1E695DF20] dictionary];
        if (a4)
        {
          goto LABEL_29;
        }
      }

      a4 = [MEMORY[0x1E695DF20] dictionary];
      goto LABEL_29;
    }

    bzero(&v12[8 * v19], 8 * (v9 - (v18 + v19)));
    if (v5)
    {
      if (!a4)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v5 = [MEMORY[0x1E695DF20] dictionary];
      if (!a4)
      {
LABEL_27:
        a4 = [MEMORY[0x1E695DF20] dictionary];
      }
    }

    v19 = v9;
    goto LABEL_29;
  }

LABEL_30:
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  free(v24);
}

uint64_t __98__NSObject_NSKeyValueObservingPrivate___notifyObserversOfChangeFromValuesForKeys_toValuesForKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(a1 + 32) objectForKey:a2];
  if (!result)
  {
    --*(*(*(a1 + 48) + 8) + 24);
    *(*(a1 + 64) + 8 * *(*(*(a1 + 48) + 8) + 24)) = a2;
    v7 = (a1 + 56);
    goto LABEL_6;
  }

  if (result != a3)
  {
    result = [a3 isEqual:result];
    if ((result & 1) == 0)
    {
      v8 = *(a1 + 40);
      v7 = (a1 + 40);
      *(v7[3] + 8 * v7[4] + 8 * *(*(v8 + 8) + 24)) = a2;
LABEL_6:
      ++*(*(*v7 + 8) + 24);
    }
  }

  return result;
}

- (void)_changeValueForKeys:(id *)a3 count:(unint64_t)a4 maybeOldValuesDict:(id)a5 maybeNewValuesDict:(id)a6 usingBlock:(id)a7
{
  v32 = a6;
  v33 = a7;
  v31 = a3;
  v43[160] = *MEMORY[0x1E69E9840];
  bzero(v43, 0x500uLL);
  os_unfair_recursive_lock_lock_with_options();
  v10 = _NSKeyValueRetainedObservationInfoForObject(self, 0);
  v11 = [self _implicitObservationInfo];
  v12 = v11;
  if (v10)
  {
    v13 = [*(v10 + 8) count];
    if (v12)
    {
LABEL_3:
      v14 = [*(v12 + 8) count];
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  v34 = v14;
  v15 = v14 + v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v30 - v16);
  if (v10)
  {
    _NSKeyValueObservationInfoGetObservances(v10, &v30 - v16, v13);
  }

  if (v12)
  {
    _NSKeyValueObservationInfoGetObservances(v12, &v17[v13], v34);
  }

  v35 = v12;
  v36 = &v17[v13];
  if (v15)
  {
    v18 = v17;
    v19 = v15;
    do
    {
      if (([(NSKeyValueObservance *)*v18 tryRetainMembers]& 1) == 0)
      {
        *v18 = 0;
      }

      ++v18;
      --v19;
    }

    while (v19);
  }

  v20 = v10 | v35;
  os_unfair_recursive_lock_unlock();
  v21 = v43;
  if (!v20)
  {
    v28 = 0;
    v24 = v33;
    if (!v33)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v30 = v10;
  v38 = 1;
  v40 = 0u;
  v37 = 16;
  v39 = v43;
  BYTE8(v40) = 1;
  v41 = 0;
  v42 = 0;
  if (a4 && v30)
  {
    v22 = v31;
    v23 = a4;
    do
    {
      if (*v22)
      {
        NSKeyValueWillChange(self, *v22, 0, v17, v13, NSKeyValueWillChangeBySetting, a5, NSKeyValuePushPendingNotificationLocal, &v37, 0);
      }

      ++v22;
      --v23;
    }

    while (v23);
  }

  v24 = v33;
  v25 = v34;
  if (v35)
  {
    BYTE8(v40) = 0;
    if ((a4 - 1) >= 0)
    {
      v26 = v31 - 1;
      do
      {
        v27 = v26[a4];
        if (v27)
        {
          NSKeyValueWillChange(self, v27, 0, v36, v25, NSKeyValueWillChangeBySetting, a5, NSKeyValuePushPendingNotificationLocal, &v37, 0);
        }

        --a4;
      }

      while (a4 > 0);
    }
  }

  v21 = v39;
  v28 = v40;
  v10 = v30;
  if (v24)
  {
LABEL_31:
    v24[2](v24);
  }

LABEL_32:
  if (v28 >= 1)
  {
    v37 = v21;
    v38 = v28;
    v39 = 0;
    v40 = 0uLL;
    v41 = v10;
    NSKeyValueDidChange(self, 0, 0, NSKeyValueDidChangeBySetting, v32, NSKeyValuePopPendingNotificationLocal, &v37);
  }

  for (; v15; --v15)
  {
    v29 = *v17++;
    [(NSKeyValueObservance *)v29 releaseMembers];
  }

  if (v21 != v43)
  {
    free(v21);
  }
}

- (void)_changeValueForKey:(id)a3 key:(id)a4 key:(id)a5 usingBlock:(id)a6
{
  v6[3] = *MEMORY[0x1E69E9840];
  v6[0] = a3;
  v6[1] = a4;
  v6[2] = a5;
  [self _changeValueForKeys:v6 count:3 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:a6];
}

- (void)_changeValueForKey:(id)a3 usingBlock:(id)a4
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  [self _changeValueForKeys:v4 count:1 maybeOldValuesDict:0 maybeNewValuesDict:0 usingBlock:a4];
}

- (void)_setSharedObservationInfo:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  os_unfair_lock_lock(&NSKeyValueObservationInfoLock);
  Mutable = NSKeyValueSharedObservationInfoPerObject;
  if (!NSKeyValueSharedObservationInfoPerObject)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    NSKeyValueSharedObservationInfoPerObject = Mutable;
LABEL_7:
    CFDictionarySetValue(Mutable, ~a1, a2);
    goto LABEL_8;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  CFDictionaryRemoveValue(NSKeyValueSharedObservationInfoPerObject, ~a1);
LABEL_8:

  os_unfair_lock_unlock(&NSKeyValueObservationInfoLock);
}

- (id)replacementObjectForKeyedArchiver:(NSKeyedArchiver *)archiver
{
  if ((dyld_program_sdk_at_least() & 1) != 0 || dyld_program_sdk_at_least())
  {

    return [self replacementObjectForCoder:archiver];
  }

  else
  {

    return [self replacementObjectForArchiver:0];
  }
}

+ (BOOL)instancesImplementSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  return class_getMethodImplementation(a1, a3) != MEMORY[0x1E69E58E8];
}

+ (BOOL)implementsSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(a1, a2);
  }

  Class = object_getClass(a1);
  return class_getMethodImplementation(Class, a3) != MEMORY[0x1E69E58E8];
}

- (BOOL)implementsSelector:(SEL)a3
{
  if (!a3)
  {
    _NSObjectRaiseNullSelectorException(self, a2);
  }

  v4 = objc_opt_class();
  return class_getMethodImplementation(v4, a3) != MEMORY[0x1E69E58E8];
}

- (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay
{
  v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695E8E0]];

  [self performSelector:aSelector withObject:anArgument afterDelay:v9 inModes:delay];
}

- (void)performSelector:(SEL)aSelector withObject:(id)anArgument afterDelay:(NSTimeInterval)delay inModes:(NSArray *)modes
{
  v31 = *MEMORY[0x1E69E9840];
  obj = [MEMORY[0x1E695DFD0] currentRunLoop];
  if (obj)
  {
    context = *byte_1EEEFCA80;
    if ([(NSArray *)modes count])
    {
      objc_sync_enter(obj);
      v11 = malloc_default_zone();
      v12 = malloc_type_zone_calloc(v11, 1uLL, 0x38uLL, 0x2C221C3EuLL);
      context.info = v12;
      *v12 = self;
      v12[1] = aSelector;
      v12[2] = anArgument;
      v12[3] = [(NSArray *)modes copyWithZone:0];
      v12[5] = obj;
      if (delay == 0.0)
      {
        v12[6] = [+[NSProcessInfo processInfo](NSProcessInfo beginActivityWithOptions:"beginActivityWithOptions:reason:" reason:0x400000000FFLL, @"Delayed perform with delay 0"];
      }

      Current = CFAbsoluteTimeGetCurrent();
      v14 = 0.0;
      if (delay >= 0.0)
      {
        v14 = delay;
      }

      v15 = CFRunLoopTimerCreate(0, v14 + Current, 0.0, 0, 0, __NSFireDelayedPerform, &context);
      v12[4] = v15;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = modes;
      v17 = [(NSArray *)modes countByEnumeratingWithState:&v27 objects:v26 count:16];
      if (v17)
      {
        v18 = *v28;
        v19 = *MEMORY[0x1E695E8E0];
        v20 = *MEMORY[0x1E695DA28];
        v21 = *MEMORY[0x1E695E8D0];
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v28 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v23 = *(*(&v27 + 1) + 8 * i);
            if ([(__CFString *)v23 isEqual:@"NSDefaultRunLoopMode"])
            {
              v23 = v19;
            }

            if (v23 == v20 || [(__CFString *)v23 isEqual:@"kCFRunLoopCommonModes"])
            {
              v23 = v21;
            }

            CFRunLoopAddTimer([obj getCFRunLoop], v15, v23);
          }

          v17 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v26 count:16];
        }

        while (v17);
      }

      CFArrayAppendValue([obj _dperf], v15);
      CFRelease(v15);
      objc_sync_exit(obj);
    }
  }
}

+ (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget selector:(SEL)aSelector object:(id)anArgument
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DFD0] currentRunLoop];
  if (v8)
  {
    v9 = v8;
    objc_sync_enter(v8);
    Count = CFArrayGetCount([v9 _dperf]);
    if (Count)
    {
      v11 = *MEMORY[0x1E695DA28];
      v12 = *MEMORY[0x1E695E8D0];
      v23 = aSelector;
      v24 = anArgument;
      v22 = aTarget;
      do
      {
        memset(&context, 0, sizeof(context));
        ValueAtIndex = CFArrayGetValueAtIndex([v9 _dperf], --Count);
        if (CFRunLoopTimerIsValid(ValueAtIndex))
        {
          context.version = 0;
          CFRunLoopTimerGetContext(ValueAtIndex, &context);
          v14 = *context.info;
          if (*(context.info + 1) == aSelector)
          {
            v16 = *(context.info + 2);
            v15 = *(context.info + 3);
            v26 = *(context.info + 6);
            if ((v14 == aTarget || [v14 isEqual:aTarget]) && (v16 == anArgument || objc_msgSend(v16, "isEqual:", anArgument)))
            {
              CFRetain(ValueAtIndex);
              v25 = Count;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v17 = [v15 countByEnumeratingWithState:&v29 objects:v28 count:16];
              if (v17)
              {
                v18 = *v30;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v30 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v29 + 1) + 8 * i);
                    v21 = v12;
                    if (v20 != v11)
                    {
                      if ([*(*(&v29 + 1) + 8 * i) isEqual:@"kCFRunLoopCommonModes"])
                      {
                        v21 = v12;
                      }

                      else
                      {
                        v21 = v20;
                      }
                    }

                    CFRunLoopRemoveTimer([v9 getCFRunLoop], ValueAtIndex, v21);
                  }

                  v17 = [v15 countByEnumeratingWithState:&v29 objects:v28 count:16];
                }

                while (v17);
              }

              aSelector = v23;
              anArgument = v24;
              aTarget = v22;
              Count = v25;
              if (v26)
              {
                [+[NSProcessInfo processInfo](NSProcessInfo endActivity:"endActivity:", v26];
              }

              CFRunLoopTimerInvalidate(ValueAtIndex);
              CFRelease(ValueAtIndex);
              CFArrayRemoveValueAtIndex([v9 _dperf], v25);
            }
          }
        }
      }

      while (Count);
    }

    objc_sync_exit(v9);
  }
}

+ (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  if (v4)
  {
    v5 = v4;
    objc_sync_enter(v4);
    Count = CFArrayGetCount([v5 _dperf]);
    if (Count)
    {
      v7 = *MEMORY[0x1E695DA28];
      v8 = *MEMORY[0x1E695E8D0];
      v17 = aTarget;
      do
      {
        memset(&context, 0, sizeof(context));
        ValueAtIndex = CFArrayGetValueAtIndex([v5 _dperf], --Count);
        if (CFRunLoopTimerIsValid(ValueAtIndex))
        {
          context.version = 0;
          CFRunLoopTimerGetContext(ValueAtIndex, &context);
          info = context.info;
          if (*context.info == aTarget || [*context.info isEqual:aTarget])
          {
            CFRetain(ValueAtIndex);
            v18 = info;
            v19 = Count;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v11 = info[3];
            v12 = [v11 countByEnumeratingWithState:&v22 objects:v21 count:16];
            if (v12)
            {
              v13 = *v23;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v23 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v22 + 1) + 8 * i);
                  v16 = v8;
                  if (v15 != v7)
                  {
                    if ([*(*(&v22 + 1) + 8 * i) isEqual:@"kCFRunLoopCommonModes"])
                    {
                      v16 = v8;
                    }

                    else
                    {
                      v16 = v15;
                    }
                  }

                  CFRunLoopRemoveTimer([v5 getCFRunLoop], ValueAtIndex, v16);
                }

                v12 = [v11 countByEnumeratingWithState:&v22 objects:v21 count:16];
              }

              while (v12);
            }

            aTarget = v17;
            Count = v19;
            if (v18[6])
            {
              [+[NSProcessInfo processInfo](NSProcessInfo endActivity:"endActivity:", v18[6]];
            }

            CFRunLoopTimerInvalidate(ValueAtIndex);
            CFRelease(ValueAtIndex);
            CFArrayRemoveValueAtIndex([v5 _dperf], v19);
          }
        }
      }

      while (Count);
    }

    objc_sync_exit(v5);
  }
}

- (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array
{
  v8 = wait;
  v47 = *MEMORY[0x1E69E9840];
  if ((performSelector_onThread_withObject_waitUntilDone_modes__sInvalidSystem & 1) == 0)
  {
    performSelector_onThread_withObject_waitUntilDone_modes__sInvalidSystem = 1;
  }

  v13 = [(NSArray *)array count];
  if (array && v13)
  {
    if (v8 && +[NSThread currentThread]== thr)
    {
      v33 = self;
      v34 = arg;
      [self aSelector];

      v35 = arg;
    }

    else
    {
      v37 = a2;
      v14 = [_NSThreadPerformInfo alloc];
      v38 = self;
      if (v14)
      {
        v41.receiver = v14;
        v41.super_class = _NSThreadPerformInfo;
        v15 = [&v41 init];
        if (isBlock(self))
        {
          v16 = [self copy];
        }

        else
        {
          v16 = self;
        }

        *(v15 + 1) = v16;
        if (aSelector)
        {
          v17 = aSelector;
        }

        else
        {
          v17 = 0;
        }

        *(v15 + 2) = v17;
        v39 = thr;
        if (isBlock(arg))
        {
          v18 = [arg copy];
        }

        else
        {
          v18 = arg;
        }

        *(v15 + 3) = v18;
        *(v15 + 14) = 0;
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v20 = [(NSArray *)array countByEnumeratingWithState:&v43 objects:v42 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v44;
          v23 = *MEMORY[0x1E695E8E0];
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(array);
              }

              v25 = *(*(&v43 + 1) + 8 * i);
              if ([v25 isEqual:@"NSDefaultRunLoopMode"])
              {
                v26 = v23;
              }

              else
              {
                v26 = v25;
              }

              [v19 addObject:v26];
            }

            v21 = [(NSArray *)array countByEnumeratingWithState:&v43 objects:v42 count:16];
          }

          while (v21);
        }

        *(v15 + 5) = [v19 copy];
        if (v8)
        {
          *(v15 + 6) = objc_alloc_init(NSCondition);
        }

        thr = v39;
        atomic_store(*(v15 + 1), v15 + 4);
        if (v8)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v15 = 0;
        if (v8)
        {
LABEL_30:
          v27 = [(NSThread *)thr qualityOfService];
          if (v27 == NSQualityOfServiceDefault)
          {
            v28 = 25;
          }

          else
          {
            v28 = v27;
          }

          v29 = [+[NSThread currentThread](NSThread qualityOfService];
          if (v29 == NSQualityOfServiceDefault)
          {
            v30 = 25;
          }

          else
          {
            v30 = v29;
          }

          if (v30 <= v28)
          {
            v31 = 0;
          }

          else
          {
            v31 = [NSThread _beginQoSOverride:"_beginQoSOverride:relativePriority:" relativePriority:?];
          }

          [(NSThread *)thr _nq:v15];
          v32 = [v15 wait];
          [(NSThread *)thr _endQoSOverride:v31];

          if (v32 == 1)
          {
            v36 = [MEMORY[0x1E695DF30] exceptionWithName:@"NSDestinationInvalidException" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: target thread exited while waiting for the perform", _NSMethodExceptionProem(v38, v37)), 0}];
            objc_exception_throw(v36);
          }

          return;
        }
      }

      [(NSThread *)thr _nq:v15];
      v35 = v15;
    }
  }
}

- (void)performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait modes:(NSArray *)array
{
  v7 = wait;
  v11 = +[NSThread mainThread];

  [self performSelector:aSelector onThread:v11 withObject:arg waitUntilDone:v7 modes:array];
}

- (void)performSelectorOnMainThread:(SEL)aSelector withObject:(id)arg waitUntilDone:(BOOL)wait
{
  v5 = wait;
  v9 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
  v10 = [v9 initWithObjects:MEMORY[0x1E695E8D0] count:1];
  [self performSelector:aSelector onThread:+[NSThread withObject:"mainThread"]waitUntilDone:arg modes:v5, v10];
}

- (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(id)arg waitUntilDone:(BOOL)wait
{
  v6 = wait;
  v11 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
  v12 = [v11 initWithObjects:MEMORY[0x1E695E8D0] count:1];
  [self performSelector:aSelector onThread:thr withObject:arg waitUntilDone:v6 modes:v12];
}

- (void)performSelectorInBackground:(SEL)aSelector withObject:(id)arg
{
  v4 = [objc_allocWithZone(NSThread) initWithTarget:self selector:aSelector object:arg];
  [v4 setQualityOfService:17];

  [v4 start];
}

- (id)replacementObjectForPortCoder:(NSPortCoder *)coder
{
  result = [self replacementObjectForCoder:?];
  if (result)
  {

    return [(NSPortCoder *)coder _proxyForLocalObject:result];
  }

  return result;
}

@end