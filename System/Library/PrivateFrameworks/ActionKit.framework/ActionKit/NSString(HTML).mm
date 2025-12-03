@interface NSString(HTML)
- (id)stringByConvertingHTMLToPlainText;
- (id)stringByDecodingHTMLEntities;
- (id)stringByEncodingHTMLEntities;
- (id)stringByEncodingHTMLEntities:()HTML;
- (id)stringByLinkifyingURLs;
- (id)stringByRemovingNewLinesAndWhitespace;
- (id)stringByStrippingTags;
- (id)stringWithNewLinesAsBRs;
@end

@implementation NSString(HTML)

- (id)stringByStrippingTags
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([self rangeOfString:@"<" options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    stringByRemovingNewLinesAndWhitespace = [MEMORY[0x277CCACA8] stringWithString:self];
  }

  else
  {
    v4 = [MEMORY[0x277CCAC80] scannerWithString:self];
    [v4 setCharactersToBeSkipped:0];
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v6 = 0;
    do
    {

      [v4 scanUpToString:@"<" intoString:0];
      v24 = 0;
      [v4 scanUpToString:@">" intoString:&v24];
      v6 = v24;
      if (v6)
      {
        v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@>", v6];
        [v5 addObject:v7];
      }
    }

    while (![v4 isAtEnd]);
    v18 = v6;
    v19 = v4;
    v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:self];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          if (([v14 isEqualToString:@"<a>"] & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"</a>") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"<span>") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"</span>") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"<strong>") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"</strong>") & 1) != 0 || (objc_msgSend(v14, "isEqualToString:", @"<em>") & 1) != 0 || (v15 = @" ", objc_msgSend(v14, "isEqualToString:", @"</em>")))
          {
            v15 = &stru_2850323E8;
          }

          [v8 replaceOccurrencesOfString:v14 withString:v15 options:2 range:{0, objc_msgSend(v8, "length")}];
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

    stringByRemovingNewLinesAndWhitespace = [v8 stringByRemovingNewLinesAndWhitespace];
  }

  objc_autoreleasePoolPop(v2);
  v16 = *MEMORY[0x277D85DE8];

  return stringByRemovingNewLinesAndWhitespace;
}

- (id)stringByLinkifyingURLs
{
  if (NSClassFromString(&cfstr_Nsregularexpre.isa))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(?<!= options:@?^=%%&amp:/~\\+#]*[\\w\\-\\@?^=%%&amp;/~\\+#])?)") error:{0, 0}];;
    selfCopy = [v3 stringByReplacingMatchesInString:self options:0 range:0 withTemplate:{objc_msgSend(self, "length"), @"<a href=$1 class=linkified>$1</a>"}];

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)stringByRemovingNewLinesAndWhitespace
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
  [v3 setCharactersToBeSkipped:0];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = MEMORY[0x277CCA900];
  8233 = [MEMORY[0x277CCACA8] stringWithFormat:@" \t\n\r%C%C%C%C", 133, 12, 8232, 8233];
  v7 = [v5 characterSetWithCharactersInString:8233];

  if (([v3 isAtEnd] & 1) == 0)
  {
    v8 = 0;
    do
    {

      v11 = 0;
      [v3 scanUpToCharactersFromSet:v7 intoString:&v11];
      v8 = v11;
      if (v8)
      {
        [v4 appendString:v8];
      }

      if ([v3 scanCharactersFromSet:v7 intoString:0] && objc_msgSend(v4, "length") && (objc_msgSend(v3, "isAtEnd") & 1) == 0)
      {
        [v4 appendString:@" "];
      }
    }

    while (![v3 isAtEnd]);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithString:v4];

  objc_autoreleasePoolPop(v2);

  return v9;
}

- (id)stringWithNewLinesAsBRs
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
  [v3 setCharactersToBeSkipped:0];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v5 = MEMORY[0x277CCA900];
  8233 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n\r%C%C%C%C", 133, 12, 8232, 8233];
  v7 = [v5 characterSetWithCharactersInString:8233];

  v8 = 0;
  do
  {

    v16 = 0;
    [v3 scanUpToCharactersFromSet:v7 intoString:&v16];
    v9 = v16;
    if (v9)
    {
      [v4 appendString:v9];
    }

    if ([v3 scanString:@"\r\n" intoString:0])
    {
      [v4 appendString:@"<br />"];
      v8 = 0;
    }

    else
    {
      v15 = 0;
      v10 = [v3 scanCharactersFromSet:v7 intoString:&v15];
      v11 = v15;
      v8 = v11;
      if (v10 && v11 && [v11 length])
      {
        v12 = 0;
        do
        {
          [v4 appendString:@"<br />"];
          ++v12;
        }

        while (v12 < [v8 length]);
      }
    }
  }

  while (![v3 isAtEnd]);
  v13 = [MEMORY[0x277CCACA8] stringWithString:v4];

  objc_autoreleasePoolPop(v2);

  return v13;
}

