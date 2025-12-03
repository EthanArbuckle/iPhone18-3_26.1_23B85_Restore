@interface NSData(CKUtilsAdditions)
+ (id)CKDataWithHexString:()CKUtilsAdditions stringIsUppercase:;
- (id)CKHexString;
- (id)CKLowercaseHexStringWithoutSpaces;
- (id)CKUppercaseHexStringWithoutSpaces;
@end

@implementation NSData(CKUtilsAdditions)

- (id)CKUppercaseHexStringWithoutSpaces
{
  cKHexString = [self CKHexString];
  uppercaseString = [cKHexString uppercaseString];
  v3 = [uppercaseString mutableCopy];

  [v3 replaceOccurrencesOfString:@" " withString:&stru_1EFA8C6C8 options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

- (id)CKLowercaseHexStringWithoutSpaces
{
  cKHexString = [self CKHexString];
  v2 = [cKHexString mutableCopy];

  [v2 replaceOccurrencesOfString:@" " withString:&stru_1EFA8C6C8 options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)CKHexString
{
  selfCopy = self;
  bytes = [selfCopy bytes];
  v3 = [selfCopy length];
  if (v3 > 0x5555555555555555)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_27;
  }

  v6 = v3;
  v7 = malloc_type_calloc(1uLL, ((9 * v3) >> 2) & 0x1FFFFFFFFFFFFFFFLL, 0xDB414962uLL);
  v5 = v7;
  if (v6 >= 5)
  {
    v8 = 0;
    v9 = bytes;
    v10 = v7;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v12 = v10;
        if (*(v9 + i) <= 0x9Fu)
        {
          v13 = (*(v9 + i) >> 4) | 0x30;
        }

        else
        {
          v13 = (*(v9 + i) >> 4) + 87;
        }

        *v12 = v13;
        v14 = *(v9 + i) & 0xF;
        if (v14 <= 9)
        {
          v15 = v14 | 0x30;
        }

        else
        {
          v15 = v14 + 87;
        }

        v10 = v12 + 2;
        v12[1] = v15;
      }

      v16 = v12 + 3;
      *v10 = 32;
      v8 += 4;
      v6 -= 4;
      v9 += 4;
      v10 = v12 + 3;
    }

    while (v6 > 4);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v8 = 0;
  v16 = v7;
  if (v6)
  {
LABEL_17:
    v17 = (bytes + v8);
    do
    {
      if (*v17 <= 0x9Fu)
      {
        v18 = (*v17 >> 4) | 0x30;
      }

      else
      {
        v18 = (*v17 >> 4) + 87;
      }

      *v16 = v18;
      v19 = *v17++;
      v20 = (v19 & 0xF) + 87;
      v21 = v19 & 0xF | 0x30;
      if ((v19 & 0xFu) <= 9)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      v23 = v16 + 2;
      v16[1] = v22;
      v16 += 2;
      --v6;
    }

    while (v6);
    v16 = v23;
  }

LABEL_26:
  v4 = v16 - v7;
LABEL_27:
  v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v5 length:v4 encoding:1 freeWhenDone:1];

  return v24;
}

+ (id)CKDataWithHexString:()CKUtilsAdditions stringIsUppercase:
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF88]);
  if (a4)
  {
    v7 = @"0123456789ABCDEF";
  }

  else
  {
    v7 = @"0123456789abcdef";
  }

  if (a4)
  {
    v8 = -65;
  }

  else
  {
    v8 = -97;
  }

  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:v7];
  if ([v5 length])
  {
    LODWORD(v10) = 0;
LABEL_9:
    v11 = v10;
    if ([v5 length] <= v10)
    {
      v14 = 0;
      LODWORD(v13) = 0;
    }

    else
    {
      v12 = v10 + 1;
      do
      {
        LODWORD(v10) = v12;
        v13 = [v5 characterAtIndex:v11];
        v14 = [v9 characterIsMember:v13];
        v11 = v10;
        if (v14)
        {
          break;
        }

        v15 = [v5 length];
        v12 = v10 + 1;
      }

      while (v15 > v10);
    }

    v16 = [v5 length];
    while (v16 > v11)
    {
      v17 = [v5 characterAtIndex:v11];
      if ([v9 characterIsMember:v17])
      {
        if (v14)
        {
          v10 = (v10 + 1);
          v18 = v17 - 48;
          if ((v17 - 48) >= 0xA)
          {
            v18 = v8 + v17 + 10;
          }

          v19 = (v13 - 48) >= 0xA ? 16 * v13 - 112 : 16 * v13;
          v21 = v18 + v19;
          [v6 appendBytes:&v21 length:1];
          if ([v5 length] > v10)
          {
            goto LABEL_9;
          }
        }

        break;
      }

      v11 = (v10 + 1);
      v16 = [v5 length];
      LODWORD(v10) = v10 + 1;
    }
  }

  return v6;
}

@end