@interface MPModelObject
+ (BOOL)_lookupPropertyForSelector:(SEL)selector result:(id)result;
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (id)_modelKeyForPropertySelector:(SEL)selector;
+ (void)_indexProperties;
+ (void)initialize;
+ (void)performWithoutEnforcement:(id)enforcement;
- (BOOL)_isModelKey:(id)key;
- (BOOL)hasLoadedValueForKey:(id)key;
- (BOOL)hasLoadedValuesForPropertySet:(id)set;
- (BOOL)isEqual:(id)equal;
- (MPModelObject)initWithCoder:(id)coder;
- (MPModelObject)initWithIdentifiers:(id)identifiers block:(id)block;
- (NSString)description;
- (NSString)humanDescription;
- (id)_sanitizedStorage;
- (id)_stateDumpObject;
- (id)copyWithIdentifiers:(id)identifiers block:(id)block;
- (id)copyWithIdentifiers:(id)identifiers propertySet:(id)set;
- (id)copyWithPropertySet:(id)set;
- (id)mergeWithObject:(id)object;
- (id)valueForModelKey:(id)key;
- (id)valueForUndefinedKey:(id)key;
- (void)encodeWithCoder:(id)coder;
- (void)setValue:(id)value forModelKey:(id)key;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation MPModelObject

+ (void)initialize
{
  v3 = objc_autoreleasePoolPush();
  [self _indexProperties];

  objc_autoreleasePoolPop(v3);
}

+ (void)_indexProperties
{
  bidirectionalDictionary = [MEMORY[0x1E69B1450] bidirectionalDictionary];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E695DFA8] set];
  v18 = MEMORY[0x1E69E9820];
  v19 = v3;
  object = Superclass;
  do
  {
    v22[0] = v18;
    v22[1] = 3221225472;
    v23 = __33__MPModelObject__indexProperties__block_invoke;
    v24 = &unk_1E767A460;
    v28 = Superclass;
    v4 = bidirectionalDictionary;
    v25 = v4;
    v5 = dictionary;
    v26 = v5;
    v6 = v19;
    v27 = v6;
    v7 = v22;
    outCount = 0;
    v8 = class_copyPropertyList(Superclass, &outCount);
    v9 = v8;
    v29 = 0;
    if (outCount)
    {
      v10 = v8;
      v11 = 1;
      do
      {
        v12 = *v10++;
        (v23)(v7, v12, &v29);
        if (v29)
        {
          break;
        }
      }

      while (v11++ < outCount);
    }

    free(v9);

    Superclass = class_getSuperclass(Superclass);
  }

  while (Superclass != objc_opt_class());
  allKeys = [v4 allKeys];
  objc_setAssociatedObject(object, _MPModelObjectPropertySelectorIndexKey, v5, 3);
  objc_setAssociatedObject(object, _MPModelObjectModelKeyPropertyIndexKey, v4, 3);
  v15 = _MPModelObjectSharedKeySetKey;
  v16 = [MEMORY[0x1E695DF90] sharedKeySetForKeys:allKeys];
  objc_setAssociatedObject(object, v15, v16, 1);

  objc_setAssociatedObject(object, _MPModelObjectPropertyClassesKey, v6, 3);
}

