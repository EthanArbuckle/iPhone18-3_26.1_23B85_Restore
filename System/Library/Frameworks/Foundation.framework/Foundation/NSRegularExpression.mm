@interface NSRegularExpression
+ (NSRegularExpression)regularExpressionWithPattern:(NSString *)pattern options:(NSRegularExpressionOptions)options error:(NSError *)error;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSArray)matchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
- (NSRange)rangeOfFirstMatchInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
- (NSRegularExpression)initWithCoder:(id)coder;
- (NSRegularExpression)initWithPattern:(NSString *)pattern options:(NSRegularExpressionOptions)options error:(NSError *)error;
- (NSString)pattern;
- (NSString)replacementStringForResult:(NSTextCheckingResult *)result inString:(NSString *)string offset:(NSInteger)offset template:(NSString *)templ;
- (NSString)stringByReplacingMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range withTemplate:(NSString *)templ;
- (NSTextCheckingResult)firstMatchInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
- (NSUInteger)numberOfCaptureGroups;
- (NSUInteger)numberOfMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range;
- (NSUInteger)replaceMatchesInString:(NSMutableString *)string options:(NSMatchingOptions)options range:(NSRange)range withTemplate:(NSString *)templ;
- (id)description;
- (unint64_t)_captureGroupNumberWithName:(id)name;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range usingBlock:(void *)block;
@end

@implementation NSRegularExpression

- (NSUInteger)numberOfCaptureGroups
{
  v4 = *MEMORY[0x1E69E9840];
  status = U_ZERO_ERROR;
  result = self->_internal;
  if (result)
  {
    return uregex_groupCount(result, &status);
  }

  return result;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  internal = self->_internal;
  if (internal)
  {
    uregex_close(internal);
    self->_internal = 0;
  }

  v4.receiver = self;
  v4.super_class = NSRegularExpression;
  [(NSRegularExpression *)&v4 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    [self setVersion:1];
  }
}

+ (NSRegularExpression)regularExpressionWithPattern:(NSString *)pattern options:(NSRegularExpressionOptions)options error:(NSError *)error
{
  v5 = [[self alloc] initWithPattern:pattern options:options error:error];

  return v5;
}

- (NSRegularExpression)initWithPattern:(NSString *)pattern options:(NSRegularExpressionOptions)options error:(NSError *)error
{
  v24 = *MEMORY[0x1E69E9840];
  if (!pattern)
  {
    v19 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];

    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v19 userInfo:0]);
  }

  v21.receiver = self;
  v21.super_class = NSRegularExpression;
  v9 = [(NSRegularExpression *)&v21 init];
  if (v9)
  {
    status = U_ZERO_ERROR;
    memset(&pe, 0, sizeof(pe));
    v10 = pattern;
    if ((options & 4) != 0)
    {
      v10 = [NSRegularExpression escapedPatternForString:pattern];
    }

    v11 = [(NSString *)v10 length];
    CharactersPtr = CFStringGetCharactersPtr(v10);
    v13 = CharactersPtr == 0;
    if (!CharactersPtr)
    {
      if (v11 <= 0x100)
      {
        CharactersPtr = v23;
        [(NSString *)v10 getCharacters:v23 range:0, v11];
        v13 = 0;
        goto LABEL_10;
      }

      v18 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
      if (!v18)
      {
LABEL_21:
        if (v9->_internal)
        {
          v9->_pattern = [(NSString *)pattern copy];
          v9->_options = options;
        }

        else
        {

          return 0;
        }

        return v9;
      }

      CharactersPtr = v18;
      [(NSString *)v10 getCharacters:v18 range:0, v11];
    }

    if (v11 >= 0x7FFFFFFF)
    {
      v14 = 0;
      internal = v9->_internal;
LABEL_11:
      if (internal)
      {
        v16 = !v14;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        if (error)
        {
          *error = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 2048, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v10, @"NSInvalidValue", 0}]);
          internal = v9->_internal;
        }

        if (internal)
        {
          uregex_close(internal);
          v9->_internal = 0;
        }
      }

      if (v13)
      {
        free(CharactersPtr);
      }

      goto LABEL_21;
    }

