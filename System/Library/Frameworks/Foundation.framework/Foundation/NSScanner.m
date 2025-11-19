@interface NSScanner
+ (NSScanner)allocWithZone:(_NSZone *)a3;
+ (NSScanner)scannerWithString:(NSString *)string;
+ (id)localizedScannerWithString:(NSString *)string;
- (BOOL)_scanDecimal:(unint64_t)a3 into:(int64_t *)a4;
- (BOOL)isAtEnd;
- (BOOL)scanCharactersFromSet:(NSCharacterSet *)set intoString:(NSString *)result;
- (BOOL)scanDecimal:(NSDecimal *)dcm;
- (BOOL)scanDouble:(double *)result;
- (BOOL)scanFloat:(float *)result;
- (BOOL)scanHexDouble:(double *)result;
- (BOOL)scanHexFloat:(float *)result;
- (BOOL)scanHexInt:(unsigned int *)result;
- (BOOL)scanHexLongLong:(unint64_t *)result;
- (BOOL)scanInt:(int *)result;
- (BOOL)scanLongLong:(uint64_t *)result;
- (BOOL)scanString:(NSString *)string intoString:(NSString *)result;
- (BOOL)scanUnsignedLongLong:(unint64_t *)result;
- (BOOL)scanUpToCharactersFromSet:(NSCharacterSet *)set intoString:(NSString *)result;
- (BOOL)scanUpToString:(NSString *)string intoString:(NSString *)result;
- (NSScanner)initWithString:(NSString *)string;
- (id)_invertedSkipSet;
- (id)_remainingString;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCaseSensitive:(BOOL)caseSensitive;
- (void)setCharactersToBeSkipped:(NSCharacterSet *)charactersToBeSkipped;
- (void)setLocale:(id)locale;
- (void)setScanLocation:(NSUInteger)scanLocation;
@end

@implementation NSScanner

- (BOOL)isAtEnd
{
  v3 = [(NSScanner *)self string];
  v4 = [(NSScanner *)self scanLocation];
  v5 = [(NSString *)v3 length];
  v6 = [(NSScanner *)self _invertedSkipSet];
  if (v6)
  {
    v7 = [(NSString *)v3 rangeOfCharacterFromSet:v6 options:0 range:v4, v5 - v4];
    if (v8)
    {
      v4 = v7;
    }

    else
    {
      v4 = v5;
    }
  }

  return v4 == v5;
}

- (id)_remainingString
{
  v3 = [(NSScanner *)self string];
  v4 = [(NSScanner *)self scanLocation];
  v5 = [(NSString *)v3 length]- v4;

  return [(NSString *)v3 substringWithRange:v4, v5];
}

