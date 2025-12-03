@interface NSSQLBindVariable
- (NSSQLBindVariable)initWithValue:(id)value sqlType:(unsigned __int8)type propertyDescription:(id)description allowCoercion:(BOOL)coercion;
- (id)value;
- (int64_t)int64;
- (unsigned)unsignedInt;
- (void)dealloc;
- (void)setValue:(id)value;
@end

@implementation NSSQLBindVariable

- (id)value
{
  result = self->_value;
  if (!result)
  {
    if (self->_int64)
    {
      return [MEMORY[0x1E696AD98] numberWithLongLong:?];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)int64
{
  value = self->_value;
  if (value)
  {
    return [value longLongValue];
  }

  else
  {
    return self->_int64;
  }
}

- (void)dealloc
{
  self->_value = 0;
  self->_propertyDescription = 0;
  v3.receiver = self;
  v3.super_class = NSSQLBindVariable;
  [(NSSQLBindVariable *)&v3 dealloc];
}

- (NSSQLBindVariable)initWithValue:(id)value sqlType:(unsigned __int8)type propertyDescription:(id)description allowCoercion:(BOOL)coercion
{
  coercionCopy = coercion;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = NSSQLBindVariable;
  v10 = [(NSSQLBindVariable *)&v14 init];
  if (v10)
  {
    if ([MEMORY[0x1E695DFB0] null] == value)
    {
      valueCopy = 0;
    }

    else
    {
      valueCopy = value;
    }

    if (typeCopy == 6 && valueCopy)
    {
      if (([valueCopy isNSString] & 1) == 0)
      {
        value = [valueCopy description];
      }
    }

    else
    {
      value = valueCopy;
    }

    valueCopy2 = value;
    v10->_sqlType = typeCopy;
    v10->_value = valueCopy2;
    v10->_propertyDescription = description;
    v10->_flags = coercionCopy;
  }

  return v10;
}

- (unsigned)unsignedInt
{
  value = self->_value;
  if (value)
  {
    return [value unsignedIntValue];
  }

  else
  {
    return self->_int64;
  }
}

- (void)setValue:(id)value
{
  value = self->_value;
  if (value != value)
  {

    self->_value = value;
  }
}

@end