void __33__MPModelObject__indexProperties__block_invoke(uint64_t a1, objc_property_t property)
{
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:property_getName(property)];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"__%@_KEY", v27];
  v5 = NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = [*(a1 + 56) v5];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = v6;
    [*(a1 + 32) setObject:v27 forKey:v6];
  }

  v8 = *(a1 + 40);
  Name = property_getName(property);
  v10 = property_copyAttributeValue(property, "G");
  v11 = v10;
  if (!v10)
  {
    v10 = Name;
  }

  Uid = sel_getUid(v10);
  free(v11);
  v13 = NSStringFromSelector(Uid);
  [v8 setObject:v27 forKeyedSubscript:v13];

  v14 = property_copyAttributeValue(property, "R");
  if (v14)
  {
    free(v14);
    goto LABEL_11;
  }

  v15 = property_copyAttributeValue(property, "S");
  if (v15)
  {
    v16 = v15;
    v17 = sel_getUid(v15);
    free(v16);
    if (!v17)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v24 = [MEMORY[0x1E696AD60] stringWithUTF8String:property_getName(property)];
  v25 = [v24 substringToIndex:1];
  v26 = [v25 uppercaseString];
  [v24 replaceCharactersInRange:0 withString:{1, v26}];

  [v24 insertString:@"set" atIndex:0];
  [v24 appendString:@":"];
  v17 = sel_getUid([v24 UTF8String]);

  if (v17)
  {
LABEL_10:
    v18 = *(a1 + 40);
    v19 = NSStringFromSelector(v17);
    [v18 setObject:v27 forKeyedSubscript:v19];
  }

LABEL_11:
  v20 = property_copyAttributeValue(property, "T");
  if (v20)
  {
    v21 = v20;
    if (*v20 == 64)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
      if ([v22 hasPrefix:@"@"] && objc_msgSend(v22, "hasSuffix:", @""))
      {
        v23 = [v22 substringWithRange:{2, objc_msgSend(v22, "length") - 3}];
        [*(a1 + 48) addObject:v23];
      }
    }

    free(v21);
  }

LABEL_18:
}

void __34__MPModelObject__sanitizedStorage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_opt_class() supportsSecureCoding] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)_sanitizedStorage
{
  v3 = [(NSMutableDictionary *)self->_storage mutableCopy];
  storage = self->_storage;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__MPModelObject__sanitizedStorage__block_invoke;
  v7[3] = &unk_1E767A438;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)storage enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

