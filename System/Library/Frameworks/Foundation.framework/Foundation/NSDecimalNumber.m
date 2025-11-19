@interface NSDecimalNumber
+ (NSDecimalNumber)allocWithZone:(_NSZone *)a3;
+ (NSDecimalNumber)decimalNumberWithDecimal:(NSDecimal *)dcm;
+ (NSDecimalNumber)decimalNumberWithMantissa:(unint64_t)mantissa exponent:(__int16)exponent isNegative:(BOOL)flag;
+ (NSDecimalNumber)decimalNumberWithString:(NSString *)numberValue;
+ (NSDecimalNumber)decimalNumberWithString:(NSString *)numberValue locale:(id)locale;
+ (NSDecimalNumber)notANumber;
+ (NSDecimalNumber)numberWithBool:(BOOL)a3;
+ (NSDecimalNumber)numberWithChar:(char)a3;
+ (NSDecimalNumber)numberWithDouble:(double)a3;
+ (NSDecimalNumber)numberWithFloat:(float)a3;
+ (NSDecimalNumber)numberWithInt:(int)a3;
+ (NSDecimalNumber)numberWithInteger:(int64_t)a3;
+ (NSDecimalNumber)numberWithLong:(int64_t)a3;
+ (NSDecimalNumber)numberWithLongLong:(int64_t)a3;
+ (NSDecimalNumber)numberWithShort:(signed __int16)a3;
+ (NSDecimalNumber)numberWithUnsignedChar:(unsigned __int8)a3;
+ (NSDecimalNumber)numberWithUnsignedInt:(unsigned int)a3;
+ (NSDecimalNumber)numberWithUnsignedInteger:(unint64_t)a3;
+ (NSDecimalNumber)numberWithUnsignedLong:(unint64_t)a3;
+ (NSDecimalNumber)numberWithUnsignedLongLong:(unint64_t)a3;
+ (NSDecimalNumber)numberWithUnsignedShort:(unsigned __int16)a3;
+ (id)defaultBehavior;
+ (void)initialize;
+ (void)setDefaultBehavior:(id)defaultBehavior;
- (BOOL)_getCString:(char *)a3 length:(int)a4 multiplier:(double)a5;
- (BOOL)isEqual:(id)a3;
- (NSComparisonResult)compare:(NSNumber *)decimalNumber;
- (NSDecimal)decimalValue;
- (NSDecimalNumber)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber;
- (NSDecimalNumber)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior;
- (NSDecimalNumber)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber;
- (NSDecimalNumber)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior;
- (NSDecimalNumber)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber;
- (NSDecimalNumber)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior;
- (NSDecimalNumber)decimalNumberByMultiplyingByPowerOf10:(__int16)power;
- (NSDecimalNumber)decimalNumberByMultiplyingByPowerOf10:(__int16)power withBehavior:(id)behavior;
- (NSDecimalNumber)decimalNumberByRaisingToPower:(NSUInteger)power;
- (NSDecimalNumber)decimalNumberByRaisingToPower:(NSUInteger)power withBehavior:(id)behavior;
- (NSDecimalNumber)decimalNumberByRoundingAccordingToBehavior:(id)behavior;
- (NSDecimalNumber)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber;
- (NSDecimalNumber)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior;
- (NSString)descriptionWithLocale:(id)locale;
- (double)doubleValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decimalNumberBySubstracting:(id)a3;
- (int64_t)longLongValue;
- (int64_t)longValue;
- (unint64_t)unsignedLongLongValue;
- (unint64_t)unsignedLongValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSDecimalNumber

+ (void)initialize
{
  if (NSDecimalNumber == a1)
  {
    objc_opt_class();
  }
}

- (NSDecimal)decimalValue
{
  *retstr = 0;
  *&retstr->_mantissa[2] = 0;
  *&retstr->_mantissa[6] = 0;
  NSDecimalCopy(retstr, (self + 8));
  return result;
}

- (double)doubleValue
{
  if ((*(self + 9) & 0xF) != 0)
  {
    v3 = 2 * (*(self + 9) & 0xF);
    result = 0.0;
    do
    {
      LOWORD(v2) = *(self + v3 + 10);
      v2 = *&v2;
      result = v2 + result * 65536.0;
      v3 -= 2;
    }

    while (v3);
  }

  else
  {
    result = 0.0;
    if ((*(self + 9) & 0x10) != 0)
    {
      return NAN;
    }
  }

  v5 = *(self + 8);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = -v5;
    do
    {
      result = result / 10.0;
      --v6;
    }

    while (v6);
  }

  else if (*(self + 8))
  {
    do
    {
      result = result * 10.0;
      --v5;
    }

    while (v5);
  }

  if ((*(self + 9) & 0x10) != 0)
  {
    return -result;
  }

  return result;
}

