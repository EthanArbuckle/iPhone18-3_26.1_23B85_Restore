@interface NSDecimalNumberHandler
+ (NSDecimalNumberHandler)decimalNumberHandlerWithRoundingMode:(NSRoundingMode)roundingMode scale:(__int16)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;
+ (NSDecimalNumberHandler)defaultDecimalNumberHandler;
- (NSDecimalNumberHandler)initWithCoder:(id)coder;
- (NSDecimalNumberHandler)initWithRoundingMode:(NSRoundingMode)roundingMode scale:(__int16)scale raiseOnExactness:(BOOL)exact raiseOnOverflow:(BOOL)overflow raiseOnUnderflow:(BOOL)underflow raiseOnDivideByZero:(BOOL)divideByZero;
- (id)exceptionDuringOperation:(SEL)operation error:(unint64_t)error leftOperand:(id)operand rightOperand:(id)rightOperand;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSDecimalNumberHandler

+ (NSDecimalNumberHandler)defaultDecimalNumberHandler
{
  result = defaultDecimalNumberHandler_b;
  if (!defaultDecimalNumberHandler_b)
  {
    result = [objc_allocWithZone(self) initWithRoundingMode:0 scale:0x7FFFLL raiseOnExactness:0 raiseOnOverflow:1 raiseOnUnderflow:1 raiseOnDivideByZero:1];
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
  v8 = [objc_allocWithZone(self) initWithRoundingMode:roundingMode scale:scale raiseOnExactness:exact raiseOnOverflow:overflow raiseOnUnderflow:underflow raiseOnDivideByZero:divideByZero];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  if (![coder allowsKeyedCoding])
  {
    return;
  }

  if ((*(self + 10) & 7) != 0)
  {
    [coder encodeInteger:? forKey:?];
  }

  v5 = *(self + 4);
  if (v5 != 0x7FFF)
  {
    [coder encodeInteger:v5 forKey:@"NS.scale"];
  }

  v6 = *(self + 10);
  if ((v6 & 8) != 0)
  {
    [coder encodeBool:1 forKey:@"NS.raise.exactness"];
    v6 = *(self + 10);
    if ((v6 & 0x10) == 0)
    {
LABEL_8:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      [coder encodeBool:1 forKey:@"NS.raise.underflow"];
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

  [coder encodeBool:1 forKey:@"NS.raise.overflow"];
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

  [coder encodeBool:1 forKey:@"NS.raise.dividebyzero"];
}

- (NSDecimalNumberHandler)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    v5 = [coder decodeIntegerForKey:@"NS.roundingmode"];
    if ([coder containsValueForKey:@"NS.scale"])
    {
      v6 = [coder decodeIntegerForKey:@"NS.scale"];
    }

    else
    {
      v6 = 0x7FFF;
    }

    v8 = [coder decodeBoolForKey:@"NS.raise.exactness"];
    v9 = [coder decodeBoolForKey:@"NS.raise.overflow"];
    v10 = [coder decodeBoolForKey:@"NS.raise.underflow"];
    v11 = [coder decodeBoolForKey:@"NS.raise.dividebyzero"];

    return [(NSDecimalNumberHandler *)self initWithRoundingMode:v5 scale:v6 raiseOnExactness:v8 raiseOnOverflow:v9 raiseOnUnderflow:v10 raiseOnDivideByZero:v11];
  }

  else
  {

    return 0;
  }
}

- (id)exceptionDuringOperation:(SEL)operation error:(unint64_t)error leftOperand:(id)operand rightOperand:(id)rightOperand
{
  if (error > 2)
  {
    if (error == 3)
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
      if (error != 4 || (*(self + 10) & 0x40) == 0)
      {
        return 0;
      }

      v6 = MEMORY[0x1E695DF30];
      v7 = @"NSDecimalNumberDivideByZeroException";
      v8 = @"NSDecimalNumber divide by zero exception";
    }

LABEL_15:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:{0, rightOperand}]);
  }

  if (error == 1)
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

  if (error == 2 && (*(self + 10) & 0x20) != 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = @"NSDecimalNumberUnderflowException";
    v8 = @"NSDecimalNumber underflow exception";
    goto LABEL_15;
  }

  return 0;
}

@end