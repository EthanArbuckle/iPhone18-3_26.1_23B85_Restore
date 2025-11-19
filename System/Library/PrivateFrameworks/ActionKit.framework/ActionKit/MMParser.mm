@interface MMParser
- (BOOL)_parseListMarkerWithScanner:(id)a3 listType:(int64_t)a4;
- (MMParser)initWithExtensions:(unint64_t)a3;
- (id)_parseBlockElementWithScanner:(id)a3;
- (id)_parseBlockquoteWithScanner:(id)a3;
- (id)_parseCodeBlockWithScanner:(id)a3;
- (id)_parseCodeLinesWithScanner:(id)a3;
- (id)_parseElementsWithScanner:(id)a3;
- (id)_parseFencedCodeBlockWithScanner:(id)a3;
- (id)_parseHTMLWithScanner:(id)a3;
- (id)_parseHorizontalRuleWithScanner:(id)a3;
- (id)_parseLinkDefinitionWithScanner:(id)a3;
- (id)_parseListItemWithScanner:(id)a3 listType:(int64_t)a4;
- (id)_parseListWithScanner:(id)a3;
- (id)_parseParagraphWithScanner:(id)a3;
- (id)_parsePrefixHeaderWithScanner:(id)a3;
- (id)_parseTableHeaderWithScanner:(id)a3;
- (id)_parseTableRowWithScanner:(id)a3 columns:(id)a4;
- (id)_parseTableWithScanner:(id)a3;
- (id)_parseUnderlinedHeaderWithScanner:(id)a3;
- (id)_removeTabsFromString:(id)a3;
- (id)parseMarkdown:(id)a3 error:(id *)a4;
- (void)_addTextLineToElement:(id)a3 withScanner:(id)a4;
- (void)_updateLinksFromDefinitionsInDocument:(id)a3;
@end

@implementation MMParser

