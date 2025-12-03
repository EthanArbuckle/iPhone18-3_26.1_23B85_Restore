@interface BRCConfigValue
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (BRCConfigValue)initWithObject:(id)object;
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

- (BRCConfigValue)initWithObject:(id)object
{
  objectCopy = object;
  v8.receiver = self;
  v8.super_class = BRCConfigValue;
  v5 = [(BRCConfigValue *)&v8 init];
  object = v5->_object;
  v5->_object = objectCopy;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      object = [(BRCConfigValue *)v5 object];
      if (object && (v7 = object, [(BRCConfigValue *)self object], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8) && ([(BRCConfigValue *)v5 object], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) != 0))
      {
        object2 = [(BRCConfigValue *)v5 object];
        object3 = [(BRCConfigValue *)self object];
        v13 = [object2 isEqual:object3];
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
  object = [(BRCConfigValue *)self object];
  v3 = [object description];

  return v3;
}

- (id)debugDescription
{
  object = [(BRCConfigValue *)self object];
  v3 = [object debugDescription];

  return v3;
}

- (double)doubleValue
{
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    [numberValue doubleValue];
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
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    [numberValue floatValue];
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
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    longLongValue = [numberValue longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (unint64_t)unsignedLongLongValue
{
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    unsignedLongLongValue = [numberValue unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (int64_t)integerValue
{
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    integerValue = [numberValue integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)BOOLValue
{
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    bOOLValue = [numberValue BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (unint64_t)unsignedIntegerValue
{
  numberValue = [(BRCConfigValue *)self numberValue];
  v3 = numberValue;
  if (numberValue)
  {
    unsignedIntegerValue = [numberValue unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (NSString)stringValue
{
  object = [(BRCConfigValue *)self object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object2 = [(BRCConfigValue *)self object];
  if ((isKindOfClass & 1) == 0)
  {
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if (v6)
    {
      object3 = [(BRCConfigValue *)self object];
      object2 = [object3 stringValue];
    }

    else
    {
      object2 = 0;
    }
  }

  return object2;
}

- (NSNumber)numberValue
{
  object = [(BRCConfigValue *)self object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [(BRCConfigValue *)self object];
    object4 = [NSDecimalNumber decimalNumberWithString:object2];
  }

  else
  {
    object3 = [(BRCConfigValue *)self object];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass();

    if (v8)
    {
      object4 = [(BRCConfigValue *)self object];
    }

    else
    {
      object4 = 0;
    }
  }

  return object4;
}

- (NSArray)arrayValue
{
  objc_opt_class();
  object = [(BRCConfigValue *)self object];
  v4 = BUDynamicCast();

  return v4;
}

- (NSDictionary)dictionaryValue
{
  objc_opt_class();
  object = [(BRCConfigValue *)self object];
  v4 = BUDynamicCast();

  return v4;
}

@end