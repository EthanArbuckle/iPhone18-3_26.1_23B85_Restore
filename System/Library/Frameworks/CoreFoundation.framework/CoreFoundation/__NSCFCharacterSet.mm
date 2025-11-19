@interface __NSCFCharacterSet
- (BOOL)isEqual:(id)a3;
- (Class)classForCoder;
- (id)bitmapRepresentation;
- (id)invertedSet;
- (void)encodeWithCoder:(id)a3;
@end

@implementation __NSCFCharacterSet

- (id)invertedSet
{
  InvertedSet = CFCharacterSetCreateInvertedSet(0, self);

  return InvertedSet;
}

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

  return _CFNonObjCEqual(self, a3) != 0;
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

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    return;
  }

  IsInverted = _CFCharacterSetIsInverted(self);
  KeyedCodingType = _CFCharacterSetGetKeyedCodingType(self);
  if (KeyedCodingType <= 3)
  {
    if (KeyedCodingType == 2)
    {
      [a3 encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType(self) forKey:@"NSBuiltinID"];
      if (!IsInverted)
      {
        return;
      }

      goto LABEL_24;
    }

    if (KeyedCodingType == 3)
    {
      KeyedCodingRange = _CFCharacterSetGetKeyedCodingRange(self);
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
      [a3 encodeInteger:_CFCharacterSetGetKeyedCodingBuiltinType(self) forKey:@"NSBuiltinID2"];
      if (IsInverted)
      {
        [a3 encodeBool:1 forKey:@"NSIsInverted2"];
      }
    }

LABEL_11:
    v9 = objc_opt_class();
    v10 = objc_lookUpClass("NSKeyedArchiver");
    v11 = [(__NSCFCharacterSet *)self bitmapRepresentation];
    if (v9 == v10)
    {

      [a3 _encodePropertyList:v11 forKey:@"NSBitmap"];
    }

    else
    {

      [a3 encodeObject:v11 forKey:@"NSBitmapObject"];
    }

    return;
  }

  KeyedCodingString = _CFCharacterSetCreateKeyedCodingString(self);
  v13 = objc_opt_class();
  if (v13 == objc_lookUpClass("NSKeyedArchiver"))
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