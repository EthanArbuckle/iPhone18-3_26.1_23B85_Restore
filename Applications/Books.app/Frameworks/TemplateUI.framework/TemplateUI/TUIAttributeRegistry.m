@interface TUIAttributeRegistry
+ (id)nameForAttribute:(unsigned __int16)a3;
+ (unsigned)attributeWithName:(id)a3;
+ (unsigned)lookupAttributeWithName:(id)a3;
+ (unsigned)registerCustomAttributeWithName:(id)a3;
@end

@implementation TUIAttributeRegistry

+ (unsigned)registerCustomAttributeWithName:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = sub_83BE0();
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
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
      [v5 setObject:v10 forKeyedSubscript:v4];

      v14 = &v13;
      v11 = sub_11CD4(v9, &v13);
      objc_storeStrong(v11 + 3, a3);
      v8 = v13;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

+ (unsigned)attributeWithName:(id)a3
{
  v4 = a3;
  v5 = [a1 lookupAttributeWithName:v4];
  if (v5 == 0xFFFF)
  {
    v7 = [NSException alloc];
    v8 = [NSString stringWithFormat:@"'%@' not defined/registered", v4];
    v9 = [v7 initWithName:@"InvalidAttribute" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  return v5;
}

+ (id)nameForAttribute:(unsigned __int16)a3
{
  v11 = a3;
  if (qword_2E6310 != -1)
  {
    sub_19A034();
  }

  v3 = sub_11F88(qword_2E6308, &v11);
  if (!v3)
  {
    v6 = [NSException alloc];
    v7 = [NSNumber numberWithUnsignedShort:v11];
    v8 = [NSString stringWithFormat:@"'%@' not defined/registered", v7];
    v9 = [v6 initWithName:@"InvalidAttribute" reason:v8 userInfo:0];
    v10 = v9;

    objc_exception_throw(v9);
  }

  v4 = v3[3];

  return v4;
}

+ (unsigned)lookupAttributeWithName:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = sub_83BE0();
    v5 = [v4 objectForKeyedSubscript:v3];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 integerValue];
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

@end