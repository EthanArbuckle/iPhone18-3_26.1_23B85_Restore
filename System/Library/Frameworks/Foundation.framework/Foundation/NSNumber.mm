@interface NSNumber
+ (NSNumber)allocWithZone:(_NSZone *)zone;
+ (NSNumber)numberWithBool:(BOOL)value;
+ (NSNumber)numberWithChar:(char)value;
+ (NSNumber)numberWithDouble:(double)value;
+ (NSNumber)numberWithFloat:(float)value;
+ (NSNumber)numberWithInt:(int)value;
+ (NSNumber)numberWithInteger:(NSInteger)value;
+ (NSNumber)numberWithLong:(uint64_t)value;
+ (NSNumber)numberWithLongLong:(uint64_t)value;
+ (NSNumber)numberWithShort:(__int16)value;
+ (NSNumber)numberWithUnsignedChar:(unsigned __int8)value;
+ (NSNumber)numberWithUnsignedInt:(unsigned int)value;
+ (NSNumber)numberWithUnsignedInteger:(NSUInteger)value;
+ (NSNumber)numberWithUnsignedLong:(unint64_t)value;
+ (NSNumber)numberWithUnsignedLongLong:(unint64_t)value;
+ (NSNumber)numberWithUnsignedShort:(unsigned __int16)value;
+ (void)initialize;
- (BOOL)BOOLValue;
- (BOOL)_getCString:(char *)string length:(int)length multiplier:(double)multiplier;
- (BOOL)isEqual:(id)equal;
- (NSComparisonResult)compare:(NSNumber *)otherNumber;
- (NSDecimal)decimalValue;
- (NSNumber)initWithCoder:(NSCoder *)coder;
- (NSString)descriptionWithLocale:(id)locale;
- (__int16)shortValue;
- (char)charValue;
- (double)doubleValue;
- (float)floatValue;
- (id)copyWithZone:(_NSZone *)zone;
- (int)intValue;
- (int64_t)_cfNumberType;
- (int64_t)_reverseCompare:(id)compare;
- (uint64_t)longLongValue;
- (uint64_t)longValue;
- (unint64_t)hash;
- (unint64_t)unsignedLongLongValue;
- (unint64_t)unsignedLongValue;
- (unsigned)_getValue:(void *)value forType:(int64_t)type;
- (unsigned)unsignedCharValue;
- (unsigned)unsignedIntValue;
- (unsigned)unsignedShortValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSNumber

- (unint64_t)hash
{
  v3 = *[(NSValue *)self objCType];
  if (v3 <= 0x4B)
  {
    if (v3 != 66)
    {
      if (v3 != 67 && v3 != 73)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v4 = v3 - 83;
    if (v4 > 0x20)
    {
LABEL_17:
      if (v3 != 76)
      {
        if (v3 == 81)
        {
          unsignedLongLongValue = [(NSNumber *)self unsignedLongLongValue];
LABEL_22:
          v8 = unsignedLongLongValue;
LABEL_25:
          *v6.i64 = floor(v8 + 0.5);
          v13 = (v8 - *v6.i64) * 1.84467441e19;
          *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
          v14.f64[0] = NAN;
          v14.f64[1] = NAN;
          result = 2654435761u * *vbslq_s8(vnegq_f64(v14), v7, v6).i64;
          if (v13 >= 0.0)
          {
            if (v13 > 0.0)
            {
              result += v13;
            }
          }

          else
          {
            result -= fabs(v13);
          }

          return result;
        }

LABEL_23:
        [(NSNumber *)self doubleValue];
        if (v8 < 0.0)
        {
          v8 = -v8;
        }

        goto LABEL_25;
      }

LABEL_20:
      unsignedLongLongValue = [(NSNumber *)self unsignedIntegerValue];
      if ((unsignedLongLongValue & 0x8000000000000000) == 0)
      {
        return 2654435761u * unsignedLongLongValue;
      }

      goto LABEL_22;
    }

    if (((1 << (v3 - 83)) & 0x102410000) == 0)
    {
      if (v3 == 83)
      {
        goto LABEL_20;
      }

      if (v4 == 30)
      {
        longLongValue = [(NSNumber *)self longLongValue];
        v8 = longLongValue;
        if (longLongValue < 0)
        {
          v8 = -longLongValue;
        }

        goto LABEL_25;
      }

      goto LABEL_17;
    }
  }

  integerValue = [(NSNumber *)self integerValue];
  if (integerValue >= 0)
  {
    v10 = integerValue;
  }

  else
  {
    v10 = -integerValue;
  }

  return 2654435761 * v10;
}

+ (void)initialize
{
  if (NSNumber == self && (!*MEMORY[0x1E69E5908] || !_CFExecutableLinkedOnOrAfter()))
  {
    _NSNumberTaggedPointersDisabled = 1;
  }
}

- (int64_t)_cfNumberType
{
  v3 = *[(NSValue *)self objCType];
  result = 7;
  if (v3 <= 98)
  {
    if (v3 > 75)
    {
      if (v3 != 76)
      {
        if (v3 == 81)
        {
          return 17;
        }

        if (v3 != 83)
        {
          goto LABEL_32;
        }

        return 9;
      }

      if (([(NSNumber *)self unsignedLongValue]& 0x8000000000000000) == 0)
      {
        return 10;
      }

      else
      {
        return 11;
      }
    }

    else if (v3 != 66)
    {
      if (v3 == 67)
      {
        return 8;
      }

      if (v3 != 73)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      if (([(NSNumber *)self unsignedIntValue]& 0x80000000) != 0)
      {
        return 11;
      }

      else
      {
        return 9;
      }
    }
  }

  else
  {
    if (v3 > 104)
    {
      if (v3 <= 112)
      {
        if (v3 != 105)
        {
          if (v3 == 108)
          {
            return 10;
          }

          goto LABEL_32;
        }

        return 9;
      }

      if (v3 == 113)
      {
        return 11;
      }

      if (v3 != 115)
      {
        goto LABEL_32;
      }

      return 8;
    }

    if (v3 != 99)
    {
      if (v3 == 100)
      {
        return 13;
      }

      if (v3 == 102)
      {
        return 12;
      }

      goto LABEL_32;
    }
  }

  return result;
}

- (NSDecimal)decimalValue
{
  _CFAutoreleasePoolPush();
  v5 = [NSScanner scannerWithString:[(NSNumber *)self stringValue]];
  *retstr = 0;
  *&retstr->_mantissa[2] = 0;
  *&retstr->_mantissa[6] = 0;
  if (![(NSScanner *)v5 scanDecimal:retstr])
  {
    v6 = +[NSDecimalNumber notANumber];
    if (v6)
    {
      [(NSDecimalNumber *)v6 decimalValue];
    }

    else
    {
      v8 = 0uLL;
      v9 = 0;
    }

    *retstr = v8;
    *&retstr->_mantissa[6] = v9;
  }

  return _CFAutoreleasePoolPop();
}

- (unsigned)_getValue:(void *)value forType:(int64_t)type
{
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        *value = [(NSNumber *)self longLongValue];
      }

      else
      {
        [(NSNumber *)self floatValue];
        *value = v5;
      }

      goto LABEL_16;
    }

    if (type == 6)
    {
      [(NSNumber *)self doubleValue];
      *value = v7;
      goto LABEL_16;
    }

    if (type == 17)
    {
      longLongValue = [(NSNumber *)self longLongValue];
      *value = longLongValue >> 63;
      *(value + 1) = longLongValue;
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
    return self;
  }

  if (type == 1)
  {
    *value = [(NSNumber *)self charValue];
    goto LABEL_16;
  }

  if (type == 2)
  {
    *value = [(NSNumber *)self shortValue];
    goto LABEL_16;
  }

  if (type != 3)
  {
    goto LABEL_17;
  }

  *value = [(NSNumber *)self intValue];