+ (id)_modelKeyForPropertySelector:(SEL)selector
{
  v5 = objc_getAssociatedObject(self, _MPModelObjectPropertySelectorIndexKey);
  v6 = objc_getAssociatedObject(self, _MPModelObjectModelKeyPropertyIndexKey);
  v7 = NSStringFromSelector(selector);
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v6 keyForObject:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_lookupPropertyForSelector:(SEL)selector result:(id)result
{
  resultCopy = result;
  v7 = objc_getAssociatedObject(self, _MPModelObjectPropertySelectorIndexKey);
  v8 = NSStringFromSelector(selector);
  v9 = [v7 objectForKeyedSubscript:v8];

  Property = class_getProperty(self, [v9 UTF8String]);
  v11 = Property;
  if (Property)
  {
    Name = property_getName(Property);
    v13 = property_copyAttributeValue(v11, "G");
    v14 = v13;
    if (!v13)
    {
      v13 = Name;
    }

    Uid = sel_getUid(v13);
    free(v14);
    v16 = property_copyAttributeValue(v11, "R");
    if (v16)
    {
      free(v16);
      v17 = 0;
    }

    else
    {
      v18 = property_copyAttributeValue(v11, "S");
      if (v18)
      {
        v19 = v18;
        v17 = sel_getUid(v18);
        free(v19);
      }

      else
      {
        v20 = [MEMORY[0x1E696AD60] stringWithUTF8String:property_getName(v11)];
        v21 = [v20 substringToIndex:1];
        uppercaseString = [v21 uppercaseString];
        [v20 replaceCharactersInRange:0 withString:{1, uppercaseString}];

        [v20 insertString:@"set" atIndex:0];
        [v20 appendString:@":"];
        v17 = sel_getUid([v20 UTF8String]);
      }
    }

    resultCopy[2](resultCopy, v11, Uid, v17);
  }

  return v11 != 0;
}

+ (void)performWithoutEnforcement:(id)enforcement
{
  enforcementCopy = enforcement;
  if (!MSVDeviceOSIsInternalInstall() || (_os_feature_enabled_impl() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken != -1)
  {
    dispatch_once(&_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken, &__block_literal_global_305);
  }

  if (pthread_getspecific(_MPModelObjectEnforcementDisabledPThreadKey_sThreadKey))
  {
LABEL_6:
    enforcementCopy[2]();
  }

  else
  {
    if (_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken != -1)
    {
      dispatch_once(&_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken, &__block_literal_global_305);
    }

    v3 = _MPModelObjectEnforcementDisabledPThreadKey_sThreadKey;
    pthread_setspecific(_MPModelObjectEnforcementDisabledPThreadKey_sThreadKey, 1);
    enforcementCopy[2]();
    pthread_setspecific(v3, 0);
  }
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __39__MPModelObject_resolveInstanceMethod___block_invoke;
  v11 = &unk_1E767A3C0;
  v12 = &v15;
  methodCopy = method;
  selfCopy = self;
  [self _lookupPropertyForSelector:? result:?];
  if (v16[3])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___MPModelObject;
    v5 = objc_msgSendSuper2(&v7, sel_resolveInstanceMethod_, method);
  }

  _Block_object_dispose(&v15, 8);
  return v5;
}

void __39__MPModelObject_resolveInstanceMethod___block_invoke(uint64_t a1, objc_property_t property, const char *a3, const char *a4)
{
  v7 = property_copyAttributeValue(property, "T");
  if (sel_isEqual(*(a1 + 40), a3))
  {
    v8 = *v7;
    if (v8 > 0x62)
    {
      if (*v7 <= 0x68u)
      {
        switch(v8)
        {
          case 'c':
            v10 = *(a1 + 40);
            v9 = *(a1 + 48);
            v11 = "c@:";
            v12 = _MPModelObject_c_getterIMP;
            break;
          case 'd':
            v10 = *(a1 + 40);
            v9 = *(a1 + 48);
            v11 = "d@:";
            v12 = _MPModelObject_d_getterIMP;
            break;
          case 'f':
            v10 = *(a1 + 40);
            v9 = *(a1 + 48);
            v11 = "f@:";
            v12 = _MPModelObject_f_getterIMP;
            break;
          default:
            goto LABEL_36;
        }
      }

      else if (*v7 > 0x70u)
      {
        if (v8 == 113)
        {
          v10 = *(a1 + 40);
          v9 = *(a1 + 48);
          v11 = "q@:";
          v12 = _MPModelObject_q_getterIMP;
        }

        else
        {
          if (v8 != 115)
          {
            goto LABEL_36;
          }

          v10 = *(a1 + 40);
          v9 = *(a1 + 48);
          v11 = "s@:";
          v12 = _MPModelObject_s_getterIMP;
        }
      }

      else if (v8 == 105)
      {
        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v11 = "i@:";
        v12 = _MPModelObject_i_getterIMP;
      }

      else
      {
        if (v8 != 108)
        {
          goto LABEL_36;
        }

        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v11 = "l@:";
        v12 = _MPModelObject_l_getterIMP;
      }
    }

    else if (*v7 <= 0x48u)
    {
      switch(v8)
      {
        case '@':
          v10 = *(a1 + 40);
          v9 = *(a1 + 48);
          v11 = "@@:";
          v12 = _MPModelObject__getterIMP;
          break;
        case 'B':
          v10 = *(a1 + 40);
          v9 = *(a1 + 48);
          v11 = "B@:";
          v12 = _MPModelObject_B_getterIMP;
          break;
        case 'C':
          v10 = *(a1 + 40);
          v9 = *(a1 + 48);
          v11 = "C@:";
          v12 = _MPModelObject_C_getterIMP;
          break;
        default:
          goto LABEL_36;
      }
    }

    else if (*v7 > 0x50u)
    {
      if (v8 == 81)
      {
        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v11 = "Q@:";
        v12 = _MPModelObject_Q_getterIMP;
      }

      else
      {
        if (v8 != 83)
        {
          goto LABEL_36;
        }

        v10 = *(a1 + 40);
        v9 = *(a1 + 48);
        v11 = "S@:";
        v12 = _MPModelObject_S_getterIMP;
      }
    }

    else if (v8 == 73)
    {
      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = "I@:";
      v12 = _MPModelObject_I_getterIMP;
    }

    else
    {
      if (v8 != 76)
      {
        goto LABEL_36;
      }

      v10 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = "L@:";
      v12 = _MPModelObject_L_getterIMP;
    }

    *(*(*(a1 + 32) + 8) + 24) = class_addMethod(v9, v10, v12, v11);
  }

LABEL_36:
  if (!sel_isEqual(*(a1 + 40), a4))
  {
    goto LABEL_71;
  }

  v13 = *v7;
  if (v13 > 0x62)
  {
    if (*v7 <= 0x68u)
    {
      switch(v13)
      {
        case 'c':
          v15 = *(a1 + 40);
          v14 = *(a1 + 48);
          v16 = "v@:c";
          v17 = _MPModelObject_c_setterIMP;
          break;
        case 'd':
          v15 = *(a1 + 40);
          v14 = *(a1 + 48);
          v16 = "v@:d";
          v17 = _MPModelObject_d_setterIMP;
          break;
        case 'f':
          v15 = *(a1 + 40);
          v14 = *(a1 + 48);
          v16 = "v@:f";
          v17 = _MPModelObject_f_setterIMP;
          break;
        default:
          goto LABEL_71;
      }
    }

    else if (*v7 > 0x70u)
    {
      if (v13 == 113)
      {
        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v16 = "v@:q";
        v17 = _MPModelObject_q_setterIMP;
      }

      else
      {
        if (v13 != 115)
        {
          goto LABEL_71;
        }

        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v16 = "v@:s";
        v17 = _MPModelObject_s_setterIMP;
      }
    }

    else if (v13 == 105)
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = "v@:i";
      v17 = _MPModelObject_i_setterIMP;
    }

    else
    {
      if (v13 != 108)
      {
        goto LABEL_71;
      }

      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = "v@:l";
      v17 = _MPModelObject_l_setterIMP;
    }
  }

  else if (*v7 <= 0x48u)
  {
    switch(v13)
    {
      case '@':
        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v16 = "v@:@";
        v17 = _MPModelObject__setterIMP;
        break;
      case 'B':
        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v16 = "v@:B";
        v17 = _MPModelObject_B_setterIMP;
        break;
      case 'C':
        v15 = *(a1 + 40);
        v14 = *(a1 + 48);
        v16 = "v@:C";
        v17 = _MPModelObject_C_setterIMP;
        break;
      default:
        goto LABEL_71;
    }
  }

  else if (*v7 > 0x50u)
  {
    if (v13 == 81)
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = "v@:Q";
      v17 = _MPModelObject_Q_setterIMP;
    }

    else
    {
      if (v13 != 83)
      {
        goto LABEL_71;
      }

      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = "v@:S";
      v17 = _MPModelObject_S_setterIMP;
    }
  }

  else if (v13 == 73)
  {
    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = "v@:I";
    v17 = _MPModelObject_I_setterIMP;
  }

  else
  {
    if (v13 != 76)
    {
      goto LABEL_71;
    }

    v15 = *(a1 + 40);
    v14 = *(a1 + 48);
    v16 = "v@:L";
    v17 = _MPModelObject_L_setterIMP;
  }

  *(*(*(a1 + 32) + 8) + 24) = class_addMethod(v14, v15, v17, v16);
