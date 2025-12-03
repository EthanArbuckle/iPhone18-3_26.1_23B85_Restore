@interface NSCFCharacterSet
- (BOOL)isEqual:(id)equal;
- (Class)classForArchiver;
- (id)bitmapRepresentation;
- (id)invertedSet;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSCFCharacterSet

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

- (id)bitmapRepresentation
{
  BitmapRepresentation = CFCharacterSetCreateBitmapRepresentation(0, self);

  return BitmapRepresentation;
}

- (id)invertedSet
{
  InvertedSet = CFCharacterSetCreateInvertedSet(0, self);

  return InvertedSet;
}

- (Class)classForArchiver
{
  _CFCharacterSetIsMutable();

  return objc_opt_self();
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    return;
  }

  IsInverted = _CFCharacterSetIsInverted();
  KeyedCodingType = _CFCharacterSetGetKeyedCodingType();
  if (KeyedCodingType <= 3)
  {
    if (KeyedCodingType == 2)
    {
      [coder encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType() forKey:@"NSBuiltinID"];
      if (!IsInverted)
      {
        return;
      }

      goto LABEL_24;
    }

    if (KeyedCodingType == 3)
    {
      KeyedCodingRange = _CFCharacterSetGetKeyedCodingRange();
      [coder encodeInt64:v8 | (KeyedCodingRange << 32) forKey:@"NSRange"];
      if (!IsInverted)
      {
        return;
      }

      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (KeyedCodingType != 4)
  {
    if (KeyedCodingType == 5)
    {
      [coder encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType() forKey:@"NSBuiltinID2"];
      if (IsInverted)
      {
        [coder encodeBool:1 forKey:@"NSIsInverted2"];
      }
    }

LABEL_11:
    Class = object_getClass(coder);
    bitmapRepresentation = [(NSCFCharacterSet *)self bitmapRepresentation];
    if (Class == NSKeyedArchiver)
    {

      [coder _encodePropertyList:bitmapRepresentation forKey:@"NSBitmap"];
    }

    else
    {

      [coder encodeObject:bitmapRepresentation forKey:@"NSBitmapObject"];
    }

    return;
  }

  KeyedCodingString = _CFCharacterSetCreateKeyedCodingString();
  if (object_getClass(coder) == NSKeyedArchiver)
  {
    [coder _encodePropertyList:KeyedCodingString forKey:@"NSString"];
  }

  else
  {
    [coder encodeObject:KeyedCodingString forKey:@"NSStringObject"];
  }

  CFRelease(KeyedCodingString);
  if (IsInverted)
  {
LABEL_24:

    [coder encodeBool:1 forKey:@"NSIsInverted"];
  }
}

@end