LABEL_16:
  LOBYTE(self) = 1;
  return self;
}

- (int64_t)_reverseCompare:(id)compare
{
  v3 = [(NSNumber *)self compare:compare];
  if (v3 == NSOrderedDescending)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == NSOrderedAscending)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

+ (NSNumber)allocWithZone:(_NSZone *)zone
{
  if (NSNumber == self)
  {
    return &__placeholderNumber;
  }

  else
  {
    return NSAllocateObject(self, 0, zone);
  }
}

+ (NSNumber)numberWithChar:(char)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    result = ((value << 7) | 0x8000000000000003);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [objc_allocWithZone(self) initWithChar:value];

    return v3;
  }

  return result;
}

+ (NSNumber)numberWithUnsignedChar:(unsigned __int8)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    result = ((value << 7) | 0x800000000000000BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [objc_allocWithZone(self) initWithUnsignedChar:value];

    return v3;
  }

  return result;
}

+ (NSNumber)numberWithShort:(__int16)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    result = ((value << 7) | 0x800000000000000BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [objc_allocWithZone(self) initWithShort:value];

    return v3;
  }

  return result;
}

+ (NSNumber)numberWithUnsignedShort:(unsigned __int16)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    result = ((value << 7) | 0x8000000000000013);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [objc_allocWithZone(self) initWithUnsignedShort:value];

    return v3;
  }

  return result;
}

+ (NSNumber)numberWithInt:(int)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    result = ((value << 7) | 0x8000000000000013);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [objc_allocWithZone(self) initWithInt:*&value];

    return v3;
  }

  return result;
}

+ (NSNumber)numberWithUnsignedInt:(unsigned int)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  else
  {
    v3 = [objc_allocWithZone(self) initWithUnsignedInt:*&value];

    return v3;
  }

  return result;
}