- (id)stringByEncodingHTMLEntities:()HTML
{
  v3 = MEMORY[0x277CCACA8];
  if (a3)
  {
    [self gtm_stringByEscapingForHTML];
  }

  else
  {
    [self gtm_stringByEscapingForAsciiHTML];
  }
  v4 = ;
  v5 = [v3 stringWithString:v4];

  return v5;
}

- (id)stringByEncodingHTMLEntities
{
  v1 = MEMORY[0x277CCACA8];
  gtm_stringByEscapingForAsciiHTML = [self gtm_stringByEscapingForAsciiHTML];
  v3 = [v1 stringWithString:gtm_stringByEscapingForAsciiHTML];

  return v3;
}

- (id)stringByDecodingHTMLEntities
{
  v1 = MEMORY[0x277CCACA8];
  gtm_stringByUnescapingFromHTML = [self gtm_stringByUnescapingFromHTML];
  v3 = [v1 stringWithString:gtm_stringByUnescapingFromHTML];

  return v3;
}

- (id)stringByConvertingHTMLToPlainText
{
  context = objc_autoreleasePoolPush();
  v2 = MEMORY[0x277CCA900];
  8233 = [MEMORY[0x277CCACA8] stringWithFormat:@"< \t\n\r%C%C%C%C", 133, 12, 8232, 8233];
  v4 = [v2 characterSetWithCharactersInString:8233];

  v5 = MEMORY[0x277CCA900];
  82332 = [MEMORY[0x277CCACA8] stringWithFormat:@" \t\n\r%C%C%C%C", 133, 12, 8232, 8233];
  v7 = [v5 characterSetWithCharactersInString:82332];

  v24 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"];
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(self, "length")}];
  v9 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:self];
  [v9 setCharactersToBeSkipped:0];
  [v9 setCaseSensitive:1];
  lowercaseString = 0;
  v11 = 0;
  do
  {
    v12 = v11;
    v26 = v11;
    v13 = [v9 scanUpToCharactersFromSet:v4 intoString:&v26];
    v11 = v26;

    if (v13)
    {
      [v8 appendString:v11];

      v11 = 0;
    }

    if ([v9 scanString:@"<" intoString:0])
    {
      if ([v9 scanString:@"!--" intoString:0])
      {
        [v9 scanUpToString:@"-->" intoString:0];
        v14 = v9;
        v15 = @"-->";
LABEL_33:
        [v14 scanString:v15 intoString:0];
        continue;
      }

      if ([v9 scanString:@"script" intoString:0])
      {
        v16 = v9;
        v17 = @"</script>";
LABEL_32:
        [v16 scanUpToString:v17 intoString:0];
        v14 = v9;
        v15 = v17;
        goto LABEL_33;
      }

      if ([v9 scanString:@"/" intoString:0])
      {

        v25 = 0;
        v18 = [v9 scanCharactersFromSet:v24 intoString:&v25];
        v19 = v25;
        v20 = v19;
        if (v18)
        {
          lowercaseString = [v19 lowercaseString];

          if ([lowercaseString isEqualToString:@"a"] & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"b") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"i") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"q") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"span") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"em") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"strong") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"cite") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"abbr") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"acronym") & 1) != 0 || (objc_msgSend(lowercaseString, "isEqualToString:", @"label"))
          {
            goto LABEL_31;
          }
        }

        else
        {
          lowercaseString = v19;
        }

        if ([v8 length] && (objc_msgSend(v9, "isAtEnd") & 1) == 0)
        {
          [v8 appendString:@" "];
        }
      }

LABEL_31:
      v16 = v9;
      v17 = @">";
      goto LABEL_32;
    }

    if ([v9 scanCharactersFromSet:v7 intoString:0] && objc_msgSend(v8, "length") && (objc_msgSend(v9, "isAtEnd") & 1) == 0)
    {
      [v8 appendString:@" "];
    }
  }

  while (![v9 isAtEnd]);
  stringByDecodingHTMLEntities = [v8 stringByDecodingHTMLEntities];

  objc_autoreleasePoolPop(context);

  return stringByDecodingHTMLEntities;
}

@end