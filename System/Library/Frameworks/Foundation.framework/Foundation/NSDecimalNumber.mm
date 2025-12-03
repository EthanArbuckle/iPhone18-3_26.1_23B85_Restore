@interface NSDecimalNumber
+ (NSDecimalNumber)allocWithZone:(_NSZone *)zone;
+ (NSDecimalNumber)decimalNumberWithDecimal:(NSDecimal *)dcm;
+ (NSDecimalNumber)decimalNumberWithMantissa:(unint64_t)mantissa exponent:(__int16)exponent isNegative:(BOOL)flag;
+ (NSDecimalNumber)decimalNumberWithString:(NSString *)numberValue;
+ (NSDecimalNumber)decimalNumberWithString:(NSString *)numberValue locale:(id)locale;
+ (NSDecimalNumber)notANumber;
+ (NSDecimalNumber)numberWithBool:(BOOL)bool;
+ (NSDecimalNumber)numberWithChar:(char)char;
+ (NSDecimalNumber)numberWithDouble:(double)double;
+ (NSDecimalNumber)numberWithFloat:(float)float;
+ (NSDecimalNumber)numberWithInt:(int)int;
+ (NSDecimalNumber)numberWithInteger:(int64_t)integer;
+ (NSDecimalNumber)numberWithLong:(int64_t)long;
+ (NSDecimalNumber)numberWithLongLong:(int64_t)long;
+ (NSDecimalNumber)numberWithShort:(signed __int16)short;
+ (NSDecimalNumber)numberWithUnsignedChar:(unsigned __int8)char;
+ (NSDecimalNumber)numberWithUnsignedInt:(unsigned int)int;
+ (NSDecimalNumber)numberWithUnsignedInteger:(unint64_t)integer;
+ (NSDecimalNumber)numberWithUnsignedLong:(unint64_t)long;
+ (NSDecimalNumber)numberWithUnsignedLongLong:(unint64_t)long;
+ (NSDecimalNumber)numberWithUnsignedShort:(unsigned __int16)short;
+ (id)defaultBehavior;
+ (void)initialize;
+ (void)setDefaultBehavior:(id)defaultBehavior;
- (BOOL)_getCString:(char *)string length:(int)length multiplier:(double)multiplier;
- (BOOL)isEqual:(id)equal;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)decimalNumberBySubstracting:(id)substracting;
- (int64_t)longLongValue;
- (int64_t)longValue;
- (unint64_t)unsignedLongLongValue;
- (unint64_t)unsignedLongValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSDecimalNumber

+ (void)initialize
{
  if (NSDecimalNumber == self)
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

+ (NSDecimalNumber)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    return &_cachedPlaceholder;
  }

  return NSAllocateObject(self, 0, zone);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  if (NSShouldRetainWithZone(self, zone))
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = _NSIsNSNumber();
    if (v5)
    {
      LOBYTE(v5) = [(NSDecimalNumber *)self compare:equal]== NSOrderedSame;
    }
  }

  return v5;
}

- (NSDecimalNumber)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber
{
  defaultBehavior = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByAdding:decimalNumber withBehavior:defaultBehavior];
}

- (NSDecimalNumber)decimalNumberByAdding:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  scale = [behavior scale];
  roundingMode = [behavior roundingMode];
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

  v10 = _NSDecimalAdd(&v18, v16, v14, roundingMode);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, scale, roundingMode, &v12, behavior);
}

- (id)decimalNumberBySubstracting:(id)substracting
{
  v5 = +[NSDecimalNumber defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberBySubtracting:substracting withBehavior:v5];
}

- (NSDecimalNumber)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber
{
  defaultBehavior = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberBySubtracting:decimalNumber withBehavior:defaultBehavior];
}

- (NSDecimalNumber)decimalNumberBySubtracting:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  scale = [behavior scale];
  roundingMode = [behavior roundingMode];
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

  v10 = _NSDecimalSubtract(&v18, v16, v14, roundingMode);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, scale, roundingMode, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber
{
  defaultBehavior = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByMultiplyingBy:decimalNumber withBehavior:defaultBehavior];
}

- (NSDecimalNumber)decimalNumberByMultiplyingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  scale = [behavior scale];
  roundingMode = [behavior roundingMode];
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

  v10 = _NSDecimalMultiply(&v18, v16, v14, roundingMode);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, scale, roundingMode, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber
{
  defaultBehavior = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByDividingBy:decimalNumber withBehavior:defaultBehavior];
}

- (NSDecimalNumber)decimalNumberByDividingBy:(NSDecimalNumber *)decimalNumber withBehavior:(id)behavior
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0uLL;
  v19 = 0;
  scale = [behavior scale];
  roundingMode = [behavior roundingMode];
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

  v10 = _NSDecimalDivide(&v18, v16, v14, roundingMode);
  v12 = v18;
  v13 = v19;
  return _checkErrorAndRound(v10, a2, self, decimalNumber, scale, roundingMode, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByRaisingToPower:(NSUInteger)power
{
  defaultBehavior = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByRaisingToPower:power withBehavior:defaultBehavior];
}

