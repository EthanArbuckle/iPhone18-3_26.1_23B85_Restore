@interface NSKeyValueNestedProperty
- (BOOL)matchesWithoutOperatorComponentsKeyPath:(id)path;
- (BOOL)object:(id)object withObservance:(id)observance willChangeValueForKeyOrKeys:(id)keys recurse:(BOOL)recurse forwardingValues:(id *)values;
- (id)_initWithContainerClass:(id)class keyPath:(id)path firstDotIndex:(unint64_t)index propertiesBeingInitialized:(__CFSet *)initialized;
- (id)_keyPathIfAffectedByValueForKey:(id)key exactMatch:(BOOL *)match;
- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)keys;
- (void)_addDependentValueKey:(id)key;
- (void)dealloc;
- (void)object:(id)object didAddObservance:(id)observance recurse:(BOOL)recurse;
- (void)object:(id)object didRemoveObservance:(id)observance recurse:(BOOL)recurse;
- (void)object:(id)object withObservance:(id)observance didChangeValueForKeyOrKeys:(id)keys recurse:(BOOL)recurse forwardingValues:(id)values;
@end

@implementation NSKeyValueNestedProperty

- (id)_initWithContainerClass:(id)class keyPath:(id)path firstDotIndex:(unint64_t)index propertiesBeingInitialized:(__CFSet *)initialized
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = NSKeyValueNestedProperty;
  v9 = [(NSKeyValueProperty *)&v19 _initWithContainerClass:class keyPath:path propertiesBeingInitialized:initialized];
  if (v9)
  {
    *(v9 + 3) = [objc_msgSend(path substringToIndex:{index), "copy"}];
    *(v9 + 4) = [objc_msgSend(path substringFromIndex:{index + 1), "copy"}];
    *(v9 + 5) = NSKeyValuePropertyForIsaAndKeyPathInner(*(*(v9 + 1) + 8), *(v9 + 3), initialized);
    v10 = [path rangeOfString:@".@"];
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      v14 = [path substringToIndex:v10];
      v15 = [path rangeOfString:@"." options:0 range:{v12 + v13, objc_msgSend(path, "length") - (v12 + v13)}];
      if (v16)
      {
        v14 = [v14 stringByAppendingString:{objc_msgSend(path, "substringFromIndex:", v15)}];
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

- (void)_addDependentValueKey:(id)key
{
  v4 = [key copy];
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

- (id)_keyPathIfAffectedByValueForKey:(id)key exactMatch:(BOOL *)match
{
  if (match)
  {
    *match = 0;
  }

  result = [(NSKeyValueUnnestedProperty *)self->_relationshipProperty keyPathIfAffectedByValueForKey:key exactMatch:0];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)keys
{
  result = [(NSKeyValueUnnestedProperty *)self->_relationshipProperty keyPathIfAffectedByValueForMemberOfKeys:keys];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

- (void)object:(id)object didAddObservance:(id)observance recurse:(BOOL)recurse
{
  recurseCopy = recurse;
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {
    os_unfair_lock_assert_owner(&_NSKeyValueObserverRegistrationLock);
  }

  if (self->_isAllowedToResultInForwarding)
  {
    if (*(observance + 2) == self)
    {
      selfCopy = 0;
      v9 = (*(observance + 40) >> 4) | 0x100;
    }

    else
    {
      v9 = 264;
      selfCopy = self;
    }

    ImplicitObservanceAdditionInfo = NSKeyValueGetImplicitObservanceAdditionInfo();
    v13 = *ImplicitObservanceAdditionInfo;
    *ImplicitObservanceAdditionInfo = object;
    *(ImplicitObservanceAdditionInfo + 8) = observance;
    os_unfair_recursive_lock_unlock();
    v12 = [object valueForKey:self->_relationshipKey];
    [v12 addObserver:observance forKeyPath:self->_keyPathFromRelatedObject options:v9 context:selfCopy];

    os_unfair_recursive_lock_lock_with_options();
    *ImplicitObservanceAdditionInfo = v13;
  }

  [(NSKeyValueUnnestedProperty *)self->_relationshipProperty object:object didAddObservance:observance recurse:recurseCopy, v13];
  if (_NSKeyValueObserverRegistrationEnableLockingAssertions == 1)
  {

    os_unfair_lock_assert_owner(&_NSKeyValueObserverRegistrationLock);
  }
}

- (void)object:(id)object didRemoveObservance:(id)observance recurse:(BOOL)recurse
{
  recurseCopy = recurse;
  if (self->_isAllowedToResultInForwarding)
  {
    os_unfair_recursive_lock_unlock();
    v9 = [object valueForKey:self->_relationshipKey];
    ImplicitObservanceRemovalInfo = NSKeyValueGetImplicitObservanceRemovalInfo();
    objectCopy = object;
    v12 = ImplicitObservanceRemovalInfo;
    v14 = *ImplicitObservanceRemovalInfo;
    v13 = *(ImplicitObservanceRemovalInfo + 8);
    v15 = *(ImplicitObservanceRemovalInfo + 16);
    v16 = *(ImplicitObservanceRemovalInfo + 24);
    v17 = *(ImplicitObservanceRemovalInfo + 32);
    v21 = *(ImplicitObservanceRemovalInfo + 40);
    *ImplicitObservanceRemovalInfo = v9;
    *(ImplicitObservanceRemovalInfo + 8) = observance;
    *(ImplicitObservanceRemovalInfo + 16) = self->_keyPathFromRelatedObject;
    *(ImplicitObservanceRemovalInfo + 24) = objectCopy;
    v20 = objectCopy;
    if (*(observance + 2) == self)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    *(ImplicitObservanceRemovalInfo + 32) = selfCopy;
    *(ImplicitObservanceRemovalInfo + 40) = 1;
    [v9 removeObserver:observance forKeyPath:self->_keyPathFromRelatedObject];
    *v12 = v14;
    *(v12 + 8) = v13;
    *(v12 + 16) = v15;
    *(v12 + 24) = v16;
    *(v12 + 32) = v17;
    *(v12 + 40) = v21;
    os_unfair_recursive_lock_lock_with_options();
    object = v20;
  }

  relationshipProperty = self->_relationshipProperty;

  [(NSKeyValueUnnestedProperty *)relationshipProperty object:object didRemoveObservance:observance recurse:recurseCopy];
}

- (BOOL)object:(id)object withObservance:(id)observance willChangeValueForKeyOrKeys:(id)keys recurse:(BOOL)recurse forwardingValues:(id *)values
{
  recurseCopy = recurse;
  v17 = *MEMORY[0x1E69E9840];
  if (*NSKeyValueGetImplicitObservanceAdditionInfo() == __PAIR128__(observance, object))
  {
    return 0;
  }

  values->var0 = 0;
  values->var1 = 0;
  if (self->_isAllowedToResultInForwarding)
  {
    v13 = [object valueForKey:self->_relationshipKey];
    values->var0 = v13;
    if (!v13)
    {
      values->var0 = [MEMORY[0x1E695DFB0] null];
    }
  }

  v15 = 0;
  v16 = 0;
  if ([(NSKeyValueUnnestedProperty *)self->_relationshipProperty object:object withObservance:observance willChangeValueForKeyOrKeys:keys recurse:recurseCopy forwardingValues:&v15])
  {
    values->var1 = v16;
  }

  return 1;
}

- (void)object:(id)object withObservance:(id)observance didChangeValueForKeyOrKeys:(id)keys recurse:(BOOL)recurse forwardingValues:(id)values
{
  var0 = values.var0;
  if (self->_isAllowedToResultInForwarding)
  {
    var1 = values.var1;
    recurseCopy = recurse;
    keysCopy = keys;
    if (*(observance + 2) == self)
    {
      selfCopy = 0;
      v25 = (*(observance + 40) >> 4) | 0x100;
    }

    else
    {
      v25 = 264;
      selfCopy = self;
    }

    v23 = values.var0;
    if ([MEMORY[0x1E695DFB0] null] == values.var0)
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
    *(ImplicitObservanceRemovalInfo + 8) = observance;
    *(ImplicitObservanceRemovalInfo + 16) = self->_keyPathFromRelatedObject;
    *(ImplicitObservanceRemovalInfo + 24) = object;
    *(ImplicitObservanceRemovalInfo + 32) = selfCopy;
    *(ImplicitObservanceRemovalInfo + 40) = 1;
    [v12 removeObserver:observance forKeyPath:self->_keyPathFromRelatedObject];
    *ImplicitObservanceRemovalInfo = v26;
    *(ImplicitObservanceRemovalInfo + 8) = v14;
    *(ImplicitObservanceRemovalInfo + 16) = v28;
    *(ImplicitObservanceRemovalInfo + 24) = v15;
    *(ImplicitObservanceRemovalInfo + 32) = v16;
    *(ImplicitObservanceRemovalInfo + 40) = v27;
    ImplicitObservanceAdditionInfo = NSKeyValueGetImplicitObservanceAdditionInfo();
    v18 = *ImplicitObservanceAdditionInfo;
    v19 = ImplicitObservanceAdditionInfo[1];
    *ImplicitObservanceAdditionInfo = object;
    ImplicitObservanceAdditionInfo[1] = observance;
    [objc_msgSend(object valueForKey:{self->_relationshipKey), "addObserver:forKeyPath:options:context:", observance, self->_keyPathFromRelatedObject, v25, selfCopy}];
    *ImplicitObservanceAdditionInfo = v18;
    ImplicitObservanceAdditionInfo[1] = v19;
    var0 = v23;
    values.var1 = var1;
    *&recurse = recurseCopy;
    keys = keysCopy;
  }

  if (values.var1)
  {
    relationshipProperty = self->_relationshipProperty;

    [(NSKeyValueUnnestedProperty *)relationshipProperty object:object withObservance:observance didChangeValueForKeyOrKeys:keys recurse:recurse forwardingValues:var0];
  }
}

- (BOOL)matchesWithoutOperatorComponentsKeyPath:(id)path
{
  keyPathWithoutOperatorComponents = self->_keyPathWithoutOperatorComponents;
  if (!keyPathWithoutOperatorComponents)
  {
    keyPathWithoutOperatorComponents = self->super._keyPath;
  }

  return keyPathWithoutOperatorComponents == path || CFEqual(path, keyPathWithoutOperatorComponents) != 0;
}

@end