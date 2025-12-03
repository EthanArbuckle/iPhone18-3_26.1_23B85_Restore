@interface NSPlaceholderNumber
- (NSPlaceholderNumber)initWithBool:(BOOL)bool;
- (NSPlaceholderNumber)initWithChar:(char)char;
- (NSPlaceholderNumber)initWithCoder:(id)coder;
- (NSPlaceholderNumber)initWithDouble:(double)double;
- (NSPlaceholderNumber)initWithFloat:(float)float;
- (NSPlaceholderNumber)initWithInt:(int)int;
- (NSPlaceholderNumber)initWithInteger:(int64_t)integer;
- (NSPlaceholderNumber)initWithLong:(int64_t)long;
- (NSPlaceholderNumber)initWithLongLong:(int64_t)long;
- (NSPlaceholderNumber)initWithShort:(signed __int16)short;
- (NSPlaceholderNumber)initWithUnsignedChar:(unsigned __int8)char;
- (NSPlaceholderNumber)initWithUnsignedInt:(unsigned int)int;
- (NSPlaceholderNumber)initWithUnsignedInteger:(unint64_t)integer;
- (NSPlaceholderNumber)initWithUnsignedLong:(unint64_t)long;
- (NSPlaceholderNumber)initWithUnsignedLongLong:(unint64_t)long;
- (NSPlaceholderNumber)initWithUnsignedShort:(unsigned __int16)short;
@end

@implementation NSPlaceholderNumber

- (NSPlaceholderNumber)initWithChar:(char)char
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = char;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithUnsignedChar:(unsigned __int8)char
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = char;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithShort:(signed __int16)short
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = short;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithUnsignedShort:(unsigned __int16)short
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = short;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithInt:(int)int
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = int;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

- (NSPlaceholderNumber)initWithUnsignedInt:(unsigned int)int
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = int;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithInteger:(int64_t)integer
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = integer;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithUnsignedInteger:(unint64_t)integer
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if ((integer & 0x8000000000000000) != 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = integer;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    valuePtr[0] = integer;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v3, v4, valuePtr);
}

- (NSPlaceholderNumber)initWithLong:(int64_t)long
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = long;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithUnsignedLong:(unint64_t)long
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if ((long & 0x8000000000000000) != 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = long;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    valuePtr[0] = long;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v3, v4, valuePtr);
}

- (NSPlaceholderNumber)initWithLongLong:(int64_t)long
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = long;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, v4);
}

- (NSPlaceholderNumber)initWithUnsignedLongLong:(unint64_t)long
{
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if ((long & 0x8000000000000000) != 0)
  {
    valuePtr[0] = 0;
    valuePtr[1] = long;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberMaxType|kCFNumberSInt8Type;
  }

  else
  {
    valuePtr[0] = long;
    v3 = *MEMORY[0x1E695E480];
    v4 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(v3, v4, valuePtr);
}

- (NSPlaceholderNumber)initWithFloat:(float)float
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = float;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
}

- (NSPlaceholderNumber)initWithDouble:(double)double
{
  v4[1] = *MEMORY[0x1E69E9840];
  *v4 = double;
  return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, v4);
}

- (NSPlaceholderNumber)initWithBool:(BOOL)bool
{
  v3 = MEMORY[0x1E695E4D0];
  if (!bool)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return CFRetain(*v3);
}

- (NSPlaceholderNumber)initWithCoder:(id)coder
{
  if ([coder allowsKeyedCoding])
  {
    if (object_getClass(coder) == NSKeyedUnarchiver || [coder containsValueForKey:@"NS.number"])
    {
      v8 = [coder _decodePropertyListForKey:@"NS.number"];
      if (_NSIsNSNumber())
      {

        return v8;
      }

      else
      {
        [coder failWithError:{+[NSError _readCorruptErrorWithFormat:](NSError, "_readCorruptErrorWithFormat:", @"Decoded object is not a number"}];

        return 0;
      }
    }

    else if ([coder containsValueForKey:@"NS.BOOLval"])
    {
      v6 = [coder decodeBoolForKey:@"NS.BOOLval"];

      return [(NSPlaceholderNumber *)self initWithBool:v6];
    }

    else if ([coder containsValueForKey:@"NS.intval"])
    {
      v7 = [coder decodeInt64ForKey:@"NS.intval"];

      return [(NSPlaceholderNumber *)self initWithLongLong:v7];
    }

    else
    {
      if (![coder containsValueForKey:@"NS.dblval"])
      {

        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"*** -[NSPlaceholderNumber initWithCoder:]: unknown number type" userInfo:0]);
      }

      [coder decodeDoubleForKey:@"NS.dblval"];

      return [(NSPlaceholderNumber *)self initWithDouble:?];
    }
  }

  else
  {

    return newDecodedNumber(coder);
  }
}

@end