+ (NSNumber)numberWithInteger:(NSInteger)value
{
  if (NSNumber != self || (value - 0x80000000000000) < 0xFF00000000000001 || (_NSNumberTaggedPointersDisabled & 1) != 0)
  {
    v3 = [objc_allocWithZone(self) initWithInteger:value];

    return v3;
  }

  else
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

+ (NSNumber)numberWithUnsignedInteger:(NSUInteger)value
{
  if (NSNumber != self || value >> 55 || (_NSNumberTaggedPointersDisabled & 1) != 0)
  {
    v3 = [objc_allocWithZone(self) initWithUnsignedInteger:value];

    return v3;
  }

  else
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

+ (NSNumber)numberWithLong:(uint64_t)value
{
  if (NSNumber != self || (value - 0x80000000000000) < 0xFF00000000000001 || (_NSNumberTaggedPointersDisabled & 1) != 0)
  {
    v3 = [objc_allocWithZone(self) initWithLong:value];

    return v3;
  }

  else
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

+ (NSNumber)numberWithUnsignedLong:(unint64_t)value
{
  if (NSNumber != self || value >> 55 || (_NSNumberTaggedPointersDisabled & 1) != 0)
  {
    v3 = [objc_allocWithZone(self) initWithUnsignedLong:value];

    return v3;
  }

  else
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

+ (NSNumber)numberWithLongLong:(uint64_t)value
{
  if (NSNumber != self || (value - 0x80000000000000) < 0xFF00000000000001 || (_NSNumberTaggedPointersDisabled & 1) != 0)
  {
    v3 = [objc_allocWithZone(self) initWithLongLong:value];

    return v3;
  }

  else
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

+ (NSNumber)numberWithUnsignedLongLong:(unint64_t)value
{
  if (NSNumber != self || value >> 55 || (_NSNumberTaggedPointersDisabled & 1) != 0)
  {
    v3 = [objc_allocWithZone(self) initWithUnsignedLongLong:value];

    return v3;
  }

  else
  {
    result = ((value << 7) | 0x800000000000001BLL);
    v5 = *MEMORY[0x1E69E5910] ^ result;
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return (v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7)));
    }
  }

  return result;
}

+ (NSNumber)numberWithFloat:(float)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    v8 = value;
    if (value == value)
    {
      if (v8)
      {
        if ((v8 - 0x80000000000000) >= 0xFF00000000000001)
        {
LABEL_11:
          result = ((v8 << 7) | 0x8000000000000023);
          v9 = *MEMORY[0x1E69E5910] ^ result;
          if ((~v9 & 0xC000000000000007) != 0)
          {
            return (v9 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v9 & 7)));
          }

          return result;
        }
      }

      else if ((LODWORD(value) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v4 = objc_allocWithZone(self);
  *&v5 = value;
  v6 = [v4 initWithFloat:v5];

  return v6;
}

+ (NSNumber)numberWithDouble:(double)value
{
  if (NSNumber == self && (_NSNumberTaggedPointersDisabled & 1) == 0)
  {
    v5 = value;
    if (value == value)
    {
      if (v5)
      {
        if ((v5 - 0x80000000000000) >= 0xFF00000000000001)
        {
LABEL_11:
          result = ((v5 << 7) | 0x800000000000002BLL);
          v6 = *MEMORY[0x1E69E5910] ^ result;
          if ((~v6 & 0xC000000000000007) != 0)
          {
            return (v6 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v6 & 7)));
          }

          return result;
        }
      }

      else if ((*&value & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v3 = [objc_allocWithZone(self) initWithDouble:value];

  return v3;
}

+ (NSNumber)numberWithBool:(BOOL)value
{
  v3 = MEMORY[0x1E695E4D0];
  if (!value)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return *v3;
}

- (BOOL)BOOLValue
{
  v4 = *[(NSValue *)self objCType]- 66;
  if (v4 > 0x31)
  {
    goto LABEL_12;
  }

  if (((1 << v4) & 0x2048200020483) != 0)
  {
    longValue = [(NSNumber *)self longValue];
LABEL_4:
    v6 = longValue == 0;
    return !v6;
  }

  if (((1 << v4) & 0x1400000000) == 0)
  {
    if (((1 << v4) & 0x800000008000) != 0)
    {
      longValue = [(NSNumber *)self longLongValue];
      goto LABEL_4;
    }

LABEL_12:
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
    objc_exception_throw(v9);
  }

  [(NSNumber *)self doubleValue];
  v6 = v8 == 0.0;
  return !v6;
}

- (char)charValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      switch(v4)
      {
        case 'L':
          LOBYTE(v5) = [(NSNumber *)self unsignedLongValue];
          return v5;
        case 'Q':
          LOBYTE(v5) = [(NSNumber *)self unsignedLongLongValue];
          return v5;
        case 'S':
          LOBYTE(v5) = [(NSNumber *)self unsignedShortValue];
          return v5;
      }

      goto LABEL_32;
    }

    if (v4 != 66)
    {
      if (v4 == 67)
      {
        LOBYTE(v5) = [(NSNumber *)self unsignedCharValue];
        return v5;
      }

      if (v4 == 73)
      {
        LOBYTE(v5) = [(NSNumber *)self unsignedIntValue];
        return v5;
      }

      goto LABEL_32;
    }
  }

  else
  {
    if (v4 > 104)
    {
      if (v4 > 112)
      {
        if (v4 == 113)
        {
          LOBYTE(v5) = [(NSNumber *)self longLongValue];
          return v5;
        }

        if (v4 == 115)
        {
          LOBYTE(v5) = [(NSNumber *)self shortValue];
          return v5;
        }
      }

      else
      {
        if (v4 == 105)
        {
          LOBYTE(v5) = [(NSNumber *)self intValue];
          return v5;
        }

        if (v4 == 108)
        {
          LOBYTE(v5) = [(NSNumber *)self longValue];
          return v5;
        }
      }

LABEL_32:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_32;
    }
  }

  LOBYTE(v5) = [(NSNumber *)self charValue];
  return v5;
}

- (unsigned)unsignedCharValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 > 0x62)
  {
    if (v4 > 104)
    {
      if (v4 > 112)
      {
        if (v4 == 113)
        {
          LOBYTE(v5) = [(NSNumber *)self longLongValue];
          return v5;
        }

        if (v4 == 115)
        {
          LOBYTE(v5) = [(NSNumber *)self shortValue];
          return v5;
        }
      }

      else
      {
        if (v4 == 105)
        {
          LOBYTE(v5) = [(NSNumber *)self intValue];
          return v5;
        }

        if (v4 == 108)
        {
          LOBYTE(v5) = [(NSNumber *)self longValue];
          return v5;
        }
      }

LABEL_32:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_32;
    }

LABEL_23:
    LOBYTE(v5) = [(NSNumber *)self charValue];
    return v5;
  }

  if (v4 > 75)
  {
    switch(v4)
    {
      case 'L':
        LOBYTE(v5) = [(NSNumber *)self unsignedLongValue];
        return v5;
      case 'Q':
        LOBYTE(v5) = [(NSNumber *)self unsignedLongLongValue];
        return v5;
      case 'S':
        LOBYTE(v5) = [(NSNumber *)self unsignedShortValue];
        return v5;
    }

    goto LABEL_32;
  }

  if (v4 == 66)
  {
    goto LABEL_23;
  }

  if (v4 != 67)
  {
    if (v4 == 73)
    {
      LOBYTE(v5) = [(NSNumber *)self unsignedIntValue];
      return v5;
    }

    goto LABEL_32;
  }

  LOBYTE(v5) = [(NSNumber *)self unsignedCharValue];
  return v5;
}

