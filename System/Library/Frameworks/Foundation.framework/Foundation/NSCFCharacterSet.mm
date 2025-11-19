@interface NSCFCharacterSet
- (BOOL)isEqual:(id)a3;
- (Class)classForArchiver;
- (id)bitmapRepresentation;
- (id)invertedSet;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSCFCharacterSet

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  if (self == a3)
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

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    return;
  }

  IsInverted = _CFCharacterSetIsInverted();
  KeyedCodingType = _CFCharacterSetGetKeyedCodingType();
  if (KeyedCodingType <= 3)
  {
    if (KeyedCodingType == 2)
    {
      [a3 encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType() forKey:@"NSBuiltinID"];
      if (!IsInverted)
      {
        return;
      }

      goto LABEL_24;
    }

    if (KeyedCodingType == 3)
    {
      KeyedCodingRange = _CFCharacterSetGetKeyedCodingRange();
      [a3 encodeInt64:v8 | (KeyedCodingRange << 32) forKey:@"NSRange"];
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
      [a3 encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType() forKey:@"NSBuiltinID2"];
      if (IsInverted)
      {
        [a3 encodeBool:1 forKey:@"NSIsInverted2"];
      }
    }

LABEL_11:
    Class = object_getClass(a3);
    v10 = [(NSCFCharacterSet *)self bitmapRepresentation];
    if (Class == NSKeyedArchiver)
    {

      [a3 _encodePropertyList:v10 forKey:@"NSBitmap"];
    }

    else
    {

      [a3 encodeObject:v10 forKey:@"NSBitmapObject"];
    }

    return;
  }

  KeyedCodingString = _CFCharacterSetCreateKeyedCodingString();
  if (object_getClass(a3) == NSKeyedArchiver)
  {
    [a3 _encodePropertyList:KeyedCodingString forKey:@"NSString"];
  }

  else
  {
    [a3 encodeObject:KeyedCodingString forKey:@"NSStringObject"];
  }

  CFRelease(KeyedCodingString);
  if (IsInverted)
  {
LABEL_24:

    [a3 encodeBool:1 forKey:@"NSIsInverted"];
  }
}

@end