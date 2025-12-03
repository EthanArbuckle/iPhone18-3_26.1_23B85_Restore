@interface CPAccNavParam
+ (CPAccNavParam)paramWithProperty:(id)property keys:(id)keys;
+ (Class)_objcTypeForUpdate:(Class)update parameter:(id)parameter;
+ (id)_encodedTypeForClass:(Class)class property:(id)property;
+ (int64_t)_accNavTypeForUpdate:(Class)update parameter:(id)parameter key:(id)key;
- (CPAccNavParam)init;
- (CPAccNavParamKey)primaryKey;
- (id)copySettingCollectionGeneric:(Class)generic;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)configureTypesForUpdate:(Class)update;
@end

@implementation CPAccNavParam

- (CPAccNavParamKey)primaryKey
{
  keys = [(CPAccNavParam *)self keys];
  firstObject = [keys firstObject];

  return firstObject;
}

+ (CPAccNavParam)paramWithProperty:(id)property keys:(id)keys
{
  keysCopy = keys;
  propertyCopy = property;
  v7 = objc_opt_new();
  [v7 setProperty:propertyCopy];

  [v7 setKeys:keysCopy];

  return v7;
}

- (CPAccNavParam)init
{
  v3.receiver = self;
  v3.super_class = CPAccNavParam;
  result = [(CPAccNavParam *)&v3 init];
  if (result)
  {
    result->_encodeable = 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromClass([(CPAccNavParam *)self objcType]);
  v5 = &stru_2849E5A88;
  if ([(CPAccNavParam *)self collectionGeneric])
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = NSStringFromClass([(CPAccNavParam *)self collectionGeneric]);
    v8 = [v6 stringWithFormat:@"(%@)", v7];
    v9 = [v3 stringWithFormat:@" objcType=%@%@", v4, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@" objcType=%@%@", v4, &stru_2849E5A88];
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  property = [(CPAccNavParam *)self property];
  if ([(CPAccNavParam *)self objcType])
  {
    v5 = v9;
  }

  keys = [(CPAccNavParam *)self keys];
  v14 = [v10 stringWithFormat:@"<%@: %p property=%@%@ %@>", v11, self, property, v5, keys];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  property = [(CPAccNavParam *)self property];
  [v4 setProperty:property];

  keys = [(CPAccNavParam *)self keys];
  [v4 setKeys:keys];

  [v4 setCollectionGeneric:{-[CPAccNavParam collectionGeneric](self, "collectionGeneric")}];
  [v4 setEncodeable:{-[CPAccNavParam encodeable](self, "encodeable")}];
  [v4 setObjcType:{-[CPAccNavParam objcType](self, "objcType")}];
  return v4;
}

- (id)copySettingCollectionGeneric:(Class)generic
{
  v4 = [(CPAccNavParam *)self copy];
  [v4 setCollectionGeneric:generic];
  return v4;
}

- (void)configureTypesForUpdate:(Class)update
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(CPAccNavParam *)self objcType]&& [(objc_class *)update conformsToProtocol:&unk_284A05938])
  {
    [(CPAccNavParam *)self setObjcType:[CPAccNavParam _objcTypeForUpdate:update parameter:self]];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    keys = [(CPAccNavParam *)self keys];
    v6 = [keys countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(keys);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          [v10 setAccNavType:{+[CPAccNavParam _accNavTypeForUpdate:parameter:key:](CPAccNavParam, "_accNavTypeForUpdate:parameter:key:", update, self, v10)}];
          [v10 setParam:self];
        }

        v7 = [keys countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (Class)_objcTypeForUpdate:(Class)update parameter:(id)parameter
{
  property = [parameter property];
  v7 = [self _encodedTypeForClass:update property:property];

  v8 = [v7 characterAtIndex:0];
  v9 = 0;
  v10 = (v8 - 64);
  if (v10 <= 0x3B)
  {
    if (((1 << (v8 - 64)) & 0xA1258000A120CLL) != 0)
    {
LABEL_3:
      v9 = objc_opt_class();
      goto LABEL_4;
    }

    if (v8 == 64)
    {
      if ([v7 length] < 3)
      {
        v9 = 0;
      }

      else
      {
        v12 = [v7 substringWithRange:{2, objc_msgSend(v7, "length") - 3}];
        v13 = NSClassFromString(v12);
        if (!v13)
        {
          v13 = objc_opt_class();
        }

        v9 = v13;
      }
    }

    else if (v10 == 59)
    {
      goto LABEL_3;
    }
  }

LABEL_4:

  return v9;
}

+ (int64_t)_accNavTypeForUpdate:(Class)update parameter:(id)parameter key:(id)key
{
  parameterCopy = parameter;
  keyCopy = key;
  if ([keyCopy accNavType] != -1)
  {
    accNavType = [keyCopy accNavType];
    goto LABEL_6;
  }

  objcType = [parameterCopy objcType];
  if ([keyCopy enumType] || (objc_msgSend(keyCopy, "isBoolValue") & 1) != 0)
  {
    accNavType = 3;
    goto LABEL_6;
  }

  if ([keyCopy isTimeIntervalValue])
  {
    accNavType = 0;
    goto LABEL_6;
  }

  dimension = [keyCopy dimension];
  degrees = [MEMORY[0x277CCADA8] degrees];
  v15 = [dimension isEqual:degrees];

  if (v15)
  {
    accNavType = 6;
    goto LABEL_6;
  }

  dimension2 = [keyCopy dimension];
  meters = [MEMORY[0x277CCAE20] meters];
  v18 = [dimension2 isEqual:meters];

  if (v18)
  {
    goto LABEL_12;
  }

  dimension3 = [keyCopy dimension];
  volts = [MEMORY[0x277CCADE8] volts];
  v21 = [dimension3 isEqual:volts];

  if (v21)
  {
    accNavType = 2;
    goto LABEL_6;
  }

  dimension4 = [keyCopy dimension];
  watts = [MEMORY[0x277CCAE30] watts];
  v24 = [dimension4 isEqual:watts];

  if (v24 & 1) != 0 || ([keyCopy dimension], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCADF8], "wattHours"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqual:", v26), v26, v25, (v27))
  {
LABEL_12:
    accNavType = 1;
    goto LABEL_6;
  }

  if ([keyCopy hasVariants])
  {
    objcType = [parameterCopy collectionGeneric];
  }

  if (objcType == objc_opt_class())
  {
    property = [parameterCopy property];
    v29 = [self _encodedTypeForClass:update property:property];

    v30 = [v29 characterAtIndex:0];
    if (v30 > 98)
    {
      if (v30 <= 104)
      {
        if (v30 == 99)
        {
          accNavType = 7;
          goto LABEL_53;
        }

        if (v30 != 100 && v30 != 102)
        {
          goto LABEL_52;
        }

LABEL_44:
        accNavType = 0;
        goto LABEL_53;
      }

      switch(v30)
      {
        case 'i':
          accNavType = 5;
          goto LABEL_53;
        case 'q':
          accNavType = 4;
          goto LABEL_53;
        case 's':
          accNavType = 6;
          goto LABEL_53;
      }

LABEL_52:
      accNavType = -1;
      goto LABEL_53;
    }

    if (v30 <= 72)
    {
      if (v30 != 66 && v30 != 67)
      {
        goto LABEL_52;
      }

      accNavType = 3;
    }

    else
    {
      if (v30 == 73)
      {
        accNavType = 1;
        goto LABEL_53;
      }

      if (v30 == 81)
      {
        goto LABEL_44;
      }

      if (v30 != 83)
      {
        goto LABEL_52;
      }

      accNavType = 2;
    }

LABEL_53:

    goto LABEL_6;
  }

  if (objcType == objc_opt_class() || objcType == objc_opt_class())
  {
    accNavType = 10;
  }

  else if (objcType == objc_opt_class() || objcType == objc_opt_class())
  {
    accNavType = 8;
  }

  else if (objcType == objc_opt_class())
  {
    accNavType = 0;
  }

  else
  {
    accNavType = -1;
  }

LABEL_6:

  return accNavType;
}

+ (id)_encodedTypeForClass:(Class)class property:(id)property
{
  Property = class_getProperty(class, [property UTF8String]);
  v5 = property_copyAttributeValue(Property, "T");
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  free(v5);

  return v6;
}

@end