@interface NSAttributeStoreMapping
- (BOOL)isEqual:(id)equal;
- (NSAttributeStoreMapping)initWithProperty:(id)property;
- (id)sqlType;
@end

@implementation NSAttributeStoreMapping

- (NSAttributeStoreMapping)initWithProperty:(id)property
{
  v6.receiver = self;
  v6.super_class = NSAttributeStoreMapping;
  v3 = [(NSPropertyStoreMapping *)&v6 initWithProperty:property];
  v4 = v3;
  if (v3)
  {
    [(NSAttributeStoreMapping *)v3 setExternalType:0xFFFFFFFFLL];
    v4->_externalPrecision = 0;
    v4->_externalScale = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v12.receiver = self;
  v12.super_class = NSAttributeStoreMapping;
  v5 = [(NSPropertyStoreMapping *)&v12 isEqual:?];
  if (v5)
  {
    externalType = [(NSAttributeStoreMapping *)self externalType];
    if (externalType != [equal externalType])
    {
      goto LABEL_11;
    }

    if (self)
    {
      externalPrecision = self->_externalPrecision;
      if (equal)
      {
LABEL_5:
        v8 = *(equal + 7);
        goto LABEL_6;
      }
    }

    else
    {
      externalPrecision = 0;
      if (equal)
      {
        goto LABEL_5;
      }
    }

    v8 = 0;
LABEL_6:
    if (externalPrecision == v8)
    {
      if (self)
      {
        externalScale = self->_externalScale;
        if (equal)
        {
LABEL_9:
          v10 = *(equal + 8);
LABEL_10:
          LOBYTE(v5) = externalScale == v10;
          return v5;
        }
      }

      else
      {
        externalScale = 0;
        if (equal)
        {
          goto LABEL_9;
        }
      }

      v10 = 0;
      goto LABEL_10;
    }

LABEL_11:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)sqlType
{
  externalType = [(NSAttributeStoreMapping *)self externalType];
  if (externalType <= 699)
  {
    if (externalType > 399)
    {
      if (externalType == 400)
      {
        return @"NUMERIC";
      }

      if (externalType == 500 || externalType == 600)
      {
        return @"DOUBLE";
      }
    }

    else
    {
      v3 = @"INTEGER";
      if (externalType == 100 || externalType == 200 || externalType == 300)
      {
        return v3;
      }
    }

LABEL_27:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Undefined attribute type." userInfo:0]);
  }

  if (externalType > 999)
  {
    if (externalType <= 1199)
    {
      if (externalType != 1000 && externalType != 1100)
      {
        goto LABEL_27;
      }

      return @"BLOB";
    }

    if (externalType != 1200)
    {
      if (externalType != 1800)
      {
        goto LABEL_27;
      }

      return @"BLOB";
    }

    return @"TEXT";
  }

  if (externalType == 700)
  {
    return @"TEXT";
  }

  if (externalType == 800)
  {
    return @"BOOLEAN";
  }

  if (externalType != 900)
  {
    goto LABEL_27;
  }

  return @"TIMESTAMP";
}

@end