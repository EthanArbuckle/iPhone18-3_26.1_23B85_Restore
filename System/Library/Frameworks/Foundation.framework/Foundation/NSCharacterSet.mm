@interface NSCharacterSet
+ (NSCharacterSet)alphanumericCharacterSet;
+ (NSCharacterSet)capitalizedLetterCharacterSet;
+ (NSCharacterSet)characterSetWithBitmapRepresentation:(NSData *)data;
+ (NSCharacterSet)characterSetWithCharactersInString:(NSString *)aString;
+ (NSCharacterSet)characterSetWithContentsOfFile:(NSString *)fName;
+ (NSCharacterSet)characterSetWithRange:(NSRange)aRange;
+ (NSCharacterSet)controlCharacterSet;
+ (NSCharacterSet)decimalDigitCharacterSet;
+ (NSCharacterSet)decomposableCharacterSet;
+ (NSCharacterSet)illegalCharacterSet;
+ (NSCharacterSet)letterCharacterSet;
+ (NSCharacterSet)lowercaseLetterCharacterSet;
+ (NSCharacterSet)newlineCharacterSet;
+ (NSCharacterSet)nonBaseCharacterSet;
+ (NSCharacterSet)punctuationCharacterSet;
+ (NSCharacterSet)symbolCharacterSet;
+ (NSCharacterSet)uppercaseLetterCharacterSet;
+ (NSCharacterSet)whitespaceAndNewlineCharacterSet;
+ (NSCharacterSet)whitespaceCharacterSet;
+ (void)initialize;
- (BOOL)characterIsMember:(unichar)aCharacter;
- (BOOL)hasMemberInPlane:(uint8_t)thePlane;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSupersetOfSet:(NSCharacterSet *)theOtherSet;
- (NSCharacterSet)init;
- (NSCharacterSet)initWithCoder:(NSCoder *)coder;
- (NSCharacterSet)invertedSet;
- (NSData)bitmapRepresentation;
- (id)_retainedBitmapRepresentation;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)replacementObjectForPortCoder:(id)coder;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSCharacterSet

+ (NSCharacterSet)whitespaceAndNewlineCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 16);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 16), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 16);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetWhitespaceAndNewline);
  }

  return result;
}

+ (NSCharacterSet)whitespaceCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 8);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetWhitespace) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 8), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 8);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  }

  return result;
}

+ (void)initialize
{
  if (NSCharacterSet == self && !_CFExecutableLinkedOnOrAfter())
  {
    __NSBuiltinSetTable = malloc_type_calloc(0xFuLL, 8uLL, 0x80040B8603338uLL);
  }
}

+ (NSCharacterSet)decimalDigitCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 24);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 24), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 24);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  }

  return result;
}

+ (NSCharacterSet)illegalCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 88);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetIllegal) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 88), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 88);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetIllegal);
  }

  return result;
}

+ (NSCharacterSet)newlineCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 112);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetNewline) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 112), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 112);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetNewline);
  }

  return result;
}

+ (NSCharacterSet)alphanumericCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 72);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 72), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 72);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  }

  return result;
}

+ (NSCharacterSet)letterCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 32);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetLetter) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 32), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 32);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetLetter);
  }

  return result;
}

+ (NSCharacterSet)uppercaseLetterCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 48);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 48), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 48);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  }

  return result;
}

+ (NSCharacterSet)controlCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *__NSBuiltinSetTable;
    if (!*__NSBuiltinSetTable)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetControl) options:2];
      v3 = 0;
      atomic_compare_exchange_strong(__NSBuiltinSetTable, &v3, result);
      if (v3)
      {

        return *__NSBuiltinSetTable;
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetControl);
  }

  return result;
}

+ (NSCharacterSet)punctuationCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 80);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetPunctuation) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 80), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 80);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  }

  return result;
}

+ (NSCharacterSet)symbolCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 104);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetSymbol) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 104), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 104);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetSymbol);
  }

  return result;
}

+ (NSCharacterSet)lowercaseLetterCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 40);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 40), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 40);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  }

  return result;
}

+ (NSCharacterSet)nonBaseCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 56);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetNonBase) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 56), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 56);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetNonBase);
  }

  return result;
}

+ (NSCharacterSet)decomposableCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 64);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetDecomposable) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 64), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 64);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetDecomposable);
  }

  return result;
}

+ (NSCharacterSet)capitalizedLetterCharacterSet
{
  if (__NSBuiltinSetTable)
  {
    result = *(__NSBuiltinSetTable + 96);
    if (!result)
    {
      result = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:CFCharacterSetGetPredefined(kCFCharacterSetCapitalizedLetter) options:2];
      v3 = 0;
      atomic_compare_exchange_strong((__NSBuiltinSetTable + 96), &v3, result);
      if (v3)
      {

        return *(__NSBuiltinSetTable + 96);
      }
    }
  }

  else
  {

    return CFCharacterSetGetPredefined(kCFCharacterSetCapitalizedLetter);
  }

  return result;
}

