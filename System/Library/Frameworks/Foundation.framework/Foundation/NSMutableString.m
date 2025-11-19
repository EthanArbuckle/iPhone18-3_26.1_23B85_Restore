@interface NSMutableString
+ (NSMutableString)allocWithZone:(_NSZone *)a3;
+ (NSMutableString)stringWithCapacity:(NSUInteger)capacity;
- (BOOL)applyTransform:(NSStringTransform)transform reverse:(BOOL)reverse range:(NSRange)range updatedRange:(NSRangePointer)resultingRange;
- (NSUInteger)replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;
- (unint64_t)_replaceOccurrencesOfRegularExpressionPattern:(id)a3 withTemplate:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6;
- (void)_cfAppendCString:(const char *)a3 length:(int64_t)a4;
- (void)_cfCapitalize:(const void *)a3;
- (void)_cfLowercase:(const void *)a3;
- (void)_cfNormalize:(int64_t)a3;
- (void)_cfPad:(__CFString *)a3 length:(unsigned int)a4 padIndex:(unsigned int)a5;
- (void)_cfTrim:(__CFString *)a3;
- (void)_cfTrimWS;
- (void)_cfUppercase:(const void *)a3;
- (void)_trimWithCharacterSet:(id)a3;
- (void)appendCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4;
- (void)appendFormat:(NSString *)format;
- (void)appendString:(NSString *)aString;
- (void)replaceCharactersInRange:(_NSRange)a3 withCString:(const char *)a4 length:(unint64_t)a5;
- (void)replaceCharactersInRange:(_NSRange)a3 withCharacters:(const unsigned __int16 *)a4 length:(unint64_t)a5;
- (void)setString:(NSString *)aString;
@end

@implementation NSMutableString

- (void)appendCharacters:(const unsigned __int16 *)a3 length:(unint64_t)a4
{
  v7 = [(NSString *)self length];

  [(NSMutableString *)self replaceCharactersInRange:v7 withCharacters:0 length:a3, a4];
}

- (void)_cfAppendCString:(const char *)a3 length:(int64_t)a4
{
  v7 = [(NSString *)self length];

  [(NSMutableString *)self replaceCharactersInRange:v7 withCString:0 length:a3, a4];
}

- (void)_cfLowercase:(const void *)a3
{
  v4 = [(NSString *)self length];
  v5 = [(NSString *)self lowercaseString];

  [(NSMutableString *)self replaceCharactersInRange:0 withString:v4, v5];
}

- (void)_cfUppercase:(const void *)a3
{
  v4 = [(NSString *)self length];
  v5 = [(NSString *)self uppercaseString];

  [(NSMutableString *)self replaceCharactersInRange:0 withString:v4, v5];
}

- (void)_cfCapitalize:(const void *)a3
{
  v4 = [(NSString *)self length];
  v5 = [(NSString *)self capitalizedString];

  [(NSMutableString *)self replaceCharactersInRange:0 withString:v4, v5];
}

- (void)_cfPad:(__CFString *)a3 length:(unsigned int)a4 padIndex:(unsigned int)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v9 = [(NSString *)self length];
  v10 = a4;
  if (v9 > a4)
  {

    [(NSMutableString *)self deleteCharactersInRange:a4, v9 - a4];
    return;
  }

  if (v9 >= a4)
  {
    return;
  }

  v11 = a4 - v9;
  if ((v10 - v9) >= 512)
  {
    v13 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
    Length = CFStringGetLength(a3);
LABEL_10:
    v14 = a5;
    if (v11 >= Length - a5)
    {
      v15 = Length - a5;
    }

    else
    {
      v15 = v11;
    }

    v16 = v11;
    do
    {
      v17 = [(NSString *)self length];
      v22.location = v14;
      v22.length = v15;
      CFStringGetCharacters(a3, v22, &v13[2 * (v10 - v16) + -2 * v17]);
      v16 -= v15;
      v18 = v16 < v15;
      v15 = v16;
      if (!v18)
      {
        v15 = CFStringGetLength(a3);
      }

      v14 = 0;
    }

    while (v16 > 0);
    goto LABEL_17;
  }

  Length = CFStringGetLength(a3);
  v13 = v19;
  if (v11 >= 1)
  {
    goto LABEL_10;
  }

