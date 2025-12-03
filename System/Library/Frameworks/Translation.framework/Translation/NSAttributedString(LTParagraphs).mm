@interface NSAttributedString(LTParagraphs)
+ (id)lt_attributedStringByJoiningComponents:()LTParagraphs withAttributedString:;
+ (id)lt_attributedStringByJoiningComponents:()LTParagraphs withString:;
- (id)_ltAttributedStringByTrimmingCharactersInSet:()LTParagraphs;
- (id)paragraphs;
- (id)sentences;
@end

@implementation NSAttributedString(LTParagraphs)

- (id)_ltAttributedStringByTrimmingCharactersInSet:()LTParagraphs
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:self];
  string = [v5 string];
  v7 = [string rangeOfCharacterFromSet:v4];
  v9 = v8;

  if (!v7)
  {
    do
    {
      [v5 replaceCharactersInRange:0 withString:{v9, &stru_284DBB9B8}];
      string2 = [v5 string];
      v11 = [string2 rangeOfCharacterFromSet:v4];
      v9 = v12;
    }

    while (!v11);
  }

  string3 = [v5 string];
  v14 = [string3 rangeOfCharacterFromSet:v4 options:4];
  v16 = v15;

  while (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    string4 = [v5 string];
    v18 = [string4 length] - 1;

    if (v14 != v18)
    {
      break;
    }

    [v5 replaceCharactersInRange:v14 withString:{v16, &stru_284DBB9B8}];
    string5 = [v5 string];
    v14 = [string5 rangeOfCharacterFromSet:v4 options:4];
    v16 = v20;
  }

  return v5;
}

- (id)paragraphs
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:2];
  string = [self string];
  [v2 setString:string];

  v23 = v2;
  v4 = [v2 tokensForRange:{0, objc_msgSend(self, "length")}];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        rangeValue = [*(*(&v24 + 1) + 8 * i) rangeValue];
        v13 = [self attributedSubstringFromRange:{rangeValue, v12}];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v15 = [v13 _ltAttributedStringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if ([v15 length])
        {
          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  if ([v5 count] < 2)
  {
    if ([v5 count])
    {
      v17 = [v5 objectAtIndexedSubscript:0];
      sentences = [v17 sentences];
      if ([sentences count] < 2)
      {
        v16 = MEMORY[0x277CBEBF8];
      }

      else
      {
        firstObject = [v5 firstObject];
        v28 = firstObject;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
      }

      v20 = v23;

      goto LABEL_19;
    }

    v16 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v16 = v5;
  }

  v20 = v23;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)sentences
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CD89E0]) initWithUnit:1];
  string = [self string];
  [v2 setString:string];

  v18 = v2;
  v4 = [v2 tokensForRange:{0, objc_msgSend(self, "length")}];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        rangeValue = [*(*(&v19 + 1) + 8 * i) rangeValue];
        v13 = [self attributedSubstringFromRange:{rangeValue, v12}];
        whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
        v15 = [v13 _ltAttributedStringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if ([v15 length])
        {
          [v5 addObject:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)lt_attributedStringByJoiningComponents:()LTParagraphs withString:
{
  v6 = MEMORY[0x277CCA898];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithString:v7];

  v10 = [self lt_attributedStringByJoiningComponents:v8 withAttributedString:v9];

  return v10;
}

+ (id)lt_attributedStringByJoiningComponents:()LTParagraphs withAttributedString:
{
  v5 = a4;
  v6 = MEMORY[0x277CCAB48];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __96__NSAttributedString_LTParagraphs__lt_attributedStringByJoiningComponents_withAttributedString___block_invoke;
  v16 = &unk_278B6E3B0;
  v17 = v8;
  v18 = v5;
  v9 = v5;
  v10 = v8;
  [v7 enumerateObjectsUsingBlock:&v13];

  v11 = [v10 copy];

  return v11;
}

@end