LABEL_10:
    internal = uregex_open(CharactersPtr, v11, (4 * options) & 0x20 | (2 * (options & 3)) | (options >> 1) & 8 | (options >> 5) & 1 | (((options >> 6) & 1) << 8), &pe, &status);
    v9->_internal = internal;
    v14 = status > U_ZERO_ERROR;
    goto LABEL_11;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v7[1] = *MEMORY[0x1E69E9840];
  pattern = [(NSRegularExpression *)self pattern];
  options = [(NSRegularExpression *)self options];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:pattern forKey:@"NSPattern"];

    [coder encodeInt64:options forKey:@"NSOptions"];
  }

  else
  {
    [coder encodeObject:{pattern, options}];
    [coder encodeValueOfObjCType:"Q" at:v7];
  }
}

- (NSRegularExpression)initWithCoder:(id)coder
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([coder allowsKeyedCoding])
  {
    decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSPattern"];
    v7 = [coder decodeInt64ForKey:@"NSOptions"];
    return [(NSRegularExpression *)self initWithPattern:decodeObject options:v7 error:0];
  }

  v12[0] = 0;
  v8 = [coder versionForClassName:@"NSRegularExpression"];
  if (v8 == 1)
  {
    decodeObject = [coder decodeObject];
    [coder decodeValueOfObjCType:"Q" at:v12 size:8];
    v7 = v12[0];
    return [(NSRegularExpression *)self initWithPattern:decodeObject options:v7 error:0];
  }

  v10 = v8;
  v11 = _NSFullMethodName(self, a2);
  NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v11, 1, v10);
  [(NSRegularExpression *)self dealloc];
  return 0;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = -[NSString isEqual:](-[NSRegularExpression pattern](self, "pattern"), "isEqual:", [equal pattern]);
    if (v5)
    {
      options = [(NSRegularExpression *)self options];
      LOBYTE(v5) = options == [equal options];
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = NSRegularExpression;
  return [NSString stringWithFormat:@"%@ %@ 0x%lx", [(NSRegularExpression *)&v3 description], self->_pattern, self->_options];
}

- (NSString)pattern
{
  v2 = self->_pattern;

  return v2;
}