- (BOOL)_scanDecimal:(unint64_t)a3 into:(int64_t *)a4
{
  v7 = [(NSScanner *)self scanLocation];
  v8 = [(NSScanner *)self string];
  v9 = [(NSString *)v8 length];
  if (!a3)
  {
    return 0;
  }

  v10 = 0;
  v11 = 0;
  if (v9 >= v7)
  {
    v12 = v9 - v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = v7;
  while (v12 != v10)
  {
    v14 = [(NSString *)v8 characterAtIndex:v13];
    if (v14 - 58 < 0xFFFFFFF6)
    {
      v12 = v10;
      break;
    }

    v11 = 10 * v11 + v14 - 48;
    ++v10;
    ++v13;
    if (a3 == v10)
    {
      goto LABEL_12;
    }
  }

  a3 = v12;
  if (!v12)
  {
    return 0;
  }

LABEL_12:
  [(NSScanner *)self setScanLocation:a3 + v7];
  *a4 = v11;
  return 1;
}

- (BOOL)scanDecimal:(NSDecimal *)dcm
{
  v57 = *MEMORY[0x1E69E9840];
  v47 = 0uLL;
  v48 = 0;
  v5 = [(NSScanner *)self scanLocation];
  v6 = [(NSScanner *)self string];
  v7 = [(NSScanner *)self charactersToBeSkipped];
  v8 = [(NSScanner *)self locale];
  v56 = 0u;
  v54 = 0u;
  memset(v55, 0, sizeof(v55));
  v53 = 0u;
  v46 = &v52 + 15;
  v49 = 0uLL;
  v50 = 0;
  v9 = [v8 objectForKey:*MEMORY[0x1E695D990]];
  if (!v9)
  {
    v9 = [v8 objectForKey:@"NSDecimalSeparator"];
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @".";
  }

  if ([(__CFString *)v10 length])
  {
    v44 = [(__CFString *)v10 characterAtIndex:0];
  }

  else
  {
    v44 = 46;
  }

  v11 = [(NSString *)v6 length];
  *(&v54 + 1) = v11;
  v55[0] = v5;
  *&v54 = v6;
  if (v11 <= v5)
  {
    *&v53 = 0;
    v13 = 0xFFFFLL;
  }

  else
  {
    if (v11 - v5 >= 0x20)
    {
      v12 = 32;
    }

    else
    {
      v12 = v11 - v5;
    }

    *&v53 = v12;
    [v6 getUid("getCharacters:&v55[1] range:{v5, v12}")];
    v13 = LOWORD(v55[1]);
  }

  WORD4(v56) = v13;
  *(&v53 + 1) = 1;
  v42 = dcm;
  v43 = self;
  if (v7)
  {
    if ([(NSCharacterSet *)v7 characterIsMember:v13])
    {
      do
      {
        v14 = *(&v53 + 1);
        if (*(&v53 + 1) - 1 >= v53)
        {
          break;
        }

        if (*(&v53 + 1) >= v53)
        {
          v16 = v55[0] + v53;
          v17 = *(&v54 + 1) - (v55[0] + v53);
          if (*(&v54 + 1) > v55[0] + v53)
          {
            v55[0] += v53;
            if (v17 >= 0x20)
            {
              v18 = 32;
            }

            else
            {
              v18 = *(&v54 + 1) - v16;
            }

            *&v53 = v18;
            [v54 getUid("getCharacters:&v55[1] range:{v16, v18}")];
            WORD4(v56) = v55[1];
            *(&v53 + 1) = 1;
            continue;
          }

          *(&v53 + 1) = v53 + 1;
          v15 = -1;
        }

        else
        {
          ++*(&v53 + 1);
          v15 = *(&v55[1] + v14);
        }

        WORD4(v56) = v15;
      }

      while ([(NSCharacterSet *)v7 characterIsMember:?]);
    }

    LODWORD(v13) = WORD4(v56);
    v41 = *(&v53 + 1) - 1;
  }

  else
  {
    v41 = 0;
  }

  v40 = v55[0];
  v45 = v13;
  v19 = v44;
  if (v13 <= 0x7F && ((v13 - 9) < 5 || v13 == 32))
  {
    return 0;
  }

  v20 = 0;
  v21 = 0;
  v22 = v51;
  v23 = &__NSNumberSet;
  v24 = v51;
  while (v13 <= 0x7Fu && ((v23[v13 >> 3] >> (v13 & 7)) & 1) != 0)
  {
LABEL_38:
    if (v22 >= v46)
    {
      v21 += 128;
      if (v20)
      {
        v25 = MEMORY[0x1865CFE30](v20, v21, 2091775595, 0);
        if (!v25)
        {
          return 0;
        }

        v24 = v25;
        LOBYTE(v13) = v45;
      }

      else
      {
        v24 = malloc_type_malloc(v21, 0x100004077774924uLL);
        v26 = v52;
        v28 = v51[0];
        v27 = v51[1];
        *(v24 + 2) = v51[2];
        *(v24 + 3) = v26;
        *v24 = v28;
        *(v24 + 1) = v27;
        v20 = v51;
      }

      v22 = &v24[v22 - v20];
      v46 = &v24[v21 - 1];
      v20 = v24;
    }

    *v22++ = v13;
    v29 = *(&v53 + 1);
    if (*(&v53 + 1) < v53)
    {
      ++*(&v53 + 1);
      LOWORD(v13) = *(&v55[1] + v29);
LABEL_52:
      WORD4(v56) = v13;
      goto LABEL_53;
    }

    v13 = v55[0] + v53;
    v30 = *(&v54 + 1) - (v55[0] + v53);
    if (*(&v54 + 1) <= v55[0] + v53)
    {
      *(&v53 + 1) = v53 + 1;
      LOWORD(v13) = -1;
      goto LABEL_52;
    }

    v55[0] += v53;
    v31 = v10;
    v32 = v23;
    if (v30 >= 0x20)
    {
      v33 = 32;
    }

    else
    {
      v33 = *(&v54 + 1) - v13;
    }

    *&v53 = v33;
    v34 = v54;
    Uid = sel_getUid("getCharacters:range:");
    v36 = v34;
    v19 = v44;
    v37 = v33;
    v23 = v32;
    v10 = v31;
    [v36 Uid];
    LOWORD(v13) = v55[1];
    WORD4(v56) = v55[1];
    *(&v53 + 1) = 1;
LABEL_53:
    v45 = v13;
  }

  if (_NSCheckDecimalSeparator(&v53, &v45, v19, v10))
  {
    LOBYTE(v13) = 46;
    v45 = 46;
    goto LABEL_38;
  }

  *v22 = 0;
  _NSCStringToDecimal(v24, &v46, &v49);
  if (v20)
  {
    free(v20);
  }

  v38 = v46;
  if (v46 == v24)
  {
    return 0;
  }

  v47 = v49;
  v48 = v50;
  if (v42)
  {
    *v42 = v47;
    *&v42->_mantissa[6] = v48;
  }

  [(NSScanner *)v43 setScanLocation:&v38[v41 + v40 - v24], v40];
  return 1;
}

+ (NSScanner)allocWithZone:(_NSZone *)a3
{
  v4 = a1;
  if (objc_opt_self() == a1)
  {
    v4 = objc_opt_self();
  }

  return NSAllocateObject(v4, 0, a3);
}

- (NSScanner)initWithString:(NSString *)string
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSScanner;
  return [(NSScanner *)&v4 init];
}

