@interface NSString(AXExtensions)
- (AXAttributedString)axAttributedStringWithAttributes:()AXExtensions;
- (uint64_t)_axUnit:()AXExtensions fromPosition:inDirection:;
- (uint64_t)_ax_rangeOfNextUnitWithStartPosition:()AXExtensions direction:withCharacterSet:;
- (uint64_t)ax_lineFromPosition:()AXExtensions inDirection:;
- (uint64_t)ax_lineRangeForPosition:()AXExtensions;
@end

@implementation NSString(AXExtensions)

- (uint64_t)_ax_rangeOfNextUnitWithStartPosition:()AXExtensions direction:withCharacterSet:
{
  v8 = a5;
  v9 = [self length];
  if (v9 && ((v10 = v9, a3 > 0) || a4 != 1) && (a4 || v9 > a3))
  {
    if (v9 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v9;
    }

    if (a3 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (a4)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    if (a4)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    v11 = 0x7FFFFFFFLL;
    while ([v8 characterIsMember:{objc_msgSend(self, "characterAtIndex:", v15 + v14)}])
    {
      v14 += v16;
      if (v14 >= v10 || v14 < 1)
      {
        goto LABEL_7;
      }
    }

    if (a4 == 1)
    {
      v17 = 6;
    }

    else
    {
      v17 = 2;
    }

    if (a4)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14;
    }

    if (a4)
    {
      v19 = v14;
    }

    else
    {
      v19 = v10 - v14;
    }

    if (a4)
    {
      v20 = 0;
    }

    else
    {
      v20 = v10;
    }

    v21 = [self rangeOfCharacterFromSet:v8 options:v17 range:{v18, v19}];
    if (a4 == 1)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v21;
    }

    if (v21 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v22 = v20;
    }

    v23 = v22 - v18;
    if (a4)
    {
      v23 = v18 + v19 - v22;
    }

    else
    {
      v22 = v14;
    }

    if (v23 + v22 <= v10)
    {
      v11 = v22;
    }

    else
    {
      v11 = 0x7FFFFFFFLL;
    }
  }

  else
  {
    v11 = 0x7FFFFFFFLL;
  }

LABEL_7:

  return v11;
}

- (uint64_t)ax_lineFromPosition:()AXExtensions inDirection:
{
  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v8 = [self _ax_rangeOfNextUnitWithStartPosition:a3 direction:a4 withCharacterSet:newlineCharacterSet];

  return v8;
}

- (uint64_t)ax_lineRangeForPosition:()AXExtensions
{
  v5 = [self length];
  v6 = 0x7FFFFFFFLL;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = v5;
    if (v5 >= a3)
    {
      v8 = [self ax_lineFromPosition:a3 inDirection:0];
      v6 = [self ax_lineFromPosition:a3 inDirection:1];
      if (v7 <= a3 || ([MEMORY[0x1E696AB08] newlineCharacterSet], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "characterIsMember:", objc_msgSend(self, "characterAtIndex:", a3)), v9, (v10 & 1) == 0))
      {
        if (a3)
        {
          newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v12 = [newlineCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", a3 - 1)}];
        }

        else
        {
          v12 = 0;
        }

        if (v6 == 0x7FFFFFFF)
        {
          v13 = v8;
        }

        else
        {
          v13 = v6;
        }

        if (v12)
        {
          return v8;
        }

        else
        {
          return v13;
        }
      }
    }
  }

  return v6;
}

- (uint64_t)_axUnit:()AXExtensions fromPosition:inDirection:
{
  v9 = [(__CFString *)self length];
  v10 = v9;
  if (a4 < 0 && a5 == 1 || !a5 && v9 <= a4)
  {
    return 0x7FFFFFFFLL;
  }

  if (v9 >= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v9;
  }

  if (a4 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = malloc_type_malloc(2 * v9, 0x1000040BDFB0063uLL);
  v27.length = [(__CFString *)self length];
  v27.location = 0;
  CFStringGetCharacters(self, v27, v14);
  v28.location = 0;
  v28.length = v10;
  v15 = CFStringTokenizerCreate(*MEMORY[0x1E695E480], self, v28, a3, 0);
  if (a5)
  {
    if (v13 >= 1)
    {
      v13 = v12 - 1;
      v16 = 1;
      while (v14[v13] != -4)
      {
        CFStringTokenizerGoToTokenAtIndex(v15, v13);
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v15);
        length = CurrentTokenRange.length;
        location = CurrentTokenRange.location;
        if (CurrentTokenRange.location != -1)
        {
          goto LABEL_26;
        }

        v20 = v13-- + 1;
        if (v20 < 2)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }
  }

  else if (v13 < v10)
  {
    v16 = 1;
    while (v14[v13] != -4)
    {
      CFStringTokenizerGoToTokenAtIndex(v15, v13);
      v21 = CFStringTokenizerGetCurrentTokenRange(v15);
      length = v21.length;
      location = v21.location;
      if (v21.location != -1)
      {
LABEL_26:
        v16 = length;
        v13 = location;
        goto LABEL_27;
      }

      if (v10 == ++v13)
      {
LABEL_24:
        v13 = -1;
        v16 = length;
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  v16 = 0;
  v13 = -1;
LABEL_27:
  free(v14);
  if (a3 || v13 == -1)
  {
    v25 = v13;
  }

  else
  {
    v22 = v13 + v16;
    punctuationCharacterSet = [MEMORY[0x1E696AD48] punctuationCharacterSet];
    symbolCharacterSet = [MEMORY[0x1E696AB08] symbolCharacterSet];
    [punctuationCharacterSet formUnionWithCharacterSet:symbolCharacterSet];

    for (; v22 < v10; ++v22)
    {
      if (![punctuationCharacterSet characterIsMember:{-[__CFString characterAtIndex:](self, "characterAtIndex:", v22)}])
      {
        break;
      }
    }

    do
    {
      v25 = v13;
      v26 = v13-- < 1;
    }

    while (!v26 && ([punctuationCharacterSet characterIsMember:{-[__CFString characterAtIndex:](self, "characterAtIndex:", v13)}] & 1) != 0);
  }

  CFRelease(v15);
  if (v25 == -1)
  {
    return 0x7FFFFFFFLL;
  }

  else
  {
    return v25;
  }
}

- (AXAttributedString)axAttributedStringWithAttributes:()AXExtensions
{
  v4 = a3;
  v5 = [[AXAttributedString alloc] initWithString:self];
  [(AXAttributedString *)v5 setAttributes:v4];

  return v5;
}

@end