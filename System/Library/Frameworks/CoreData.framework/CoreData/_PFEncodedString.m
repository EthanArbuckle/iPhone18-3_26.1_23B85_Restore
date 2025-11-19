@interface _PFEncodedString
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToString:(id)a3;
- (id)copy;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)getCString:(char *)a3;
- (void)getCharacters:(unsigned __int16 *)a3;
- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4;
@end

@implementation _PFEncodedString

- (id)copy
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(_PFEncodedString *)self UTF8String];

  return [v3 initWithUTF8String:v4];
}

- (unint64_t)hash
{
  v3 = [(_PFEncodedString *)self UTF8String];
  length = self->_length;

  return MEMORY[0x1EEDB7AA0](v3, length);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(_PFEncodedString *)self UTF8String];

  return [v4 initWithUTF8String:v5];
}

- (void)getCharacters:(unsigned __int16 *)a3
{
  length = self->_length;
  v5 = [(_PFEncodedString *)self UTF8String];
  if (length)
  {
    do
    {
      v6 = *v5++;
      *a3++ = v6;
      --length;
    }

    while (length);
  }
}

- (void)getCharacters:(unsigned __int16 *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a4.location + a4.length;
  v8 = [(_PFEncodedString *)self UTF8String];
  if (location < v7)
  {
    v9 = &v8[location];
    do
    {
      v10 = *v9++;
      *a3++ = v10;
      --length;
    }

    while (length);
  }
}

- (void)getCString:(char *)a3
{
  v5 = [(_PFEncodedString *)self UTF8String];
  v6 = self->_length + 1;

  memcpy(a3, v5, v6);
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isNSString];
    if (v5)
    {

      LOBYTE(v5) = _compareUnknownStrings(self, a3);
    }
  }

  return v5;
}

- (BOOL)isEqualToString:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  if (a3)
  {
    return _compareUnknownStrings(self, a3);
  }

  return 0;
}

@end