+ (NSScanner)scannerWithString:(NSString *)string
{
  v3 = [objc_allocWithZone(NSConcreteScanner) initWithString:string];

  return v3;
}

+ (id)localizedScannerWithString:(NSString *)string
{
  v3 = [objc_allocWithZone(NSConcreteScanner) initWithString:string];
  [v3 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "currentLocale")}];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_allocWithZone(NSConcreteScanner) initWithString:{-[NSScanner string](self, "string")}];
  [v4 setCharactersToBeSkipped:{-[NSScanner charactersToBeSkipped](self, "charactersToBeSkipped")}];
  [v4 setScanLocation:{-[NSScanner scanLocation](self, "scanLocation")}];
  [v4 setCaseSensitive:{-[NSScanner caseSensitive](self, "caseSensitive")}];
  [v4 setLocale:{-[NSScanner locale](self, "locale")}];
  return v4;
}

- (id)_invertedSkipSet
{
  v2 = [(NSScanner *)self charactersToBeSkipped];

  return [(NSCharacterSet *)v2 invertedSet];
}

- (BOOL)scanDouble:(double *)result
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSScanner *)self scanLocation];
  v5 = _NSScanDoubleFromString([(NSScanner *)self string], [(NSScanner *)self charactersToBeSkipped], result, v7, [(NSScanner *)self locale]);
  if (v5)
  {
    [(NSScanner *)self setScanLocation:v7[0]];
  }

  return v5;
}

- (BOOL)scanFloat:(float *)result
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0.0;
  v8 = [(NSScanner *)self scanLocation];
  v5 = _NSScanDoubleFromString([(NSScanner *)self string], [(NSScanner *)self charactersToBeSkipped], v9, &v8, [(NSScanner *)self locale]);
  if (v5)
  {
    if (result)
    {
      v6 = v9[0];
      *result = v6;
    }

    [(NSScanner *)self setScanLocation:v8];
  }

  return v5;
}

- (BOOL)scanHexDouble:(double *)result
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSScanner *)self scanLocation];
  v5 = _NSScanHexDoubleFromString([(NSScanner *)self string], [(NSScanner *)self charactersToBeSkipped], result, v7, [(NSScanner *)self locale]);
  if (v5)
  {
    [(NSScanner *)self setScanLocation:v7[0]];
  }

  return v5;
}

