@interface NSKeyValueUnnestedProperty
- (BOOL)object:(id)a3 withObservance:(id)a4 willChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id *)a7;
- (Class)_isaForAutonotifying;
- (Class)isaForAutonotifying;
- (id)_initWithContainerClass:(id)a3 key:(id)a4 propertiesBeingInitialized:(__CFSet *)a5;
- (id)_keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4;
- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)a3;
- (id)description;
- (id)keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4;
- (id)keyPathIfAffectedByValueForMemberOfKeys:(id)a3;
- (void)_givenPropertiesBeingInitialized:(__CFSet *)a3 getAffectingProperties:(id)a4;
- (void)dealloc;
- (void)object:(id)a3 didAddObservance:(id)a4 recurse:(BOOL)a5;
- (void)object:(id)a3 didRemoveObservance:(id)a4 recurse:(BOOL)a5;
- (void)object:(id)a3 withObservance:(id)a4 didChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id)a7;
@end

@implementation NSKeyValueUnnestedProperty

- (Class)isaForAutonotifying
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_cachedIsaForAutonotifyingIsValid)
  {
    self->_cachedIsaForAutonotifying = [(NSKeyValueUnnestedProperty *)self _isaForAutonotifying];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    affectingProperties = self->_affectingProperties;
    v4 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(affectingProperties);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) _isaForAutonotifying];
          if (v8)
          {
            self->_cachedIsaForAutonotifying = v8;
          }
        }

        v5 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v11 objects:v10 count:16];
      }

      while (v5);
    }

    self->_cachedIsaForAutonotifyingIsValid = 1;
  }

  return self->_cachedIsaForAutonotifying;
}

- (Class)_isaForAutonotifying
{
  if (![(objc_class *)self->super._containerClass->_originalClass automaticallyNotifiesObserversForKey:self->super._keyPath])
  {
    return 0;
  }

  result = _NSKeyValueContainerClassGetNotifyingInfo(self->super._containerClass);
  if (result)
  {
    v4 = result;
    _NSKVONotifyingEnableForInfoAndKey(result, self->super._keyPath);
    return *(v4 + 1);
  }

  return result;
}

- (id)_initWithContainerClass:(id)a3 key:(id)a4 propertiesBeingInitialized:(__CFSet *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = NSKeyValueUnnestedProperty;
  v6 = [(NSKeyValueProperty *)&v14 _initWithContainerClass:a3 keyPath:a4 propertiesBeingInitialized:?];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v6 _givenPropertiesBeingInitialized:a5 getAffectingProperties:v7];
    [v7 removeObject:v6];
    v8 = [v7 count];
    if (v8)
    {
      v8 = [objc_msgSend(v7 "allObjects")];
    }

    v6[3] = v8;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6[3];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v10)
    {
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v16 + 1) + 8 * i) _addDependentValueKey:v6[2]];
        }

        v10 = [v9 countByEnumeratingWithState:&v16 objects:v15 count:16];
      }

      while (v10);
    }
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueUnnestedProperty;
  [(NSKeyValueProperty *)&v3 dealloc];
}

- (id)description
{
  v3 = [objc_msgSend(-[NSArray valueForKey:](self->_affectingProperties valueForKey:{@"keyPath", "sortedArrayUsingSelector:", sel_caseInsensitiveCompare_), "componentsJoinedByString:", @", "}];
  v4 = objc_opt_class();
  keyPath = self->super._keyPath;
  originalClass = self->super._containerClass->_originalClass;
  if (self->_cachedIsaForAutonotifyingIsValid)
  {
    cachedIsaForAutonotifying = self->_cachedIsaForAutonotifying;
  }

  else
  {
    cachedIsaForAutonotifying = @"not cached yet";
  }

  v8 = [(__CFString *)v3 length];
  v9 = @"none";
  if (v8)
  {
    v9 = v3;
  }

  return [NSString stringWithFormat:@"<%@: Container class: %@, Key: %@, isa for autonotifying: %@, Key paths of directly and indirectly affecting properties: %@>", v4, originalClass, keyPath, cachedIsaForAutonotifying, v9];
}

- (void)_givenPropertiesBeingInitialized:(__CFSet *)a3 getAffectingProperties:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_affectingProperties)
  {
    v7 = [(objc_class *)self->super._containerClass->_originalClass keyPathsForValuesAffectingValueForKey:self->super._keyPath];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (!v8)
    {
      return;
    }

    v9 = v8;
    v10 = *v17;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 isEqualToString:self->super._keyPath])
        {
          v14 = [NSString stringWithFormat:@"%@: A +keyPathsForValuesAffectingValueForKey: message returned a set that includes the same key that was passed in, which is not valid.\nPassed-in key: %@\nReturned key path set: %@", self->super._containerClass->_originalClass, self->super._keyPath, v7];
LABEL_19:
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v14 userInfo:0]);
        }

        if ([v12 hasPrefix:{-[NSString stringByAppendingString:](self->super._keyPath, "stringByAppendingString:", @"."}])
        {
          v14 = [NSString stringWithFormat:@"%@: A +keyPathsForValuesAffectingValueForKey: message returned a set that includes a key path that starts with the same key that was passed in, which is not valid. The property identified by the key path already depends on the property identified by the key, never vice versa.\nPassed-in key: %@\nReturned key path set: %@", self->super._containerClass->_originalClass, self->super._keyPath, v7];
          goto LABEL_19;
        }

        v13 = NSKeyValuePropertyForIsaAndKeyPathInner(self->super._containerClass->_originalClass, v12, a3);
        if (([a4 containsObject:v13] & 1) == 0)
        {
          [a4 addObject:v13];
          [v13 _givenPropertiesBeingInitialized:a3 getAffectingProperties:a4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (!v9)
      {
        return;
      }
    }
  }

  [a4 addObjectsFromArray:?];
}