+ (id)defaultBehavior
{
  result = -[NSMutableDictionary objectForKey:]([+[NSThread currentThread](NSThread threadDictionary], "objectForKey:", @"NSDecimalNumberBehaviors");
  if (!result)
  {

    return +[NSDecimalNumberHandler defaultDecimalNumberHandler];
  }

  return result;
}

- (unint64_t)unsignedLongValue
{
  if ((*(self + 9) & 0xF) != 0)
  {
    v2 = 0;
    v3 = 2 * (*(self + 9) & 0xF);
    do
    {
      v2 = *(self + v3 + 10) | (v2 << 16);
      v3 -= 2;
    }

    while (v3);
  }

  else
  {
    v2 = 9;
    if ((*(self + 9) & 0x10) != 0)
    {
      return v2;
    }

    v2 = 0;
  }

  v4 = *(self + 8);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = -v4;
    do
    {
      v2 /= 0xAuLL;
      --v5;
    }

    while (v5);
  }

  else if (*(self + 8))
  {
    do
    {
      v2 *= 10;
      --v4;
    }

    while (v4);
  }

  if ((*(self + 9) & 0x10) != 0)
  {
    return -v2;
  }

  return v2;
}

+ (NSDecimalNumber)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    return &_cachedPlaceholder;
  }

  return NSAllocateObject(a1, 0, a3);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7 = *MEMORY[0x1E69E9840];
  if (NSShouldRetainWithZone(self, a3))
  {

    return self;
  }

  else
  {
    if (self)
    {
      [(NSDecimalNumber *)self decimalValue];
    }

    else
    {
      v5[0] = 0;
      v5[1] = 0;
      v6 = 0;
    }

    return [(NSDecimalNumberPlaceholder *)&_cachedPlaceholder initWithDecimal:v5];
  }
}

+ (NSDecimalNumber)decimalNumberWithMantissa:(unint64_t)mantissa exponent:(__int16)exponent isNegative:(BOOL)flag
{
  v5 = [(NSDecimalNumberPlaceholder *)&_cachedPlaceholder initWithMantissa:mantissa exponent:exponent isNegative:flag];

  return v5;
}

+ (NSDecimalNumber)decimalNumberWithDecimal:(NSDecimal *)dcm
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *dcm;
  return [(NSDecimalNumberPlaceholder *)&_cachedPlaceholder initWithDecimal:&v4];
}

+ (NSDecimalNumber)decimalNumberWithString:(NSString *)numberValue
{
  v3 = [(NSDecimalNumberPlaceholder *)&_cachedPlaceholder initWithString:numberValue];

  return v3;
}

+ (NSDecimalNumber)decimalNumberWithString:(NSString *)numberValue locale:(id)locale
{
  v4 = [(NSDecimalNumberPlaceholder *)&_cachedPlaceholder initWithString:numberValue locale:locale];

  return v4;
}

- (NSString)descriptionWithLocale:(id)locale
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = 0;
  LODWORD(v8) = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue:v6];
  }

  v4._rawValue = &v6;
  return _NSDecimalString(v4, locale);
}

+ (NSDecimalNumber)notANumber
{
  result = notANumber_n;
  if (!notANumber_n)
  {
    v3 = objc_opt_self();
    result = NSAllocateObject(v3, 0, 0);
    notANumber_n = result;
    *(result + 9) &= 0xF0u;
    *(result + 9) |= 0x10u;
  }

  return result;
}

- (NSComparisonResult)compare:(NSNumber *)decimalNumber
{
  v11 = *MEMORY[0x1E69E9840];
  if (self == decimalNumber)
  {
    return 0;
  }

  if (!decimalNumber)
  {
    return 1;
  }

  objc_opt_self();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    if (self)
    {
      [(NSDecimalNumber *)self decimalValue];
    }

    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    [(NSNumber *)decimalNumber decimalValue];
    return _NSDecimalCompare(v9, v7);
  }

  else
  {
    v6 = [(NSNumber *)decimalNumber compare:self];
    if (v6 == NSOrderedDescending)
    {
      return -1;
    }

    else
    {
      return (v6 == NSOrderedAscending);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = _NSIsNSNumber();
    if (v5)
    {
      LOBYTE(v5) = [(NSDecimalNumber *)self compare:a3]== NSOrderedSame;
    }
  }

  return v5;
}