- (unint64_t)_captureGroupNumberWithName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [name length];
  status = U_ZERO_ERROR;
  if (self->_internal)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v5;
  CharactersPtr = CFStringGetCharactersPtr(name);
  if (!CharactersPtr)
  {
    if (v8 <= 0x100)
    {
      v10 = v17;
      [name getCharacters:v17 range:{0, v8}];
      goto LABEL_11;
    }

    v15 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
    if (v15)
    {
      v10 = v15;
      [name getCharacters:v15 range:{0, v8}];
      v11 = 1;
      goto LABEL_12;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = CharactersPtr;
LABEL_11:
  v11 = 0;
LABEL_12:
  v12 = uregex_groupNumberFromName(self->_internal, v10, v8, &status);
  if (v12 > -1 && status < U_ILLEGAL_ARGUMENT_ERROR)
  {
    v7 = v12;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    free(v10);
  }

  return v7;
}

- (void)enumerateMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range usingBlock:(void *)block
{
  length = range.length;
  location = range.location;
  v9 = options;
  v61[63] = *MEMORY[0x1E69E9840];
  v13 = [(NSString *)string length];
  numberOfCaptureGroups = [(NSRegularExpression *)self numberOfCaptureGroups];
  v55 = 0;
  v54 = U_ZERO_ERROR;
  if (!string)
  {
    v49 = [NSString stringWithFormat:@"%@: nil argument", _NSMethodExceptionProem(self, a2)];
    v50 = MEMORY[0x1E695DF30];
    v51 = MEMORY[0x1E695D940];
    goto LABEL_118;
  }

  if (v13 < length || location > v13 - length)
  {
    v49 = [NSString stringWithFormat:@"%@: Range or index out of bounds", _NSMethodExceptionProem(self, a2)];
    v50 = MEMORY[0x1E695DF30];
    v51 = MEMORY[0x1E695DA20];
LABEL_118:
    objc_exception_throw([v50 exceptionWithName:*v51 reason:v49 userInfo:0]);
  }

  v15 = numberOfCaptureGroups;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v9 & 4) != 0)
  {
    v16 = location;
  }

  context = block;
  v57 = v16;
  v58 = 0;
  internal = self->_internal;
  v18 = [(NSString *)string length];
  v19 = 0;
  v59 = U_ZERO_ERROR;
  v20 = 1;
  v53 = block;
  if (location > 0x7FFFFFFE)
  {
    goto LABEL_27;
  }

  if (location + length > v18)
  {
    goto LABEL_27;
  }

  v19 = CFStringOpenUText();
  v20 = 1;
  if (!v19)
  {
    goto LABEL_27;
  }

  v21 = 0;
  if ((location + length) >> 31)
  {
    v22 = 0x7FFFFFFF - location;
  }

  else
  {
    v22 = length;
  }

  status = U_ZERO_ERROR;
  atomic_compare_exchange_strong(&self->_checkout, &v21, 1u);
  v52 = v21 == 0;
  if (v21)
  {
    internal = uregex_clone(internal, &status);
  }

  uregex_setUText(internal, v19, &v59);
  if (!internal)
  {
    goto LABEL_26;
  }

  uregex_setRegion64(internal, location, v22 + location, &v59);
  if (v9)
  {
    uregex_setMatchCallback(internal, regexMatchCallback, &context, &v59);
  }

  else if ((v9 & 4) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

  uregex_setFindProgressCallback(internal, regexFindProgressCallback, &context, &v59);
  if ((v9 & 8) == 0)
  {
LABEL_18:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_41:
  uregex_useTransparentBounds(internal, 1, &v59);
  if ((v9 & 0x10) != 0)
  {
LABEL_19:
    uregex_useAnchoringBounds(internal, 0, &v59);
  }

LABEL_20:
  if (v59 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    v30 = 0;
    while (1)
    {
      if (!uregex_findNext(internal, &v54))
      {
LABEL_110:
        v23 = 0;
        v20 = v52;
        goto LABEL_28;
      }

      v20 = v52;
      if (v54 > U_ZERO_ERROR || (v55 & 1) != 0 || (v58 & 1) != 0 || (v58 & 0x100) != 0)
      {
        v23 = 0;
        goto LABEL_28;
      }

      if ((v9 & 4) != 0)
      {
        v31 = uregex_start64(internal, 0, &v54);
        if (v31 > v57)
        {
          goto LABEL_110;
        }

        v57 = uregex_end64(internal, 0, &v54);
      }

      if ((v9 & 0x2000) == 0)
      {
        if (v15 >= 7)
        {
          v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        else
        {
          v32 = 0;
        }

        v33 = 0;
        v34 = v61;
        do
        {
          v59 = U_ZERO_ERROR;
          v35 = uregex_start64(internal, v33, &v59);
          v36 = uregex_end64(internal, v33, &v59);
          v39 = v35 < 0 || v36 < v35 || v59 > U_ZERO_ERROR;
          v40 = v36 - v35;
          if (v15 > 6)
          {
            if (v39)
            {
              v42 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v35;
            }

            if (v39)
            {
              v43 = 0;
            }

            else
            {
              v43 = v36 - v35;
            }

            [v32 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v42, v43)}];
          }

          else
          {
            if (v39)
            {
              v40 = 0;
              v41 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v41 = v35;
            }

            *(v34 - 1) = v41;
            *v34 = v40;
          }

          ++v33;
          v34 += 2;
        }

        while (v33 <= v15);
        if (v15 > 2)
        {
          if (v15 > 6)
          {
            v30 = [[NSComplexRegularExpressionCheckingResult alloc] initWithRangeArray:v32 regularExpression:self];

            goto LABEL_104;
          }

          v44 = NSExtendedRegularExpressionCheckingResult;
        }

        else
        {
          v44 = NSSimpleRegularExpressionCheckingResult;
        }

        v30 = [[v44 alloc] initWithRanges:&status count:v15 + 1 regularExpression:self];
      }

LABEL_104:
      status = U_ZERO_ERROR;
      v45 = uregex_hitEnd(internal, &status) != 0;
      v46 = uregex_requireEnd(internal, &status);
      v47 = 4 * v45;
      if (v46)
      {
        v47 = (4 * v45) | 8;
      }

      if (status >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        v48 = 0;
      }

      else
      {
        v48 = v47;
      }

      (*(block + 2))(block, v30, v48, &v55);

      if (v55 == 1)
      {
        goto LABEL_110;
      }
    }
  }

  uregex_setText(internal, &status, 0, &v59);
  if (v9)
  {
    uregex_setMatchCallback(internal, 0, 0, &v59);
  }

  else if ((v9 & 4) == 0)
  {
    if ((v9 & 8) == 0)
    {
      goto LABEL_24;
    }

LABEL_113:
    uregex_useTransparentBounds(internal, 0, &v59);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  uregex_setFindProgressCallback(internal, 0, 0, &v59);
  if ((v9 & 8) != 0)
  {
    goto LABEL_113;
  }

LABEL_24:
  if ((v9 & 0x10) != 0)
  {
LABEL_25:
    uregex_useAnchoringBounds(internal, 1, &v59);
  }

LABEL_26:
  v20 = v52;
LABEL_27:
  internal = 0;
  v23 = 1;
LABEL_28:
  if ((v9 & 2) != 0 && (v55 & 1) == 0 && (v58 & 1) == 0)
  {
    v24 = v20;
    if ((v23 & 1) != 0 || v54 >= U_ILLEGAL_ARGUMENT_ERROR && BYTE1(v58) != 1)
    {
      v29 = 18;
    }

    else
    {
      v59 = U_ZERO_ERROR;
      v25 = uregex_hitEnd(internal, &v59) != 0;
      v26 = uregex_requireEnd(internal, &v59);
      v27 = 4 * v25;
      if (v26)
      {
        v27 = (4 * v25) | 8;
      }

      v28 = v27 | 2;
      if (v59 >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        v29 = 2;
      }

      else
      {
        v29 = v28;
      }
    }

    v53[2](v53, 0, v29, &v55);
    v20 = v24;
  }

  v59 = U_ZERO_ERROR;
  if (v23)
  {
LABEL_53:
    if (!v19)
    {
      return;
    }

    goto LABEL_54;
  }

  if (v20)
  {
    uregex_setText(internal, &status, 0, &v59);
    if (v9)
    {
      uregex_setMatchCallback(internal, 0, 0, &v59);
    }

    else if ((v9 & 4) == 0)
    {
      if ((v9 & 8) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_60;
    }

    uregex_setFindProgressCallback(internal, 0, 0, &v59);
    if ((v9 & 8) == 0)
    {
LABEL_50:
      if ((v9 & 0x10) == 0)
      {
LABEL_52:
        atomic_fetch_and(&self->_checkout, 0);
        goto LABEL_53;
      }

LABEL_51:
      uregex_useAnchoringBounds(internal, 1, &v59);
      goto LABEL_52;
    }

LABEL_60:
    uregex_useTransparentBounds(internal, 0, &v59);
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  uregex_close(internal);
  if (v19)
  {
LABEL_54:
    utext_close(v19);
  }
}

- (NSArray)matchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range
{
  length = range.length;
  location = range.location;
  v12[5] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__NSRegularExpression_NSMatching__matchesInString_options_range___block_invoke;
  v12[3] = &unk_1E69F7740;
  v12[4] = array;
  [(NSRegularExpression *)self enumerateMatchesInString:string options:options & 0xFFFFFFFFFFFFFFFCLL range:location usingBlock:length, v12];
  return array;
}

uint64_t __65__NSRegularExpression_NSMatching__matchesInString_options_range___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (NSUInteger)numberOfMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__NSRegularExpression_NSMatching__numberOfMatchesInString_options_range___block_invoke;
  v7[3] = &unk_1E69F7768;
  v7[4] = &v8;
  [(NSRegularExpression *)self enumerateMatchesInString:string options:options & 0xFFFFFFFFFFFFDFFCLL | 0x2000 range:range.location usingBlock:range.length, v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __73__NSRegularExpression_NSMatching__numberOfMatchesInString_options_range___block_invoke(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 3) == 0)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  return result;
}

- (NSTextCheckingResult)firstMatchInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range
{
  v14 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__24;
  v12 = __Block_byref_object_dispose__24;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__NSRegularExpression_NSMatching__firstMatchInString_options_range___block_invoke;
  v7[3] = &unk_1E69F7768;
  v7[4] = &v8;
  [(NSRegularExpression *)self enumerateMatchesInString:string options:options & 0xFFFFFFFFFFFFFFFCLL range:range.location usingBlock:range.length, v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

id __68__NSRegularExpression_NSMatching__firstMatchInString_options_range___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = a2;
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a4 = 1;
  return result;
}

- (NSRange)rangeOfFirstMatchInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3010000000;
  v13 = &unk_181543D8B;
  v14 = xmmword_181406480;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__NSRegularExpression_NSMatching__rangeOfFirstMatchInString_options_range___block_invoke;
  v9[3] = &unk_1E69F7768;
  v9[4] = &v10;
  [(NSRegularExpression *)self enumerateMatchesInString:string options:options & 0xFFFFFFFFFFFFFFFCLL range:range.location usingBlock:range.length, v9];
  v5 = v11[4];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

uint64_t __75__NSRegularExpression_NSMatching__rangeOfFirstMatchInString_options_range___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = [a2 range];
    v6 = *(*(v5 + 32) + 8);
    *(v6 + 32) = result;
    *(v6 + 40) = v7;
  }

  *a4 = 1;
  return result;
}

- (NSString)stringByReplacingMatchesInString:(NSString *)string options:(NSMatchingOptions)options range:(NSRange)range withTemplate:(NSString *)templ
{
  length = range.length;
  location = range.location;
  v40 = *MEMORY[0x1E69E9840];
  v34 = +[(NSString *)NSMutableString];
  v13 = [(NSString *)string length];
  v33 = templ;
  if (!templ)
  {
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v30);
  }

  v14 = v13;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(NSRegularExpression *)self matchesInString:string options:options & 0xFFFFFFFFFFFFFFFCLL range:location, length];
  v15 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v31 = v14;
    selfCopy = self;
    range = 0;
    v19 = 0;
    v20 = *v37;
    do
    {
      v21 = 0;
      v22 = range;
      v23 = v19;
      do
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v36 + 1) + 8 * v21);
        range = [v24 range];
        v19 = v25;
        v26 = [(NSRegularExpression *)selfCopy replacementStringForResult:v24 inString:string offset:0 template:v33];
        v27 = range - (v22 + v23);
        if (range > v22 + v23)
        {
          [(NSString *)v34 appendString:[(NSString *)string substringWithRange:v22 + v23, v27]];
        }

        [(NSString *)v34 appendString:v26, v27];
        ++v21;
        v22 = range;
        v23 = v19;
      }

      while (v16 != v21);
      v16 = [(NSArray *)obj countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v16);
    v28 = range + v19;
    v14 = v31;
  }

  else
  {
    v28 = 0;
  }

  if (v14 > v28)
  {
    [(NSString *)v34 appendString:[(NSString *)string substringWithRange:?]];
  }

  return v34;
}

