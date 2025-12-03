@interface TUIAttributeRegistry
+ (id)nameForAttribute:(unsigned __int16)attribute;
+ (unsigned)attributeWithName:(id)name;
+ (unsigned)lookupAttributeWithName:(id)name;
+ (unsigned)registerCustomAttributeWithName:(id)name;
@end

@implementation TUIAttributeRegistry

+ (unsigned)registerCustomAttributeWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v5 = sub_83BE0();
    v6 = [v5 objectForKeyedSubscript:nameCopy];
    v7 = v6;
    if (v6)
    {
      integerValue = [v6 integerValue];
    }

    else
    {
      if (qword_2E6310 != -1)
      {
        sub_19A034();
      }

      v9 = qword_2E6308;
      v13 = [v5 count];
      v10 = [NSNumber numberWithUnsignedShort:v13];
      [v5 setObject:v10 forKeyedSubscript:nameCopy];

      v14 = &v13;
      v11 = sub_11CD4(v9, &v13);
      objc_storeStrong(v11 + 3, name);
      integerValue = v13;
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

+ (unsigned)attributeWithName:(id)name
{
  nameCopy = name;
  v5 = [self lookupAttributeWithName:nameCopy];
  if (v5 == 0xFFFF)
  {
    v7 = [NSException alloc];
    nameCopy = [NSString stringWithFormat:@"'%@' not defined/registered", nameCopy];
    v9 = [v7 initWithName:@"InvalidAttribute" reason:nameCopy userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v5;
}

+ (id)nameForAttribute:(unsigned __int16)attribute
{
  attributeCopy = attribute;
  if (qword_2E6310 != -1)
  {
    sub_19A034();
  }

  v3 = sub_11F88(qword_2E6308, &attributeCopy);
  if (!v3)
  {
    v6 = [NSException alloc];
    v7 = [NSNumber numberWithUnsignedShort:attributeCopy];
    v8 = [NSString stringWithFormat:@"'%@' not defined/registered", v7];
    v9 = [v6 initWithName:@"InvalidAttribute" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = v3[3];

  return v4;
}

+ (unsigned)lookupAttributeWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v4 = sub_83BE0();
    v5 = [v4 objectForKeyedSubscript:nameCopy];
    v6 = v5;
    if (v5)
    {
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = -1;
    }
  }

  else
  {
    integerValue = -1;
  }

  return integerValue;
}

@end