- (void)_updateLinksFromDefinitionsInDocument:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v31 = v3;
  v7 = [v3 elements];
  [v6 addObjectsFromArray:v7];
  while (1)
  {

    if (![v6 count])
    {
      break;
    }

    v7 = [v6 objectAtIndex:0];
    [v6 removeObjectAtIndex:0];
    v8 = [v7 children];
    [v6 addObjectsFromArray:v8];

    v9 = [v7 type];
    if ((v9 - 15) >= 2)
    {
      if (v9 == 18)
      {
        v13 = [v7 identifier];
        v14 = [v13 lowercaseString];
        [v5 setObject:v7 forKeyedSubscript:v14];
      }
    }

    else
    {
      v10 = [v7 identifier];
      if (v10)
      {
        v11 = v10;
        v12 = [v7 href];

        if (!v12)
        {
          [v4 addObject:v7];
        }
      }
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * v19);
        v21 = [v20 identifier];
        v22 = [v21 lowercaseString];
        v23 = [v5 objectForKeyedSubscript:v22];

        if (!v23)
        {
          [v20 setType:0];
          while (1)
          {
            v26 = [v20 children];
            v27 = [v26 count];

            if (!v27)
            {
              break;
            }

            v28 = [v20 removeLastChild];
          }
        }

        v24 = [v23 href];
        [v20 setHref:v24];

        v25 = [v23 title];
        [v20 setTitle:v25];

        ++v19;
      }

      while (v19 != v17);
      v29 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v17 = v29;
    }

    while (v29);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_parseTableWithScanner:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 advanceToNextLine];
  v5 = [(MMParser *)self _parseTableHeaderWithScanner:v4];
  if (v5)
  {
    [v4 commitTransaction:0];
    [v4 beginTransaction];
    v6 = [(MMParser *)self _parseTableRowWithScanner:v4 columns:v5];
    v7 = v6;
    if (v6)
    {
      [v6 setType:21];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v7 children];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v18 + 1) + 8 * i) setType:22];
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      [v4 advanceToNextLine];
      v13 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
      if (([v4 atEndOfString] & 1) == 0)
      {
        do
        {
          [v4 beginTransaction];
          v14 = [(MMParser *)self _parseTableRowWithScanner:v4 columns:v5];
          [v4 commitTransaction:v14 != 0];
          if (!v14)
          {
            break;
          }

          [v13 addObject:v14];
        }

        while (![v4 atEndOfString]);
      }

      if ([v13 count] >= 2)
      {
        v15 = objc_opt_new();
        [v15 setType:20];
        [v15 setChildren:v13];
        [v15 setRange:{objc_msgSend(v4, "startLocation"), objc_msgSend(v4, "location") - objc_msgSend(v4, "startLocation")}];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)_parseTableRowWithScanner:(id)a3 columns:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277CCAB50];
  v8 = a4;
  v9 = [v7 whitespaceCharacterSet];
  [v9 addCharactersInString:@"|"];
  v10 = MEMORY[0x277CCAE60];
  v11 = [v6 currentRange];
  v13 = [v10 valueWithRange:{v11, v12}];
  v14 = [v6 string];
  v22[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = [MMScanner scannerWithString:v14 lineRanges:v15];

  [v16 skipCharactersFromSet:v9];
  v17 = [(MMParser *)self spanParser];
  v18 = [v17 parseSpansInTableColumns:v8 withScanner:v16];

  [v16 skipCharactersFromSet:v9];
  if (v18 && [v16 atEndOfLine])
  {
    [v6 advanceToNextLine];
    v19 = objc_opt_new();
    [v19 setType:23];
    [v19 setChildren:v18];
    [v19 setRange:{objc_msgSend(v6, "startLocation"), objc_msgSend(v6, "location") - objc_msgSend(v6, "startLocation")}];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_parseTableHeaderWithScanner:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
  [v3 skipWhitespace];
  if ([v3 nextCharacter] == 124)
  {
    [v3 advance];
  }

  [v3 skipWhitespace];
  v5 = objc_opt_new();
  if ([v3 atEndOfLine])
  {
LABEL_14:
    if ([v3 atEndOfLine])
    {
      v9 = v5;
      goto LABEL_17;
    }
  }

  else
  {
    while (1)
    {
      v6 = [v3 nextCharacter];
      if (v6 == 58)
      {
        [v3 advance];
      }

      if ([v3 skipCharactersFromSet:v4] < 3)
      {
        break;
      }

      if ([v3 nextCharacter] == 58)
      {
        [v3 advance];
        if (v6 == 58)
        {
          v7 = 2;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = v6 == 58;
      }

      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      [v5 addObject:v8];

      [v3 skipWhitespace];
      if ([v3 nextCharacter] == 124)
      {
        [v3 advance];
        [v3 skipWhitespace];
        if (![v3 atEndOfLine])
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  v9 = 0;
LABEL_17:

  return v9;
}

- (id)_parseParagraphWithScanner:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setType:2];
  v6 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if (([v4 atEndOfString] & 1) == 0)
  {
    while (1)
    {
      [v4 skipWhitespace];
      if ([v4 atEndOfLine])
      {
        [v4 advanceToNextLine];
        goto LABEL_2;
      }

      [v4 beginTransaction];
      [v4 skipCharactersFromSet:v6];
      if ([v4 nextCharacter] == 62)
      {
        v21 = v4;
        v22 = 1;
        goto LABEL_22;
      }

      [v4 commitTransaction:0];
      [v4 beginTransaction];
      v15 = [(MMParser *)self _parseLinkDefinitionWithScanner:v4];

      [v4 commitTransaction:0];
      if (v15)
      {
        goto LABEL_2;
      }

      [v4 beginTransaction];
      v16 = [(MMParser *)self _parseUnderlinedHeaderWithScanner:v4];

      [v4 commitTransaction:0];
      if (v16)
      {
        goto LABEL_2;
      }

      [v4 beginTransaction];
      v17 = [(MMParser *)self _parsePrefixHeaderWithScanner:v4];

      [v4 commitTransaction:0];
      if (v17)
      {
        goto LABEL_2;
      }

      if (([(MMParser *)self extensions]& 8) != 0)
      {
        [v4 beginTransaction];
        v18 = [(MMParser *)self _parseFencedCodeBlockWithScanner:v4];

        [v4 commitTransaction:0];
        if (v18)
        {
          goto LABEL_2;
        }
      }

      [v4 beginTransaction];
      [v4 skipIndentationUpTo:2];
      if ([(MMParser *)self _parseListMarkerWithScanner:v4 listType:0])
      {
        break;
      }

      v19 = [(MMParser *)self _parseListMarkerWithScanner:v4 listType:1];
      [v4 commitTransaction:0];
      if (!v19)
      {
        [(MMParser *)self _addTextLineToElement:v5 withScanner:v4];
        if (![v4 atEndOfString])
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    v21 = v4;
    v22 = 0;
LABEL_22:
    [v21 commitTransaction:v22];
  }

LABEL_2:
  [v5 setRange:{objc_msgSend(v4, "startLocation"), objc_msgSend(v4, "location") - objc_msgSend(v4, "startLocation")}];
  v7 = [v5 innerRanges];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v4 string];
    v10 = [v5 innerRanges];
    v11 = [MMScanner scannerWithString:v9 lineRanges:v10];

    v12 = [(MMParser *)self spanParser];
    v13 = [v12 parseSpansInBlockElement:v5 withScanner:v11];
    [v5 setChildren:v13];

    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_parseLinkDefinitionWithScanner:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 skipIndentationUpTo:3];
  v5 = [v3 location];
  v6 = [v3 skipNestedBracketsWithDelimiter:91];
  if (!v6)
  {
    goto LABEL_22;
  }

  if ([v3 nextCharacter] != 58)
  {
    v6 = 0;
    goto LABEL_22;
  }

  [v3 advance];
  [v3 skipCharactersFromSet:v4];
  v7 = [v3 location];
  v8 = [v4 invertedSet];
  [v3 skipCharactersFromSet:v8];

  v9 = [v3 location] - v7;
  v10 = [v3 string];
  v11 = [v10 substringWithRange:{v7, v9}];

  if ([v11 hasPrefix:@"<"] && objc_msgSend(v11, "hasSuffix:", @">"))
  {
    v12 = [v11 substringWithRange:{1, objc_msgSend(v11, "length") - 2}];

    v11 = v12;
  }

  [v3 skipCharactersFromSet:v4];
  [v3 beginTransaction];
  if ([v3 atEndOfLine])
  {
    [v3 advanceToNextLine];
    [v3 skipCharactersFromSet:v4];
  }

  v13 = [v3 nextCharacter];
  v14 = 0;
  if (v13 > 0x28)
  {
    goto LABEL_16;
  }

  v15 = v13;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (((1 << v13) & 0x18400000000) != 0)
  {
    [v3 advance];
    if (v15 == 40)
    {
      v15 = 41;
    }

    v16 = [v3 location];
    v14 = [v3 skipToLastCharacterOfLine];
    if ([v3 nextCharacter] == v15)
    {
      [v3 advance];
      goto LABEL_17;
    }

    v14 = 0;
LABEL_16:
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_17:
  [v3 commitTransaction:v16 != 0x7FFFFFFFFFFFFFFFLL];
  [v3 skipCharactersFromSet:v4];
  if ([v3 atEndOfLine])
  {
    v17 = v6 - 2;
    v6 = objc_opt_new();
    [v6 setType:18];
    [v6 setRange:{objc_msgSend(v3, "startLocation"), objc_msgSend(v3, "location") - objc_msgSend(v3, "startLocation")}];
    v18 = [v3 string];
    v19 = [v18 substringWithRange:{v5 + 1, v17}];
    [v6 setIdentifier:v19];

    [v6 setHref:v11];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v3 string];
      v21 = [v20 substringWithRange:{v16, v14}];
      [v6 setTitle:v21];
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_22:

  return v6;
}

- (id)_parseListWithScanner:(id)a3
{
  v4 = a3;
  [v4 beginTransaction];
  [v4 skipIndentationUpTo:3];
  v5 = [v4 nextCharacter];
  v6 = (v5 < 0x2E) & (0x2C0000000000uLL >> v5);
  v7 = !((v5 < 0x2E) & (0x2C0000000000uLL >> v5));
  v8 = [(MMParser *)self _parseListMarkerWithScanner:v4 listType:v7];
  [v4 commitTransaction:0];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = v9;
    if (v6)
    {
      v11 = 5;
    }

    else
    {
      v11 = 4;
    }

    [v9 setType:v11];
    if (([v4 atEndOfString] & 1) == 0)
    {
      while (1)
      {
        [v4 beginTransaction];
        [v4 skipEmptyLines];
        v12 = [(MMParser *)self _parseHorizontalRuleWithScanner:v4];
        [v4 commitTransaction:0];
        if (v12)
        {

          goto LABEL_13;
        }

        [v4 beginTransaction];
        v13 = [(MMParser *)self _parseListItemWithScanner:v4 listType:v7];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        [v4 commitTransaction:1];
        [v10 addChild:v14];

        if ([v4 atEndOfString])
        {
          goto LABEL_13;
        }
      }

      [v4 commitTransaction:0];
    }

LABEL_13:
    [v10 setRange:{objc_msgSend(v4, "startLocation"), objc_msgSend(v4, "location") - objc_msgSend(v4, "startLocation")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_parseListItemWithScanner:(id)a3 listType:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 skipEmptyLines];
  [v6 skipIndentationUpTo:3];
  if ([(MMParser *)self _parseListMarkerWithScanner:v6 listType:a4])
  {
    v43 = v7 != 0;
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    [v6 skipCharactersFromSet:v8];

    v9 = objc_opt_new();
    [v9 setType:6];
    if ([v6 atEndOfString])
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        [v6 beginTransaction];
        v12 = [v6 skipEmptyLines];
        [v6 beginTransaction];
        v13 = [(MMParser *)self _parseHorizontalRuleWithScanner:v6];

        [v6 commitTransaction:0];
        if (v13)
        {
          break;
        }

        [v6 beginTransaction];
        [v6 skipIndentationUpTo:1];
        v14 = [(MMParser *)self _parseListMarkerWithScanner:v6 listType:a4];
        [v6 commitTransaction:0];
        if (v14)
        {
          [v6 commitTransaction:0];
          v43 |= v12 != 0;
          goto LABEL_28;
        }

        [v6 beginTransaction];
        v15 = [v6 skipIndentationUpTo:4];
        [v6 beginTransaction];
        v16 = [(MMParser *)self _parseListMarkerWithScanner:v6 listType:0]|| [(MMParser *)self _parseListMarkerWithScanner:v6 listType:1];
        [v6 commitTransaction:0];
        if (v15 >= 2 && v16 && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 addInnerRange:{objc_msgSend(v6, "location"), 0}];
          v17 = [v9 innerRanges];
          v10 = [v17 count];

          v18 = [v6 currentRange];
          [v9 addInnerRange:{v18, v19}];
          [v6 commitTransaction:1];
          [v6 commitTransaction:1];
          [v6 advanceToNextLine];
          v11 = v15;
        }

        else
        {
          [v6 commitTransaction:0];
          if (v12)
          {
            [v6 beginTransaction];
            if ([v6 skipIndentationUpTo:4] < 4)
            {
              [v6 commitTransaction:0];
              break;
            }

            v43 = 1;
            [v6 commitTransaction:1];
            [v6 commitTransaction:1];
            [v9 addInnerRange:{objc_msgSend(v6, "location"), 0}];
          }

          else
          {
            [v6 commitTransaction:1];
            [v6 skipIndentationUpTo:v11];
          }

          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(MMParser *)self _addTextLineToElement:v9 withScanner:v6];
          }

          else
          {
            v20 = [v6 currentRange];
            [v9 addInnerRange:{v20, v21}];
            [v6 advanceToNextLine];
          }

          [v6 beginTransaction];
          [v6 skipIndentationUpTo:4];
          v22 = [v6 nextCharacter];
          [v6 commitTransaction:0];
          if (v22 == 62)
          {
            goto LABEL_28;
          }
        }

        if ([v6 atEndOfString])
        {
          goto LABEL_28;
        }
      }

      [v6 commitTransaction:0];
    }

LABEL_28:
    [v9 setRange:{objc_msgSend(v6, "startLocation"), objc_msgSend(v6, "location") - objc_msgSend(v6, "startLocation")}];
    v23 = [v9 innerRanges];
    v24 = [v23 count];

    if (v24)
    {
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = [v6 string];
        v26 = [v9 innerRanges];
        v27 = [MMScanner scannerWithString:v25 lineRanges:v26];

        if (v43)
        {
          v28 = [(MMParser *)self _parseElementsWithScanner:v27];
          [v9 setChildren:v28];
        }

        else
        {
          v28 = [(MMParser *)self spanParser];
          v37 = [v28 parseSpansInBlockElement:v9 withScanner:v27];
          [v9 setChildren:v37];
        }
      }

      else
      {
        v29 = [v9 innerRanges];
        v27 = [v29 subarrayWithRange:{0, v10}];

        v30 = [v9 innerRanges];
        v31 = [v9 innerRanges];
        v28 = [v30 subarrayWithRange:{v10, objc_msgSend(v31, "count") - v10}];

        v32 = [v6 string];
        v33 = [MMScanner scannerWithString:v32 lineRanges:v27];

        v34 = [v6 string];
        v35 = [MMScanner scannerWithString:v34 lineRanges:v28];

        if (v43)
        {
          v36 = [(MMParser *)self _parseElementsWithScanner:v33];
          [v9 setChildren:v36];
        }

        else
        {
          v36 = [(MMParser *)self spanParser];
          v38 = [v36 parseSpansInBlockElement:v9 withScanner:v33];
          [v9 setChildren:v38];
        }

        v39 = [v9 children];
        v40 = [(MMParser *)self _parseElementsWithScanner:v35];
        v41 = [v39 arrayByAddingObjectsFromArray:v40];
        [v9 setChildren:v41];
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_parseListMarkerWithScanner:(id)a3 listType:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 == 1)
  {
    [v5 beginTransaction];
    v8 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [v6 skipCharactersFromSet:v8];

    if (!v9 || [v6 nextCharacter] != 46)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a4)
  {
    LOBYTE(a4) = 0;
    goto LABEL_13;
  }

  [v5 beginTransaction];
  v7 = [v6 nextCharacter];
  if (v7 <= 0x2D && ((1 << v7) & 0x2C0000000000) != 0)
  {
LABEL_8:
    [v6 advance];
    if ([v6 nextCharacter] == 32)
    {
      [v6 advance];
      a4 = 1;
      goto LABEL_11;
    }

LABEL_10:
    a4 = 0;
  }

LABEL_11:
  [v6 commitTransaction:a4];
LABEL_13:

  return a4;
}

- (id)_parseHorizontalRuleWithScanner:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v3 skipCharactersFromSet:v4];

  v5 = [v3 nextCharacter];
  v6 = 0;
  if ((v5 - 42) <= 0x35 && ((1 << (v5 - 42)) & 0x20000000000009) != 0)
  {
    v7 = v5;
    if ([v3 atEndOfLine])
    {
      goto LABEL_12;
    }

    v8 = 0;
    do
    {
      [v3 advance];
      v9 = [v3 nextCharacter];
      if (v9 == 32)
      {
        [v3 advance];
        v9 = [v3 nextCharacter];
      }

      ++v8;
    }

    while (([v3 atEndOfLine] & 1) == 0 && v9 == v7);
    if (v8 < 3 || ([MEMORY[0x277CCA900] whitespaceCharacterSet], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "skipCharactersFromSet:", v10), v10, !objc_msgSend(v3, "atEndOfLine")))
    {
LABEL_12:
      v6 = 0;
    }

    else
    {
      v6 = objc_opt_new();
      [v6 setType:8];
      [v6 setRange:{objc_msgSend(v3, "startLocation"), objc_msgSend(v3, "location") - objc_msgSend(v3, "startLocation")}];
    }
  }

  return v6;
}

