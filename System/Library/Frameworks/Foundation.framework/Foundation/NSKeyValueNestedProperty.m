@interface NSKeyValueNestedProperty
- (BOOL)matchesWithoutOperatorComponentsKeyPath:(id)a3;
- (BOOL)object:(id)a3 withObservance:(id)a4 willChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id *)a7;
- (id)_initWithContainerClass:(id)a3 keyPath:(id)a4 firstDotIndex:(unint64_t)a5 propertiesBeingInitialized:(__CFSet *)a6;
- (id)_keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4;
- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)a3;
- (void)_addDependentValueKey:(id)a3;
- (void)dealloc;
- (void)object:(id)a3 didAddObservance:(id)a4 recurse:(BOOL)a5;
- (void)object:(id)a3 didRemoveObservance:(id)a4 recurse:(BOOL)a5;
- (void)object:(id)a3 withObservance:(id)a4 didChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id)a7;
@end

@implementation NSKeyValueNestedProperty

- (id)_initWithContainerClass:(id)a3 keyPath:(id)a4 firstDotIndex:(unint64_t)a5 propertiesBeingInitialized:(__CFSet *)a6
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NSKeyValueNestedProperty;
  v9 = [(NSKeyValueProperty *)&v19 _initWithContainerClass:a3 keyPath:a4 propertiesBeingInitialized:a6];
  if (v9)
  {
    *(v9 + 3) = [objc_msgSend(a4 substringToIndex:{a5), "copy"}];
    *(v9 + 4) = [objc_msgSend(a4 substringFromIndex:{a5 + 1), "copy"}];
    *(v9 + 5) = NSKeyValuePropertyForIsaAndKeyPathInner(*(*(v9 + 1) + 8), *(v9 + 3), a6);
    v10 = [a4 rangeOfString:@".@"];
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = [a4 substringToIndex:v10];
      v15 = [a4 rangeOfString:@"." options:0 range:{v12 + v13, objc_msgSend(a4, "length") - (v12 + v13)}];
      if (v16)
      {
        v14 = [v14 stringByAppendingString:{objc_msgSend(a4, "substringFromIndex:", v15)}];
      }

      *(v9 + 6) = v14;
    }

    v17 = [*(*(v9 + 1) + 8) _shouldAddObservationForwardersForKey:*(v9 + 3)];
    *(v9 + 56) = v17;
    if (v17 && [*(v9 + 4) hasPrefix:@"@"] && objc_msgSend(*(v9 + 4), "rangeOfString:", @".") == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v9 + 56) = 0;
    }
  }

  return v9;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueNestedProperty;
  [(NSKeyValueProperty *)&v3 dealloc];
}

- (void)_addDependentValueKey:(id)a3
{
  v4 = [a3 copy];
  dependentValueKeyOrKeys = self->_dependentValueKeyOrKeys;
  v9 = v4;
  if (!dependentValueKeyOrKeys)
  {
    v7 = v4;
    goto LABEL_5;
  }

  if (self->_dependentValueKeyOrKeysIsASet)
  {
    v6 = [dependentValueKeyOrKeys setByAddingObject:v4];

    v7 = v6;
LABEL_5:
    self->_dependentValueKeyOrKeys = v7;
    goto LABEL_7;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{self->_dependentValueKeyOrKeys, v4, 0}];

  self->_dependentValueKeyOrKeys = v8;
  self->_dependentValueKeyOrKeysIsASet = 1;
LABEL_7:
}