- (__int16)shortValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      switch(v4)
      {
        case 'L':
          LOWORD(v5) = [(NSNumber *)self unsignedLongValue];
          return v5;
        case 'Q':
          LOWORD(v5) = [(NSNumber *)self unsignedLongLongValue];
          return v5;
        case 'S':
          LOWORD(v5) = [(NSNumber *)self unsignedShortValue];
          return v5;
      }

      goto LABEL_32;
    }

    if (v4 != 66)
    {
      if (v4 == 67)
      {
        LOWORD(v5) = [(NSNumber *)self unsignedCharValue];
        return v5;
      }

      if (v4 == 73)
      {
        LOWORD(v5) = [(NSNumber *)self unsignedIntValue];
        return v5;
      }

      goto LABEL_32;
    }

LABEL_25:
    LOWORD(v5) = [(NSNumber *)self charValue];
    return v5;
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v4 <= 112)
  {
    if (v4 == 105)
    {
      LOWORD(v5) = [(NSNumber *)self intValue];
      return v5;
    }

    if (v4 == 108)
    {
      LOWORD(v5) = [(NSNumber *)self longValue];
      return v5;
    }

LABEL_32:
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
    objc_exception_throw(v8);
  }

  if (v4 == 113)
  {
    LOWORD(v5) = [(NSNumber *)self longLongValue];
    return v5;
  }

  if (v4 != 115)
  {
    goto LABEL_32;
  }

  LOWORD(v5) = [(NSNumber *)self shortValue];
  return v5;
}

- (unsigned)unsignedShortValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 > 0x62)
  {
    if (v4 > 104)
    {
      if (v4 > 112)
      {
        if (v4 == 113)
        {
          LOWORD(v5) = [(NSNumber *)self longLongValue];
          return v5;
        }

        if (v4 == 115)
        {
          LOWORD(v5) = [(NSNumber *)self shortValue];
          return v5;
        }
      }

      else
      {
        if (v4 == 105)
        {
          LOWORD(v5) = [(NSNumber *)self intValue];
          return v5;
        }

        if (v4 == 108)
        {
          LOWORD(v5) = [(NSNumber *)self longValue];
          return v5;
        }
      }

LABEL_32:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_32;
    }

    goto LABEL_25;
  }

  if (v4 <= 75)
  {
    if (v4 != 66)
    {
      if (v4 == 67)
      {
        LOWORD(v5) = [(NSNumber *)self unsignedCharValue];
        return v5;
      }

      if (v4 == 73)
      {
        LOWORD(v5) = [(NSNumber *)self unsignedIntValue];
        return v5;
      }

      goto LABEL_32;
    }

LABEL_25:
    LOWORD(v5) = [(NSNumber *)self charValue];
    return v5;
  }

  if (v4 == 76)
  {
    LOWORD(v5) = [(NSNumber *)self unsignedLongValue];
    return v5;
  }

  if (v4 == 81)
  {
    LOWORD(v5) = [(NSNumber *)self unsignedLongLongValue];
    return v5;
  }

  if (v4 != 83)
  {
    goto LABEL_32;
  }

  LOWORD(v5) = [(NSNumber *)self unsignedShortValue];
  return v5;
}

- (int)intValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      if (v4 == 76)
      {
        return [(NSNumber *)self unsignedLongValue];
      }

      if (v4 == 81)
      {
        return [(NSNumber *)self unsignedLongLongValue];
      }

      if (v4 != 83)
      {
        goto LABEL_34;
      }

      return [(NSNumber *)self unsignedShortValue];
    }

    if (v4 != 66)
    {
      if (v4 == 67)
      {
        return [(NSNumber *)self unsignedCharValue];
      }

      if (v4 != 73)
      {
        goto LABEL_34;
      }

      return [(NSNumber *)self unsignedIntValue];
    }

    return [(NSNumber *)self charValue];
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      else
      {
        if (v4 != 102)
        {
          goto LABEL_34;
        }

        [(NSNumber *)self floatValue];
        return v6;
      }
    }

    return [(NSNumber *)self charValue];
  }

  if (v4 > 112)
  {
    if (v4 == 113)
    {
      return [(NSNumber *)self longLongValue];
    }

    else
    {
      if (v4 != 115)
      {
        goto LABEL_34;
      }

      return [(NSNumber *)self shortValue];
    }
  }

  else
  {
    if (v4 != 105)
    {
      if (v4 == 108)
      {
        return [(NSNumber *)self longValue];
      }

LABEL_34:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    return [(NSNumber *)self intValue];
  }
}

