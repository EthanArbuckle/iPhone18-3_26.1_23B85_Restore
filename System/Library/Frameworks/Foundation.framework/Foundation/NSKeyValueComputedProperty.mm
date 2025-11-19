@interface NSKeyValueComputedProperty
- (id)_initWithContainerClass:(id)a3 keyPath:(id)a4 propertiesBeingInitialized:(__CFSet *)a5;
- (id)_keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4;
- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)a3;
- (void)dealloc;
@end

@implementation NSKeyValueComputedProperty

- (id)_initWithContainerClass:(id)a3 keyPath:(id)a4 propertiesBeingInitialized:(__CFSet *)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = NSKeyValueComputedProperty;
  v7 = [NSKeyValueProperty _initWithContainerClass:sel__initWithContainerClass_keyPath_propertiesBeingInitialized_ keyPath:a3 propertiesBeingInitialized:?];
  if (v7)
  {
    v8 = [a4 rangeOfString:@"."];
    if (v9)
    {
      v10 = v8;
      v7[3] = [objc_msgSend(a4 substringWithRange:{1, v8 - 1), "copy"}];
      v11 = [objc_msgSend(a4 substringFromIndex:{v10 + 1), "copy"}];
      v7[4] = v11;
      v12 = NSKeyValuePropertyForIsaAndKeyPathInner(*(v7[1] + 8), v11, a5);
      v13 = &OBJC_IVAR___NSKeyValueComputedProperty__operationArgumentProperty;
    }

    else
    {
      v12 = [a4 copy];
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

- (id)_keyPathIfAffectedByValueForKey:(id)a3 exactMatch:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  result = [(NSKeyValueProperty *)self->_operationArgumentProperty keyPathIfAffectedByValueForKey:a3 exactMatch:0];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

- (id)_keyPathIfAffectedByValueForMemberOfKeys:(id)a3
{
  result = [(NSKeyValueProperty *)self->_operationArgumentProperty keyPathIfAffectedByValueForMemberOfKeys:a3];
  if (result)
  {
    return self->super._keyPath;
  }

  return result;
}

@end