- (BOOL)scanHexFloat:(float *)result
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0.0;
  v8 = [(NSScanner *)self scanLocation];
  v5 = _NSScanHexDoubleFromString([(NSScanner *)self string], [(NSScanner *)self charactersToBeSkipped], v9, &v8, [(NSScanner *)self locale]);
  if (v5)
  {
    if (result)
    {
      v6 = v9[0];
      *result = v6;
    }

    [(NSScanner *)self setScanLocation:v8];
  }

  return v5;
}

- (BOOL)scanUnsignedLongLong:(unint64_t *)result
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = [(NSScanner *)self scanLocation];
  v5 = [(NSScanner *)self string];
  v6 = [(NSScanner *)self charactersToBeSkipped];
  *c = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v7 = [(NSString *)v5 length];
  v43 = v7;
  *&v44[0] = v4;
  v42 = v5;
  if (v7 <= v4)
  {
    *&v41 = 0;
    v9 = 0xFFFF;
  }

  else
  {
    if (v7 - v4 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v7 - v4;
    }

    *&v41 = v8;
    [v5 getUid("getCharacters:v44 + 8 range:{v4, v8}")];
    v9 = WORD4(v44[0]);
  }

  LOWORD(c[2]) = v9;
  *(&v41 + 1) = 1;
  if (v6)
  {
    if ([(NSCharacterSet *)v6 characterIsMember:?])
    {
      do
      {
        v10 = v41;
        if (*(&v41 + 1) - 1 >= v41)
        {
          break;
        }

        if (*(&v41 + 1) >= v41)
        {
          v12 = *&v44[0] + v41;
          if (v43 > *&v44[0] + v41)
          {
            if (v43 - (*&v44[0] + v41) >= 0x20)
            {
              v13 = 32;
            }

            else
            {
              v13 = v43 - (*&v44[0] + v41);
            }

            *&v44[0] += v41;
            *&v41 = v13;
            [v42 getUid("getCharacters:v44 + 8 range:{v12, v13}")];
            LOWORD(c[2]) = WORD4(v44[0]);
            *(&v41 + 1) = 1;
            continue;
          }

          *(&v41 + 1) = v41 + 1;
          v11 = -1;
        }

        else
        {
          ++*(&v41 + 1);
          v11 = *(v44 + *(&v10 + 1) + 4);
        }

        LOWORD(c[2]) = v11;
      }

      while ([(NSCharacterSet *)v6 characterIsMember:?]);
    }

    v9 = LOWORD(c[2]);
  }

  if (v9 != 43)
  {
    goto LABEL_44;
  }

  if (*(&v41 + 1) >= v41)
  {
    v16 = *&v44[0] + v41;
    if (v43 > *&v44[0] + v41)
    {
      if (v43 - (*&v44[0] + v41) >= 0x20)
      {
        v17 = 32;
      }

      else
      {
        v17 = v43 - (*&v44[0] + v41);
      }

      *&v44[0] += v41;
      *&v41 = v17;
      [v42 getUid("getCharacters:v44 + 8 range:{v16, v17}")];
      LOWORD(c[2]) = WORD4(v44[0]);
      *(&v41 + 1) = 1;
      if (!v6)
      {
        goto LABEL_44;
      }

      goto LABEL_32;
    }

    *(&v41 + 1) = v41 + 1;
    v15 = -1;
  }

  else
  {
    v14 = &v41 + 2 * (*(&v41 + 1))++;
    v15 = *(v14 + 20);
  }

  LOWORD(c[2]) = v15;
  if (!v6)
  {
    goto LABEL_44;
  }

LABEL_32:
  if ([(NSCharacterSet *)v6 characterIsMember:?])
  {
    do
    {
      v18 = v41;
      if (*(&v41 + 1) - 1 >= v41)
      {
        break;
      }

      if (*(&v41 + 1) >= v41)
      {
        v20 = *&v44[0] + v41;
        if (v43 > *&v44[0] + v41)
        {
          if (v43 - (*&v44[0] + v41) >= 0x20)
          {
            v21 = 32;
          }

          else
          {
            v21 = v43 - (*&v44[0] + v41);
          }

          *&v44[0] += v41;
          *&v41 = v21;
          [v42 getUid("getCharacters:v44 + 8 range:{v20, v21}")];
          LOWORD(c[2]) = WORD4(v44[0]);
          *(&v41 + 1) = 1;
          continue;
        }

        *(&v41 + 1) = v41 + 1;
        v19 = -1;
      }

      else
      {
        ++*(&v41 + 1);
        v19 = *(v44 + *(&v18 + 1) + 4);
      }

      LOWORD(c[2]) = v19;
    }

    while ([(NSCharacterSet *)v6 characterIsMember:?]);
  }