LABEL_71:

  free(v7);
}

- (BOOL)_isModelKey:(id)key
{
  keyCopy = key;
  v4 = objc_opt_class();
  v5 = objc_getAssociatedObject(v4, _MPModelObjectModelKeyPropertyIndexKey);
  v6 = [v5 objectForKey:keyCopy];

  return v6 != 0;
}

- (id)_stateDumpObject
{
  v8[3] = *MEMORY[0x1E69E9840];
  storage = self->_storage;
  v7[0] = @"data";
  v7[1] = @"identifiers";
  identifiers = self->_identifiers;
  v8[0] = storage;
  v8[1] = identifiers;
  v7[2] = @"_obj";
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p>", objc_opt_class(), self];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)setValue:(id)value forModelKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (MSVDeviceOSIsInternalInstall() && (_os_feature_enabled_impl() & 1) == 0)
  {
    if (_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken != -1)
    {
      dispatch_once(&_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken, &__block_literal_global_305);
    }

    if (!pthread_getspecific(_MPModelObjectEnforcementDisabledPThreadKey_sThreadKey) && self->_isFinalized)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelObject.m" lineNumber:467 description:{@"Attempt to set enforced property after initialization: %@", keyCopy}];
    }
  }

  v8 = objc_opt_class();
  v9 = objc_getAssociatedObject(v8, _MPModelObjectModelKeyPropertyIndexKey);
  v10 = [v9 objectForKey:keyCopy];
  Property = class_getProperty(v8, [v10 UTF8String]);

  v12 = property_copyAttributeValue(Property, "C");
  if (v12)
  {
    v13 = v12;
    v14 = [valueCopy copy];

    free(v13);
    v15 = v14;
  }

  else
  {
    v15 = valueCopy;
  }

  v19 = v15;
  if (v15)
  {
    [(NSMutableDictionary *)self->_storage setObject:v15 forKeyedSubscript:keyCopy];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [(NSMutableDictionary *)self->_storage setObject:null forKeyedSubscript:keyCopy];
  }
}

