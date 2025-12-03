@interface _NSPropertyDescriptionProxy
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (_NSPropertyDescriptionProxy)initWithCoder:(id)coder;
- (id)description;
- (void)_versionHash:(char *)hash inStyle:(unint64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSPropertyDescriptionProxy

- (_NSPropertyDescriptionProxy)initWithCoder:(id)coder
{
  v20.receiver = self;
  v20.super_class = _NSPropertyDescriptionProxy;
  v4 = [(_NSPropertyDescriptionProxy *)&v20 init];
  if (v4)
  {
    v5 = +[PFModelDecoderContext retainedContext];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = __45___NSPropertyDescriptionProxy_initWithCoder___block_invoke;
    v18 = &unk_1E6EC16F0;
    v19 = v5;
    v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSUnderlyingProperty"];
    v4->_underlyingProperty = v6;
    if (!v6)
    {
      goto LABEL_11;
    }

    if (v5)
    {
      v7 = v5[3];
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:v6];
    underlyingProperty = v4->_underlyingProperty;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = &unk_1EF435760;
    }

    else
    {
      v10 = &unk_1EF435738;
    }

    if ((isKindOfClass & 1 & (v5 != 0)) == 0)
    {
      goto LABEL_18;
    }

    if (v5[1] || v5[2])
    {
LABEL_11:
      v4->_entitysReferenceIDForProperty = [coder decodeIntegerForKey:@"NSReferenceID"];
      v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSEntityDescription"];
      v4->_entityDescription = v11;
      if (!v11)
      {
LABEL_19:
        v17(v16);
        return v4;
      }

      if (v5)
      {
        v12 = v5[3];
      }

      else
      {
        v12 = 0;
      }

      [v12 addObject:v11];
      entityDescription = v4->_entityDescription;
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();
      if (v14)
      {
        v10 = &unk_1EF4357B0;
      }

      else
      {
        v10 = &unk_1EF435788;
      }

      if (v5 != 0 && (v14 & 1) != 0)
      {
        if (v5[1] || v5[2])
        {
          goto LABEL_19;
        }

        v10 = &unk_1EF4357B0;
      }
    }

    else
    {
      v10 = &unk_1EF435760;
    }

LABEL_18:
    [coder failWithError:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", *MEMORY[0x1E696A250], 4866, v10)}];

    v4 = 0;
    goto LABEL_19;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_underlyingProperty forKey:@"NSUnderlyingProperty"];
  [coder encodeInteger:self->_entitysReferenceIDForProperty forKey:@"NSReferenceID"];
  entityDescription = self->_entityDescription;

  [coder encodeObject:entityDescription forKey:@"NSEntityDescription"];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Proxy for prop named %@ on ed %@, real %@", -[NSPropertyDescription name](self->_underlyingProperty, "name"), -[NSEntityDescription name](self->_entityDescription, "name"), self->_underlyingProperty];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (void)_versionHash:(char *)hash inStyle:(unint64_t)style
{
  _propertyType = [(NSPropertyDescription *)self->_underlyingProperty _propertyType];
  underlyingProperty = self->_underlyingProperty;
  if (_propertyType == 4)
  {

    [(NSPropertyDescription *)underlyingProperty _versionHash:hash inStyle:style proxyContext:self];
  }

  else
  {

    [(NSPropertyDescription *)underlyingProperty _versionHash:hash inStyle:style];
  }
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v5, method);
  if (InstanceMethod || (v7 = objc_opt_class(), (InstanceMethod = class_getInstanceMethod(v7, method)) != 0))
  {
    v8 = InstanceMethod;
    InstanceMethod = method_getTypeEncoding(InstanceMethod);
    if (InstanceMethod)
    {
      v9 = InstanceMethod;
      if (method_getNumberOfArguments(v8) == 2)
      {
        LOBYTE(InstanceMethod) = 0;
        v10 = *v9;
        v11 = returnBoolThing1;
        if (v10 <= 0x62)
        {
          if (v10 == 64)
          {
            v11 = returnIdThing1;
            goto LABEL_14;
          }

          if (v10 != 81)
          {
            return InstanceMethod;
          }

          goto LABEL_12;
        }

        if (v10 == 99)
        {
LABEL_14:
          class_addMethod(self, method, v11, v9);
          LOBYTE(InstanceMethod) = 1;
          return InstanceMethod;
        }

        if (v10 == 113)
        {
LABEL_12:
          v11 = returnUIntegerThing1;
          goto LABEL_14;
        }
      }

      else
      {
        LOBYTE(InstanceMethod) = 0;
      }
    }
  }

  return InstanceMethod;
}

@end