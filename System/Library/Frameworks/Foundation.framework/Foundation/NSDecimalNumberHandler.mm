@interface NSDecimalNumberHandler
+ (NSDecimalNumberHandler)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode scale:(__int16)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;
+ (NSDecimalNumberHandler)defaultDecimalNumberHandler;
- (NSDecimalNumberHandler)initWithCoder:(id)a3;
- (NSDecimalNumberHandler)initWithRoundingMode:(NSRoundingMode)roundingMode scale:(__int16)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;
- (id)exceptionDuringOperation:(SEL)a3 error:(unint64_t)a4 leftOperand:(id)a5 rightOperand:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSDecimalNumberHandler

+ (NSDecimalNumberHandler)defaultDecimalNumberHandler
{
  result = defaultDecimalNumberHandler_b;
  if (!defaultDecimalNumberHandler_b)
  {
    result = [objc_allocWithZone(a1) initWithRoundingMode:0 scale:0x7FFFLL raiseOnExactness:0 raiseOnOverflow:1 raiseOnUnderflow:1 raiseOnDivideByZero:1];
    defaultDecimalNumberHandler_b = result;
  }

  return result;
}

- (NSDecimalNumberHandler)initWithRoundingMode:(NSRoundingMode)roundingMode scale:(__int16)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero
{
  v8 = divideByZero;
  v9 = underflow;
  v10 = overflow;
  v11 = exact;
  v13 = roundingMode;
  v21 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = NSDecimalNumberHandler;
  result = [(NSDecimalNumberHandler *)&v20 init];
  v15 = *(result + 10) & 0x80;
  *(result + 4) = scale;
  if (v11)
  {
    v16 = 8;
  }

  else
  {
    v16 = 0;
  }

  if (v10)
  {
    v17 = 16;
  }

  else
  {
    v17 = 0;
  }

  if (v9)
  {
    v18 = 32;
  }

  else
  {
    v18 = 0;
  }

  if (v8)
  {
    v19 = 64;
  }

  else
  {
    v19 = 0;
  }

  *(result + 10) = v16 & 0xF8 | v13 & 7 | v17 | v18 | v19 | v15;
  return result;
}

+ (NSDecimalNumberHandler)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode scale:(__int16)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero
{
  v8 = [objc_allocWithZone(a1) initWithRoundingMode:roundingMode scale:scale raiseOnExactness:exact raiseOnOverflow:overflow raiseOnUnderflow:underflow raiseOnDivideByZero:divideByZero];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if (![a3 allowsKeyedCoding])
  {
    return;
  }

  if ((*(self + 10) & 7) != 0)
  {
    [a3 encodeInteger:? forKey:?];
  }

  v5 = *(self + 4);
  if (v5 != 0x7FFF)
  {
    [a3 encodeInteger:v5 forKey:@"NS.scale"];
  }

  v6 = *(self + 10);
  if ((v6 & 8) != 0)
  {
    [a3 encodeBool:1 forKey:@"NS.raise.exactness"];
    v6 = *(self + 10);
    if ((v6 & 0x10) == 0)
    {
LABEL_8:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      [a3 encodeBool:1 forKey:@"NS.raise.underflow"];
      if ((*(self + 10) & 0x40) == 0)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if ((*(self + 10) & 0x10) == 0)
  {
    goto LABEL_8;
  }

  [a3 encodeBool:1 forKey:@"NS.raise.overflow"];
  v6 = *(self + 10);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v6 & 0x40) == 0)
  {
    return;
  }

LABEL_14:

  [a3 encodeBool:1 forKey:@"NS.raise.dividebyzero"];
}

- (NSDecimalNumberHandler)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    v5 = [a3 decodeIntegerForKey:@"NS.roundingmode"];
    if ([a3 containsValueForKey:@"NS.scale"])
    {
      v6 = [a3 decodeIntegerForKey:@"NS.scale"];
    }

    else
    {
      v6 = 0x7FFF;
    }

    v8 = [a3 decodeBoolForKey:@"NS.raise.exactness"];
    v9 = [a3 decodeBoolForKey:@"NS.raise.overflow"];
    v10 = [a3 decodeBoolForKey:@"NS.raise.underflow"];
    v11 = [a3 decodeBoolForKey:@"NS.raise.dividebyzero"];

    return [(NSDecimalNumberHandler *)self initWithRoundingMode:v5 scale:v6 raiseOnExactness:v8 raiseOnOverflow:v9 raiseOnUnderflow:v10 raiseOnDivideByZero:v11];
  }

  else
  {

    return 0;
  }
}

- (id)exceptionDuringOperation:(SEL)a3 error:(unint64_t)a4 leftOperand:(id)a5 rightOperand:(id)a6
{
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      if ((*(self + 10) & 0x10) == 0)
      {
        return 0;
      }

      v6 = MEMORY[0x1E695DF30];
      v7 = @"NSDecimalNumberOverflowException";
      v8 = @"NSDecimalNumber overflow exception";
    }

    else
    {
      if (a4 != 4 || (*(self + 10) & 0x40) == 0)
      {
        return 0;
      }

      v6 = MEMORY[0x1E695DF30];
      v7 = @"NSDecimalNumberDivideByZeroException";
      v8 = @"NSDecimalNumber divide by zero exception";
    }

LABEL_15:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:{0, a6}]);
  }

  if (a4 == 1)
  {
    if ((*(self + 10) & 8) == 0)
    {
      return 0;
    }

    v6 = MEMORY[0x1E695DF30];
    v7 = @"NSDecimalNumberExactnessException";
    v8 = @"NSDecimalNumber exactness exception";
    goto LABEL_15;
  }

  if (a4 == 2 && (*(self + 10) & 0x20) != 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = @"NSDecimalNumberUnderflowException";
    v8 = @"NSDecimalNumber underflow exception";
    goto LABEL_15;
  }

  return 0;
}

@end