@interface NSObject
- (BOOL)baxBoolValueForKey:(id)key;
- (CGPoint)baxCGPointValueForKey:(id)key;
- (CGRect)baxCGRectValueForKey:(id)key;
- (CGSize)baxCGSizeValueForKey:(id)key;
- (_NSRange)baxRangeValueForKey:(id)key;
- (double)baxDoubleValueForKey:(id)key;
- (float)baxFloatValueForKey:(id)key;
- (id)_baxValidatedValueForKey:(id)key expectedClass:(Class)class possibleExpectedTypeEncodings:(const char *)encodings;
- (id)baxValueForKey:(id)key;
- (int)baxIntValueForKey:(id)key;
- (int64_t)baxIntegerValueForKey:(id)key;
- (unint64_t)baxUnsignedIntegerValueForKey:(id)key;
- (unsigned)baxUnsignedIntValueForKey:(id)key;
@end

@implementation NSObject

- (id)_baxValidatedValueForKey:(id)key expectedClass:(Class)class possibleExpectedTypeEncodings:(const char *)encodings
{
  keyCopy = key;
  v8 = [self baxValueForKey:keyCopy];
  if (v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (qword_26DD0 != -1)
      {
        sub_12F64();
      }

LABEL_11:

      v8 = 0;
      goto LABEL_12;
    }

    if (encodings)
    {
      objCType = [v8 objCType];
      if (strcmp(objCType, encodings))
      {
        v12 = &v14;
        while (1)
        {
          v10 = v12++;
          if (!*v10)
          {
            break;
          }

          if (!strcmp(objCType, *v10))
          {
            goto LABEL_12;
          }
        }

        if (qword_26DD0 != -1)
        {
          sub_12F78();
        }

        goto LABEL_11;
      }
    }
  }

LABEL_12:

  return v8;
}

- (id)baxValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self valueForKey:keyCopy];

  return v5;
}

- (BOOL)baxBoolValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "c", "B", 0];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (int)baxIntValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"i"];

  intValue = [v5 intValue];
  return intValue;
}

- (unsigned)baxUnsignedIntValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "I", 0];

  unsignedIntValue = [v5 unsignedIntValue];
  return unsignedIntValue;
}

- (int64_t)baxIntegerValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"q", 0];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (unint64_t)baxUnsignedIntegerValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"Q", "q", "Q", 0];

  unsignedIntegerValue = [v5 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (float)baxFloatValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"f"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (double)baxDoubleValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"d"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (_NSRange)baxRangeValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{_NSRange=QQ}"];

  rangeValue = [v5 rangeValue];
  v8 = v7;

  v9 = rangeValue;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGPoint)baxCGPointValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{CGPoint=dd}"];

  [v5 CGPointValue];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)baxCGSizeValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{CGSize=dd}"];

  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)baxCGRectValueForKey:(id)key
{
  keyCopy = key;
  v5 = [self _baxValidatedValueForKey:keyCopy expectedClass:objc_opt_class() expectedTypeEncoding:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

@end