- (id)valueForModelKey:(id)key
{
  keyCopy = key;
  v6 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:keyCopy];
  if (!v6 && MSVDeviceOSIsInternalInstall() && (_os_feature_enabled_impl() & 1) == 0)
  {
    if (_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken != -1)
    {
      dispatch_once(&_MPModelObjectEnforcementDisabledPThreadKey_sOnceToken, &__block_literal_global_305);
    }

    if (!pthread_getspecific(_MPModelObjectEnforcementDisabledPThreadKey_sThreadKey))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPModelObject.m" lineNumber:457 description:{@"Attempt to retrieve enforced uninitialized property: %@", keyCopy}];
    }
  }

  null = [MEMORY[0x1E695DFB0] null];
  if (v6 == null)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (id)mergeWithObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v7 = objectCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
LABEL_6:

      currentHandler = selfCopy;
LABEL_7:

      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_6;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_6;
      }
    }
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = objc_opt_class();
    [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"MPModelObject.m" lineNumber:431 description:{@"MPModelObject mergeWithObject: cannot merge objects [] self.class=%@ object.class%@", v16, objc_opt_class()}];
    goto LABEL_7;
  }

LABEL_9:
  identifiers = [(MPModelObject *)selfCopy identifiers];
  identifiers2 = [v7 identifiers];
  v12 = [identifiers unionSet:identifiers2];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __33__MPModelObject_mergeWithObject___block_invoke;
  v17[3] = &unk_1E767C0A8;
  v18 = v7;
  v13 = v7;
  v14 = [(MPModelObject *)selfCopy copyWithIdentifiers:v12 block:v17];

  return v14;
}

void __33__MPModelObject_mergeWithObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__MPModelObject_mergeWithObject___block_invoke_2;
  v6[3] = &unk_1E767A438;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __33__MPModelObject_mergeWithObject___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v10];
  v7 = [MEMORY[0x1E695DFB0] null];

  if (v7 != v5 || v6 == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v6 mergeWithObject:v5];
      [*(*(a1 + 32) + 8) setObject:v9 forKeyedSubscript:v10];
    }

    else
    {
      [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:v10];
    }
  }
}

