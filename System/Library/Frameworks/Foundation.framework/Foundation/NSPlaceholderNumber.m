@interface NSPlaceholderNumber
- (NSPlaceholderNumber)initWithBool:(BOOL)a3;
- (NSPlaceholderNumber)initWithChar:(char)a3;
- (NSPlaceholderNumber)initWithCoder:(id)a3;
- (NSPlaceholderNumber)initWithDouble:(double)a3;
- (NSPlaceholderNumber)initWithFloat:(float)a3;
- (NSPlaceholderNumber)initWithInt:(int)a3;
- (NSPlaceholderNumber)initWithInteger:(int64_t)a3;
- (NSPlaceholderNumber)initWithLong:(int64_t)a3;
- (NSPlaceholderNumber)initWithLongLong:(int64_t)a3;
- (NSPlaceholderNumber)initWithShort:(signed __int16)a3;
- (NSPlaceholderNumber)initWithUnsignedChar:(unsigned __int8)a3;
- (NSPlaceholderNumber)initWithUnsignedInt:(unsigned int)a3;
- (NSPlaceholderNumber)initWithUnsignedInteger:(unint64_t)a3;
- (NSPlaceholderNumber)initWithUnsignedLong:(unint64_t)a3;
- (NSPlaceholderNumber)initWithUnsignedLongLong:(unint64_t)a3;
- (NSPlaceholderNumber)initWithUnsignedShort:(unsigned __int16)a3;
@end

@implementation NSPlaceholderNumber

- (NSPlaceholderNumber)initWithChar:(char)a3
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithUnsignedChar:(unsigned __int8)a3
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithShort:(signed __int16)a3
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithUnsignedShort:(unsigned __int16)a3
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithInt:(int)a3
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithUnsignedInt:(unsigned int)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithInteger:(int64_t)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithUnsignedInteger:(unint64_t)a3
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = a3;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    valuePtr[0] = a3;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v3, v4, valuePtr);
}

- (NSPlaceholderNumber)initWithLong:(int64_t)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithUnsignedLong:(unint64_t)a3
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = a3;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    valuePtr[0] = a3;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v3, v4, valuePtr);
}

- (NSPlaceholderNumber)initWithLongLong:(int64_t)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithUnsignedLongLong:(unint64_t)a3
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = a3;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    valuePtr[0] = a3;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v3, v4, valuePtr);
}

- (NSPlaceholderNumber)initWithFloat:(float)a3
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
}

- (NSPlaceholderNumber)initWithDouble:(double)a3
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = a3;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v4);
}

- (NSPlaceholderNumber)initWithBool:(BOOL)a3
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return CFRetain(*v3);
}

- (NSPlaceholderNumber)initWithCoder:(id)a3
{
  if ([a3 allowsKeyedCoding])
  {
    if (object_getClass(a3) == NSKeyedUnarchiver || [a3 containsValueForKey:@"NS.number"])
    {
      v8 = [a3 _decodePropertyListForKey:@"NS.number"];
      if (_NSIsNSNumber())
      {

        return v8;
      }

      else
      {
        [a3 failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Decoded object is not a number"}];

        return 0;
      }
    }

    else if ([a3 containsValueForKey:@"NS.BOOLval"])
    {
      v6 = [a3 decodeBoolForKey:@"NS.BOOLval"];

      return [(NSPlaceholderNumber *)self initWithBool:v6];
    }

    else if ([a3 containsValueForKey:@"NS.intval"])
    {
      v7 = [a3 decodeInt64ForKey:@"NS.intval"];

      return [(NSPlaceholderNumber *)self initWithLongLong:v7];
    }

    else
    {
      if (![a3 containsValueForKey:@"NS.dblval"])
      {

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"*** -[NSPlaceholderNumber initWithCoder:]: unknown number type" userInfo:0]);
      }

      [a3 decodeDoubleForKey:@"NS.dblval"];

      return [(NSPlaceholderNumber *)self initWithDouble:?];
    }
  }

  else
  {

    return newDecodedNumber(a3);
  }
}

@end