- (unsigned)unsignedIntValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      if (v4 == 76)
      {
        return [(NSNumber *)self unsignedLongValue];
      }

      if (v4 == 81)
      {
        return [(NSNumber *)self unsignedLongLongValue];
      }

      if (v4 != 83)
      {
        goto LABEL_34;
      }

      return [(NSNumber *)self unsignedShortValue];
    }

    if (v4 != 66)
    {
      if (v4 == 67)
      {
        return [(NSNumber *)self unsignedCharValue];
      }

      if (v4 != 73)
      {
        goto LABEL_34;
      }

      return [(NSNumber *)self unsignedIntValue];
    }

    return [(NSNumber *)self charValue];
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      else
      {
        if (v4 != 102)
        {
          goto LABEL_34;
        }

        [(NSNumber *)self floatValue];
        return v6;
      }
    }

    return [(NSNumber *)self charValue];
  }

  if (v4 > 112)
  {
    if (v4 == 113)
    {
      return [(NSNumber *)self longLongValue];
    }

    else
    {
      if (v4 != 115)
      {
        goto LABEL_34;
      }

      return [(NSNumber *)self shortValue];
    }
  }

  else
  {
    if (v4 != 105)
    {
      if (v4 == 108)
      {
        return [(NSNumber *)self longValue];
      }

LABEL_34:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    return [(NSNumber *)self intValue];
  }
}

- (uint64_t)longValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      if (v4 == 76)
      {

        return [(NSNumber *)self unsignedLongValue];
      }

      if (v4 == 81)
      {

        return [(NSNumber *)self unsignedLongLongValue];
      }

      if (v4 != 83)
      {
        goto LABEL_40;
      }

      LODWORD(result) = [(NSNumber *)self unsignedShortValue];
    }

    else
    {
      switch(v4)
      {
        case 'B':
LABEL_25:
          LODWORD(result) = [(NSNumber *)self charValue];
          return result;
        case 'C':
          LODWORD(result) = [(NSNumber *)self unsignedCharValue];
          break;
        case 'I':
          LODWORD(result) = [(NSNumber *)self unsignedIntValue];
          break;
        default:
          goto LABEL_40;
      }
    }

    return result;
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (v4 <= 112)
  {
    if (v4 != 105)
    {
      if (v4 == 108)
      {

        return [(NSNumber *)self longValue];
      }

LABEL_40:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    LODWORD(result) = [(NSNumber *)self intValue];
    return result;
  }

  if (v4 != 113)
  {
    if (v4 != 115)
    {
      goto LABEL_40;
    }

    LODWORD(result) = [(NSNumber *)self shortValue];
    return result;
  }

  return [(NSNumber *)self longLongValue];
}

- (unint64_t)unsignedLongValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      if (v4 == 76)
      {

        return [(NSNumber *)self unsignedLongValue];
      }

      if (v4 == 81)
      {

        return [(NSNumber *)self unsignedLongLongValue];
      }

      if (v4 != 83)
      {
        goto LABEL_40;
      }

      LODWORD(result) = [(NSNumber *)self unsignedShortValue];
    }

    else
    {
      switch(v4)
      {
        case 'B':
LABEL_25:
          LODWORD(result) = [(NSNumber *)self charValue];
          return result;
        case 'C':
          LODWORD(result) = [(NSNumber *)self unsignedCharValue];
          break;
        case 'I':
          LODWORD(result) = [(NSNumber *)self unsignedIntValue];
          break;
        default:
          goto LABEL_40;
      }
    }

    return result;
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (v4 <= 112)
  {
    if (v4 != 105)
    {
      if (v4 == 108)
      {

        return [(NSNumber *)self longValue];
      }

LABEL_40:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    LODWORD(result) = [(NSNumber *)self intValue];
    return result;
  }

  if (v4 != 113)
  {
    if (v4 != 115)
    {
      goto LABEL_40;
    }

    LODWORD(result) = [(NSNumber *)self shortValue];
    return result;
  }

  return [(NSNumber *)self longLongValue];
}

- (double)doubleValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 <= 75)
    {
      switch(v4)
      {
        case 'B':
          return [(NSNumber *)self charValue];
        case 'C':
          return [(NSNumber *)self unsignedCharValue];
        case 'I':
          return [(NSNumber *)self unsignedIntValue];
        default:
          goto LABEL_36;
      }
    }

    switch(v4)
    {
      case 'L':
        return [(NSNumber *)self unsignedLongValue];
      case 'Q':
        return [(NSNumber *)self unsignedLongLongValue];
      case 'S':
        return [(NSNumber *)self unsignedShortValue];
      default:
        goto LABEL_36;
    }
  }

  if (v4 > 104)
  {
    if (v4 > 112)
    {
      if (v4 == 113)
      {
        return [(NSNumber *)self longLongValue];
      }

      if (v4 != 115)
      {
LABEL_36:
        v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
        objc_exception_throw(v11);
      }

      return [(NSNumber *)self shortValue];
    }

    else
    {
      if (v4 != 105)
      {
        if (v4 == 108)
        {
          return [(NSNumber *)self longValue];
        }

        goto LABEL_36;
      }

      return [(NSNumber *)self intValue];
    }
  }

  if (v4 == 99)
  {
    return [(NSNumber *)self charValue];
  }

  if (v4 != 100)
  {
    if (v4 == 102)
    {
      [(NSNumber *)self floatValue];
      return v7;
    }

    goto LABEL_36;
  }

  [(NSNumber *)self doubleValue];
  return result;
}

