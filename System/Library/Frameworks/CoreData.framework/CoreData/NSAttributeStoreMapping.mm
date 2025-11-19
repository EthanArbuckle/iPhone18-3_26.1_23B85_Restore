@interface NSAttributeStoreMapping
- (BOOL)isEqual:(id)a3;
- (NSAttributeStoreMapping)initWithProperty:(id)a3;
- (id)sqlType;
@end

@implementation NSAttributeStoreMapping

- (NSAttributeStoreMapping)initWithProperty:(id)a3
{
  v6.receiver = self;
  v6.super_class = NSAttributeStoreMapping;
  v3 = [(NSPropertyStoreMapping *)&v6 initWithProperty:a3];
  v4 = v3;
  if (v3)
  {
    [(NSAttributeStoreMapping *)v3 setExternalType:0xFFFFFFFFLL];
    v4->_externalPrecision = 0;
    v4->_externalScale = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v12.receiver = self;
  v12.super_class = NSAttributeStoreMapping;
  v5 = [(NSPropertyStoreMapping *)&v12 isEqual:?];
  if (v5)
  {
    v6 = [(NSAttributeStoreMapping *)self externalType];
    if (v6 != [a3 externalType])
    {
      goto LABEL_11;
    }

    if (self)
    {
      externalPrecision = self->_externalPrecision;
      if (a3)
      {
LABEL_5:
        v8 = *(a3 + 7);
        goto LABEL_6;
      }
    }

    else
    {
      externalPrecision = 0;
      if (a3)
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
        if (a3)
        {
LABEL_9:
          v10 = *(a3 + 8);
LABEL_10:
          LOBYTE(v5) = externalScale == v10;
          return v5;
        }
      }

      else
      {
        externalScale = 0;
        if (a3)
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
  v2 = [(NSAttributeStoreMapping *)self externalType];
  if (v2 <= 699)
  {
    if (v2 > 399)
    {
      if (v2 == 400)
      {
        return @"NUMERIC";
      }

      if (v2 == 500 || v2 == 600)
      {
        return @"DOUBLE";
      }
    }

    else
    {
      v3 = @"INTEGER";
      if (v2 == 100 || v2 == 200 || v2 == 300)
      {
        return v3;
      }
    }

LABEL_27:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Undefined attribute type." userInfo:0]);
  }

  if (v2 > 999)
  {
    if (v2 <= 1199)
    {
      if (v2 != 1000 && v2 != 1100)
      {
        goto LABEL_27;
      }

      return @"BLOB";
    }

    if (v2 != 1200)
    {
      if (v2 != 1800)
      {
        goto LABEL_27;
      }

      return @"BLOB";
    }

    return @"TEXT";
  }

  if (v2 == 700)
  {
    return @"TEXT";
  }

  if (v2 == 800)
  {
    return @"BOOLEAN";
  }

  if (v2 != 900)
  {
    goto LABEL_27;
  }

  return @"TIMESTAMP";
}

@end