- (id)_parseFencedCodeBlockWithScanner:(id)a3
{
  v4 = a3;
  {
    [v4 skipWhitespace];
    v5 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
    [v5 addCharactersInString:@"-_"];
    v6 = [v4 nextWordWithCharactersFromSet:v5];
    [v4 setLocation:{objc_msgSend(v4, "location") + objc_msgSend(v6, "length")}];
    [v4 skipWhitespace];
    if ([v4 atEndOfLine])
    {
      [v4 advanceToNextLine];
      v7 = objc_opt_new();
      [v7 setType:7];
      if ([v6 length])
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      [v7 setLanguage:v8];
      if (([v4 atEndOfString] & 1) == 0)
      {
        while (1)
        {
          [v4 beginTransaction];
          {
            [v4 skipWhitespace];
            if ([v4 atEndOfLine])
            {
              break;
            }
          }

          [v4 commitTransaction:0];
          v9 = [v4 currentRange];
          [v7 addInnerRange:{v9, v10}];
          [v4 advanceToNextLine];
          if ([v4 atEndOfString])
          {
            goto LABEL_14;
          }
        }

        [v4 commitTransaction:1];
      }

LABEL_14:
      [v4 advanceToNextLine];
      v11 = [v7 innerRanges];
      v12 = [v11 count];

      if (v12)
      {
        v13 = [v4 string];
        v14 = [v7 innerRanges];
        v15 = [MMScanner scannerWithString:v13 lineRanges:v14];

        v16 = [(MMParser *)self _parseCodeLinesWithScanner:v15];
        [v7 setChildren:v16];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_parseCodeBlockWithScanner:(id)a3
{
  v4 = a3;
  if ([v4 skipIndentationUpTo:4] == 4 && (objc_msgSend(v4, "atEndOfLine") & 1) == 0)
  {
    v5 = objc_opt_new();
    [v5 setType:7];
    v7 = [v4 currentRange];
    [v5 addInnerRange:{v7, v8}];
    [v4 advanceToNextLine];
    if ([v4 atEndOfString])
    {
      goto LABEL_16;
    }

    do
    {
      for (i = [v4 skipEmptyLines]; i; --i)
      {
        [v5 addInnerRange:{objc_msgSend(v4, "location"), 0}];
      }

      [v4 beginTransaction];
      if ([v4 skipIndentationUpTo:4] < 4)
      {
        [v4 commitTransaction:0];
        break;
      }

      [v4 commitTransaction:1];
      v10 = [v4 currentRange];
      [v5 addInnerRange:{v10, v11}];
      [v4 advanceToNextLine];
    }

    while (![v4 atEndOfString]);
LABEL_16:
    while (1)
    {
      v16 = [v5 innerRanges];
      if (![v16 count])
      {
        break;
      }

      v12 = [v5 innerRanges];
      v13 = [v12 lastObject];
      [v13 rangeValue];
      v15 = v14;

      if (v15)
      {
        goto LABEL_18;
      }

      [v5 removeLastInnerRange];
    }

LABEL_18:
    v17 = [v5 innerRanges];
    v18 = [v17 count];

    if (v18)
    {
      v19 = [v5 innerRanges];
      v20 = [v19 lastObject];
      v21 = [v20 rangeValue];
      v23 = v22;

      [v5 removeLastInnerRange];
      v24 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      while (v23)
      {
        v25 = [v4 string];
        v26 = [v25 characterAtIndex:v21 - 1 + v23];

        --v23;
        if (([v24 characterIsMember:v26] & 1) == 0)
        {
          v27 = v23 + 1;
          goto LABEL_24;
        }
      }

      v27 = 0;
LABEL_24:
      [v5 addInnerRange:{v21, v27}];
    }

    [v5 setRange:{objc_msgSend(v4, "startLocation"), objc_msgSend(v4, "location") - objc_msgSend(v4, "startLocation")}];
    v28 = [v5 innerRanges];
    v29 = [v28 count];

    if (v29)
    {
      v30 = [v4 string];
      v31 = [v5 innerRanges];
      v32 = [MMScanner scannerWithString:v30 lineRanges:v31];

      v33 = [(MMParser *)self _parseCodeLinesWithScanner:v32];
      [v5 setChildren:v33];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_parseCodeLinesWithScanner:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"&<>"];
  v5 = [v15 invertedSet];
  if (([v3 atEndOfString] & 1) == 0)
  {
    do
    {
      v6 = [v3 location];
      [v3 skipCharactersFromSet:v5];
      if (v6 != [v3 location])
      {
        v7 = objc_opt_new();
        [v7 setType:0];
        [v7 setRange:{v6, objc_msgSend(v3, "location") - v6}];
        [v4 addObject:v7];
      }

      if (([v3 atEndOfLine] & 1) == 0)
      {
        v8 = [v3 string];
        v9 = [v8 characterAtIndex:{objc_msgSend(v3, "location")}];

        v10 = objc_opt_new();
        [v10 setType:19];
        [v10 setRange:{objc_msgSend(v3, "location"), 1}];
        if (v9 == 60)
        {
          v11 = @"&lt;";
        }

        else
        {
          v11 = &stru_2850323E8;
        }

        if (v9 == 62)
        {
          v11 = @"&gt;";
        }

        if (v9 == 38)
        {
          v12 = @"&amp;";
        }

        else
        {
          v12 = v11;
        }

        [v10 setStringValue:v12];
        [v4 addObject:v10];
        [v3 advance];
      }

      if ([v3 atEndOfLine])
      {
        [v3 advanceToNextLine];
        v13 = objc_opt_new();
        [v13 setType:0];
        [v13 setRange:{objc_msgSend(v3, "location"), 0}];
        [v4 addObject:v13];
      }
    }

    while (![v3 atEndOfString]);
  }

  return v4;
}

- (id)_parseBlockquoteWithScanner:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
  [v4 skipCharactersFromSet:v5 max:3];
  if ([v4 nextCharacter] == 62)
  {
    [v4 advance];
    if ([v4 nextCharacter] == 32)
    {
      [v4 advance];
    }

    v6 = objc_opt_new();
    [v6 setType:3];
    v7 = [v4 currentRange];
    [v6 addInnerRange:{v7, v8}];
    [v4 advanceToNextLine];
    v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    while (([v4 atEndOfString] & 1) == 0)
    {
      [v4 beginTransaction];
      [v4 skipCharactersFromSet:v9];
      if ([v4 atEndOfLine])
      {
        goto LABEL_13;
      }

      if ([v4 nextCharacter] == 62)
      {
        [v4 advance];
        [v4 skipCharactersFromSet:v9 max:1];
      }

      else
      {
        [v4 beginTransaction];
        [v4 skipIndentationUpTo:2];
        if ([(MMParser *)self _parseListMarkerWithScanner:v4 listType:0])
        {
LABEL_13:
          [v4 commitTransaction:0];
          break;
        }

        v10 = [(MMParser *)self _parseListMarkerWithScanner:v4 listType:1];
        [v4 commitTransaction:0];
        if (v10)
        {
          break;
        }
      }

      v11 = [v4 currentRange];
      [v6 addInnerRange:{v11, v12}];
      [v4 commitTransaction:1];
      [v4 advanceToNextLine];
    }

    [v6 setRange:{objc_msgSend(v4, "startLocation"), objc_msgSend(v4, "location") - objc_msgSend(v4, "startLocation")}];
    v13 = [v6 innerRanges];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v4 string];
      v16 = [v6 innerRanges];
      v17 = [MMScanner scannerWithString:v15 lineRanges:v16];

      v18 = [(MMParser *)self _parseElementsWithScanner:v17];
      [v6 setChildren:v18];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_parseUnderlinedHeaderWithScanner:(id)a3
{
  v4 = a3;
  [v4 beginTransaction];
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v4 skipCharactersFromSet:v5];

  if ([v4 atEndOfLine])
  {
    goto LABEL_14;
  }

  [v4 advanceToNextLine];
  if ([v4 atEndOfString])
  {
    goto LABEL_14;
  }

  v6 = [v4 nextCharacter];
  if ((v6 & 0xFFFFFFEF) != 0x2D)
  {
    goto LABEL_14;
  }

  v7 = v6;
  if ([v4 atEndOfLine])
  {
    goto LABEL_9;
  }

  while (v7 == [v4 nextCharacter])
  {
    [v4 advance];
    if ([v4 atEndOfLine])
    {
      goto LABEL_9;
    }
  }

  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [v4 skipCharactersFromSet:v8];

  if ([v4 atEndOfLine])
  {
LABEL_9:
    [v4 commitTransaction:0];
    v9 = objc_opt_new();
    [v9 setType:1];
    if (v7 == 61)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    [v9 setLevel:v10];
    v11 = [v4 currentRange];
    [v9 addInnerRange:{v11, v12}];
    [v4 advanceToNextLine];
    [v4 advanceToNextLine];
    [v9 setRange:{objc_msgSend(v4, "startLocation"), objc_msgSend(v4, "location") - objc_msgSend(v4, "startLocation")}];
    v13 = [v9 innerRanges];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v4 string];
      v16 = [v9 innerRanges];
      v17 = [MMScanner scannerWithString:v15 lineRanges:v16];

      v18 = [(MMParser *)self spanParser];
      v19 = [v18 parseSpansInBlockElement:v9 withScanner:v17];
      [v9 setChildren:v19];
    }
  }

  else
  {
LABEL_14:
    [v4 commitTransaction:0];
    v9 = 0;
  }

  return v9;
}

- (id)_parsePrefixHeaderWithScanner:(id)a3
{
  v4 = a3;
  if ([v4 nextCharacter] != 35)
  {
    goto LABEL_11;
  }

  v5 = 0;
  do
  {
    v6 = v5 + 1;
    [v4 advance];
    if ([v4 nextCharacter] != 35)
    {
      break;
    }
  }

  while (v5++ < 5);
  if ([v4 skipWhitespace])
  {
    v8 = [v4 currentRange];
    v10 = v9;
    v11 = v8 - 1;
    while (v10)
    {
      v12 = [v4 string];
      v13 = [v12 characterAtIndex:v11 + v10];

      --v10;
      if (v13 != 35)
      {
        v14 = v10 + 1;
        goto LABEL_13;
      }
    }

    v14 = 0;
LABEL_13:
    v16 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    while (v14)
    {
      v17 = [v4 string];
      v18 = [v17 characterAtIndex:v11 + v14];

      --v14;
      if (([v16 characterIsMember:v18] & 1) == 0)
      {
        v19 = v14 + 1;
        goto LABEL_18;
      }
    }

    v19 = 0;
LABEL_18:
    [v4 advanceToNextLine];
    v15 = objc_opt_new();
    [v15 setType:1];
    v20 = [v4 startLocation];
    v21 = [v4 currentRange];
    [v15 setRange:{v20, v21 + v22 - objc_msgSend(v4, "startLocation")}];
    [v15 setLevel:v6];
    [v15 addInnerRange:{v8, v19}];
    v23 = [v15 innerRanges];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [v4 string];
      v26 = [v15 innerRanges];
      v27 = [MMScanner scannerWithString:v25 lineRanges:v26];

      v28 = [(MMParser *)self spanParser];
      v29 = [v28 parseSpansInBlockElement:v15 withScanner:v27];
      [v15 setChildren:v29];
    }
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  return v15;
}

- (id)_parseHTMLWithScanner:(id)a3
{
  v4 = a3;
  if ([v4 atBeginningOfLine])
  {
    v5 = [(MMParser *)self htmlParser];
    v6 = [v5 parseBlockTagWithScanner:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_parseBlockElementWithScanner:(id)a3
{
  v4 = a3;
  [v4 beginTransaction];
  v5 = [(MMParser *)self htmlParser];
  v6 = [v5 parseCommentWithScanner:v4];

  [v4 commitTransaction:v6 != 0];
  if (!v6)
  {
    [v4 beginTransaction];
    v6 = [(MMParser *)self _parseHTMLWithScanner:v4];
    [v4 commitTransaction:v6 != 0];
    if (!v6)
    {
      [v4 beginTransaction];
      v6 = [(MMParser *)self _parsePrefixHeaderWithScanner:v4];
      [v4 commitTransaction:v6 != 0];
      if (!v6)
      {
        [v4 beginTransaction];
        v6 = [(MMParser *)self _parseUnderlinedHeaderWithScanner:v4];
        [v4 commitTransaction:v6 != 0];
        if (!v6)
        {
          [v4 beginTransaction];
          v6 = [(MMParser *)self _parseBlockquoteWithScanner:v4];
          [v4 commitTransaction:v6 != 0];
          if (!v6)
          {
            [v4 beginTransaction];
            v6 = [(MMParser *)self _parseCodeBlockWithScanner:v4];
            [v4 commitTransaction:v6 != 0];
            if (!v6)
            {
              if ((-[MMParser extensions](self, "extensions") & 8) == 0 || ([v4 beginTransaction], -[MMParser _parseFencedCodeBlockWithScanner:](self, "_parseFencedCodeBlockWithScanner:", v4), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "commitTransaction:", v6 != 0), !v6))
              {
                if ((-[MMParser extensions](self, "extensions") & 0x100) == 0 || ([v4 beginTransaction], -[MMParser _parseTableWithScanner:](self, "_parseTableWithScanner:", v4), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "commitTransaction:", v6 != 0), !v6))
                {
                  [v4 beginTransaction];
                  v6 = [(MMParser *)self _parseHorizontalRuleWithScanner:v4];
                  [v4 commitTransaction:v6 != 0];
                  if (!v6)
                  {
                    [v4 beginTransaction];
                    v6 = [(MMParser *)self _parseListWithScanner:v4];
                    [v4 commitTransaction:v6 != 0];
                    if (!v6)
                    {
                      [v4 beginTransaction];
                      v6 = [(MMParser *)self _parseLinkDefinitionWithScanner:v4];
                      [v4 commitTransaction:v6 != 0];
                      if (!v6)
                      {
                        [v4 beginTransaction];
                        v6 = [(MMParser *)self _parseParagraphWithScanner:v4];
                        [v4 commitTransaction:v6 != 0];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

- (id)_parseElementsWithScanner:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (([v4 atEndOfString] & 1) == 0)
  {
    do
    {
      v6 = [(MMParser *)self _parseBlockElementWithScanner:v4];
      if (v6)
      {
        [v5 addObject:v6];
      }

      else
      {
        v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [v4 skipCharactersFromSet:v7];

        if ([v4 atEndOfLine])
        {
          [v4 advanceToNextLine];
        }
      }
    }

    while (![v4 atEndOfString]);
  }

  return v5;
}

- (id)_removeTabsFromString:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\t\n"];
  v6 = [v4 rangeOfCharacterFromSet:v5 options:0 range:{0, objc_msgSend(v3, "length")}];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v6;
    v9 = v7;
    v10 = 0;
    do
    {
      if ([v4 characterAtIndex:v8] == 10)
      {
        v10 = v8 + 1;
        v11 = [v4 length] - ++v8;
      }

      else
      {
        v12 = [&unk_28509CB30 objectAtIndex:4 - ((v8 - v10) & 3)];
        [v4 replaceCharactersInRange:v8 withString:{v9, v12}];

        v11 = [v4 length] - v8;
      }

      v8 = [v4 rangeOfCharacterFromSet:v5 options:0 range:{v8, v11}];
      v9 = v13;
    }

    while (v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return v4;
}

- (void)_addTextLineToElement:(id)a3 withScanner:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"<"];
  v8 = [v7 invertedSet];

  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
  v10 = [v9 invertedSet];

  v11 = [v6 currentRange];
  v13 = v12;
  [v6 beginTransaction];
  v14 = objc_opt_new();
  if (([v6 atEndOfLine] & 1) == 0)
  {
    do
    {
      [v6 skipCharactersFromSet:v8];
      if ([v6 matchString:@"<!--"])
      {
        while (([v6 atEndOfString] & 1) == 0)
        {
          [v6 skipCharactersFromSet:v10];
          if ([v6 atEndOfLine])
          {
            v15 = [MEMORY[0x277CCAE60] valueWithRange:{v11, v13}];
            [v14 addObject:v15];

            [v6 advanceToNextLine];
            v11 = [v6 currentRange];
            v13 = v16;
          }

          else
          {
            if ([v6 matchString:@"-->"])
            {
              break;
            }

            [v6 advance];
          }
        }
      }

      else
      {
        [v6 advance];
      }
    }

    while (![v6 atEndOfLine]);
  }

  [v6 commitTransaction:{objc_msgSend(v14, "count") != 0}];
  if ([v14 count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v14;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        v21 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v26 + 1) + 8 * v21) rangeValue];
          [v5 addInnerRange:{v22, v23}];
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v19);
    }

    v14 = v25;
  }

  [v5 addInnerRange:{v11, v13}];
  [v6 advanceToNextLine];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)parseMarkdown:(id)a3 error:(id *)a4
{
  v5 = [(MMParser *)self _removeTabsFromString:a3, a4];
  v6 = [MMScanner scannerWithString:v5];
  v7 = [MMDocument documentWithMarkdown:v5];
  v8 = [(MMParser *)self _parseElementsWithScanner:v6];
  [v7 setElements:v8];

  [(MMParser *)self _updateLinksFromDefinitionsInDocument:v7];

  return v7;
}

- (MMParser)initWithExtensions:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = MMParser;
  v4 = [(MMParser *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_extensions = a3;
    v6 = objc_opt_new();
    htmlParser = v5->_htmlParser;
    v5->_htmlParser = v6;

    v8 = [[MMSpanParser alloc] initWithExtensions:a3];
    spanParser = v5->_spanParser;
    v5->_spanParser = v8;
  }

  return v5;
}

@end