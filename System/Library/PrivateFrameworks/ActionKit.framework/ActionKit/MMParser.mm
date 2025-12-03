@interface MMParser
- (BOOL)_parseListMarkerWithScanner:(id)scanner listType:(int64_t)type;
- (MMParser)initWithExtensions:(unint64_t)extensions;
- (id)_parseBlockElementWithScanner:(id)scanner;
- (id)_parseBlockquoteWithScanner:(id)scanner;
- (id)_parseCodeBlockWithScanner:(id)scanner;
- (id)_parseCodeLinesWithScanner:(id)scanner;
- (id)_parseElementsWithScanner:(id)scanner;
- (id)_parseFencedCodeBlockWithScanner:(id)scanner;
- (id)_parseHTMLWithScanner:(id)scanner;
- (id)_parseHorizontalRuleWithScanner:(id)scanner;
- (id)_parseLinkDefinitionWithScanner:(id)scanner;
- (id)_parseListItemWithScanner:(id)scanner listType:(int64_t)type;
- (id)_parseListWithScanner:(id)scanner;
- (id)_parseParagraphWithScanner:(id)scanner;
- (id)_parsePrefixHeaderWithScanner:(id)scanner;
- (id)_parseTableHeaderWithScanner:(id)scanner;
- (id)_parseTableRowWithScanner:(id)scanner columns:(id)columns;
- (id)_parseTableWithScanner:(id)scanner;
- (id)_parseUnderlinedHeaderWithScanner:(id)scanner;
- (id)_removeTabsFromString:(id)string;
- (id)parseMarkdown:(id)markdown error:(id *)error;
- (void)_addTextLineToElement:(id)element withScanner:(id)scanner;
- (void)_updateLinksFromDefinitionsInDocument:(id)document;
@end

@implementation MMParser