LABEL_44:
  v22 = LOWORD(c[2]);
  v23 = isADigit_set;
  if (!isADigit_set)
  {
    v23 = +[NSCharacterSet decimalDigitCharacterSet];
    isADigit_set = v23;
  }

  v24 = [(NSCharacterSet *)v23 characterIsMember:v22];
  if (v24)
  {
    v38 = v24;
    v39 = self;
    v25 = 0;
    while (1)
    {
      if (v25 > 0x1999999999999998)
      {
        if (v25 != 0x1999999999999999)
        {
          goto LABEL_53;
        }

        v26 = LOWORD(c[2]) - 48;
        if (v26 > 9)
        {
          v26 = u_charDigitValue(LOWORD(c[2]));
        }

        if (v26 >= 5)
        {
LABEL_53:
          while (1)
          {
            v27 = v41;
            if (*(&v41 + 1) >= v41)
            {
              v29 = *&v44[0] + v41;
              if (v43 > *&v44[0] + v41)
              {
                if (v43 - (*&v44[0] + v41) >= 0x20)
                {
                  v30 = 32;
                }

                else
                {
                  v30 = v43 - (*&v44[0] + v41);
                }

                *&v44[0] += v41;
                *&v41 = v30;
                [v42 getUid("getCharacters:v44 + 8 range:{v29, v30}")];
                v28 = WORD4(v44[0]);
                LOWORD(c[2]) = WORD4(v44[0]);
                *(&v41 + 1) = 1;
                goto LABEL_62;
              }

              *(&v41 + 1) = v41 + 1;
              v28 = 0xFFFFLL;
            }

            else
            {
              ++*(&v41 + 1);
              v28 = *(v44 + *(&v27 + 1) + 4);
            }

            LOWORD(c[2]) = v28;
LABEL_62:
            v31 = isADigit_set;
            if (!isADigit_set)
            {
              v31 = +[NSCharacterSet decimalDigitCharacterSet];
              isADigit_set = v31;
            }

            if (![(NSCharacterSet *)v31 characterIsMember:v28])
            {
              v25 = -1;
              v32 = LOWORD(c[2]);
              goto LABEL_77;
            }
          }
        }
      }

      v33 = LOWORD(c[2]) - 48;
      if (v33 > 9)
      {
        v33 = u_charDigitValue(LOWORD(c[2]));
      }

      v25 = v33 + 10 * v25;
      v34 = v41;
      if (*(&v41 + 1) >= v41)
      {
        v35 = *&v44[0] + v41;
        if (v43 > *&v44[0] + v41)
        {
          if (v43 - (*&v44[0] + v41) >= 0x20)
          {
            v36 = 32;
          }

          else
          {
            v36 = v43 - (*&v44[0] + v41);
          }

          *&v44[0] += v41;
          *&v41 = v36;
          [v42 getUid("getCharacters:v44 + 8 range:{v35, v36}")];
          v32 = WORD4(v44[0]);
          LOWORD(c[2]) = WORD4(v44[0]);
          *(&v41 + 1) = 1;
          goto LABEL_77;
        }

        *(&v41 + 1) = v41 + 1;
        v32 = 0xFFFFLL;
      }

      else
      {
        ++*(&v41 + 1);
        v32 = *(v44 + *(&v34 + 1) + 4);
      }

      LOWORD(c[2]) = v32;
LABEL_77:
      v37 = isADigit_set;
      if (!isADigit_set)
      {
        v37 = +[NSCharacterSet decimalDigitCharacterSet];
        isADigit_set = v37;
      }

      if (![(NSCharacterSet *)v37 characterIsMember:v32])
      {
        if (result)
        {
          *result = v25;
        }

        [(NSScanner *)v39 setScanLocation:*&v44[0] + *(&v41 + 1) - 1];
        return v38;
      }
    }
  }

  return v24;
}