LABEL_17:
  [(NSMutableString *)self replaceCharactersInRange:[(NSString *)self length] withCharacters:0 length:v13, v11];
  if (v13 != v19)
  {
    free(v13);
  }
}

- (void)_cfTrim:(__CFString *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v5 = [(NSString *)self length];
  v11.location = 0;
  v11.length = v5;
  if (CFStringFindWithOptions(self, a3, v11, 8uLL, &result))
  {
    do
    {
      v6 = result.length + result.location;
      v7 = v5 - (result.length + result.location);
      v12.location = result.length + result.location;
      v12.length = v7;
    }

    while (CFStringFindWithOptions(self, a3, v12, 8uLL, &result));
    v8 = v6;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v7 = v5;
  }

  if (v6 >= v5)
  {
    v6 = v5;
  }

  else
  {
    if (CFStringGetLength(a3) < v7)
    {
      while (1)
      {
        v13.location = v8;
        v13.length = v7;
        if (!CFStringFindWithOptions(self, a3, v13, 0xCuLL, &result))
        {
          break;
        }

        v7 = result.location - v6;
      }
    }

    [(NSMutableString *)self deleteCharactersInRange:v7 + v6, [(NSString *)self length]- (v7 + v6)];
  }

  [(NSMutableString *)self deleteCharactersInRange:0, v6];
}

- (void)_trimWithCharacterSet:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [(NSString *)self length];
  v6 = v5;
  v33 = 0u;
  memset(v32, 0, sizeof(v32));
  v28 = 0;
  v31 = v5;
  if (v5)
  {
    if (v5 >= 0x20)
    {
      v7 = 32;
    }

    else
    {
      v7 = v5;
    }

    v28 = v7;
    [self getUid("getCharacters:v32 + 8 range:{0, v7}")];
    v8 = WORD4(v32[0]);
  }

  else
  {
    v8 = -1;
  }

  v29 = 1;
  WORD4(v33) = v8;
  v9 = 1;
  while (1)
  {
    v10 = v28;
    if (v9 > v28)
    {
      goto LABEL_23;
    }

    v11 = [a3 characterIsMember:v8];
    v12 = v29;
    if (!v11)
    {
      break;
    }

    if (v29 >= v28)
    {
      v13 = *&v32[0] + v28;
      if (v31 > *&v32[0] + v28)
      {
        if (v31 - (*&v32[0] + v28) >= 0x20)
        {
          v14 = 32;
        }

        else
        {
          v14 = v31 - (*&v32[0] + v28);
        }

        *&v32[0] += v28;
        v28 = v14;
        [self getUid("getCharacters:v32 + 8 range:{v13, v14}")];
        v8 = WORD4(v32[0]);
        WORD4(v33) = WORD4(v32[0]);
        v29 = 1;
        v9 = 1;
        goto LABEL_19;
      }

      v9 = v28 + 1;
      v29 = v28 + 1;
      v8 = -1;
    }

    else
    {
      v9 = ++v29;
      v8 = *(v32 + v12 + 4);
    }

    WORD4(v33) = v8;
LABEL_19:
    if (!v9)
    {
      goto LABEL_24;
    }
  }

  if (!v29)
  {
    goto LABEL_24;
  }

  v9 = v29;
  v10 = v28;