- (id)_keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  result = [(NSKeyValueUnnestedProperty *)self->_relationshipProperty keyPathIfAffectedByValueForKey:a3 exactMatch:0];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)a3
{
  result = [(NSKeyValueUnnestedProperty *)self->_relationshipProperty keyPathIfAffectedByValueForMemberOfKeys:a3];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

- (void)object:(id)a3 didAddObservance:(id)a4 recurse:(BOOL)a5
{
  v5 = a5;
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {
    os_unfair_lock_assert_owner(&_NSKeyValueObserverRegistrationLock);
  }

  if (self->_isAllowedToResultInForwarding)
  {
    if (*(a4 + 2) == self)
    {
      v10 = 0;
      v9 = (*(a4 + 40) >> 4) | 0x100;
    }

    else
    {
      v9 = 264;
      v10 = self;
    }

    ImplicitObservanceAdditionInfo = NSKeyValueGetImplicitObservanceAdditionInfo();
    v13 = *ImplicitObservanceAdditionInfo;
    *ImplicitObservanceAdditionInfo = a3;
    *(ImplicitObservanceAdditionInfo + 8) = a4;
    os_unfair_recursive_lock_unlock();
    v12 = [a3 valueForKey:self->_relationshipKey];
    [v12 addObserver:a4 forKeyPath:self->_keyPathFromRelatedObject options:v9 context:v10];

    os_unfair_recursive_lock_lock_with_options();
    *ImplicitObservanceAdditionInfo = v13;
  }

  [(NSKeyValueUnnestedProperty *)self->_relationshipProperty object:a3 didAddObservance:a4 recurse:v5, v13];
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {

    os_unfair_lock_assert_owner(&_NSKeyValueObserverRegistrationLock);
  }
}

- (void)object:(id)a3 didRemoveObservance:(id)a4 recurse:(BOOL)a5
{
  v5 = a5;
  if (self->_isAllowedToResultInForwarding)
  {
    os_unfair_recursive_lock_unlock();
    v9 = [a3 valueForKey:self->_relationshipKey];
    ImplicitObservanceRemovalInfo = NSKeyValueGetImplicitObservanceRemovalInfo();
    v11 = a3;
    v12 = ImplicitObservanceRemovalInfo;
    v14 = *ImplicitObservanceRemovalInfo;
    v13 = *(ImplicitObservanceRemovalInfo + 8);
    v15 = *(ImplicitObservanceRemovalInfo + 16);
    v16 = *(ImplicitObservanceRemovalInfo + 24);
    v17 = *(ImplicitObservanceRemovalInfo + 32);
    v21 = *(ImplicitObservanceRemovalInfo + 40);
    *ImplicitObservanceRemovalInfo = v9;
    *(ImplicitObservanceRemovalInfo + 8) = a4;
    *(ImplicitObservanceRemovalInfo + 16) = self->_keyPathFromRelatedObject;
    *(ImplicitObservanceRemovalInfo + 24) = v11;
    v20 = v11;
    if (*(a4 + 2) == self)
    {
      v18 = 0;
    }

    else
    {
      v18 = self;
    }

    *(ImplicitObservanceRemovalInfo + 32) = v18;
    *(ImplicitObservanceRemovalInfo + 40) = 1;
    [v9 removeObserver:a4 forKeyPath:self->_keyPathFromRelatedObject];
    *v12 = v14;
    *(v12 + 8) = v13;
    *(v12 + 16) = v15;
    *(v12 + 24) = v16;
    *(v12 + 32) = v17;
    *(v12 + 40) = v21;
    os_unfair_recursive_lock_lock_with_options();
    a3 = v20;
  }

  relationshipProperty = self->_relationshipProperty;

  [(NSKeyValueUnnestedProperty *)relationshipProperty object:a3 didRemoveObservance:a4 recurse:v5];
}

- (BOOL)object:(id)a3 withObservance:(id)a4 willChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id *)a7
{
  v8 = a6;
  v17 = *MEMORY[0x1E69E9840];
  if (*NSKeyValueGetImplicitObservanceAdditionInfo() == __PAIR128__(a4, a3))
  {
    return 0;
  }

  a7->var0 = 0;
  a7->var1 = 0;
  if (self->_isAllowedToResultInForwarding)
  {
    v13 = [a3 valueForKey:self->_relationshipKey];
    a7->var0 = v13;
    if (!v13)
    {
      a7->var0 = [MEMORY[0x1E695DFB0] null];
    }
  }

  v15 = 0;
  v16 = 0;
  if ([(NSKeyValueUnnestedProperty *)self->_relationshipProperty object:a3 withObservance:a4 willChangeValueForKeyOrKeys:a5 recurse:v8 forwardingValues:&v15])
  {
    a7->var1 = v16;
  }

  return 1;
}

