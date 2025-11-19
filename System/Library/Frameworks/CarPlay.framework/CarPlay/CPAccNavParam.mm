@interface CPAccNavParam
+ (CPAccNavParam)paramWithProperty:(id)a3 keys:(id)a4;
+ (Class)_objcTypeForUpdate:(Class)a3 parameter:(id)a4;
+ (id)_encodedTypeForClass:(Class)a3 property:(id)a4;
+ (int64_t)_accNavTypeForUpdate:(Class)a3 parameter:(id)a4 key:(id)a5;
- (CPAccNavParam)init;
- (CPAccNavParamKey)primaryKey;
- (id)copySettingCollectionGeneric:(Class)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)configureTypesForUpdate:(Class)a3;
@end

@implementation CPAccNavParam

- (CPAccNavParamKey)primaryKey
{
  v2 = [(CPAccNavParam *)self keys];
  v3 = [v2 firstObject];

  return v3;
}

+ (CPAccNavParam)paramWithProperty:(id)a3 keys:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setProperty:v6];

  [v7 setKeys:v5];

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
  v12 = [(CPAccNavParam *)self property];
  if ([(CPAccNavParam *)self objcType])
  {
    v5 = v9;
  }

  v13 = [(CPAccNavParam *)self keys];
  v14 = [v10 stringWithFormat:@"<%@: %p property=%@%@ %@>", v11, self, v12, v5, v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(CPAccNavParam *)self property];
  [v4 setProperty:v5];

  v6 = [(CPAccNavParam *)self keys];
  [v4 setKeys:v6];

  [v4 setCollectionGeneric:{-[CPAccNavParam collectionGeneric](self, "collectionGeneric")}];
  [v4 setEncodeable:{-[CPAccNavParam encodeable](self, "encodeable")}];
  [v4 setObjcType:{-[CPAccNavParam objcType](self, "objcType")}];
  return v4;
}

- (id)copySettingCollectionGeneric:(Class)a3
{
  v4 = [(CPAccNavParam *)self copy];
  [v4 setCollectionGeneric:a3];
  return v4;
}

- (void)configureTypesForUpdate:(Class)a3
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(CPAccNavParam *)self objcType]&& [(objc_class *)a3 conformsToProtocol:&unk_284A05938])
  {
    [(CPAccNavParam *)self setObjcType:[CPAccNavParam _objcTypeForUpdate:a3 parameter:self]];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(CPAccNavParam *)self keys];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          [v10 setAccNavType:{+[CPAccNavParam _accNavTypeForUpdate:parameter:key:](CPAccNavParam, "_accNavTypeForUpdate:parameter:key:", a3, self, v10)}];
          [v10 setParam:self];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (Class)_objcTypeForUpdate:(Class)a3 parameter:(id)a4
{
  v6 = [a4 property];
  v7 = [a1 _encodedTypeForClass:a3 property:v6];

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

+ (int64_t)_accNavTypeForUpdate:(Class)a3 parameter:(id)a4 key:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([v9 accNavType] != -1)
  {
    v10 = [v9 accNavType];
    goto LABEL_6;
  }

  v11 = [v8 objcType];
  if ([v9 enumType] || (objc_msgSend(v9, "isBoolValue") & 1) != 0)
  {
    v10 = 3;
    goto LABEL_6;
  }

  if ([v9 isTimeIntervalValue])
  {
    v10 = 0;
    goto LABEL_6;
  }

  v13 = [v9 dimension];
  v14 = [MEMORY[0x277CCADA8] degrees];
  v15 = [v13 isEqual:v14];

  if (v15)
  {
    v10 = 6;
    goto LABEL_6;
  }

  v16 = [v9 dimension];
  v17 = [MEMORY[0x277CCAE20] meters];
  v18 = [v16 isEqual:v17];

  if (v18)
  {
    goto LABEL_12;
  }

  v19 = [v9 dimension];
  v20 = [MEMORY[0x277CCADE8] volts];
  v21 = [v19 isEqual:v20];

  if (v21)
  {
    v10 = 2;
    goto LABEL_6;
  }

  v22 = [v9 dimension];
  v23 = [MEMORY[0x277CCAE30] watts];
  v24 = [v22 isEqual:v23];

  if (v24 & 1) != 0 || ([v9 dimension], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCADF8], "wattHours"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v25, "isEqual:", v26), v26, v25, (v27))
  {
LABEL_12:
    v10 = 1;
    goto LABEL_6;
  }

  if ([v9 hasVariants])
  {
    v11 = [v8 collectionGeneric];
  }

  if (v11 == objc_opt_class())
  {
    v28 = [v8 property];
    v29 = [a1 _encodedTypeForClass:a3 property:v28];

    v30 = [v29 characterAtIndex:0];
    if (v30 > 98)
    {
      if (v30 <= 104)
      {
        if (v30 == 99)
        {
          v10 = 7;
          goto LABEL_53;
        }

        if (v30 != 100 && v30 != 102)
        {
          goto LABEL_52;
        }

LABEL_44:
        v10 = 0;
        goto LABEL_53;
      }

      switch(v30)
      {
        case 'i':
          v10 = 5;
          goto LABEL_53;
        case 'q':
          v10 = 4;
          goto LABEL_53;
        case 's':
          v10 = 6;
          goto LABEL_53;
      }

LABEL_52:
      v10 = -1;
      goto LABEL_53;
    }

    if (v30 <= 72)
    {
      if (v30 != 66 && v30 != 67)
      {
        goto LABEL_52;
      }

      v10 = 3;
    }

    else
    {
      if (v30 == 73)
      {
        v10 = 1;
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

      v10 = 2;
    }

LABEL_53:

    goto LABEL_6;
  }

  if (v11 == objc_opt_class() || v11 == objc_opt_class())
  {
    v10 = 10;
  }

  else if (v11 == objc_opt_class() || v11 == objc_opt_class())
  {
    v10 = 8;
  }

  else if (v11 == objc_opt_class())
  {
    v10 = 0;
  }

  else
  {
    v10 = -1;
  }

LABEL_6:

  return v10;
}

+ (id)_encodedTypeForClass:(Class)a3 property:(id)a4
{
  Property = class_getProperty(a3, [a4 UTF8String]);
  v5 = property_copyAttributeValue(Property, "T");
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  free(v5);

  return v6;
}

@end