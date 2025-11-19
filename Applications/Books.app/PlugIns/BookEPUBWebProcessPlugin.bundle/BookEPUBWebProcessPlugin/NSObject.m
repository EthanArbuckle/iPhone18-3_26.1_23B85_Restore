@interface NSObject
- (BOOL)baxBoolValueForKey:(id)a3;
- (CGPoint)baxCGPointValueForKey:(id)a3;
- (CGRect)baxCGRectValueForKey:(id)a3;
- (CGSize)baxCGSizeValueForKey:(id)a3;
- (_NSRange)baxRangeValueForKey:(id)a3;
- (double)baxDoubleValueForKey:(id)a3;
- (float)baxFloatValueForKey:(id)a3;
- (id)_baxValidatedValueForKey:(id)a3 expectedClass:(Class)a4 possibleExpectedTypeEncodings:(const char *)a5;
- (id)baxValueForKey:(id)a3;
- (int)baxIntValueForKey:(id)a3;
- (int64_t)baxIntegerValueForKey:(id)a3;
- (unint64_t)baxUnsignedIntegerValueForKey:(id)a3;
- (unsigned)baxUnsignedIntValueForKey:(id)a3;
@end

@implementation NSObject

- (id)_baxValidatedValueForKey:(id)a3 expectedClass:(Class)a4 possibleExpectedTypeEncodings:(const char *)a5
{
  v7 = a3;
  v8 = [self baxValueForKey:v7];
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

    if (a5)
    {
      v9 = [v8 objCType];
      if (strcmp(v9, a5))
      {
        v12 = &v14;
        while (1)
        {
          v10 = v12++;
          if (!*v10)
          {
            break;
          }

          if (!strcmp(v9, *v10))
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

- (id)baxValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self valueForKey:v4];

  return v5;
}

- (BOOL)baxBoolValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "c", "B", 0];

  v6 = [v5 BOOLValue];
  return v6;
}

- (int)baxIntValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"i"];

  v6 = [v5 intValue];
  return v6;
}

- (unsigned)baxUnsignedIntValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"i", "I", 0];

  v6 = [v5 unsignedIntValue];
  return v6;
}

- (int64_t)baxIntegerValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"q", 0];

  v6 = [v5 integerValue];
  return v6;
}

- (unint64_t)baxUnsignedIntegerValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() possibleExpectedTypeEncodings:"Q", "q", "Q", 0];

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (float)baxFloatValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"f"];

  [v5 floatValue];
  v7 = v6;

  return v7;
}

- (double)baxDoubleValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"d"];

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (_NSRange)baxRangeValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{_NSRange=QQ}"];

  v6 = [v5 rangeValue];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (CGPoint)baxCGPointValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGPoint=dd}"];

  [v5 CGPointValue];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGSize)baxCGSizeValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGSize=dd}"];

  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGRect)baxCGRectValueForKey:(id)a3
{
  v4 = a3;
  v5 = [self _baxValidatedValueForKey:v4 expectedClass:objc_opt_class() expectedTypeEncoding:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

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