- (void)_updateLinksFromDefinitionsInDocument:(id)document
{
  v37 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v31 = documentCopy;
  elements = [documentCopy elements];
  [v6 addObjectsFromArray:elements];
  while (1)
  {

    if (![v6 count])
    {
      break;
    }

    elements = [v6 objectAtIndex:0];
    [v6 removeObjectAtIndex:0];
    children = [elements children];
    [v6 addObjectsFromArray:children];

    type = [elements type];
    if ((type - 15) >= 2)
    {
      if (type == 18)
      {
        identifier = [elements identifier];
        lowercaseString = [identifier lowercaseString];
        [v5 setObject:elements forKeyedSubscript:lowercaseString];
      }
    }

    else
    {
      identifier2 = [elements identifier];
      if (identifier2)
      {
        v11 = identifier2;
        href = [elements href];

        if (!href)
        {
          [v4 addObject:elements];
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
        identifier3 = [v20 identifier];
        lowercaseString2 = [identifier3 lowercaseString];
        v23 = [v5 objectForKeyedSubscript:lowercaseString2];

        if (!v23)
        {
          [v20 setType:0];
          while (1)
          {
            children2 = [v20 children];
            v27 = [children2 count];

            if (!v27)
            {
              break;
            }

            removeLastChild = [v20 removeLastChild];
          }
        }

        href2 = [v23 href];
        [v20 setHref:href2];

        title = [v23 title];
        [v20 setTitle:title];

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

- (id)_parseTableWithScanner:(id)scanner
{
  v23 = *MEMORY[0x277D85DE8];
  scannerCopy = scanner;
  [scannerCopy advanceToNextLine];
  v5 = [(MMParser *)self _parseTableHeaderWithScanner:scannerCopy];
  if (v5)
  {
    [scannerCopy commitTransaction:0];
    [scannerCopy beginTransaction];
    v6 = [(MMParser *)self _parseTableRowWithScanner:scannerCopy columns:v5];
    v7 = v6;
    if (v6)
    {
      [v6 setType:21];
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      children = [v7 children];
      v9 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(children);
            }

            [*(*(&v18 + 1) + 8 * i) setType:22];
          }

          v10 = [children countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      [scannerCopy advanceToNextLine];
      v13 = [MEMORY[0x277CBEB18] arrayWithObject:v7];
      if (([scannerCopy atEndOfString] & 1) == 0)
      {
        do
        {
          [scannerCopy beginTransaction];
          v14 = [(MMParser *)self _parseTableRowWithScanner:scannerCopy columns:v5];
          [scannerCopy commitTransaction:v14 != 0];
          if (!v14)
          {
            break;
          }

          [v13 addObject:v14];
        }

        while (![scannerCopy atEndOfString]);
      }

      if ([v13 count] >= 2)
      {
        v15 = objc_opt_new();
        [v15 setType:20];
        [v15 setChildren:v13];
        [v15 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
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

- (id)_parseTableRowWithScanner:(id)scanner columns:(id)columns
{
  v22[1] = *MEMORY[0x277D85DE8];
  scannerCopy = scanner;
  v7 = MEMORY[0x277CCAB50];
  columnsCopy = columns;
  whitespaceCharacterSet = [v7 whitespaceCharacterSet];
  [whitespaceCharacterSet addCharactersInString:@"|"];
  v10 = MEMORY[0x277CCAE60];
  currentRange = [scannerCopy currentRange];
  v13 = [v10 valueWithRange:{currentRange, v12}];
  string = [scannerCopy string];
  v22[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
  v16 = [MMScanner scannerWithString:string lineRanges:v15];

  [v16 skipCharactersFromSet:whitespaceCharacterSet];
  spanParser = [(MMParser *)self spanParser];
  v18 = [spanParser parseSpansInTableColumns:columnsCopy withScanner:v16];

  [v16 skipCharactersFromSet:whitespaceCharacterSet];
  if (v18 && [v16 atEndOfLine])
  {
    [scannerCopy advanceToNextLine];
    v19 = objc_opt_new();
    [v19 setType:23];
    [v19 setChildren:v18];
    [v19 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_parseTableHeaderWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
  [scannerCopy skipWhitespace];
  if ([scannerCopy nextCharacter] == 124)
  {
    [scannerCopy advance];
  }

  [scannerCopy skipWhitespace];
  v5 = objc_opt_new();
  if ([scannerCopy atEndOfLine])
  {
LABEL_14:
    if ([scannerCopy atEndOfLine])
    {
      v9 = v5;
      goto LABEL_17;
    }
  }

  else
  {
    while (1)
    {
      nextCharacter = [scannerCopy nextCharacter];
      if (nextCharacter == 58)
      {
        [scannerCopy advance];
      }

      if ([scannerCopy skipCharactersFromSet:v4] < 3)
      {
        break;
      }

      if ([scannerCopy nextCharacter] == 58)
      {
        [scannerCopy advance];
        if (nextCharacter == 58)
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
        v7 = nextCharacter == 58;
      }

      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      [v5 addObject:v8];

      [scannerCopy skipWhitespace];
      if ([scannerCopy nextCharacter] == 124)
      {
        [scannerCopy advance];
        [scannerCopy skipWhitespace];
        if (![scannerCopy atEndOfLine])
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

- (id)_parseParagraphWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v5 = objc_opt_new();
  [v5 setType:2];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  if (([scannerCopy atEndOfString] & 1) == 0)
  {
    while (1)
    {
      [scannerCopy skipWhitespace];
      if ([scannerCopy atEndOfLine])
      {
        [scannerCopy advanceToNextLine];
        goto LABEL_2;
      }

      [scannerCopy beginTransaction];
      [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];
      if ([scannerCopy nextCharacter] == 62)
      {
        v21 = scannerCopy;
        v22 = 1;
        goto LABEL_22;
      }

      [scannerCopy commitTransaction:0];
      [scannerCopy beginTransaction];
      v15 = [(MMParser *)self _parseLinkDefinitionWithScanner:scannerCopy];

      [scannerCopy commitTransaction:0];
      if (v15)
      {
        goto LABEL_2;
      }

      [scannerCopy beginTransaction];
      v16 = [(MMParser *)self _parseUnderlinedHeaderWithScanner:scannerCopy];

      [scannerCopy commitTransaction:0];
      if (v16)
      {
        goto LABEL_2;
      }

      [scannerCopy beginTransaction];
      v17 = [(MMParser *)self _parsePrefixHeaderWithScanner:scannerCopy];

      [scannerCopy commitTransaction:0];
      if (v17)
      {
        goto LABEL_2;
      }

      if (([(MMParser *)self extensions]& 8) != 0)
      {
        [scannerCopy beginTransaction];
        v18 = [(MMParser *)self _parseFencedCodeBlockWithScanner:scannerCopy];

        [scannerCopy commitTransaction:0];
        if (v18)
        {
          goto LABEL_2;
        }
      }

      [scannerCopy beginTransaction];
      [scannerCopy skipIndentationUpTo:2];
      if ([(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:0])
      {
        break;
      }

      v19 = [(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:1];
      [scannerCopy commitTransaction:0];
      if (!v19)
      {
        [(MMParser *)self _addTextLineToElement:v5 withScanner:scannerCopy];
        if (![scannerCopy atEndOfString])
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    v21 = scannerCopy;
    v22 = 0;
LABEL_22:
    [v21 commitTransaction:v22];
  }

LABEL_2:
  [v5 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
  innerRanges = [v5 innerRanges];
  v8 = [innerRanges count];

  if (v8)
  {
    string = [scannerCopy string];
    innerRanges2 = [v5 innerRanges];
    v11 = [MMScanner scannerWithString:string lineRanges:innerRanges2];

    spanParser = [(MMParser *)self spanParser];
    v13 = [spanParser parseSpansInBlockElement:v5 withScanner:v11];
    [v5 setChildren:v13];

    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_parseLinkDefinitionWithScanner:(id)scanner
{
  scannerCopy = scanner;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [scannerCopy skipIndentationUpTo:3];
  location = [scannerCopy location];
  v6 = [scannerCopy skipNestedBracketsWithDelimiter:91];
  if (!v6)
  {
    goto LABEL_22;
  }

  if ([scannerCopy nextCharacter] != 58)
  {
    v6 = 0;
    goto LABEL_22;
  }

  [scannerCopy advance];
  [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];
  location2 = [scannerCopy location];
  invertedSet = [whitespaceCharacterSet invertedSet];
  [scannerCopy skipCharactersFromSet:invertedSet];

  v9 = [scannerCopy location] - location2;
  string = [scannerCopy string];
  v11 = [string substringWithRange:{location2, v9}];

  if ([v11 hasPrefix:@"<"] && objc_msgSend(v11, "hasSuffix:", @">"))
  {
    v12 = [v11 substringWithRange:{1, objc_msgSend(v11, "length") - 2}];

    v11 = v12;
  }

  [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];
  [scannerCopy beginTransaction];
  if ([scannerCopy atEndOfLine])
  {
    [scannerCopy advanceToNextLine];
    [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];
  }

  nextCharacter = [scannerCopy nextCharacter];
  skipToLastCharacterOfLine = 0;
  if (nextCharacter > 0x28)
  {
    goto LABEL_16;
  }

  v15 = nextCharacter;
  location3 = 0x7FFFFFFFFFFFFFFFLL;
  if (((1 << nextCharacter) & 0x18400000000) != 0)
  {
    [scannerCopy advance];
    if (v15 == 40)
    {
      v15 = 41;
    }

    location3 = [scannerCopy location];
    skipToLastCharacterOfLine = [scannerCopy skipToLastCharacterOfLine];
    if ([scannerCopy nextCharacter] == v15)
    {
      [scannerCopy advance];
      goto LABEL_17;
    }

    skipToLastCharacterOfLine = 0;
LABEL_16:
    location3 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_17:
  [scannerCopy commitTransaction:location3 != 0x7FFFFFFFFFFFFFFFLL];
  [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];
  if ([scannerCopy atEndOfLine])
  {
    v17 = v6 - 2;
    v6 = objc_opt_new();
    [v6 setType:18];
    [v6 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
    string2 = [scannerCopy string];
    v19 = [string2 substringWithRange:{location + 1, v17}];
    [v6 setIdentifier:v19];

    [v6 setHref:v11];
    if (location3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      string3 = [scannerCopy string];
      v21 = [string3 substringWithRange:{location3, skipToLastCharacterOfLine}];
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

- (id)_parseListWithScanner:(id)scanner
{
  scannerCopy = scanner;
  [scannerCopy beginTransaction];
  [scannerCopy skipIndentationUpTo:3];
  nextCharacter = [scannerCopy nextCharacter];
  v6 = (nextCharacter < 0x2E) & (0x2C0000000000uLL >> nextCharacter);
  v7 = !((nextCharacter < 0x2E) & (0x2C0000000000uLL >> nextCharacter));
  v8 = [(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:v7];
  [scannerCopy commitTransaction:0];
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
    if (([scannerCopy atEndOfString] & 1) == 0)
    {
      while (1)
      {
        [scannerCopy beginTransaction];
        [scannerCopy skipEmptyLines];
        v12 = [(MMParser *)self _parseHorizontalRuleWithScanner:scannerCopy];
        [scannerCopy commitTransaction:0];
        if (v12)
        {

          goto LABEL_13;
        }

        [scannerCopy beginTransaction];
        v13 = [(MMParser *)self _parseListItemWithScanner:scannerCopy listType:v7];
        if (!v13)
        {
          break;
        }

        v14 = v13;
        [scannerCopy commitTransaction:1];
        [v10 addChild:v14];

        if ([scannerCopy atEndOfString])
        {
          goto LABEL_13;
        }
      }

      [scannerCopy commitTransaction:0];
    }

LABEL_13:
    [v10 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_parseListItemWithScanner:(id)scanner listType:(int64_t)type
{
  scannerCopy = scanner;
  skipEmptyLines = [scannerCopy skipEmptyLines];
  [scannerCopy skipIndentationUpTo:3];
  if ([(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:type])
  {
    v43 = skipEmptyLines != 0;
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];

    v9 = objc_opt_new();
    [v9 setType:6];
    if ([scannerCopy atEndOfString])
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = 0;
      v10 = 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        [scannerCopy beginTransaction];
        skipEmptyLines2 = [scannerCopy skipEmptyLines];
        [scannerCopy beginTransaction];
        v13 = [(MMParser *)self _parseHorizontalRuleWithScanner:scannerCopy];

        [scannerCopy commitTransaction:0];
        if (v13)
        {
          break;
        }

        [scannerCopy beginTransaction];
        [scannerCopy skipIndentationUpTo:1];
        v14 = [(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:type];
        [scannerCopy commitTransaction:0];
        if (v14)
        {
          [scannerCopy commitTransaction:0];
          v43 |= skipEmptyLines2 != 0;
          goto LABEL_28;
        }

        [scannerCopy beginTransaction];
        v15 = [scannerCopy skipIndentationUpTo:4];
        [scannerCopy beginTransaction];
        v16 = [(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:0]|| [(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:1];
        [scannerCopy commitTransaction:0];
        if (v15 >= 2 && v16 && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 addInnerRange:{objc_msgSend(scannerCopy, "location"), 0}];
          innerRanges = [v9 innerRanges];
          v10 = [innerRanges count];

          currentRange = [scannerCopy currentRange];
          [v9 addInnerRange:{currentRange, v19}];
          [scannerCopy commitTransaction:1];
          [scannerCopy commitTransaction:1];
          [scannerCopy advanceToNextLine];
          v11 = v15;
        }

        else
        {
          [scannerCopy commitTransaction:0];
          if (skipEmptyLines2)
          {
            [scannerCopy beginTransaction];
            if ([scannerCopy skipIndentationUpTo:4] < 4)
            {
              [scannerCopy commitTransaction:0];
              break;
            }

            v43 = 1;
            [scannerCopy commitTransaction:1];
            [scannerCopy commitTransaction:1];
            [v9 addInnerRange:{objc_msgSend(scannerCopy, "location"), 0}];
          }

          else
          {
            [scannerCopy commitTransaction:1];
            [scannerCopy skipIndentationUpTo:v11];
          }

          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(MMParser *)self _addTextLineToElement:v9 withScanner:scannerCopy];
          }

          else
          {
            currentRange2 = [scannerCopy currentRange];
            [v9 addInnerRange:{currentRange2, v21}];
            [scannerCopy advanceToNextLine];
          }

          [scannerCopy beginTransaction];
          [scannerCopy skipIndentationUpTo:4];
          nextCharacter = [scannerCopy nextCharacter];
          [scannerCopy commitTransaction:0];
          if (nextCharacter == 62)
          {
            goto LABEL_28;
          }
        }

        if ([scannerCopy atEndOfString])
        {
          goto LABEL_28;
        }
      }

      [scannerCopy commitTransaction:0];
    }

LABEL_28:
    [v9 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
    innerRanges2 = [v9 innerRanges];
    v24 = [innerRanges2 count];

    if (v24)
    {
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        string = [scannerCopy string];
        innerRanges3 = [v9 innerRanges];
        v27 = [MMScanner scannerWithString:string lineRanges:innerRanges3];

        if (v43)
        {
          spanParser = [(MMParser *)self _parseElementsWithScanner:v27];
          [v9 setChildren:spanParser];
        }

        else
        {
          spanParser = [(MMParser *)self spanParser];
          v37 = [spanParser parseSpansInBlockElement:v9 withScanner:v27];
          [v9 setChildren:v37];
        }
      }

      else
      {
        innerRanges4 = [v9 innerRanges];
        v27 = [innerRanges4 subarrayWithRange:{0, v10}];

        innerRanges5 = [v9 innerRanges];
        innerRanges6 = [v9 innerRanges];
        spanParser = [innerRanges5 subarrayWithRange:{v10, objc_msgSend(innerRanges6, "count") - v10}];

        string2 = [scannerCopy string];
        v33 = [MMScanner scannerWithString:string2 lineRanges:v27];

        string3 = [scannerCopy string];
        v35 = [MMScanner scannerWithString:string3 lineRanges:spanParser];

        if (v43)
        {
          spanParser2 = [(MMParser *)self _parseElementsWithScanner:v33];
          [v9 setChildren:spanParser2];
        }

        else
        {
          spanParser2 = [(MMParser *)self spanParser];
          v38 = [spanParser2 parseSpansInBlockElement:v9 withScanner:v33];
          [v9 setChildren:v38];
        }

        children = [v9 children];
        v40 = [(MMParser *)self _parseElementsWithScanner:v35];
        v41 = [children arrayByAddingObjectsFromArray:v40];
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

- (BOOL)_parseListMarkerWithScanner:(id)scanner listType:(int64_t)type
{
  scannerCopy = scanner;
  v6 = scannerCopy;
  if (type == 1)
  {
    [scannerCopy beginTransaction];
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v9 = [v6 skipCharactersFromSet:decimalDigitCharacterSet];

    if (!v9 || [v6 nextCharacter] != 46)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (type)
  {
    LOBYTE(type) = 0;
    goto LABEL_13;
  }

  [scannerCopy beginTransaction];
  nextCharacter = [v6 nextCharacter];
  if (nextCharacter <= 0x2D && ((1 << nextCharacter) & 0x2C0000000000) != 0)
  {
LABEL_8:
    [v6 advance];
    if ([v6 nextCharacter] == 32)
    {
      [v6 advance];
      type = 1;
      goto LABEL_11;
    }

LABEL_10:
    type = 0;
  }

LABEL_11:
  [v6 commitTransaction:type];
LABEL_13:

  return type;
}

- (id)_parseHorizontalRuleWithScanner:(id)scanner
{
  scannerCopy = scanner;
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];

  nextCharacter = [scannerCopy nextCharacter];
  v6 = 0;
  if ((nextCharacter - 42) <= 0x35 && ((1 << (nextCharacter - 42)) & 0x20000000000009) != 0)
  {
    v7 = nextCharacter;
    if ([scannerCopy atEndOfLine])
    {
      goto LABEL_12;
    }

    v8 = 0;
    do
    {
      [scannerCopy advance];
      nextCharacter2 = [scannerCopy nextCharacter];
      if (nextCharacter2 == 32)
      {
        [scannerCopy advance];
        nextCharacter2 = [scannerCopy nextCharacter];
      }

      ++v8;
    }

    while (([scannerCopy atEndOfLine] & 1) == 0 && nextCharacter2 == v7);
    if (v8 < 3 || ([MEMORY[0x277CCA900] whitespaceCharacterSet], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(scannerCopy, "skipCharactersFromSet:", v10), v10, !objc_msgSend(scannerCopy, "atEndOfLine")))
    {
LABEL_12:
      v6 = 0;
    }

    else
    {
      v6 = objc_opt_new();
      [v6 setType:8];
      [v6 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
    }
  }

  return v6;
}

- (id)_parseFencedCodeBlockWithScanner:(id)scanner
{
  scannerCopy = scanner;
  {
    [scannerCopy skipWhitespace];
    alphanumericCharacterSet = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
    [alphanumericCharacterSet addCharactersInString:@"-_"];
    v6 = [scannerCopy nextWordWithCharactersFromSet:alphanumericCharacterSet];
    [scannerCopy setLocation:{objc_msgSend(scannerCopy, "location") + objc_msgSend(v6, "length")}];
    [scannerCopy skipWhitespace];
    if ([scannerCopy atEndOfLine])
    {
      [scannerCopy advanceToNextLine];
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
      if (([scannerCopy atEndOfString] & 1) == 0)
      {
        while (1)
        {
          [scannerCopy beginTransaction];
          {
            [scannerCopy skipWhitespace];
            if ([scannerCopy atEndOfLine])
            {
              break;
            }
          }

          [scannerCopy commitTransaction:0];
          currentRange = [scannerCopy currentRange];
          [v7 addInnerRange:{currentRange, v10}];
          [scannerCopy advanceToNextLine];
          if ([scannerCopy atEndOfString])
          {
            goto LABEL_14;
          }
        }

        [scannerCopy commitTransaction:1];
      }

LABEL_14:
      [scannerCopy advanceToNextLine];
      innerRanges = [v7 innerRanges];
      v12 = [innerRanges count];

      if (v12)
      {
        string = [scannerCopy string];
        innerRanges2 = [v7 innerRanges];
        v15 = [MMScanner scannerWithString:string lineRanges:innerRanges2];

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

- (id)_parseCodeBlockWithScanner:(id)scanner
{
  scannerCopy = scanner;
  if ([scannerCopy skipIndentationUpTo:4] == 4 && (objc_msgSend(scannerCopy, "atEndOfLine") & 1) == 0)
  {
    v5 = objc_opt_new();
    [v5 setType:7];
    currentRange = [scannerCopy currentRange];
    [v5 addInnerRange:{currentRange, v8}];
    [scannerCopy advanceToNextLine];
    if ([scannerCopy atEndOfString])
    {
      goto LABEL_16;
    }

    do
    {
      for (i = [scannerCopy skipEmptyLines]; i; --i)
      {
        [v5 addInnerRange:{objc_msgSend(scannerCopy, "location"), 0}];
      }

      [scannerCopy beginTransaction];
      if ([scannerCopy skipIndentationUpTo:4] < 4)
      {
        [scannerCopy commitTransaction:0];
        break;
      }

      [scannerCopy commitTransaction:1];
      currentRange2 = [scannerCopy currentRange];
      [v5 addInnerRange:{currentRange2, v11}];
      [scannerCopy advanceToNextLine];
    }

    while (![scannerCopy atEndOfString]);
LABEL_16:
    while (1)
    {
      innerRanges = [v5 innerRanges];
      if (![innerRanges count])
      {
        break;
      }

      innerRanges2 = [v5 innerRanges];
      lastObject = [innerRanges2 lastObject];
      [lastObject rangeValue];
      v15 = v14;

      if (v15)
      {
        goto LABEL_18;
      }

      [v5 removeLastInnerRange];
    }

LABEL_18:
    innerRanges3 = [v5 innerRanges];
    v18 = [innerRanges3 count];

    if (v18)
    {
      innerRanges4 = [v5 innerRanges];
      lastObject2 = [innerRanges4 lastObject];
      rangeValue = [lastObject2 rangeValue];
      v23 = v22;

      [v5 removeLastInnerRange];
      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      while (v23)
      {
        string = [scannerCopy string];
        v26 = [string characterAtIndex:rangeValue - 1 + v23];

        --v23;
        if (([whitespaceCharacterSet characterIsMember:v26] & 1) == 0)
        {
          v27 = v23 + 1;
          goto LABEL_24;
        }
      }

      v27 = 0;
LABEL_24:
      [v5 addInnerRange:{rangeValue, v27}];
    }

    [v5 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
    innerRanges5 = [v5 innerRanges];
    v29 = [innerRanges5 count];

    if (v29)
    {
      string2 = [scannerCopy string];
      innerRanges6 = [v5 innerRanges];
      v32 = [MMScanner scannerWithString:string2 lineRanges:innerRanges6];

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

- (id)_parseCodeLinesWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v4 = objc_opt_new();
  v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"&<>"];
  invertedSet = [v15 invertedSet];
  if (([scannerCopy atEndOfString] & 1) == 0)
  {
    do
    {
      location = [scannerCopy location];
      [scannerCopy skipCharactersFromSet:invertedSet];
      if (location != [scannerCopy location])
      {
        v7 = objc_opt_new();
        [v7 setType:0];
        [v7 setRange:{location, objc_msgSend(scannerCopy, "location") - location}];
        [v4 addObject:v7];
      }

      if (([scannerCopy atEndOfLine] & 1) == 0)
      {
        string = [scannerCopy string];
        v9 = [string characterAtIndex:{objc_msgSend(scannerCopy, "location")}];

        v10 = objc_opt_new();
        [v10 setType:19];
        [v10 setRange:{objc_msgSend(scannerCopy, "location"), 1}];
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
        [scannerCopy advance];
      }

      if ([scannerCopy atEndOfLine])
      {
        [scannerCopy advanceToNextLine];
        v13 = objc_opt_new();
        [v13 setType:0];
        [v13 setRange:{objc_msgSend(scannerCopy, "location"), 0}];
        [v4 addObject:v13];
      }
    }

    while (![scannerCopy atEndOfString]);
  }

  return v4;
}

- (id)_parseBlockquoteWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
  [scannerCopy skipCharactersFromSet:v5 max:3];
  if ([scannerCopy nextCharacter] == 62)
  {
    [scannerCopy advance];
    if ([scannerCopy nextCharacter] == 32)
    {
      [scannerCopy advance];
    }

    v6 = objc_opt_new();
    [v6 setType:3];
    currentRange = [scannerCopy currentRange];
    [v6 addInnerRange:{currentRange, v8}];
    [scannerCopy advanceToNextLine];
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    while (([scannerCopy atEndOfString] & 1) == 0)
    {
      [scannerCopy beginTransaction];
      [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];
      if ([scannerCopy atEndOfLine])
      {
        goto LABEL_13;
      }

      if ([scannerCopy nextCharacter] == 62)
      {
        [scannerCopy advance];
        [scannerCopy skipCharactersFromSet:whitespaceCharacterSet max:1];
      }

      else
      {
        [scannerCopy beginTransaction];
        [scannerCopy skipIndentationUpTo:2];
        if ([(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:0])
        {
LABEL_13:
          [scannerCopy commitTransaction:0];
          break;
        }

        v10 = [(MMParser *)self _parseListMarkerWithScanner:scannerCopy listType:1];
        [scannerCopy commitTransaction:0];
        if (v10)
        {
          break;
        }
      }

      currentRange2 = [scannerCopy currentRange];
      [v6 addInnerRange:{currentRange2, v12}];
      [scannerCopy commitTransaction:1];
      [scannerCopy advanceToNextLine];
    }

    [v6 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
    innerRanges = [v6 innerRanges];
    v14 = [innerRanges count];

    if (v14)
    {
      string = [scannerCopy string];
      innerRanges2 = [v6 innerRanges];
      v17 = [MMScanner scannerWithString:string lineRanges:innerRanges2];

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

- (id)_parseUnderlinedHeaderWithScanner:(id)scanner
{
  scannerCopy = scanner;
  [scannerCopy beginTransaction];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];

  if ([scannerCopy atEndOfLine])
  {
    goto LABEL_14;
  }

  [scannerCopy advanceToNextLine];
  if ([scannerCopy atEndOfString])
  {
    goto LABEL_14;
  }

  nextCharacter = [scannerCopy nextCharacter];
  if ((nextCharacter & 0xFFFFFFEF) != 0x2D)
  {
    goto LABEL_14;
  }

  v7 = nextCharacter;
  if ([scannerCopy atEndOfLine])
  {
    goto LABEL_9;
  }

  while (v7 == [scannerCopy nextCharacter])
  {
    [scannerCopy advance];
    if ([scannerCopy atEndOfLine])
    {
      goto LABEL_9;
    }
  }

  whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  [scannerCopy skipCharactersFromSet:whitespaceCharacterSet2];

  if ([scannerCopy atEndOfLine])
  {
LABEL_9:
    [scannerCopy commitTransaction:0];
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
    currentRange = [scannerCopy currentRange];
    [v9 addInnerRange:{currentRange, v12}];
    [scannerCopy advanceToNextLine];
    [scannerCopy advanceToNextLine];
    [v9 setRange:{objc_msgSend(scannerCopy, "startLocation"), objc_msgSend(scannerCopy, "location") - objc_msgSend(scannerCopy, "startLocation")}];
    innerRanges = [v9 innerRanges];
    v14 = [innerRanges count];

    if (v14)
    {
      string = [scannerCopy string];
      innerRanges2 = [v9 innerRanges];
      v17 = [MMScanner scannerWithString:string lineRanges:innerRanges2];

      spanParser = [(MMParser *)self spanParser];
      v19 = [spanParser parseSpansInBlockElement:v9 withScanner:v17];
      [v9 setChildren:v19];
    }
  }

  else
  {
LABEL_14:
    [scannerCopy commitTransaction:0];
    v9 = 0;
  }

  return v9;
}

- (id)_parsePrefixHeaderWithScanner:(id)scanner
{
  scannerCopy = scanner;
  if ([scannerCopy nextCharacter] != 35)
  {
    goto LABEL_11;
  }

  v5 = 0;
  do
  {
    v6 = v5 + 1;
    [scannerCopy advance];
    if ([scannerCopy nextCharacter] != 35)
    {
      break;
    }
  }

  while (v5++ < 5);
  if ([scannerCopy skipWhitespace])
  {
    currentRange = [scannerCopy currentRange];
    v10 = v9;
    v11 = currentRange - 1;
    while (v10)
    {
      string = [scannerCopy string];
      v13 = [string characterAtIndex:v11 + v10];

      --v10;
      if (v13 != 35)
      {
        v14 = v10 + 1;
        goto LABEL_13;
      }
    }

    v14 = 0;
LABEL_13:
    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    while (v14)
    {
      string2 = [scannerCopy string];
      v18 = [string2 characterAtIndex:v11 + v14];

      --v14;
      if (([whitespaceCharacterSet characterIsMember:v18] & 1) == 0)
      {
        v19 = v14 + 1;
        goto LABEL_18;
      }
    }

    v19 = 0;
LABEL_18:
    [scannerCopy advanceToNextLine];
    v15 = objc_opt_new();
    [v15 setType:1];
    startLocation = [scannerCopy startLocation];
    currentRange2 = [scannerCopy currentRange];
    [v15 setRange:{startLocation, currentRange2 + v22 - objc_msgSend(scannerCopy, "startLocation")}];
    [v15 setLevel:v6];
    [v15 addInnerRange:{currentRange, v19}];
    innerRanges = [v15 innerRanges];
    v24 = [innerRanges count];

    if (v24)
    {
      string3 = [scannerCopy string];
      innerRanges2 = [v15 innerRanges];
      v27 = [MMScanner scannerWithString:string3 lineRanges:innerRanges2];

      spanParser = [(MMParser *)self spanParser];
      v29 = [spanParser parseSpansInBlockElement:v15 withScanner:v27];
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

- (id)_parseHTMLWithScanner:(id)scanner
{
  scannerCopy = scanner;
  if ([scannerCopy atBeginningOfLine])
  {
    htmlParser = [(MMParser *)self htmlParser];
    v6 = [htmlParser parseBlockTagWithScanner:scannerCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_parseBlockElementWithScanner:(id)scanner
{
  scannerCopy = scanner;
  [scannerCopy beginTransaction];
  htmlParser = [(MMParser *)self htmlParser];
  v6 = [htmlParser parseCommentWithScanner:scannerCopy];

  [scannerCopy commitTransaction:v6 != 0];
  if (!v6)
  {
    [scannerCopy beginTransaction];
    v6 = [(MMParser *)self _parseHTMLWithScanner:scannerCopy];
    [scannerCopy commitTransaction:v6 != 0];
    if (!v6)
    {
      [scannerCopy beginTransaction];
      v6 = [(MMParser *)self _parsePrefixHeaderWithScanner:scannerCopy];
      [scannerCopy commitTransaction:v6 != 0];
      if (!v6)
      {
        [scannerCopy beginTransaction];
        v6 = [(MMParser *)self _parseUnderlinedHeaderWithScanner:scannerCopy];
        [scannerCopy commitTransaction:v6 != 0];
        if (!v6)
        {
          [scannerCopy beginTransaction];
          v6 = [(MMParser *)self _parseBlockquoteWithScanner:scannerCopy];
          [scannerCopy commitTransaction:v6 != 0];
          if (!v6)
          {
            [scannerCopy beginTransaction];
            v6 = [(MMParser *)self _parseCodeBlockWithScanner:scannerCopy];
            [scannerCopy commitTransaction:v6 != 0];
            if (!v6)
            {
              if ((-[MMParser extensions](self, "extensions") & 8) == 0 || ([scannerCopy beginTransaction], -[MMParser _parseFencedCodeBlockWithScanner:](self, "_parseFencedCodeBlockWithScanner:", scannerCopy), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(scannerCopy, "commitTransaction:", v6 != 0), !v6))
              {
                if ((-[MMParser extensions](self, "extensions") & 0x100) == 0 || ([scannerCopy beginTransaction], -[MMParser _parseTableWithScanner:](self, "_parseTableWithScanner:", scannerCopy), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(scannerCopy, "commitTransaction:", v6 != 0), !v6))
                {
                  [scannerCopy beginTransaction];
                  v6 = [(MMParser *)self _parseHorizontalRuleWithScanner:scannerCopy];
                  [scannerCopy commitTransaction:v6 != 0];
                  if (!v6)
                  {
                    [scannerCopy beginTransaction];
                    v6 = [(MMParser *)self _parseListWithScanner:scannerCopy];
                    [scannerCopy commitTransaction:v6 != 0];
                    if (!v6)
                    {
                      [scannerCopy beginTransaction];
                      v6 = [(MMParser *)self _parseLinkDefinitionWithScanner:scannerCopy];
                      [scannerCopy commitTransaction:v6 != 0];
                      if (!v6)
                      {
                        [scannerCopy beginTransaction];
                        v6 = [(MMParser *)self _parseParagraphWithScanner:scannerCopy];
                        [scannerCopy commitTransaction:v6 != 0];
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

- (id)_parseElementsWithScanner:(id)scanner
{
  scannerCopy = scanner;
  v5 = objc_opt_new();
  if (([scannerCopy atEndOfString] & 1) == 0)
  {
    do
    {
      v6 = [(MMParser *)self _parseBlockElementWithScanner:scannerCopy];
      if (v6)
      {
        [v5 addObject:v6];
      }

      else
      {
        whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        [scannerCopy skipCharactersFromSet:whitespaceCharacterSet];

        if ([scannerCopy atEndOfLine])
        {
          [scannerCopy advanceToNextLine];
        }
      }
    }

    while (![scannerCopy atEndOfString]);
  }

  return v5;
}

- (id)_removeTabsFromString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy mutableCopy];
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"\t\n"];
  v6 = [v4 rangeOfCharacterFromSet:v5 options:0 range:{0, objc_msgSend(stringCopy, "length")}];
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

- (void)_addTextLineToElement:(id)element withScanner:(id)scanner
{
  v31 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  scannerCopy = scanner;
  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"<"];
  invertedSet = [v7 invertedSet];

  v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-"];
  invertedSet2 = [v9 invertedSet];

  currentRange = [scannerCopy currentRange];
  v13 = v12;
  [scannerCopy beginTransaction];
  v14 = objc_opt_new();
  if (([scannerCopy atEndOfLine] & 1) == 0)
  {
    do
    {
      [scannerCopy skipCharactersFromSet:invertedSet];
      if ([scannerCopy matchString:@"<!--"])
      {
        while (([scannerCopy atEndOfString] & 1) == 0)
        {
          [scannerCopy skipCharactersFromSet:invertedSet2];
          if ([scannerCopy atEndOfLine])
          {
            v15 = [MEMORY[0x277CCAE60] valueWithRange:{currentRange, v13}];
            [v14 addObject:v15];

            [scannerCopy advanceToNextLine];
            currentRange = [scannerCopy currentRange];
            v13 = v16;
          }

          else
          {
            if ([scannerCopy matchString:@"-->"])
            {
              break;
            }

            [scannerCopy advance];
          }
        }
      }

      else
      {
        [scannerCopy advance];
      }
    }

    while (![scannerCopy atEndOfLine]);
  }

  [scannerCopy commitTransaction:{objc_msgSend(v14, "count") != 0}];
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

          rangeValue = [*(*(&v26 + 1) + 8 * v21) rangeValue];
          [elementCopy addInnerRange:{rangeValue, v23}];
          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v19);
    }

    v14 = v25;
  }

  [elementCopy addInnerRange:{currentRange, v13}];
  [scannerCopy advanceToNextLine];

  v24 = *MEMORY[0x277D85DE8];
}

- (id)parseMarkdown:(id)markdown error:(id *)error
{
  error = [(MMParser *)self _removeTabsFromString:markdown, error];
  v6 = [MMScanner scannerWithString:error];
  v7 = [MMDocument documentWithMarkdown:error];
  v8 = [(MMParser *)self _parseElementsWithScanner:v6];
  [v7 setElements:v8];

  [(MMParser *)self _updateLinksFromDefinitionsInDocument:v7];

  return v7;
}

- (MMParser)initWithExtensions:(unint64_t)extensions
{
  v11.receiver = self;
  v11.super_class = MMParser;
  v4 = [(MMParser *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_extensions = extensions;
    v6 = objc_opt_new();
    htmlParser = v5->_htmlParser;
    v5->_htmlParser = v6;

    v8 = [[MMSpanParser alloc] initWithExtensions:extensions];
    spanParser = v5->_spanParser;
    v5->_spanParser = v8;
  }

  return v5;
}

@end