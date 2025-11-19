@interface NSSQLBindVariable
- (NSSQLBindVariable)initWithValue:(id)a3 sqlType:(unsigned __int8)a4 propertyDescription:(id)a5 allowCoercion:(BOOL)a6;
- (id)value;
- (int64_t)int64;
- (unsigned)unsignedInt;
- (void)dealloc;
- (void)setValue:(id)a3;
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

- (NSSQLBindVariable)initWithValue:(id)a3 sqlType:(unsigned __int8)a4 propertyDescription:(id)a5 allowCoercion:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NSSQLBindVariable;
  v10 = [(NSSQLBindVariable *)&v14 init];
  if (v10)
  {
    if ([MEMORY[0x1E695DFB0] null] == a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = a3;
    }

    if (v8 == 6 && v11)
    {
      if (([v11 isNSString] & 1) == 0)
      {
        a3 = [v11 description];
      }
    }

    else
    {
      a3 = v11;
    }

    v12 = a3;
    v10->_sqlType = v8;
    v10->_value = v12;
    v10->_propertyDescription = a5;
    v10->_flags = v6;
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

- (void)setValue:(id)a3
{
  value = self->_value;
  if (value != a3)
  {

    self->_value = a3;
  }
}

@end