- (NSUInteger)replaceMatchesInString:(NSMutableString *)string options:(NSMatchingOptions)options range:(NSRange)range withTemplate:(NSString *)templ
{
  v29 = *MEMORY[0x1E69E9840];
  if (!templ)
  {
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v21);
  }

  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(NSRegularExpression *)self matchesInString:string options:options & 0xFFFFFFFFFFFFFFFCLL range:range.location, range.length];
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v26;
  do
  {
    v22 = v11;
    for (i = 0; i != v10; ++i)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v25 + 1) + 8 * i);
      range = [v15 range];
      v18 = v17;
      v19 = [(NSRegularExpression *)self replacementStringForResult:v15 inString:string offset:v12 template:templ];
      [(NSMutableString *)string replaceCharactersInRange:range + v12 withString:v18, v19];
      v12 += [(NSString *)v19 length]- v18;
    }

    v11 = v10 + v22;
    v10 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  }

  while (v10);
  return v11;
}

- (NSString)replacementStringForResult:(NSTextCheckingResult *)result inString:(NSString *)string offset:(NSInteger)offset template:(NSString *)templ
{
  numberOfRanges = [(NSTextCheckingResult *)result numberOfRanges];
  v38 = result;
  if (!result || !string || !templ)
  {
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v36);
  }

  v12 = numberOfRanges;
  v13 = &_MergedGlobals_143;
  if (!replacementStringForResult_inString_offset_template__characterSet)
  {
    replacementStringForResult_inString_offset_template__characterSet = [NSCharacterSet characterSetWithCharactersInString:@"\\$"];
  }

  v14 = [(NSString *)templ rangeOfCharacterFromSet:?];
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v37 = string;
    templ = [(NSString *)NSMutableString stringWithString:templ];
    v18 = [(NSString *)templ length];
    if (v12 < 0xB)
    {
      v21 = 1;
    }

    else
    {
      v19 = 10;
      v20 = 1;
      do
      {
        v21 = v20 + 1;
        v19 *= 10;
      }

      while (v19 < v12 && v20++ < 0x13);
    }

    do
    {
      v23 = [(NSString *)templ characterAtIndex:v16];
      if (v23 == 36)
      {
        v24 = v16 + v17;
        if (v18 >= v16 + v17 + v21)
        {
          v25 = v16 + v17 + v21;
        }

        else
        {
          v25 = v18;
        }

        if (v24 < v25)
        {
          v26 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            v27 = [(NSString *)templ characterAtIndex:v24];
            if ((v27 - 58) < 0xFFFFFFF6)
            {
              break;
            }

            v28 = 10 * v26;
            if (v26 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v28 = 0;
            }

            v26 = v28 + (v27 & 0xF);
            ++v24;
          }

          while (v24 < v25);
          if (v26 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = &_MergedGlobals_143;
          }

          else
          {
            if (v26 >= v12)
            {
              v17 = 0;
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = [(NSTextCheckingResult *)v38 rangeAtIndex:v26];
              v17 = v30;
            }

            if (v29 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v31 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v29 + offset;
            }

            v13 = &_MergedGlobals_143;
            v32 = &stru_1EEEFDF90;
            if (v31 != 0x7FFFFFFFFFFFFFFFLL && v17)
            {
              v32 = [(NSString *)v37 substringWithRange:?];
            }

            v33 = v24 - v16;
            [(NSString *)templ replaceCharactersInRange:v16 withString:v33, v32];
            v18 = v18 - v33 + v17;
          }
        }
      }

      else if (v23 == 92)
      {
        [(NSString *)templ deleteCharactersInRange:v16, v17];
        v18 -= v17;
        v17 = 1;
      }

      if (v18 <= v17 + v16)
      {
        break;
      }

      v16 = [(NSString *)templ rangeOfCharacterFromSet:*(v13 + 106) options:0 range:v17 + v16, v18 - (v17 + v16)];
      v17 = v34;
    }

    while (v34);
  }

  return templ;
}

@end