- (void)object:(id)a3 withObservance:(id)a4 didChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id)a7
{
  var0 = a7.var0;
  if (self->_isAllowedToResultInForwarding)
  {
    var1 = a7.var1;
    v22 = a6;
    v21 = a5;
    if (*(a4 + 2) == self)
    {
      v11 = 0;
      v25 = (*(a4 + 40) >> 4) | 0x100;
    }

    else
    {
      v25 = 264;
      v11 = self;
    }

    v23 = a7.var0;
    if ([MEMORY[0x1E695DFB0] null] == a7.var0)
    {
      v12 = 0;
    }

    else
    {
      v12 = var0;
    }

    ImplicitObservanceRemovalInfo = NSKeyValueGetImplicitObservanceRemovalInfo();
    v14 = *(ImplicitObservanceRemovalInfo + 8);
    v26 = *ImplicitObservanceRemovalInfo;
    v15 = *(ImplicitObservanceRemovalInfo + 24);
    v28 = *(ImplicitObservanceRemovalInfo + 16);
    v16 = *(ImplicitObservanceRemovalInfo + 32);
    v27 = *(ImplicitObservanceRemovalInfo + 40);
    *ImplicitObservanceRemovalInfo = v12;
    *(ImplicitObservanceRemovalInfo + 8) = a4;
    *(ImplicitObservanceRemovalInfo + 16) = self->_keyPathFromRelatedObject;
    *(ImplicitObservanceRemovalInfo + 24) = a3;
    *(ImplicitObservanceRemovalInfo + 32) = v11;
    *(ImplicitObservanceRemovalInfo + 40) = 1;
    [v12 removeObserver:a4 forKeyPath:self->_keyPathFromRelatedObject];
    *ImplicitObservanceRemovalInfo = v26;
    *(ImplicitObservanceRemovalInfo + 8) = v14;
    *(ImplicitObservanceRemovalInfo + 16) = v28;
    *(ImplicitObservanceRemovalInfo + 24) = v15;
    *(ImplicitObservanceRemovalInfo + 32) = v16;
    *(ImplicitObservanceRemovalInfo + 40) = v27;
    ImplicitObservanceAdditionInfo = NSKeyValueGetImplicitObservanceAdditionInfo();
    v18 = *ImplicitObservanceAdditionInfo;
    v19 = ImplicitObservanceAdditionInfo[1];
    *ImplicitObservanceAdditionInfo = a3;
    ImplicitObservanceAdditionInfo[1] = a4;
    [objc_msgSend(a3 valueForKey:{self->_relationshipKey), "addObserver:forKeyPath:options:context:", a4, self->_keyPathFromRelatedObject, v25, v11}];
    *ImplicitObservanceAdditionInfo = v18;
    ImplicitObservanceAdditionInfo[1] = v19;
    var0 = v23;
    a7.var1 = var1;
    *&a6 = v22;
    a5 = v21;
  }

  if (a7.var1)
  {
    relationshipProperty = self->_relationshipProperty;

    [(NSKeyValueUnnestedProperty *)relationshipProperty object:a3 withObservance:a4 didChangeValueForKeyOrKeys:a5 recurse:a6 forwardingValues:var0];
  }
}

- (BOOL)matchesWithoutOperatorComponentsKeyPath:(id)a3
{
  keyPathWithoutOperatorComponents = self->_keyPathWithoutOperatorComponents;
  if (!keyPathWithoutOperatorComponents)
  {
    keyPathWithoutOperatorComponents = self->super._keyPath;
  }

  return keyPathWithoutOperatorComponents == a3 || CFEqual(a3, keyPathWithoutOperatorComponents) != 0;
}

@end