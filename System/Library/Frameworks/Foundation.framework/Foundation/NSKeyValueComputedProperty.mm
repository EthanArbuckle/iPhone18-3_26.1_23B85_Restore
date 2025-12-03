@interface NSKeyValueComputedProperty
- (id)_initWithContainerClass:(id)class keyPath:(id)path propertiesBeingInitialized:(__CFSet *)initialized;
- (id)_keyPathIfAffectedByValueForKey:(id)key exactMatch:(BOOL *)match;
- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)keys;
- (void)dealloc;
@end

@implementation NSKeyValueComputedProperty

- (id)_initWithContainerClass:(id)class keyPath:(id)path propertiesBeingInitialized:(__CFSet *)initialized
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSKeyValueComputedProperty;
  v7 = [NSKeyValueProperty _initWithContainerClass:sel__initWithContainerClass_keyPath_propertiesBeingInitialized_ keyPath:class propertiesBeingInitialized:?];
  if (v7)
  {
    v8 = [path rangeOfString:@"."];
    if (v9)
    {
      v10 = v8;
      v7[3] = [objc_msgSend(path substringWithRange:{1, v8 - 1), "copy"}];
      v11 = [objc_msgSend(path substringFromIndex:{v10 + 1), "copy"}];
      v7[4] = v11;
      v12 = NSKeyValuePropertyForIsaAndKeyPathInner(*(v7[1] + 8), v11, initialized);
      v13 = &OBJC_IVAR___NSKeyValueComputedProperty__operationArgumentProperty;
    }

    else
    {
      v12 = [path copy];
      v13 = &OBJC_IVAR___NSKeyValueComputedProperty__operationName;
    }

    *(v7 + *v13) = v12;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueComputedProperty;
  [(NSKeyValueProperty *)&v3 dealloc];
}

- (id)_keyPathIfAffectedByValueForKey:(id)key exactMatch:(BOOL *)match
{
  if (match)
  {
    *match = 0;
  }

  result = [(NSKeyValueProperty *)self->_operationArgumentProperty keyPathIfAffectedByValueForKey:key exactMatch:0];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)keys
{
  result = [(NSKeyValueProperty *)self->_operationArgumentProperty keyPathIfAffectedByValueForMemberOfKeys:keys];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

@end