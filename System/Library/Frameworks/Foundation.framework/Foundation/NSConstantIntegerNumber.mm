@interface NSConstantIntegerNumber
- ($2F068FC02377E22BA03580A8162C781E)decimalValue;
- (BOOL)BOOLValue;
- (void)getValue:(void *)a3;
- (void)getValue:(void *)a3 size:(unint64_t)a4;
@end

@implementation NSConstantIntegerNumber

- (BOOL)BOOLValue
{
  v2 = *self->_encoding - 66;
  v3 = v2 >= 0x31;
  v5 = v2 == 49;
  v4 = (1 << v2) & 0x2848200028483;
  v5 = !v5 && v3 || v4 == 0;
  if (v5)
  {
    qword_1EA7BB378 = "Should not be possible to have a non supported type encoding! Please file a radar!";
    __break(1u);
  }

  else
  {
    LOBYTE(self) = self->_value != 0;
  }

  return self;
}

- (void)getValue:(void *)a3
{
  v3 = *self->_encoding;
  v4 = 1;
  if (v3 > 0x62)
  {
    if (*self->_encoding <= 0x6Bu)
    {
      if (v3 == 99)
      {
        goto LABEL_19;
      }

      if (v3 == 105)
      {
LABEL_18:
        v4 = 4;
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (v3 != 108 && v3 != 113)
    {
      if (v3 != 115)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

LABEL_15:
    v4 = 8;
    goto LABEL_19;
  }

  if (*self->_encoding <= 0x4Bu)
  {
    if (v3 - 66 >= 2)
    {
      if (v3 != 73)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_19:
    memmove(a3, &self->_value, v4);
    return;
  }

  if (v3 == 76 || v3 == 81)
  {
    goto LABEL_15;
  }

  if (v3 == 83)
  {
LABEL_14:
    v4 = 2;
    goto LABEL_19;
  }

LABEL_20:
  qword_1EA7BB378 = "Should not be possible to have a non supported type encoding! Please file a radar!";
  __break(1u);
}

- (void)getValue:(void *)a3 size:(unint64_t)a4
{
  v5 = *self->_encoding;
  v6 = 1;
  if (v5 > 0x62)
  {
    if (*self->_encoding <= 0x6Bu)
    {
      if (v5 == 99)
      {
        goto LABEL_19;
      }

      if (v5 == 105)
      {
LABEL_18:
        v6 = 4;
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    if (v5 != 108 && v5 != 113)
    {
      if (v5 != 115)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

LABEL_15:
    v6 = 8;
    goto LABEL_19;
  }

  if (*self->_encoding > 0x4Bu)
  {
    if (v5 != 76 && v5 != 81)
    {
      if (v5 == 83)
      {
LABEL_14:
        v6 = 2;
        goto LABEL_19;
      }

LABEL_24:
      qword_1EA7BB378 = "Should not be possible to have a non supported type encoding! Please file a radar!";
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  if (v5 - 66 >= 2)
  {
    if (v5 != 73)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (v6 != a4)
  {
    v7 = [NSString stringWithFormat:@"Cannot get value with size %zu. The type encoded as %s is expected to be %zu bytes", a4, "d", v6];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
  }

  memmove(a3, &self->_value, a4);
}

- ($2F068FC02377E22BA03580A8162C781E)decimalValue
{
  v4 = [(NSNumber *)[NSDecimalNumber alloc] initWithLongLong:self->_value];
  *retstr = 0;
  *&retstr->var5[2] = 0;
  *&retstr->var5[6] = 0;
  if (v4)
  {
    v6 = v4;
    [(NSDecimalNumber *)v4 decimalValue];
    v4 = v6;
  }

  return result;
}

@end