- (BOOL)hasLoadedValuesForPropertySet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  setCopy = set;
  [setCopy properties];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (![(MPModelObject *)self hasLoadedValueForKey:*(*(&v17 + 1) + 8 * v8)])
        {

          v10 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  relationships = [setCopy relationships];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__MPModelObject_hasLoadedValuesForPropertySet___block_invoke;
  v12[3] = &unk_1E767FB78;
  v12[4] = self;
  v12[5] = &v13;
  [relationships enumerateKeysAndObjectsUsingBlock:v12];
  v10 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
LABEL_11:

  return v10 & 1;
}

void __47__MPModelObject_hasLoadedValuesForPropertySet___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) hasLoadedValueForKey:v10];
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_5;
  }

  v8 = [*(a1 + 32) valueForModelKey:v10];
  v9 = v8;
  if (v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 hasLoadedValuesForPropertySet:v7];
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
LABEL_5:
    *a4 = 1;
  }
}

- (BOOL)hasLoadedValueForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)copyWithIdentifiers:(id)identifiers propertySet:(id)set
{
  setCopy = set;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MPModelObject_copyWithIdentifiers_propertySet___block_invoke;
  v10[3] = &unk_1E767BD60;
  v11 = setCopy;
  selfCopy = self;
  v7 = setCopy;
  v8 = [(MPModelObject *)self copyWithIdentifiers:identifiers block:v10];

  return v8;
}

void __49__MPModelObject_copyWithIdentifiers_propertySet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3[1] removeAllObjects];
  v4 = [*(a1 + 32) properties];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MPModelObject_copyWithIdentifiers_propertySet___block_invoke_2;
  v11[3] = &unk_1E767A410;
  v5 = v3;
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  [v4 enumerateObjectsUsingBlock:v11];

  v7 = [*(a1 + 32) relationships];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MPModelObject_copyWithIdentifiers_propertySet___block_invoke_3;
  v9[3] = &unk_1E767FBA0;
  v9[4] = *(a1 + 40);
  v10 = v5;
  v8 = v5;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __49__MPModelObject_copyWithIdentifiers_propertySet___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:?];
  if (v3)
  {
    [*(*(a1 + 32) + 8) setObject:v3 forKeyedSubscript:v5];
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
    [*(*(a1 + 32) + 8) setObject:v4 forKeyedSubscript:v5];
  }
}

void __49__MPModelObject_copyWithIdentifiers_propertySet___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v9];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 copyWithPropertySet:v5];

    v6 = v7;
  }

  if (v6)
  {
    [*(*(a1 + 40) + 8) setObject:v6 forKeyedSubscript:v9];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    [*(*(a1 + 40) + 8) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)copyWithPropertySet:(id)set
{
  setCopy = set;
  identifiers = [(MPModelObject *)self identifiers];
  v6 = [(MPModelObject *)self copyWithIdentifiers:identifiers propertySet:setCopy];

  return v6;
}

- (id)copyWithIdentifiers:(id)identifiers block:(id)block
{
  blockCopy = block;
  identifiersCopy = identifiers;
  v8 = objc_alloc(objc_opt_class());
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__MPModelObject_copyWithIdentifiers_block___block_invoke;
  v12[3] = &unk_1E767A3E8;
  v12[4] = self;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = [v8 initWithIdentifiers:identifiersCopy block:v12];

  return v10;
}

void __43__MPModelObject_copyWithIdentifiers_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v6 = a2;
  v4 = [v3 mutableCopy];
  v5 = v6[1];
  v6[1] = v4;

  (*(*(a1 + 40) + 16))();
}

- (void)encodeWithCoder:(id)coder
{
  identifiers = self->_identifiers;
  coderCopy = coder;
  [coderCopy encodeObject:identifiers forKey:@"identifiers"];
  _sanitizedStorage = [(MPModelObject *)self _sanitizedStorage];
  [coderCopy encodeObject:_sanitizedStorage forKey:@"storage"];
}