LABEL_23:
  if (v9 > v10)
  {
LABEL_24:
    [(NSMutableString *)self setString:&stru_1EEEFDF90, v28];
    return;
  }

  v15 = *&v32[0];
  v16 = v6 - 1;
  v17 = *&v32[0] <= v6 - 1 && *&v32[0] + v10 > v16;
  v18 = *&v32[0];
  if (!v17)
  {
    if (v16 > 0xF)
    {
      v20 = v31;
      if (v31 - 16 >= v16)
      {
        v19 = v6 - 17;
      }

      else if (v31 >= 0x20)
      {
        v19 = v31 - 32;
      }

      else
      {
        v19 = 0;
      }

      *&v32[0] = v19;
    }

    else
    {
      v19 = 0;
      *&v32[0] = 0;
      v20 = v31;
    }

    v21 = v20 - v19;
    if (v21 >= 0x20)
    {
      v22 = 32;
    }

    else
    {
      v22 = v21;
    }

    v28 = v22;
    [self getUid("getCharacters:v32 + 8 range:{v19, v22}")];
    WORD4(v33) = WORD4(v32[0]);
    v18 = *&v32[0];
  }

  v23 = v9 + v15;
  v24 = v16 - v18;
  v30 = v24 + 1;
  WORD4(v33) = *(v32 + v24 + 4);
  if ([a3 characterIsMember:v28])
  {
    do
    {
      v25 = v30;
      if (v30 < 2)
      {
        if (*&v32[0])
        {
          if (*&v32[0] >= 0x20uLL)
          {
            v27 = 32;
          }

          else
          {
            v27 = *&v32[0];
          }

          v30 = v27;
          *&v32[0] -= v27;
          [self getUid("getCharacters:v32 + 8 range:{*&v32[0], v27}")];
          v26 = *(v32 + v27 + 3);
        }

        else
        {
          v30 = 0;
          v26 = -1;
        }
      }

      else
      {
        --v30;
        v26 = *(v32 + v25 + 2);
      }

      WORD4(v33) = v26;
    }

    while (([a3 characterIsMember:?] & 1) != 0);
  }

  if (v6 != v30 + *&v32[0])
  {
    [(NSMutableString *)self replaceCharactersInRange:v30 + *&v32[0] withString:v6 - (v30 + *&v32[0]), &stru_1EEEFDF90];
  }

  if (v23 != 1)
  {
    [(NSMutableString *)self replaceCharactersInRange:0 withString:v23 - 1, &stru_1EEEFDF90];
  }
}

- (void)_cfTrimWS
{
  v3 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];

  [(NSMutableString *)self _trimWithCharacterSet:v3];
}

- (void)_cfNormalize:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(NSString *)self length];
      v5 = [(NSString *)self precomposedStringWithCanonicalMapping];
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_13;
      }

      v4 = [(NSString *)self length];
      v5 = [(NSString *)self precomposedStringWithCompatibilityMapping];
    }
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [(NSString *)self length];
        v5 = [(NSString *)self decomposedStringWithCompatibilityMapping];
        goto LABEL_10;
      }

LABEL_13:
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: invalid normalization form %ld", objc_opt_class(), a3), 0}];
      objc_exception_throw(v6);
    }

    v4 = [(NSString *)self length];
    v5 = [(NSString *)self decomposedStringWithCanonicalMapping];
  }

LABEL_10:

  [(NSMutableString *)self replaceCharactersInRange:0 withString:v4, v5];
}

+ (NSMutableString)allocWithZone:(_NSZone *)a3
{
  if (__NSMutableStringClass == a1)
  {
    return &__mutablePlaceholder;
  }

  else
  {
    return NSAllocateObject(a1, 0, a3);
  }
}

+ (NSMutableString)stringWithCapacity:(NSUInteger)capacity
{
  v3 = [(NSPlaceholderMutableString *)&__mutablePlaceholder initWithCapacity:capacity];

  return v3;
}

- (void)appendString:(NSString *)aString
{
  v5 = [(NSString *)self length];

  [(NSMutableString *)self replaceCharactersInRange:v5 withString:0, aString];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withCString:(const char *)a4 length:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v8 = [objc_allocWithZone(NSString) initWithCString:a4 length:a5];
  [(NSMutableString *)self replaceCharactersInRange:location withString:length, v8];
}

