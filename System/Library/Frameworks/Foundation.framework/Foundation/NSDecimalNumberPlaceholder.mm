@interface NSDecimalNumberPlaceholder
- (NSDecimalNumberPlaceholder)init;
- (NSDecimalNumberPlaceholder)initWithCoder:(id)a3;
- (NSDecimalNumberPlaceholder)initWithDecimal:(id *)a3;
- (NSDecimalNumberPlaceholder)initWithDouble:(double)a3;
- (NSDecimalNumberPlaceholder)initWithLongLong:(int64_t)a3;
- (NSDecimalNumberPlaceholder)initWithMantissa:(unint64_t)a3 exponent:(signed __int16)a4 isNegative:(BOOL)a5;
- (NSDecimalNumberPlaceholder)initWithString:(id)a3 locale:(id)a4;
@end

@implementation NSDecimalNumberPlaceholder

- (NSDecimalNumberPlaceholder)init
{
  v2 = +[NSDecimalNumber notANumber];

  return [(NSDecimalNumber *)v2 copyWithZone:0];
}

- (NSDecimalNumberPlaceholder)initWithDecimal:(id *)a3
{
  _NSDecimalCompact(a3);
  v4 = objc_opt_self();
  v5 = NSAllocateObject(v4, (*a3 >> 7) & 0x1E, 0);
  NSDecimalCopy((v5 + 8), a3);
  return v5;
}

- (NSDecimalNumberPlaceholder)initWithString:(id)a3 locale:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = [objc_allocWithZone(NSScanner) initWithString:a3];
  v7 = v6;
  v13 = 0uLL;
  v14 = 0;
  if (a4)
  {
    [v6 setLocale:a4];
  }

  if ([v7 scanDecimal:&v13])
  {
    v11 = v13;
    v12 = v14;
    v8 = [(NSDecimalNumberPlaceholder *)self initWithDecimal:&v11];
  }

  else
  {
    v8 = [(NSDecimalNumberPlaceholder *)self init];
  }

  v9 = v8;

  return v9;
}

- (NSDecimalNumberPlaceholder)initWithMantissa:(unint64_t)a3 exponent:(signed __int16)a4 isNegative:(BOOL)a5
{
  v12 = *MEMORY[0x1E69E9840];
  *&v11[4] = 0uLL;
  v5 = 0;
  if (a3)
  {
    v6 = 0;
    do
    {
      *&v11[2 * v6 + 4] = a3;
      v5 += 256;
      if (v6 > 6)
      {
        break;
      }

      a3 >>= 16;
      ++v6;
    }

    while (a3);
  }

  if (a5)
  {
    v7 = 4096;
  }

  else
  {
    v7 = 0;
  }

  *v11 = v7 & 0xFFFFFF00 | a4 | v5;
  v9 = *v11;
  v10 = *&v11[16];
  return [(NSDecimalNumberPlaceholder *)self initWithDecimal:&v9];
}

- (NSDecimalNumberPlaceholder)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    *&v27[4] = 0uLL;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    [a3 decodeValueOfObjCType:"i" at:&v24 size:4];
    [a3 decodeValueOfObjCType:"S" at:&v23 + 2 size:2];
    [a3 decodeValueOfObjCType:"C" at:&v23 + 1 size:1];
    [a3 decodeValueOfObjCType:"C" at:&v23 size:1];
    v16 = (BYTE2(v23) & 0xF) << 8;
    if (v16 < 0x801)
    {
      *v27 = v24 | v16 | ((BYTE1(v23) != 0) << 12) | ((v23 != 0) << 13);
      [a3 decodeValueOfObjCType:"I" at:&v22 size:4];
      if (v22 < 9)
      {
        [a3 decodeArrayOfObjCType:"S" count:? at:?];
        v25 = *v27;
        v26 = *&v27[16];
        v15 = &v25;
        return [(NSDecimalNumberPlaceholder *)self initWithDecimal:v15];
      }
    }

    v19 = [NSString stringWithFormat:@"%@: critical NSDecimalNumber archived data is wrong size", self];

    v20 = MEMORY[0x1E695DF30];
    v21 = v19;
LABEL_20:
    objc_exception_throw([v20 exceptionWithName:@"NSInvalidUnarchiveOperationException" reason:v21 userInfo:0]);
  }

  *&v25 = 0;
  v5 = [a3 decodeInt32ForKey:@"NS.exponent"];
  v6 = [a3 decodeInt32ForKey:@"NS.length"];
  if ((v6 & 0xFu) >= 9 || ((v7 = v6, ![a3 decodeBoolForKey:@"NS.negative"]) ? (v8 = 0) : (v8 = 4096), !objc_msgSend(a3, "decodeBoolForKey:", @"NS.compact") ? (v9 = 0) : (v9 = 0x2000), v10 = objc_msgSend(a3, "decodeInt32ForKey:", @"NS.mantissa.bo"), v11 = objc_msgSend(a3, "decodeBytesForKey:returnedLength:", @"NS.mantissa", &v25), v25 != 16))
  {
    v18 = [NSString stringWithFormat:@"%@: critical NSDecimalNumber archived data is wrong size", self];
LABEL_19:
    v21 = v18;
    v20 = MEMORY[0x1E695DF30];
    goto LABEL_20;
  }

  if (!v11)
  {
    v18 = [NSString stringWithFormat:@"%@: critical NSDecimalNumber archived data is missing", self];
    goto LABEL_19;
  }

  v12.i32[0] = 1;
  v13.i32[0] = v10;
  v14 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v13, v12), 0), *v11, vrev16q_s8(*v11));
  *v27 = v5 | ((v7 & 0xF) << 8) | v8 | v9;
  *&v27[4] = v14;
  v15 = v27;
  return [(NSDecimalNumberPlaceholder *)self initWithDecimal:v15];
}

- (NSDecimalNumberPlaceholder)initWithLongLong:(int64_t)a3
{
  if (a3 >= 0)
  {
    v3 = a3;
  }

  else
  {
    v3 = -a3;
  }

  return [(NSDecimalNumberPlaceholder *)self initWithMantissa:v3 exponent:0 isNegative:a3 >> 63];
}

- (NSDecimalNumberPlaceholder)initWithDouble:(double)a3
{
  v3 = -a3;
  if (a3 >= 0.0)
  {
    v3 = a3;
  }

  if (v3 >= 1.0e-110)
  {
    if (v3 <= 1.8e146)
    {
      for (i = 0; v3 < 1.84467441e19; --i)
      {
        v3 = v3 * 10.0;
      }

      for (; v3 > 1.84467441e19; ++i)
      {
        v3 = v3 / 10.0;
      }

      v4 = v3;
      v6 = a3 < 0.0;
      v5 = i;
    }

    else
    {
      v6 = a3 < 0.0;
      v4 = -1;
      v5 = 127;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  return [(NSDecimalNumberPlaceholder *)self initWithMantissa:v4 exponent:v5 isNegative:v6];
}

@end