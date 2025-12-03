@interface __NSCFCharacterSet
- (BOOL)isEqual:(id)equal;
- (Class)classForCoder;
- (id)bitmapRepresentation;
- (id)invertedSet;
- (void)encodeWithCoder:(id)coder;
@end

@implementation __NSCFCharacterSet

- (id)invertedSet
{
  InvertedSet = CFCharacterSetCreateInvertedSet(0, self);

  return InvertedSet;
}

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

  return _CFNonObjCEqual(self, equal) != 0;
}

- (id)bitmapRepresentation
{
  BitmapRepresentation = CFCharacterSetCreateBitmapRepresentation(0, self);

  return BitmapRepresentation;
}

- (Class)classForCoder
{
  if (__CFCharacterSetIsMutable(self))
  {
    v2 = "NSMutableCharacterSet";
  }

  else
  {
    v2 = "NSCharacterSet";
  }

  return objc_lookUpClass(v2);
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    return;
  }

  IsInverted = _CFCharacterSetIsInverted(self);
  KeyedCodingType = _CFCharacterSetGetKeyedCodingType(self);
  if (KeyedCodingType <= 3)
  {
    if (KeyedCodingType == 2)
    {
      [coder encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType(self) forKey:@"NSBuiltinID"];
      if (!IsInverted)
      {
        return;
      }

      goto LABEL_24;
    }

    if (KeyedCodingType == 3)
    {
      KeyedCodingRange = _CFCharacterSetGetKeyedCodingRange(self);
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
      [coder encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType(self) forKey:@"NSBuiltinID2"];
      if (IsInverted)
      {
        [coder encodeBool:1 forKey:@"NSIsInverted2"];
      }
    }

LABEL_11:
    v9 = objc_opt_class();
    v10 = objc_lookUpClass("NSKeyedArchiver");
    bitmapRepresentation = [(__NSCFCharacterSet *)self bitmapRepresentation];
    if (v9 == v10)
    {

      [coder _encodePropertyList:bitmapRepresentation forKey:@"NSBitmap"];
    }

    else
    {

      [coder encodeObject:bitmapRepresentation forKey:@"NSBitmapObject"];
    }

    return;
  }

  KeyedCodingString = _CFCharacterSetCreateKeyedCodingString(self);
  v13 = objc_opt_class();
  if (v13 == objc_lookUpClass("NSKeyedArchiver"))
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