- (float)floatValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 <= 75)
    {
      switch(v4)
      {
        case 'B':
          return [(NSNumber *)self charValue];
        case 'C':
          return [(NSNumber *)self unsignedCharValue];
        case 'I':
          return [(NSNumber *)self unsignedIntValue];
        default:
          goto LABEL_36;
      }
    }

    switch(v4)
    {
      case 'L':
        return [(NSNumber *)self unsignedLongValue];
      case 'Q':
        return [(NSNumber *)self unsignedLongLongValue];
      case 'S':
        return [(NSNumber *)self unsignedShortValue];
      default:
        goto LABEL_36;
    }
  }

  if (v4 > 104)
  {
    if (v4 > 112)
    {
      if (v4 == 113)
      {
        return [(NSNumber *)self longLongValue];
      }

      if (v4 != 115)
      {
LABEL_36:
        v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
        objc_exception_throw(v11);
      }

      return [(NSNumber *)self shortValue];
    }

    else
    {
      if (v4 != 105)
      {
        if (v4 == 108)
        {
          return [(NSNumber *)self longValue];
        }

        goto LABEL_36;
      }

      return [(NSNumber *)self intValue];
    }
  }

  switch(v4)
  {
    case 'c':
      return [(NSNumber *)self charValue];
    case 'd':
      [(NSNumber *)self doubleValue];
      return v10;
    case 'f':

      [(NSNumber *)self floatValue];
      break;
    default:
      goto LABEL_36;
  }

  return result;
}

- (uint64_t)longLongValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      if (v4 == 76)
      {

        return [(NSNumber *)self unsignedLongValue];
      }

      if (v4 == 81)
      {

        return [(NSNumber *)self unsignedLongLongValue];
      }

      if (v4 != 83)
      {
        goto LABEL_40;
      }

      LODWORD(result) = [(NSNumber *)self unsignedShortValue];
    }

    else
    {
      switch(v4)
      {
        case 'B':
LABEL_25:
          LODWORD(result) = [(NSNumber *)self charValue];
          return result;
        case 'C':
          LODWORD(result) = [(NSNumber *)self unsignedCharValue];
          break;
        case 'I':
          LODWORD(result) = [(NSNumber *)self unsignedIntValue];
          break;
        default:
          goto LABEL_40;
      }
    }

    return result;
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (v4 <= 112)
  {
    if (v4 != 105)
    {
      if (v4 == 108)
      {

        return [(NSNumber *)self longValue];
      }

LABEL_40:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    LODWORD(result) = [(NSNumber *)self intValue];
    return result;
  }

  if (v4 != 113)
  {
    if (v4 != 115)
    {
      goto LABEL_40;
    }

    LODWORD(result) = [(NSNumber *)self shortValue];
    return result;
  }

  return [(NSNumber *)self longLongValue];
}

- (unint64_t)unsignedLongLongValue
{
  v4 = *[(NSValue *)self objCType];
  if (v4 <= 0x62)
  {
    if (v4 > 75)
    {
      if (v4 == 76)
      {

        return [(NSNumber *)self unsignedLongValue];
      }

      if (v4 == 81)
      {

        return [(NSNumber *)self unsignedLongLongValue];
      }

      if (v4 != 83)
      {
        goto LABEL_40;
      }

      LODWORD(result) = [(NSNumber *)self unsignedShortValue];
    }

    else
    {
      switch(v4)
      {
        case 'B':
LABEL_25:
          LODWORD(result) = [(NSNumber *)self charValue];
          return result;
        case 'C':
          LODWORD(result) = [(NSNumber *)self unsignedCharValue];
          break;
        case 'I':
          LODWORD(result) = [(NSNumber *)self unsignedIntValue];
          break;
        default:
          goto LABEL_40;
      }
    }

    return result;
  }

  if (v4 <= 104)
  {
    if (v4 != 99)
    {
      if (v4 == 100)
      {
        [(NSNumber *)self doubleValue];
        return v7;
      }

      if (v4 == 102)
      {
        [(NSNumber *)self floatValue];
        return v6;
      }

      goto LABEL_40;
    }

    goto LABEL_25;
  }

  if (v4 <= 112)
  {
    if (v4 != 105)
    {
      if (v4 == 108)
      {

        return [(NSNumber *)self longValue];
      }

LABEL_40:
      v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v8);
    }

    LODWORD(result) = [(NSNumber *)self intValue];
    return result;
  }

  if (v4 != 113)
  {
    if (v4 != 115)
    {
      goto LABEL_40;
    }

    LODWORD(result) = [(NSNumber *)self shortValue];
    return result;
  }

  return [(NSNumber *)self longLongValue];
}

- (NSComparisonResult)compare:(NSNumber *)otherNumber
{
  if (!otherNumber)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v18);
  }

  if (self == otherNumber)
  {
    return 0;
  }

  v5 = *[(NSValue *)otherNumber objCType];
  objCType = [(NSValue *)self objCType];
  if ((v5 & 0xFFFFFFFD) == 0x64 || (v7 = *objCType, (v7 & 0xFFFFFFFD) == 0x64))
  {
    [(NSNumber *)self doubleValue];
    v13 = v12;
    [(NSNumber *)otherNumber doubleValue];
    if (v13 >= v14)
    {
      return (v14 < v13);
    }

    return -1;
  }

  if (v5 == 81 && v7 == 81)
  {
    unsignedLongLongValue = [(NSNumber *)self unsignedLongLongValue];
    unsignedLongLongValue2 = [(NSNumber *)otherNumber unsignedLongLongValue];
    if (unsignedLongLongValue >= unsignedLongLongValue2)
    {
      v10 = NSOrderedSame;
    }

    else
    {
      v10 = NSOrderedAscending;
    }

    if (unsignedLongLongValue > unsignedLongLongValue2)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  if (v7 == 81 && ([(NSNumber *)self unsignedLongLongValue]& 0x8000000000000000) != 0)
  {
    return 1;
  }

  if (v5 == 81 && ([(NSNumber *)otherNumber unsignedLongLongValue]& 0x8000000000000000) != 0)
  {
    return -1;
  }

  longLongValue = [(NSNumber *)self longLongValue];
  longLongValue2 = [(NSNumber *)otherNumber longLongValue];
  if (longLongValue >= longLongValue2)
  {
    v17 = NSOrderedSame;
  }

  else
  {
    v17 = NSOrderedAscending;
  }

  if (longLongValue > longLongValue2)
  {
    return 1;
  }

  else
  {
    return v17;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = _NSIsNSNumber();
    if (v5)
    {

      LOBYTE(v5) = [(NSNumber *)self isEqualToNumber:equal];
    }
  }

  return v5;
}

