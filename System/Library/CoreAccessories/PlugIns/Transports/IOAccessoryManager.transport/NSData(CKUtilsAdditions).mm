@interface NSData(CKUtilsAdditions)
+ (id)CKDataWithHexString:()CKUtilsAdditions stringIsUppercase:;
- (id)CKHexString;
- (id)CKLowercaseHexStringWithoutSpaces;
- (id)CKUppercaseHexStringWithoutSpaces;
@end

@implementation NSData(CKUtilsAdditions)

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
  v7 = malloc_type_calloc(1uLL, ((9 * v3) >> 2) & 0x1FFFFFFFFFFFFFFFLL, 0xAB083FFBuLL);
  v5 = v7;
  if (v6 >= 5)
  {
    v8 = 0;
    v9 = bytes;
    v10 = v7;
    do
    {
      v11 = 0;
      ++v10;
      do
      {
        if (*(v9 + v11) <= 0x9Fu)
        {
          v12 = (*(v9 + v11) >> 4) | 0x30;
        }

        else
        {
          v12 = (*(v9 + v11) >> 4) + 87;
        }

        *(v10 - 1) = v12;
        v13 = *(v9 + v11) & 0xF;
        if (v13 <= 9)
        {
          v14 = v13 | 0x30;
        }

        else
        {
          v14 = v13 + 87;
        }

        *v10 = v14;
        v10 += 2;
        ++v11;
      }

      while (v11 != 4);
      *(v10 - 1) = 32;
      v8 += 4;
      v6 -= 4;
      v9 += 4;
    }

    while (v6 > 4);
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v8 = 0;
  v10 = v7;
  if (v6)
  {
LABEL_17:
    v15 = (bytes + v8);
    do
    {
      if (*v15 <= 0x9Fu)
      {
        v16 = (*v15 >> 4) | 0x30;
      }

      else
      {
        v16 = (*v15 >> 4) + 87;
      }

      *v10 = v16;
      v17 = *v15++;
      v18 = (v17 & 0xF) + 87;
      v19 = v17 & 0xF | 0x30;
      if ((v17 & 0xFu) <= 9)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      v21 = v10 + 2;
      v10[1] = v20;
      v10 += 2;
      --v6;
    }

    while (v6);
    v10 = v21;
  }

LABEL_26:
  v4 = v10 - v7;
LABEL_27:
  v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v5 length:v4 encoding:1 freeWhenDone:1];

  return v22;
}

- (id)CKLowercaseHexStringWithoutSpaces
{
  cKHexString = [self CKHexString];
  v2 = [cKHexString mutableCopy];

  [v2 replaceOccurrencesOfString:@" " withString:&stru_2848F31C8 options:0 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)CKUppercaseHexStringWithoutSpaces
{
  cKHexString = [self CKHexString];
  uppercaseString = [cKHexString uppercaseString];
  v3 = [uppercaseString mutableCopy];

  [v3 replaceOccurrencesOfString:@" " withString:&stru_2848F31C8 options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (id)CKDataWithHexString:()CKUtilsAdditions stringIsUppercase:
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
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

  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v7];
  if ([v5 length])
  {
    v10 = 0;
    do
    {
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
          v10 = v12;
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

      if ([v5 length] <= v11)
      {
        break;
      }

      ++v10;
      while (1)
      {
        v16 = [v5 characterAtIndex:v11];
        if ([v9 characterIsMember:v16])
        {
          break;
        }

        v11 = v10;
        if ([v5 length] <= v10++)
        {
          goto LABEL_27;
        }
      }

      if (!v14)
      {
        break;
      }

      v18 = v16 - 48;
      if ((v16 - 48) >= 0xA)
      {
        v18 = v8 + v16 + 10;
      }

      v19 = (v13 - 48) >= 0xA ? 16 * v13 - 112 : 16 * v13;
      v21 = v18 + v19;
      [v6 appendBytes:&v21 length:1];
    }

    while ([v5 length] > v10);
  }

LABEL_27:

  return v6;
}

@end