- (NSDecimalNumber)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber
{
  v5 = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByAdding:decimalNumber withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  v8 = [behavior scale];
  v9 = [behavior roundingMode];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (decimalNumber)
  {
    [(NSDecimalNumber *)decimalNumber decimalValue];
  }

  v10 = _NSDecimalAdd(&v18, v16, v14, v9);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, v8, v9, &v12, behavior);
}

- (id)decimalNumberBySubstracting:(id)a3
{
  v5 = +[NSDecimalNumber defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberBySubtracting:a3 withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber
{
  v5 = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberBySubtracting:decimalNumber withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  v8 = [behavior scale];
  v9 = [behavior roundingMode];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (decimalNumber)
  {
    [(NSDecimalNumber *)decimalNumber decimalValue];
  }

  v10 = _NSDecimalSubtract(&v18, v16, v14, v9);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, v8, v9, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber
{
  v5 = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByMultiplyingBy:decimalNumber withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  v8 = [behavior scale];
  v9 = [behavior roundingMode];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (decimalNumber)
  {
    [(NSDecimalNumber *)decimalNumber decimalValue];
  }

  v10 = _NSDecimalMultiply(&v18, v16, v14, v9);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, v8, v9, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber
{
  v5 = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByDividingBy:decimalNumber withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  v8 = [behavior scale];
  v9 = [behavior roundingMode];
  v16[0] = 0;
  v16[1] = 0;
  v17 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (decimalNumber)
  {
    [(NSDecimalNumber *)decimalNumber decimalValue];
  }

  v10 = _NSDecimalDivide(&v18, v16, v14, v9);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, v8, v9, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByRaisingToPower:(NSUInteger)power
{
  v5 = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByRaisingToPower:power withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberByRaisingToPower:(NSUInteger)power withBehavior:(id)behavior
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  v8 = [behavior scale];
  v9 = [behavior roundingMode];
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v10 = _NSDecimalPower(&v16, v14, power, v9);
  v12 = v16;
  v13 = v17;
  return _checkErrorAndRound(v10, a2, self, 0, v8, v9, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByMultiplyingByPowerOf10:(__int16)power
{
  v3 = power;
  v5 = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByMultiplyingByPowerOf10:v3 withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberByMultiplyingByPowerOf10:(__int16)power withBehavior:(id)behavior
{
  v5 = power;
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  v8 = [behavior scale];
  v9 = [behavior roundingMode];
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v10 = _NSDecimalMultiplyByPowerOf10(&v16, v14, v5, v9);
  v12 = v16;
  v13 = v17;
  return _checkErrorAndRound(v10, a2, self, 0, v8, v9, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByRoundingAccordingToBehavior:(id)behavior
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [behavior scale];
  if (v5 == 0x7FFF)
  {
    v6 = self;

    return v6;
  }

  else
  {
    v8 = v5;
    v14 = 0uLL;
    v15 = 0;
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    if (self)
    {
      [(NSDecimalNumber *)self decimalValue];
    }

    _NSDecimalRound(&v14, v12, v8, [behavior roundingMode]);
    v9 = objc_opt_self();
    v10 = v14;
    v11 = v15;
    return [v9 decimalNumberWithDecimal:&v10];
  }
}

+ (void)setDefaultBehavior:(id)defaultBehavior
{
  v4 = [+[NSThread currentThread](NSThread threadDictionary];

  [(NSMutableDictionary *)v4 setObject:defaultBehavior forKey:@"NSDecimalNumberBehaviors"];
}

- (void)encodeWithCoder:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (!self)
  {
    v4 = 0;
    goto LABEL_5;
  }

  [(NSDecimalNumber *)self decimalValue];
  v4 = (LODWORD(v10[0]) >> 8) & 0xF;
  if (v4 <= 7)
  {
LABEL_5:
    bzero(v10 + 2 * v4 + 4, 16 - 2 * v4);
  }

  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInt32:SLOBYTE(v10[0]) forKey:@"NS.exponent"];
    [a3 encodeInt32:(LODWORD(v10[0]) >> 8) & 0xF forKey:@"NS.length"];
    [a3 encodeBool:(LODWORD(v10[0]) >> 12) & 1 forKey:@"NS.negative"];
    [a3 encodeBool:(LODWORD(v10[0]) >> 13) & 1 forKey:@"NS.compact"];
    [a3 encodeInt32:1 forKey:@"NS.mantissa.bo"];
    [a3 encodeBytes:v10 + 4 length:16 forKey:@"NS.mantissa"];
  }

  else
  {
    v9 = SLOBYTE(v10[0]);
    v8 = (LODWORD(v10[0]) >> 8) & 0xF;
    v7 = (v10[0] & 0x1000) != 0;
    v6 = (v10[0] & 0x2000) != 0;
    v5 = 8;
    [a3 encodeValueOfObjCType:"i" at:&v9];
    [a3 encodeValueOfObjCType:"S" at:&v8];
    [a3 encodeValueOfObjCType:"C" at:&v7];
    [a3 encodeValueOfObjCType:"C" at:&v6];
    [a3 encodeValueOfObjCType:"I" at:&v5];
    [a3 encodeArrayOfObjCType:"S" count:v5 at:v10 + 4];
  }
}

- (int64_t)longValue
{
  if ((*(self + 9) & 0xF) != 0)
  {
    v2 = 0;
    v3 = 2 * (*(self + 9) & 0xF);
    do
    {
      v2 = *(self + v3 + 10) | (v2 << 16);
      v3 -= 2;
    }

    while (v3);
  }

  else
  {
    v2 = 9;
    if ((*(self + 9) & 0x10) != 0)
    {
      return v2;
    }

    v2 = 0;
  }

  v4 = *(self + 8);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = -v4;
    do
    {
      v2 /= 10;
      --v5;
    }

    while (v5);
  }

  else if (*(self + 8))
  {
    do
    {
      v2 *= 10;
      --v4;
    }

    while (v4);
  }

  if ((*(self + 9) & 0x10) != 0)
  {
    return -v2;
  }

  return v2;
}

- (int64_t)longLongValue
{
  if ((*(self + 9) & 0xF) != 0)
  {
    v2 = 0;
    v3 = 2 * (*(self + 9) & 0xF);
    do
    {
      v2 = *(self + v3 + 10) | (v2 << 16);
      v3 -= 2;
    }

    while (v3);
  }

  else
  {
    v2 = 9;
    if ((*(self + 9) & 0x10) != 0)
    {
      return v2;
    }

    v2 = 0;
  }

  v4 = *(self + 8);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = -v4;
    do
    {
      v2 /= 10;
      --v5;
    }

    while (v5);
  }

  else if (*(self + 8))
  {
    do
    {
      v2 *= 10;
      --v4;
    }

    while (v4);
  }

  if ((*(self + 9) & 0x10) != 0)
  {
    return -v2;
  }

  return v2;
}

- (unint64_t)unsignedLongLongValue
{
  if ((*(self + 9) & 0xF) != 0)
  {
    v2 = 0;
    v3 = 2 * (*(self + 9) & 0xF);
    do
    {
      v2 = *(self + v3 + 10) | (v2 << 16);
      v3 -= 2;
    }

    while (v3);
  }

  else
  {
    v2 = 9;
    if ((*(self + 9) & 0x10) != 0)
    {
      return v2;
    }

    v2 = 0;
  }

  v4 = *(self + 8);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = -v4;
    do
    {
      v2 /= 0xAuLL;
      --v5;
    }

    while (v5);
  }

  else if (*(self + 8))
  {
    do
    {
      v2 *= 10;
      --v4;
    }

    while (v4);
  }

  if ((*(self + 9) & 0x10) != 0)
  {
    return -v2;
  }

  return v2;
}

- (BOOL)_getCString:(char *)a3 length:(int)a4 multiplier:(double)a5
{
  if (a5 != 1.0)
  {
    v8 = [(NSNumber *)[NSDecimalNumber alloc] initWithDouble:a5];
    self = [(NSDecimalNumber *)self decimalNumberByMultiplyingBy:v8];
  }

  v9 = [(NSDecimalNumber *)self description];

  return [v9 getCString:a3 maxLength:a4 encoding:1];
}

+ (NSDecimalNumber)numberWithChar:(char)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithChar:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedChar:(unsigned __int8)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedChar:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithShort:(signed __int16)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithShort:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedShort:(unsigned __int16)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedShort:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithInt:(int)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithInt:*&a3];

  return v3;
}

+ (NSDecimalNumber)numberWithInteger:(int64_t)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedInt:(unsigned int)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedInt:*&a3];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedInteger:(unint64_t)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedInteger:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithLong:(int64_t)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithLong:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedLong:(unint64_t)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedLong:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithLongLong:(int64_t)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithLongLong:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedLongLong:(unint64_t)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedLongLong:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithFloat:(float)a3
{
  v4 = objc_allocWithZone(NSDecimalNumber);
  *&v5 = a3;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

+ (NSDecimalNumber)numberWithDouble:(double)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:a3];

  return v3;
}

+ (NSDecimalNumber)numberWithBool:(BOOL)a3
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithBool:a3];

  return v3;
}

@end