+ (NSCharacterSet)characterSetWithContentsOfFile:(NSString *)fName
{
  result = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fName options:1 error:0];
  if (result)
  {
    v4 = CFCharacterSetCreateWithBitmapRepresentation(0, result);

    return v4;
  }

  return result;
}

+ (NSCharacterSet)characterSetWithRange:(NSRange)aRange
{
  v3 = CFCharacterSetCreateWithCharactersInRange(0, aRange);

  return v3;
}

+ (NSCharacterSet)characterSetWithCharactersInString:(NSString *)aString
{
  v3 = CFCharacterSetCreateWithCharactersInString(0, aString);

  return v3;
}

+ (NSCharacterSet)characterSetWithBitmapRepresentation:(NSData *)data
{
  v3 = CFCharacterSetCreateWithBitmapRepresentation(0, data);

  return v3;
}

- (NSCharacterSet)init
{
  if (![(NSCharacterSet *)self isMemberOfClass:NSCharacterSet])
  {
    return self;
  }

  v5.location = 0;
  v5.length = 0;
  v3 = CFCharacterSetCreateWithCharactersInRange(0, v5);

  return v3;
}

- (unint64_t)hash
{
  bitmapRepresentation = [(NSCharacterSet *)self bitmapRepresentation];

  return [(NSData *)bitmapRepresentation hash];
}

- (NSCharacterSet)invertedSet
{
  v2 = [objc_allocWithZone(_NSPlaceholderCharacterSet) initWithSet:self options:1];

  return v2;
}

- (BOOL)isEmpty
{
  bitmapRepresentation = [(NSCharacterSet *)self bitmapRepresentation];
  if (!bitmapRepresentation)
  {
    return 1;
  }

  v3 = bitmapRepresentation;
  bytes = [(NSData *)bitmapRepresentation bytes];
  v5 = [(NSData *)v3 length];
  v6 = v5 - 1;
  if (v5 < 1)
  {
    return 1;
  }

  do
  {
    v8 = *bytes++;
    v7 = v8;
    result = v8 == 0;
    v11 = v6-- != 0;
  }

  while (!v7 && v11);
  return result;
}

- (unint64_t)count
{
  bytes = [(NSData *)[(NSCharacterSet *)self bitmapRepresentation] bytes];
  v4 = 0;
  if (bytes)
  {
    for (i = 0; i != 0x2000; ++i)
    {
      if (bytes[i])
      {
        v3.i32[0] = bytes[i];
        v3 = vcnt_s8(v3);
        v3.i16[0] = vaddlv_u8(v3);
        v6 = v3.u32[0];
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
    }
  }

  return v4;
}

- (BOOL)characterIsMember:(unichar)aCharacter
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);
  [(NSCharacterSet *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (BOOL)isSupersetOfSet:(NSCharacterSet *)theOtherSet
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);
  [(NSCharacterSet *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (BOOL)hasMemberInPlane:(uint8_t)thePlane
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);
  [(NSCharacterSet *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  bitmapRepresentation = [(NSCharacterSet *)self bitmapRepresentation];
  bitmapRepresentation2 = [equal bitmapRepresentation];

  return [(NSData *)bitmapRepresentation isEqual:bitmapRepresentation2];
}

- (NSData)bitmapRepresentation
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695DF88]) initWithLength:0x2000];
  mutableBytes = [v3 mutableBytes];
  for (i = 0; i != 0xFFFF; ++i)
  {
    if ([(NSCharacterSet *)self characterIsMember:i])
    {
      *(mutableBytes + (i >> 3)) |= 1 << (i & 7);
    }
  }

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  NSLog(@"Abstract class %@ does not implement method %s; it must be implemented in subclasses.", v5, Name);
  [(NSCharacterSet *)self doesNotRecognizeSelector:a2];
  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  bitmapRepresentation = [(NSCharacterSet *)self bitmapRepresentation];
  if ([coder allowsKeyedCoding])
  {
    if (object_getClass(coder) == NSKeyedArchiver)
    {

      [coder _encodePropertyList:bitmapRepresentation forKey:@"NSBitmap"];
    }

    else
    {

      [coder encodeObject:bitmapRepresentation forKey:@"NSBitmapObject"];
    }
  }
}