- (NSString)descriptionWithLocale:(id)locale
{
  v6 = *[(NSValue *)self objCType];
  if (v6 <= 0x62)
  {
    if (v6 > 75)
    {
      switch(v6)
      {
        case 'L':
          v12 = objc_allocWithZone(NSString);
          unsignedLongValue = [(NSNumber *)self unsignedLongValue];
          v13 = @"%lu";
          goto LABEL_32;
        case 'Q':
          v7 = [objc_allocWithZone(NSString) initWithFormat:@"%llu" locale:locale, -[NSNumber unsignedLongLongValue](self, "unsignedLongLongValue")];
          break;
        case 'S':
          v7 = [objc_allocWithZone(NSString) initWithFormat:@"%hu" locale:locale, -[NSNumber unsignedShortValue](self, "unsignedShortValue")];
          break;
        default:
          goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (v6 != 66)
    {
      if (v6 == 67)
      {
        v8 = objc_allocWithZone(NSString);
        unsignedCharValue = [(NSNumber *)self unsignedCharValue];
      }

      else
      {
        if (v6 != 73)
        {
          goto LABEL_36;
        }

        v8 = objc_allocWithZone(NSString);
        unsignedCharValue = [(NSNumber *)self unsignedIntValue];
      }

      v7 = [v8 initWithFormat:@"%u" locale:locale, unsignedCharValue];
      goto LABEL_33;
    }

LABEL_23:
    v12 = objc_allocWithZone(NSString);
    unsignedLongValue = [(NSNumber *)self charValue];
LABEL_25:
    v13 = @"%d";
LABEL_32:
    v7 = [v12 initWithFormat:v13 locale:locale, unsignedLongValue];
    goto LABEL_33;
  }

  if (v6 <= 104)
  {
    if (v6 != 99)
    {
      if (v6 == 100)
      {
        v14 = objc_allocWithZone(NSString);
        [(NSNumber *)self doubleValue];
        v7 = [v14 initWithFormat:@"%0.16g" locale:locale, v15];
      }

      else
      {
        if (v6 != 102)
        {
          goto LABEL_36;
        }

        v10 = objc_allocWithZone(NSString);
        [(NSNumber *)self floatValue];
        v7 = [v10 initWithFormat:@"%0.7g" locale:locale, v11];
      }

      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (v6 <= 112)
  {
    if (v6 != 105)
    {
      if (v6 == 108)
      {
        v7 = [objc_allocWithZone(NSString) initWithFormat:@"%ld" locale:locale, -[NSNumber longValue](self, "longValue")];
        goto LABEL_33;
      }

LABEL_36:
      v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v17);
    }

    v12 = objc_allocWithZone(NSString);
    unsignedLongValue = [(NSNumber *)self intValue];
    goto LABEL_25;
  }

  if (v6 == 113)
  {
    v7 = [objc_allocWithZone(NSString) initWithFormat:@"%lld" locale:locale, -[NSNumber longLongValue](self, "longLongValue")];
  }

  else
  {
    if (v6 != 115)
    {
      goto LABEL_36;
    }

    v7 = [objc_allocWithZone(NSString) initWithFormat:@"%hi" locale:locale, -[NSNumber shortValue](self, "shortValue")];
  }

LABEL_33:

  return v7;
}

- (NSNumber)initWithCoder:(NSCoder *)coder
{
  [(NSNumber *)self zone];
  allowsKeyedCoding = [(NSCoder *)coder allowsKeyedCoding];

  if (allowsKeyedCoding)
  {
    v6 = objc_opt_class();
    if (v6 == objc_opt_self() || [(NSCoder *)coder containsValueForKey:@"NS.number"])
    {
      v10 = [(NSCoder *)coder _decodePropertyListForKey:@"NS.number"];
      if (_NSIsNSNumber())
      {

        return v10;
      }

      else
      {
        [(NSCoder *)coder failWithError:[NSError _readCorruptErrorWithFormat:@"Decoded object is not a number"]];

        return 0;
      }
    }

    else if ([(NSCoder *)coder containsValueForKey:@"NS.BOOLval"])
    {
      v8 = [(NSCoder *)coder decodeBoolForKey:@"NS.BOOLval"];

      return [(NSPlaceholderNumber *)&__placeholderNumber initWithBool:v8];
    }

    else if ([(NSCoder *)coder containsValueForKey:@"NS.intval"])
    {
      v9 = [(NSCoder *)coder decodeInt64ForKey:@"NS.intval"];

      return [(NSPlaceholderNumber *)&__placeholderNumber initWithLongLong:v9];
    }

    else
    {
      if (![(NSCoder *)coder containsValueForKey:@"NS.dblval"])
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"*** -[NSNumber initWithCoder:]: unknown number type" userInfo:0]);
      }

      [(NSCoder *)coder decodeDoubleForKey:@"NS.dblval"];

      return [(NSPlaceholderNumber *)&__placeholderNumber initWithDouble:?];
    }
  }

  else
  {

    return newDecodedNumber(coder);
  }
}