- (MPModelObject)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = MPModelObject;
  v6 = [(MPModelObject *)&v32 init];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = objc_getAssociatedObject(v7, _MPModelObjectPropertyClassesKey);
    classesForSecureCoding = [objc_opt_class() classesForSecureCoding];
    if ([classesForSecureCoding containsObject:objc_opt_class()])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"MPModelObject.m" lineNumber:296 description:@"classesForSecureCoding cannot contain NSObject"];
    }

    v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v8, "count") + objc_msgSend(classesForSecureCoding, "count") + 4}];
    v27 = classesForSecureCoding;
    [v10 addObjectsFromArray:classesForSecureCoding];
    [v10 addObject:objc_opt_class()];
    [v10 addObject:objc_opt_class()];
    [v10 addObject:objc_opt_class()];
    [v10 addObject:objc_opt_class()];
    [v10 addObject:objc_opt_class()];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = NSClassFromString(*(*(&v28 + 1) + 8 * v15));
          if ((objc_opt_respondsToSelector() & 1) != 0 && [(objc_class *)v16 supportsSecureCoding])
          {
            [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v13);
    }

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifiers"];
    identifiers = v6->_identifiers;
    v6->_identifiers = v17;

    v19 = [coderCopy decodeObjectOfClasses:v10 forKey:@"storage"];
    storage = v6->_storage;
    v6->_storage = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"original"];
    v22 = v21;
    if (v21)
    {
      v23 = [*(v21 + 8) mutableCopy];
      [(NSMutableDictionary *)v23 addEntriesFromDictionary:v6->_storage];
      v24 = v6->_storage;
      v6->_storage = v23;
    }

    v6->_isFinalized = 1;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    identifiers = self->_identifiers;
    identifiers = [v5 identifiers];
    if (identifiers == identifiers || [(MPIdentifierSet *)identifiers isEqual:identifiers])
    {
      _sanitizedStorage = [(MPModelObject *)self _sanitizedStorage];
      _sanitizedStorage2 = [v5 _sanitizedStorage];
      if (_sanitizedStorage == _sanitizedStorage2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [_sanitizedStorage isEqual:_sanitizedStorage2];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([(MPModelObject *)self _isModelKey:keyCopy])
  {
    [(MPModelObject *)self setValue:valueCopy forModelKey:keyCopy];
  }

  v8.receiver = self;
  v8.super_class = MPModelObject;
  [(MPModelObject *)&v8 setValue:valueCopy forUndefinedKey:keyCopy];
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if ([(MPModelObject *)self _isModelKey:keyCopy])
  {
    v5 = [(MPModelObject *)self valueForModelKey:keyCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MPModelObject;
    v5 = [(MPModelObject *)&v8 valueForUndefinedKey:keyCopy];
  }

  v6 = v5;

  return v6;
}

- (NSString)humanDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifiers = [(MPModelObject *)self identifiers];
  if ([(NSMutableDictionary *)self->_storage count])
  {
    storage = self->_storage;
  }

  else
  {
    storage = @"{}";
  }

  storage = [v3 stringWithFormat:@"<%@: %p identifiers=%@ properties=%@>", v4, self, identifiers, storage];

  return storage;
}

- (MPModelObject)initWithIdentifiers:(id)identifiers block:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = MPModelObject;
  v8 = [(MPModelObject *)&v16 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    identifiers = v8->_identifiers;
    v8->_identifiers = v9;

    v11 = objc_opt_class();
    v12 = objc_getAssociatedObject(v11, _MPModelObjectSharedKeySetKey);
    v13 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v12];
    storage = v8->_storage;
    v8->_storage = v13;

    blockCopy[2](blockCopy, v8);
    v8->_isFinalized = 1;
  }

  return v8;
}

@end