- (NSCharacterSet)initWithCoder:(NSCoder *)coder
{
  if (![(NSCoder *)coder allowsKeyedCoding])
  {
    goto LABEL_34;
  }

  v5 = [(NSCoder *)coder decodeIntegerForKey:@"NSBuiltinID"];
  v6 = [(NSCoder *)coder decodeBoolForKey:@"NSIsInverted"];
  if (!v5)
  {
    v5 = [(NSCoder *)coder decodeIntegerForKey:@"NSBuiltinID2"];
  }

  Class = object_getClass(coder);
  v8 = [(NSCoder *)coder containsValueForKey:@"NSString"];
  v9 = [(NSCoder *)coder containsValueForKey:@"NSStringObject"];
  if ((v5 - 1) <= 0xE)
  {
    Predefined = CFCharacterSetGetPredefined(v5);
    if (v6 || [(NSCoder *)coder decodeBoolForKey:@"NSIsInverted2"])
    {
      Predefined = CFCharacterSetCreateMutableCopy(0, Predefined);
      v11 = 1;
      if (Predefined)
      {
        goto LABEL_8;
      }
    }

    else
    {
      CFRetain(Predefined);
      v11 = 0;
      if (Predefined)
      {
LABEL_8:
        if (!v11)
        {
          goto LABEL_35;
        }

        goto LABEL_14;
      }
    }

    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D920];
    v20 = @"CFCharacterSetGetPredefined -- Predefined Character Set not found";
LABEL_38:
    objc_exception_throw([v18 exceptionWithName:v19 reason:v20 userInfo:0]);
  }

  v12 = v9;
  if (![(NSCoder *)coder containsValueForKey:@"NSRange"])
  {
    if (v8 || v12)
    {
      if (Class == NSKeyedUnarchiver || v8)
      {
        v17 = [(NSCoder *)coder _decodePropertyListForKey:@"NSString"];
      }

      else
      {
        v17 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSStringObject"];
      }

      v22 = v17;
      if (v17 && _NSIsNSString())
      {
        v16 = CFCharacterSetCreateWithCharactersInString(0, v22);
        if (!v16)
        {

          v18 = MEMORY[0x1E695DF30];
          v19 = *MEMORY[0x1E695D920];
          v20 = @"CFCharacterSetCreateWithCharactersInString -- Character Set creation with characters in string failed";
          goto LABEL_38;
        }

        goto LABEL_13;
      }
    }

    else
    {
      if (Class == NSKeyedUnarchiver || [(NSCoder *)coder containsValueForKey:@"NSBitmap"])
      {
        v21 = [(NSCoder *)coder _decodePropertyListForKey:@"NSBitmap"];
      }

      else
      {
        v21 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSBitmapObject"];
      }

      v23 = v21;
      if (v21 && _NSIsNSData())
      {
        v16 = CFCharacterSetCreateWithBitmapRepresentation(0, v23);
        if (!v16)
        {

          v18 = MEMORY[0x1E695DF30];
          v19 = *MEMORY[0x1E695D920];
          v20 = @"CFCharacterSetCreateWithBitmapRepresentation -- Character Set creation with bitmap representation failed";
          goto LABEL_38;
        }

        goto LABEL_13;
      }
    }

    -[NSCoder failWithError:](coder, "failWithError:", +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4865, [MEMORY[0x1E695DF20] dictionaryWithObject:@"Decoder value not found" forKey:@"NSLocalizedDescription"]));
LABEL_34:
    Predefined = 0;
    goto LABEL_35;
  }

  v13 = [(NSCoder *)coder decodeInt64ForKey:@"NSRange"];
  v14 = v13 >> 32;
  v15 = v13;
  if ((_CFCharacterSetIsValidRange() & 1) == 0)
  {

    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D920];
    v20 = @"CFCharacterSetCreateWithCharactersInRange -- Character Set creation with characters in range failed: Invalid range";
    goto LABEL_38;
  }

  v25.location = v14;
  v25.length = v15;
  v16 = CFCharacterSetCreateWithCharactersInRange(0, v25);
  if (!v16)
  {

    v18 = MEMORY[0x1E695DF30];
    v19 = *MEMORY[0x1E695D920];
    v20 = @"CFCharacterSetCreateWithCharactersInRange -- Character Set creation with characters in range failed";
    goto LABEL_38;
  }

LABEL_13:
  Predefined = v16;
  if (v6)
  {
LABEL_14:
    _CFCharacterSetSetIsInverted();
  }

LABEL_35:

  return Predefined;
}

- (id)_retainedBitmapRepresentation
{
  bitmapRepresentation = [(NSCharacterSet *)self bitmapRepresentation];

  return bitmapRepresentation;
}

- (id)replacementObjectForPortCoder:(id)coder
{
  v7 = *MEMORY[0x1E69E9840];
  if ([coder isByref] && -[NSCharacterSet isMutable](self, "isMutable"))
  {
    v6.receiver = self;
    v6.super_class = NSCharacterSet;
    return [(NSCharacterSet *)&v6 replacementObjectForPortCoder:coder];
  }

  return self;
}

@end