- (void)encodeWithCoder:(id)coder
{
  sizep[128] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    objCType = [(NSValue *)self objCType];
    v8 = objCType;
    v16 = objCType;
    v9 = *objCType;
    if (*objCType && !objCType[1])
    {
      if (v9 == 76)
      {
        v8 = "Q";
        goto LABEL_22;
      }

      if (v9 == 108)
      {
        v8 = "q";
LABEL_22:
        v16 = v8;
      }
    }

    sizep[0] = 0;
    NSGetSizeAndAlignment(v8, sizep, 0);
    v13 = sizep[0];
    if (sizep[0] < 0x401)
    {
      v14 = sizep;
    }

    else
    {
      v14 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
    }

    if (*v8 == 94 && v8[1] == 118)
    {
      v15 = [NSString stringWithFormat:@"cannot encode (void *) value: %@", self];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
    }

    [(NSValue *)self getValue:v14];
    [coder encodeValueOfObjCType:"*" at:&v16];
    [coder encodeValueOfObjCType:v16 at:v14];
    if (v13 > 0x400)
    {
      free(v14);
    }

    return;
  }

  if (object_getClass(coder) == NSKeyedArchiver)
  {

    [coder _encodePropertyList:self forKey:@"NS.number"];
  }

  else
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(self))
    {
      bOOLValue = CFBooleanGetValue(self) != 0;
LABEL_5:

      [coder encodeBool:bOOLValue forKey:@"NS.BOOLval"];
      return;
    }

    objCType2 = [(NSValue *)self objCType];
    v11 = *objCType2 - 66;
    if (v11 > 0x31)
    {
      return;
    }

    if (((1 << v11) & 0x2848200028482) != 0)
    {
      longLongValue = [(NSNumber *)self longLongValue];

      [coder encodeInt64:longLongValue forKey:@"NS.intval"];
    }

    else
    {
      if (((1 << v11) & 0x1400000000) == 0)
      {
        if (*objCType2 != 66)
        {
          return;
        }

        bOOLValue = [(NSNumber *)self BOOLValue];
        goto LABEL_5;
      }

      [(NSNumber *)self doubleValue];

      [coder encodeDouble:@"NS.dblval" forKey:?];
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  sizep[128] = *MEMORY[0x1E69E9840];
  objCType = [(NSValue *)self objCType];
  sizep[0] = 0;
  NSGetSizeAndAlignment(objCType, sizep, 0);
  v6 = sizep[0];
  if (sizep[0] < 0x401)
  {
    v7 = sizep;
  }

  else
  {
    v7 = malloc_type_malloc(sizep[0], 0x100004077774924uLL);
  }

  [(NSValue *)self getValue:v7];
  v9 = newNumber(*objCType, v7, v8);
  if (!v9)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), objCType), 0}];
    objc_exception_throw(v11);
  }

  if (v6 >= 0x401)
  {
    free(v7);
  }

  return v9;
}

- (BOOL)_getCString:(char *)string length:(int)length multiplier:(double)multiplier
{
  v9 = *[(NSValue *)self objCType];
  if (v9 <= 0x62)
  {
    if (v9 > 75)
    {
      switch(v9)
      {
        case 'L':
          [(NSNumber *)self unsignedLongValue];
          v10 = snprintf(string, length, "%lu");
          return v10 < length;
        case 'Q':
          [(NSNumber *)self unsignedLongLongValue];
          v10 = snprintf(string, length, "%llu");
          return v10 < length;
        case 'S':
          [(NSNumber *)self unsignedShortValue];
          v10 = snprintf(string, length, "%hu");
          return v10 < length;
      }

LABEL_33:
      v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: bad objCType: %s", _NSMethodExceptionProem(self, a2), -[NSValue objCType](self, "objCType")), 0}];
      objc_exception_throw(v13);
    }

    if (v9 != 66)
    {
      if (v9 == 67)
      {
        [(NSNumber *)self unsignedCharValue];
      }

      else
      {
        if (v9 != 73)
        {
          goto LABEL_33;
        }

        [(NSNumber *)self unsignedIntValue];
      }

      v10 = snprintf(string, length, "%u");
      return v10 < length;
    }

LABEL_23:
    [(NSNumber *)self charValue];
    lengthCopy2 = length;
LABEL_25:
    v10 = snprintf(string, lengthCopy2, "%d");
    return v10 < length;
  }

  if (v9 <= 104)
  {
    if (v9 != 99)
    {
      if (v9 == 100)
      {
        [(NSNumber *)self doubleValue];
        v10 = snprintf(string, length, "%0.16g");
        return v10 < length;
      }

      if (v9 == 102)
      {
        [(NSNumber *)self floatValue];
        v10 = snprintf(string, length, "%0.7g");
        return v10 < length;
      }

      goto LABEL_33;
    }

    goto LABEL_23;
  }

  if (v9 > 112)
  {
    if (v9 == 113)
    {
      [(NSNumber *)self longLongValue];
      v10 = snprintf(string, length, "%lld");
      return v10 < length;
    }

    if (v9 == 115)
    {
      [(NSNumber *)self shortValue];
      v10 = snprintf(string, length, "%hi");
      return v10 < length;
    }

    goto LABEL_33;
  }

  if (v9 == 105)
  {
    [(NSNumber *)self intValue];
    lengthCopy2 = length;
    goto LABEL_25;
  }

  if (v9 != 108)
  {
    goto LABEL_33;
  }

  [(NSNumber *)self longValue];
  v10 = snprintf(string, length, "%ld");
  return v10 < length;
}

@end