- (NSDecimalNumber)decimalNumberByRaisingToPower:(NSUInteger)power withBehavior:(id)behavior
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  scale = [behavior scale];
  roundingMode = [behavior roundingMode];
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v10 = _NSDecimalPower(&v16, v14, power, roundingMode);
  v12 = v16;
  v13 = v17;
  return _checkErrorAndRound(v10, a2, self, 0, scale, roundingMode, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByMultiplyingByPowerOf10:(__int16)power
{
  v3 = power;
  defaultBehavior = [objc_opt_self() defaultBehavior];

  return [(NSDecimalNumber *)self decimalNumberByMultiplyingByPowerOf10:v3 withBehavior:defaultBehavior];
}

- (NSDecimalNumber)decimalNumberByMultiplyingByPowerOf10:(__int16)power withBehavior:(id)behavior
{
  v5 = power;
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  scale = [behavior scale];
  roundingMode = [behavior roundingMode];
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  if (self)
  {
    [(NSDecimalNumber *)self decimalValue];
  }

  v10 = _NSDecimalMultiplyByPowerOf10(&v16, v14, v5, roundingMode);
  v12 = v16;
  v13 = v17;
  return _checkErrorAndRound(v10, a2, self, 0, scale, roundingMode, &v12, behavior);
}

- (NSDecimalNumber)decimalNumberByRoundingAccordingToBehavior:(id)behavior
{
  v16 = *MEMORY[0x1E69E9840];
  scale = [behavior scale];
  if (scale == 0x7FFF)
  {
    selfCopy = self;

    return selfCopy;
  }

  else
  {
    v8 = scale;
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
  threadDictionary = [+[NSThread currentThread](NSThread threadDictionary];

  [(NSMutableDictionary *)threadDictionary setObject:defaultBehavior forKey:@"NSDecimalNumberBehaviors"];
}

- (void)encodeWithCoder:(id)coder
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

  if ([coder allowsKeyedCoding])
  {
    [coder encodeInt32:SLOBYTE(v10[0]) forKey:@"NS.exponent"];
    [coder encodeInt32:(LODWORD(v10[0]) >> 8) & 0xF forKey:@"NS.length"];
    [coder encodeBool:(LODWORD(v10[0]) >> 12) & 1 forKey:@"NS.negative"];
    [coder encodeBool:(LODWORD(v10[0]) >> 13) & 1 forKey:@"NS.compact"];
    [coder encodeInt32:1 forKey:@"NS.mantissa.bo"];
    [coder encodeBytes:v10 + 4 length:16 forKey:@"NS.mantissa"];
  }

  else
  {
    v9 = SLOBYTE(v10[0]);
    v8 = (LODWORD(v10[0]) >> 8) & 0xF;
    v7 = (v10[0] & 0x1000) != 0;
    v6 = (v10[0] & 0x2000) != 0;
    v5 = 8;
    [coder encodeValueOfObjCType:"i" at:&v9];
    [coder encodeValueOfObjCType:"S" at:&v8];
    [coder encodeValueOfObjCType:"C" at:&v7];
    [coder encodeValueOfObjCType:"C" at:&v6];
    [coder encodeValueOfObjCType:"I" at:&v5];
    [coder encodeArrayOfObjCType:"S" count:v5 at:v10 + 4];
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

- (BOOL)_getCString:(char *)string length:(int)length multiplier:(double)multiplier
{
  if (multiplier != 1.0)
  {
    v8 = [(NSNumber *)[NSDecimalNumber alloc] initWithDouble:multiplier];
    self = [(NSDecimalNumber *)self decimalNumberByMultiplyingBy:v8];
  }

  v9 = [(NSDecimalNumber *)self description];

  return [v9 getCString:string maxLength:length encoding:1];
}

+ (NSDecimalNumber)numberWithChar:(char)char
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithChar:char];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedChar:(unsigned __int8)char
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedChar:char];

  return v3;
}

+ (NSDecimalNumber)numberWithShort:(signed __int16)short
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithShort:short];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedShort:(unsigned __int16)short
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedShort:short];

  return v3;
}

+ (NSDecimalNumber)numberWithInt:(int)int
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithInt:*&int];

  return v3;
}

+ (NSDecimalNumber)numberWithInteger:(int64_t)integer
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithInteger:integer];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedInt:(unsigned int)int
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedInt:*&int];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedInteger:(unint64_t)integer
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedInteger:integer];

  return v3;
}

+ (NSDecimalNumber)numberWithLong:(int64_t)long
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithLong:long];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedLong:(unint64_t)long
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedLong:long];

  return v3;
}

+ (NSDecimalNumber)numberWithLongLong:(int64_t)long
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithLongLong:long];

  return v3;
}

+ (NSDecimalNumber)numberWithUnsignedLongLong:(unint64_t)long
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithUnsignedLongLong:long];

  return v3;
}

+ (NSDecimalNumber)numberWithFloat:(float)float
{
  v4 = objc_allocWithZone(NSDecimalNumber);
  *&v5 = float;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

+ (NSDecimalNumber)numberWithDouble:(double)double
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:double];

  return v3;
}

+ (NSDecimalNumber)numberWithBool:(BOOL)bool
{
  v3 = [objc_allocWithZone(NSDecimalNumber) initWithBool:bool];

  return v3;
}

@end