- (BOOL)scanLongLong:(uint64_t *)result
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSScanner *)self scanLocation];
  v5 = _NSScanLongLongFromString([(NSScanner *)self string], [(NSScanner *)self charactersToBeSkipped], result, v7);
  if (v5)
  {
    [(NSScanner *)self setScanLocation:v7[0]];
  }

  return v5;
}

- (BOOL)scanInt:(int *)result
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSScanner *)self scanLocation];
  v5 = _NSScanIntFromString([(NSScanner *)self string], [(NSScanner *)self charactersToBeSkipped], result, v7);
  if (v5)
  {
    [(NSScanner *)self setScanLocation:v7[0]];
  }

  return v5;
}

- (BOOL)scanHexLongLong:(unint64_t *)result
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = [(NSScanner *)self string];
  v6 = [(NSScanner *)self scanLocation];
  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  v7 = [(NSString *)v5 length:0];
  v39 = v7;
  *&v40[0] = v6;
  v38 = v5;
  if (v7 <= v6)
  {
    *&v37 = 0;
    v9 = -1;
  }

  else
  {
    if (v7 - v6 >= 0x20)
    {
      v8 = 32;
    }

    else
    {
      v8 = v7 - v6;
    }

    *&v37 = v8;
    [v5 getUid("getCharacters:v40 + 8 range:{v6, v8}")];
    v9 = WORD4(v40[0]);
  }

  WORD4(v41) = v9;
  *(&v37 + 1) = 1;
  v10 = [(NSScanner *)self charactersToBeSkipped];
  if (v10)
  {
    v11 = v10;
    if ([(NSCharacterSet *)v10 characterIsMember:WORD4(v41)])
    {
      do
      {
        v12 = v37;
        if (*(&v37 + 1) - 1 >= v37)
        {
          break;
        }

        if (*(&v37 + 1) >= v37)
        {
          v14 = *&v40[0] + v37;
          if (v39 > *&v40[0] + v37)
          {
            if (v39 - (*&v40[0] + v37) >= 0x20)
            {
              v15 = 32;
            }

            else
            {
              v15 = v39 - (*&v40[0] + v37);
            }

            *&v40[0] += v37;
            *&v37 = v15;
            [v38 getUid("getCharacters:v40 + 8 range:{v14, v15}")];
            WORD4(v41) = WORD4(v40[0]);
            *(&v37 + 1) = 1;
            continue;
          }

          *(&v37 + 1) = v37 + 1;
          v13 = -1;
        }

        else
        {
          ++*(&v37 + 1);
          v13 = *(v40 + *(&v12 + 1) + 4);
        }

        WORD4(v41) = v13;
      }

      while ([(NSCharacterSet *)v11 characterIsMember:?]);
    }
  }

  v16 = WORD4(v41);
  if (WORD4(v41) != 48)
  {
    if (WORD4(v41) - 48 > 9)
    {
      if (WORD4(v41) - 65 > 5)
      {
        if (WORD4(v41) - 97 > 5)
        {
          return 0;
        }

        goto LABEL_36;
      }

LABEL_34:
      v21 = v16 - 55;
      goto LABEL_39;
    }

    v21 = WORD4(v41) - 48;
    goto LABEL_39;
  }

  v17 = v37;
  if (*(&v37 + 1) >= v37)
  {
    v22 = *&v40[0] + v37;
    if (v39 <= *&v40[0] + v37)
    {
      goto LABEL_76;
    }

    if (v39 - (*&v40[0] + v37) >= 0x20)
    {
      v23 = 32;
    }

    else
    {
      v23 = v39 - (*&v40[0] + v37);
    }

    *&v40[0] += v37;
    *&v37 = v23;
    [v38 getUid("getCharacters:v40 + 8 range:{v22, v23}")];
    v20 = WORD4(v40[0]);
    WORD4(v41) = WORD4(v40[0]);
    v19 = 1;
    *(&v37 + 1) = 1;
  }

  else
  {
    v18 = &v37 + 2 * *(&v37 + 1);
    v19 = ++*(&v37 + 1);
    v20 = *(v18 + 20);
    WORD4(v41) = *(v18 + 20);
  }

  v21 = v20 - 48;
  if ((v20 - 48) <= 9)
  {
LABEL_39:
    v24 = 0;
    v25 = *(&v37 + 1);
    while (1)
    {
      v26 = 16 * v24 + v21;
      if (v24 >> 60)
      {
        v24 = -1;
      }

      else
      {
        v24 = v26;
      }

      v27 = v37;
      if (v25 >= v37)
      {
        v29 = *&v40[0];
        v30 = *&v40[0] + v37;
        if (v39 <= *&v40[0] + v37)
        {
          *(&v37 + 1) = v37 + 1;
          WORD4(v41) = -1;
          goto LABEL_59;
        }

        if (v39 - (*&v40[0] + v37) >= 0x20)
        {
          v31 = 32;
        }

        else
        {
          v31 = v39 - (*&v40[0] + v37);
        }

        *&v40[0] += v37;
        *&v37 = v31;
        [v38 getUid("getCharacters:v40 + 8 range:{v30, v31}")];
        v28 = WORD4(v40[0]);
        WORD4(v41) = WORD4(v40[0]);
        *(&v37 + 1) = 1;
        v25 = 1;
      }

      else
      {
        v28 = *(v40 + v25++ + 4);
        *(&v37 + 1) = v25;
        WORD4(v41) = v28;
      }

      if ((v28 - 48) >= 0xA)
      {
        if ((v28 - 65) >= 6)
        {
          if ((v28 - 97) > 5)
          {
            v29 = *&v40[0];
            v27 = v25 - 1;
LABEL_59:
            [(NSScanner *)self setScanLocation:v27 + v29];
            if (result)
            {
LABEL_60:
              *result = v24;
            }

            return 1;
          }

          v32 = -87;
        }

        else
        {
          v32 = -55;
        }
      }

      else
      {
        v32 = -48;
      }

      v21 = v32 + v28;
    }
  }

  if ((v20 - 65) <= 5)
  {
    v21 = v20 - 55;
    goto LABEL_39;
  }

  if ((v20 - 97) <= 5)
  {
    v21 = v20 - 87;
    goto LABEL_39;
  }

  v22 = v19 + *&v40[0] - 1;
  if ((v20 | 0x20) != 0x78)
  {
    goto LABEL_77;
  }

  v17 = v37;
  if (v19 < v37)
  {
    v34 = &v37 + 2 * v19;
    *(&v37 + 1) = v19 + 1;
    v16 = *(v34 + 20);
    WORD4(v41) = *(v34 + 20);
    goto LABEL_72;
  }

  v35 = v37 + *&v40[0];
  if (v39 > v37 + *&v40[0])
  {
    if (v39 - (v37 + *&v40[0]) >= 0x20)
    {
      v36 = 32;
    }

    else
    {
      v36 = v39 - (v37 + *&v40[0]);
    }

    *&v40[0] += v37;
    *&v37 = v36;
    [v38 getUid("getCharacters:v40 + 8 range:{v35, v36}")];
    v16 = WORD4(v40[0]);
    WORD4(v41) = WORD4(v40[0]);
    *(&v37 + 1) = 1;
LABEL_72:
    v21 = v16 - 48;
    if ((v16 - 48) <= 9)
    {
      goto LABEL_39;
    }

    if ((v16 - 65) > 5)
    {
      if ((v16 - 97) > 5)
      {
        goto LABEL_77;
      }

LABEL_36:
      v21 = v16 - 87;
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_76:
  *(&v37 + 1) = v17 + 1;
  WORD4(v41) = -1;
LABEL_77:
  [(NSScanner *)self setScanLocation:v22];
  if (result)
  {
    v24 = 0;
    goto LABEL_60;
  }

  return 1;
}

- (BOOL)scanHexInt:(unsigned int *)result
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7[0] = 0;
    v4 = [(NSScanner *)self scanHexLongLong:v7];
    if (v4)
    {
      v5 = v7[0];
      if (v7[0] >= 0xFFFFFFFFuLL)
      {
        v5 = -1;
      }

      *result = v5;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = [(NSScanner *)self scanHexLongLong:?];
    if (v4)
    {
LABEL_7:
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)scanCharactersFromSet:(NSCharacterSet *)set intoString:(NSString *)result
{
  v7 = [(NSScanner *)self string];
  v8 = [(NSScanner *)self scanLocation];
  v9 = [(NSString *)v7 length];
  v10 = [(NSScanner *)self _invertedSkipSet];
  v11 = [(NSScanner *)self caseSensitive]^ 1;
  if (v10)
  {
    v12 = [(NSString *)v7 rangeOfCharacterFromSet:v10 options:0 range:v8, v9 - v8];
    if (v13)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  v14 = [(NSString *)v7 rangeOfCharacterFromSet:[(NSCharacterSet *)set invertedSet] options:v11 range:v8, v9 - v8];
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16 - v8;
  if (v16 != v8)
  {
    if (result)
    {
      *result = [(NSString *)v7 substringWithRange:v8, v17];
    }

    [(NSScanner *)self setScanLocation:v16, v17];
  }

  return v16 != v8;
}

- (BOOL)scanUpToCharactersFromSet:(NSCharacterSet *)set intoString:(NSString *)result
{
  v7 = [(NSScanner *)self string];
  v8 = [(NSScanner *)self scanLocation];
  v9 = [(NSString *)v7 length];
  v10 = [(NSScanner *)self _invertedSkipSet];
  v11 = [(NSScanner *)self caseSensitive]^ 1;
  if (v10)
  {
    v12 = [(NSString *)v7 rangeOfCharacterFromSet:v10 options:0 range:v8, v9 - v8];
    if (v13)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  v14 = [(NSString *)v7 rangeOfCharacterFromSet:set options:v11 range:v8, v9 - v8];
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16 - v8;
  if (v16 != v8)
  {
    if (result)
    {
      *result = [(NSString *)v7 substringWithRange:v8, v17];
    }

    [(NSScanner *)self setScanLocation:v16, v17];
  }

  return v16 != v8;
}

- (BOOL)scanString:(NSString *)string intoString:(NSString *)result
{
  v7 = [(NSScanner *)self string];
  v8 = [(NSScanner *)self scanLocation];
  v9 = [(NSString *)v7 length];
  v10 = [(NSScanner *)self _invertedSkipSet];
  v11 = [(NSScanner *)self caseSensitive]^ 1;
  if (v10)
  {
    v12 = [(NSString *)v7 rangeOfCharacterFromSet:v10 options:0 range:v8, v9 - v8];
    if (v13)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  v14 = [(NSString *)v7 rangeOfString:string options:v11 | 8 range:v8, v9 - v8];
  v16 = v15;
  if (v15)
  {
    v17 = v14 + v15;
    if (result)
    {
      *result = [(NSString *)v7 substringWithRange:v8, v17 - v8];
    }

    [(NSScanner *)self setScanLocation:v17];
  }

  return v16 != 0;
}

- (BOOL)scanUpToString:(NSString *)string intoString:(NSString *)result
{
  v7 = [(NSScanner *)self string];
  v8 = [(NSScanner *)self scanLocation];
  v9 = [(NSString *)v7 length];
  v10 = [(NSScanner *)self _invertedSkipSet];
  v11 = [(NSScanner *)self caseSensitive]^ 1;
  if (v10)
  {
    v12 = [(NSString *)v7 rangeOfCharacterFromSet:v10 options:0 range:v8, v9 - v8];
    if (v13)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  v14 = [(NSString *)v7 rangeOfString:string options:v11 range:v8, v9 - v8];
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16 - v8;
  if (v16 != v8)
  {
    if (result)
    {
      *result = [(NSString *)v7 substringWithRange:v8, v17];
    }

    [(NSScanner *)self setScanLocation:v16, v17];
  }

  return v16 != v8;
}

- (void)setScanLocation:(NSUInteger)scanLocation
{
  v5 = NSClassFromString(@"NSScanner");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setCharactersToBeSkipped:(NSCharacterSet *)charactersToBeSkipped
{
  v5 = NSClassFromString(@"NSScanner");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setCaseSensitive:(BOOL)caseSensitive
{
  v5 = NSClassFromString(@"NSScanner");

  NSRequestConcreteImplementation(self, a2, v5);
}

- (void)setLocale:(id)locale
{
  v5 = NSClassFromString(@"NSScanner");

  NSRequestConcreteImplementation(self, a2, v5);
}

@end