- (id)_keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4
{
  keyPath = self->super._keyPath;
  if (keyPath != a3 && !CFEqual(a3, keyPath))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = 1;
  }

  return self->super._keyPath;
}

- (id)keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  result = [NSKeyValueUnnestedProperty _keyPathIfAffectedByValueForKey:"_keyPathIfAffectedByValueForKey:exactMatch:" exactMatch:?];
  if (!result)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    affectingProperties = self->_affectingProperties;
    result = [(NSArray *)affectingProperties countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(affectingProperties);
          }

          if ([*(*(&v13 + 1) + 8 * i) _keyPathIfAffectedByValueForKey:a3 exactMatch:0])
          {
            result = self->super._keyPath;
            if (a4)
            {
              *a4 = 0;
            }

            return result;
          }
        }

        v9 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v13 objects:v12 count:16];
        result = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)a3
{
  if ([a3 containsObject:self->super._keyPath])
  {
    return self->super._keyPath;
  }

  else
  {
    return 0;
  }
}

- (id)keyPathIfAffectedByValueForMemberOfKeys:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  result = [(NSKeyValueUnnestedProperty *)self _keyPathIfAffectedByValueForMemberOfKeys:?];
  if (!result)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    affectingProperties = self->_affectingProperties;
    result = [(NSArray *)affectingProperties countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(affectingProperties);
          }

          if ([*(*(&v11 + 1) + 8 * i) _keyPathIfAffectedByValueForMemberOfKeys:a3])
          {
            return self->super._keyPath;
          }
        }

        v7 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v11 objects:v10 count:16];
        result = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)object:(id)a3 didAddObservance:(id)a4 recurse:(BOOL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    affectingProperties = self->_affectingProperties;
    if (affectingProperties)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(affectingProperties);
            }

            [*(*(&v13 + 1) + 8 * i) object:a3 didAddObservance:a4 recurse:0];
          }

          v9 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v13 objects:v12 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)object:(id)a3 didRemoveObservance:(id)a4 recurse:(BOOL)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    affectingProperties = self->_affectingProperties;
    if (affectingProperties)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v8 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(affectingProperties);
            }

            [*(*(&v13 + 1) + 8 * i) object:a3 didRemoveObservance:a4 recurse:0];
          }

          v9 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v13 objects:v12 count:16];
        }

        while (v9);
      }
    }
  }
}

- (BOOL)object:(id)a3 withObservance:(id)a4 willChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id *)a7
{
  v28 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (self->_affectingProperties)
    {
      v11 = _NSIsNSSet();
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      affectingProperties = self->_affectingProperties;
      v13 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v24 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v25;
        while (1)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(affectingProperties);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            if (v11)
            {
              if (![v18 keyPathIfAffectedByValueForMemberOfKeys:a5])
              {
                continue;
              }
            }

            else if (![v18 keyPathIfAffectedByValueForKey:a5 exactMatch:0])
            {
              continue;
            }

            v21 = 0;
            v22 = 0;
            if ([v18 object:a3 withObservance:a4 willChangeValueForKeyOrKeys:a5 recurse:0 forwardingValues:&v21])
            {
              if (v21)
              {
                if (v15)
                {
                  [v15 setObject:? forKey:?];
                }

                else
                {
                  v15 = [MEMORY[0x1E695DF90] dictionaryWithObject:? forKey:?];
                }
              }

              if (v22)
              {
                if (v15)
                {
                  [v15 addEntriesFromDictionary:?];
                }

                else
                {
                  v15 = v22;
                }
              }
            }
          }

          v14 = [(NSArray *)affectingProperties countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (!v14)
          {
            goto LABEL_25;
          }
        }
      }
    }
  }

  v15 = 0;
LABEL_25:
  a7->var0 = 0;
  a7->var1 = v15;
  return 1;
}

- (void)object:(id)a3 withObservance:(id)a4 didChangeValueForKeyOrKeys:(id)a5 recurse:(BOOL)a6 forwardingValues:(id)a7
{
  var1 = a7.var1;
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [a7.var1 countByEnumeratingWithState:&v16 objects:v15 count:{16, a6, a7.var0}];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(var1);
        }

        [*(*(&v16 + 1) + 8 * v14) object:a3 withObservance:a4 didChangeValueForKeyOrKeys:a5 recurse:0 forwardingValues:{objc_msgSend(var1, "objectForKey:", *(*(&v16 + 1) + 8 * v14)), 0}];
        ++v14;
      }

      while (v12 != v14);
      v12 = [var1 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v12);
  }
}

@end