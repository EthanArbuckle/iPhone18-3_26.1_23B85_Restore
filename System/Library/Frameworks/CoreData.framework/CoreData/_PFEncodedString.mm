@interface _PFEncodedString
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)getCString:(char *)string;
- (void)getCharacters:(unsigned __int16 *)characters;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation _PFEncodedString

- (id)copy
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uTF8String = [(_PFEncodedString *)self UTF8String];

  return [v3 initWithUTF8String:uTF8String];
}

- (unint64_t)hash
{
  uTF8String = [(_PFEncodedString *)self UTF8String];
  length = self->_length;

  return MEMORY[0x1EEDB7AA0](uTF8String, length);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  uTF8String = [(_PFEncodedString *)self UTF8String];

  return [v4 initWithUTF8String:uTF8String];
}

- (void)getCharacters:(unsigned __int16 *)characters
{
  length = self->_length;
  uTF8String = [(_PFEncodedString *)self UTF8String];
  if (length)
  {
    do
    {
      v6 = *uTF8String++;
      *characters++ = v6;
      --length;
    }

    while (length);
  }
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = range.location + range.length;
  uTF8String = [(_PFEncodedString *)self UTF8String];
  if (location < v7)
  {
    v9 = &uTF8String[location];
    do
    {
      v10 = *v9++;
      *characters++ = v10;
      --length;
    }

    while (length);
  }
}

- (void)getCString:(char *)string
{
  uTF8String = [(_PFEncodedString *)self UTF8String];
  v6 = self->_length + 1;

  memcpy(string, uTF8String, v6);
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isNSString) = 1;
  }

  else
  {
    isNSString = [equal isNSString];
    if (isNSString)
    {

      LOBYTE(isNSString) = _compareUnknownStrings(self, equal);
    }
  }

  return isNSString;
}

- (BOOL)isEqualToString:(id)string
{
  if (self == string)
  {
    return 1;
  }

  if (string)
  {
    return _compareUnknownStrings(self, string);
  }

  return 0;
}

@end