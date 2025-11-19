@interface BRCConfigValue
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)a3;
- (BRCConfigValue)initWithObject:(id)a3;
- (NSArray)arrayValue;
- (NSDictionary)dictionaryValue;
- (NSNumber)numberValue;
- (NSString)stringValue;
- (double)doubleValue;
- (float)floatValue;
- (id)debugDescription;
- (id)description;
- (int64_t)integerValue;
- (int64_t)longLongValue;
- (unint64_t)unsignedIntegerValue;
- (unint64_t)unsignedLongLongValue;
@end

@implementation BRCConfigValue

- (BRCConfigValue)initWithObject:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRCConfigValue;
  v5 = [(BRCConfigValue *)&v8 init];
  object = v5->_object;
  v5->_object = v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BRCConfigValue *)v5 object];
      if (v6 && (v7 = v6, [(BRCConfigValue *)self object], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) && ([(BRCConfigValue *)v5 object], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
      {
        v11 = [(BRCConfigValue *)v5 object];
        v12 = [(BRCConfigValue *)self object];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v2 = [(BRCConfigValue *)self object];
  v3 = [v2 description];

  return v3;
}

- (id)debugDescription
{
  v2 = [(BRCConfigValue *)self object];
  v3 = [v2 debugDescription];

  return v3;
}

- (double)doubleValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (float)floatValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    [v2 floatValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int64_t)longLongValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)unsignedLongLongValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedLongLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)integerValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)BOOLValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)unsignedIntegerValue
{
  v2 = [(BRCConfigValue *)self numberValue];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)stringValue
{
  v3 = [(BRCConfigValue *)self object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(BRCConfigValue *)self object];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if (v6)
    {
      v7 = [(BRCConfigValue *)self object];
      v5 = [v7 stringValue];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSNumber)numberValue
{
  v3 = [(BRCConfigValue *)self object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(BRCConfigValue *)self object];
    v6 = [NSDecimalNumber decimalNumberWithString:v5];
  }

  else
  {
    v7 = [(BRCConfigValue *)self object];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      v6 = [(BRCConfigValue *)self object];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSArray)arrayValue
{
  objc_opt_class();
  v3 = [(BRCConfigValue *)self object];
  v4 = BUDynamicCast();

  return v4;
}

- (NSDictionary)dictionaryValue
{
  objc_opt_class();
  v3 = [(BRCConfigValue *)self object];
  v4 = BUDynamicCast();

  return v4;
}

@end