- (void)replaceCharactersInRange:(_NSRange)a3 withCharacters:(const unsigned __int16 *)a4 length:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  v8 = [objc_allocWithZone(NSString) initWithCharacters:a4 length:a5];
  [(NSMutableString *)self replaceCharactersInRange:location withString:length, v8];
}

- (void)appendFormat:(NSString *)format
{
  va_start(va, format);
  v4 = [objc_allocWithZone(NSString) initWithFormat:format locale:0 arguments:va];
  [(NSMutableString *)self replaceCharactersInRange:[(NSString *)self length] withString:0, v4];
}

- (void)setString:(NSString *)aString
{
  v5 = [(NSString *)self length];

  [(NSMutableString *)self replaceCharactersInRange:0 withString:v5, aString];
}

- (NSUInteger)replaceOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange
{
  length = searchRange.length;
  location = searchRange.location;
  v13 = [(NSString *)self length];
  if (!target || !replacement)
  {
    v23 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];
    v24 = MEMORY[0x1E695DF30];
    v25 = MEMORY[0x1E695D940];
    goto LABEL_21;
  }

  if (v13 < length || location > v13 - length)
  {
    v23 = [NSString stringWithFormat:@"%@: Range {%lu, %lu} out of bounds; string length %lu", _NSMethodExceptionProem(self, a2), location, length, v13];
    v24 = MEMORY[0x1E695DF30];
    v25 = MEMORY[0x1E695DA20];
LABEL_21:
    objc_exception_throw([v24 exceptionWithName:*v25 reason:v23 userInfo:0]);
  }

  if ((options & 0x400) != 0)
  {

    return [(NSMutableString *)self _replaceOccurrencesOfRegularExpressionPattern:target withTemplate:replacement options:options range:location, length];
  }

  else
  {
    v27.location = location;
    v27.length = length;
    Results = CFStringCreateArrayWithFindResults(0, self, target, v27, ~(8 * options) & 0x10 | options);
    if (!Results)
    {
      return 0;
    }

    v15 = Results;
    Count = CFArrayGetCount(Results);
    v17 = Count;
    if (Count)
    {
      v18 = 0;
      v19 = Count - 1;
      do
      {
        if ((options & 4) != 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v15, v20);
        [(NSMutableString *)self replaceCharactersInRange:*ValueAtIndex withString:ValueAtIndex[1], replacement];
        ++v18;
        --v19;
      }

      while (v19 != -1);
    }

    CFRelease(v15);
    return v17;
  }
}

- (BOOL)applyTransform:(NSStringTransform)transform reverse:(BOOL)reverse range:(NSRange)range updatedRange:(NSRangePointer)resultingRange
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = range;
  v7 = CFStringTransform(self, &v9, transform, reverse);
  if (resultingRange && v7)
  {
    *resultingRange = v9;
  }

  return v7 != 0;
}

- (unint64_t)_replaceOccurrencesOfRegularExpressionPattern:(id)a3 withTemplate:(id)a4 options:(unint64_t)a5 range:(_NSRange)a6
{
  length = a6.length;
  location = a6.location;
  v12 = a5 & 1;
  if (_MergedGlobals_144 != -1)
  {
    dispatch_once(&_MergedGlobals_144, &__block_literal_global_70);
  }

  v13 = [NSString stringWithFormat:@"%lx:%@", v12, a3];
  v14 = [qword_1ED440028 objectForKey:v13];
  if (!v14)
  {
    result = [[NSRegularExpression alloc] initWithPattern:a3 options:v12 error:0];
    if (!result)
    {
      return result;
    }

    v14 = result;
    [qword_1ED440028 setObject:result forKey:v13];
  }

  v16 = [v14 replaceMatchesInString:self options:(a5 >> 1) & 4 range:location withTemplate:{length, a4}];

  return v16;
}

@end