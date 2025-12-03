@interface ABVCardLexer
- (ABVCardLexer)initWithData:(id)data watchdogTimer:(id)timer;
- (BOOL)_advancePastLineFoldingSequenceIfNeeded;
- (BOOL)advancePastEOL;
- (BOOL)advancePastEOLSingle;
- (BOOL)advancePastEOLUnicode;
- (BOOL)advanceToEOL;
- (BOOL)advanceToEOLSingle;
- (BOOL)advanceToEOLUnicode;
- (BOOL)advanceToToken:(int)token throughTypes:(int)types;
- (BOOL)advancedPastToken:(int)token;
- (id)nextArraySeperatedByToken:(int)token stoppingAt:(int)at inEncoding:(unint64_t)encoding;
- (id)nextBase64Data;
- (id)nextBase64Line:(BOOL *)line;
- (id)nextEscapedCharacter;
- (id)nextQuotedPrintableData;
- (id)nextSingleByteBase64Line:(BOOL *)line;
- (id)nextSingleByteStringInEncoding:(unint64_t)encoding quotedPrintable:(BOOL)printable stopTokens:(int)tokens trim:(BOOL)trim;
- (id)nextStringInEncoding:(unint64_t)encoding quotedPrintable:(BOOL)printable stopTokens:(int)tokens trim:(BOOL)trim;
- (id)nextUnicodeBase64Line:(BOOL *)line;
- (id)nextUnicodeStringStopTokens:(int)tokens quotedPrintable:(BOOL)printable trim:(BOOL)trim;
- (id)tokenName:(int)name;
- (id)tokenSetForLength:(int)length;
- (int)advanceToSingleByteString;
- (int)advanceToString;
- (int)advanceToUnicodeString;
- (int)nextTokenPeak:(BOOL)peak;
- (int)nextTokenPeakSingle:(BOOL)single length:(int)length;
- (int)nextTokenPeakUnicode:(BOOL)unicode length:(int)length;
- (int)tokenAtCursor;
- (void)_applyNextStringInEncoding:(unint64_t)encoding quotedPrintable:(BOOL)printable stopTokens:(int)tokens trim:(BOOL)trim intoString:(id)string;
- (void)dealloc;
@end

@implementation ABVCardLexer

- (id)tokenName:(int)name
{
  if (name <= 32769)
  {
    if (!name)
    {
      return @"ABNoToken";
    }

    if (name == 32769)
    {
      return @"ABLF";
    }
  }

  else
  {
    switch(name)
    {
      case 32770:
        return @"ABCR";
      case 65538:
        return @"ABERROR";
      case 65537:
        return @"ABEOF";
    }
  }

  v6 = [(NSArray *)self->_activeTokenSets count];
  if (v6 < 1)
  {
    return @"????";
  }

  v7 = v6;
  v8 = 0;
  v5 = @"????";
  while (1)
  {
    v9 = [(NSArray *)self->_activeTokenSets objectAtIndex:v8];
    v10 = [v9 count];
    if (v10 >= 1)
    {
      break;
    }

LABEL_18:
    if (++v8 == v7)
    {
      return v5;
    }
  }

  v11 = v10;
  v12 = 0;
  while (1)
  {
    v13 = [v9 objectAtIndex:v12];
    if (*(v13 + 8) == name)
    {
      return *v13;
    }

    if (v11 == ++v12)
    {
      goto LABEL_18;
    }
  }
}

- (ABVCardLexer)initWithData:(id)data watchdogTimer:(id)timer
{
  v15.receiver = self;
  v15.super_class = ABVCardLexer;
  v6 = [(ABVCardLexer *)&v15 init];
  v7 = [data mutableCopy];
  v6->_data = v7;
  v6->_length = [(NSMutableData *)v7 length];
  v6->_bytes = [(NSMutableData *)v6->_data mutableBytes];
  v6->_unicode = [(NSMutableData *)v6->_data abIsUTF16EntourageVCard];
  v6->_timer = timer;
  length = v6->_length;
  if (length >= 0xB)
  {
    bytes = v6->_bytes;
    v10 = *bytes;
    if (v10 == 255)
    {
      if (bytes[1] == 254)
      {
        v6->_unicode = 1;
        v6->_cursor = 2;
        v11 = length >> 1;
        do
        {
          *bytes = bswap32(*bytes) >> 16;
          bytes += 2;
          --v11;
        }

        while (v11);
        goto LABEL_12;
      }
    }

    else if (v10 == 254 && bytes[1] == 255)
    {
      v6->_unicode = 1;
      v6->_cursor = 2;
      goto LABEL_12;
    }

    abIsUTF16EntourageVCard = [(NSMutableData *)v6->_data abIsUTF16EntourageVCard];
    v6->_unicode = abIsUTF16EntourageVCard;
    if (!abIsUTF16EntourageVCard)
    {
      v13 = ABVCardSingleByteTokens;
      if (!ABVCardSingleByteTokens)
      {
        v13 = buildTokenTable(0);
        ABVCardSingleByteTokens = v13;
      }

      goto LABEL_16;
    }

LABEL_12:
    v13 = ABVCardUTF16Tokens;
    if (!ABVCardUTF16Tokens)
    {
      v13 = buildTokenTable(1);
      ABVCardUTF16Tokens = v13;
    }

LABEL_16:
    v6->_activeTokenSets = v13;
    return v6;
  }

  return 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ABVCardLexer;
  [(ABVCardLexer *)&v3 dealloc];
}

- (id)tokenSetForLength:(int)length
{
  v3 = length - 1;
  if (length - 1) <= 6 && ((0x55u >> v3))
  {
    return [(NSArray *)self->_activeTokenSets objectAtIndex:qword_1B7F770C0[v3]];
  }

  else
  {
    return 0;
  }
}

- (int)nextTokenPeakSingle:(BOOL)single length:(int)length
{
  v35 = *MEMORY[0x1E69E9840];
  cursor = self->_cursor;
  self->_peakedPoint = cursor;
  if (self->_length <= cursor)
  {
    v8 = 65537;
  }

  else
  {
    v8 = 0;
  }

  timer = self->_timer;
  if (timer && ![(ABVCardWatchdogTimer *)timer isValid])
  {
    self->_errorCount = 10;
    v8 = 65538;
  }

  peakedPoint = self->_peakedPoint;
  if (self->_length <= peakedPoint)
  {
    v12 = 1;
    goto LABEL_40;
  }

  if (length <= 0)
  {
    lengthCopy = 7;
  }

  else
  {
    lengthCopy = length;
  }

  v12 = v8 == 0;
  if (v8)
  {
LABEL_40:
    if (single)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  singleCopy = single;
  v13 = 1;
  do
  {
    *&v34[v13 - 1] = self->_bytes[peakedPoint];
    v14 = [(ABVCardLexer *)self tokenSetForLength:v13];
    if (v14 && (v15 = v14, Count = CFArrayGetCount(v14), Count >= 1))
    {
      v17 = Count;
      v18 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
        v20 = *(ValueAtIndex + 2);
        v21 = v34;
        do
        {
          while (1)
          {
            v23 = *v20++;
            v22 = v23;
            v25 = *v21++;
            v24 = v25;
            if (v25 != v22)
            {
              break;
            }

            if (!v22)
            {
              goto LABEL_28;
            }
          }
        }

        while ((v24 - 97) <= 0x19 && v24 - 32 == v22);
        if (!v24)
        {
LABEL_28:
          v8 = *(ValueAtIndex + 2);
          break;
        }

        v8 = 0;
        if (++v18 != v17)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v8 = 0;
    }

    peakedPoint = self->_peakedPoint + 1;
    self->_peakedPoint = peakedPoint;
    if (self->_length <= peakedPoint)
    {
      break;
    }

    v27 = v13++ >= lengthCopy;
    v28 = !v27 && v8 == 0;
    v12 = v28;
  }

  while (v28);
  if (!singleCopy)
  {
LABEL_41:
    self->_cursor = peakedPoint;
  }

LABEL_42:
  if (length | v8)
  {
    result = v8;
  }

  else
  {
    result = 65537;
  }

  if ((length | v8) == 0 && !v12)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "[ABVCardLexer nextTokenPeakSingle:length:]", 356, 0, @"vCard Syntax Error, character: %d : %c", v30, v31, v32, self->_cursor);
    ++self->_errorCount;
    return 65538;
  }

  return result;
}

- (int)nextTokenPeakUnicode:(BOOL)unicode length:(int)length
{
  lengthCopy = length;
  v41 = *MEMORY[0x1E69E9840];
  cursor = self->_cursor;
  self->_peakedPoint = cursor;
  if (length <= 0)
  {
    lengthCopy2 = 7;
  }

  else
  {
    lengthCopy2 = length;
  }

  if (self->_length <= cursor)
  {
    v9 = 65537;
  }

  else
  {
    v9 = 0;
  }

  timer = self->_timer;
  if (timer && ![(ABVCardWatchdogTimer *)timer isValid])
  {
    self->_errorCount = 10;
    v9 = 65538;
  }

  peakedPoint = self->_peakedPoint;
  if (self->_length <= peakedPoint)
  {
    v12 = 1;
    if (unicode)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v12 = v9 == 0;
  if (v9)
  {
    if (unicode)
    {
      goto LABEL_16;
    }

LABEL_15:
    self->_cursor = peakedPoint;
    goto LABEL_16;
  }

  unicodeCopy = unicode;
  v39 = lengthCopy;
  v17 = 1;
  do
  {
    bytes = self->_bytes;
    v19 = bytes[peakedPoint];
    v20 = peakedPoint + 1;
    self->_peakedPoint = v20;
    v21 = bytes[v20];
    v22 = &v40[v17];
    *(v22 - 1) = v21 | (v19 << 8);
    *v22 = 0;
    v23 = [(ABVCardLexer *)self tokenSetForLength:v17];
    if (v23 && (v24 = v23, Count = CFArrayGetCount(v23), Count >= 1))
    {
      v26 = Count;
      v27 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, v27);
        v29 = *(ValueAtIndex + 2);
        v30 = v40;
        do
        {
          while (1)
          {
            v32 = *v29++;
            v31 = v32;
            v34 = *v30++;
            v33 = v34;
            if (v34 != v31)
            {
              break;
            }

            if (!v31)
            {
              goto LABEL_38;
            }
          }
        }

        while ((v33 - 97) <= 0x19 && v33 - 32 == v31);
        if (!v33)
        {
LABEL_38:
          v9 = *(ValueAtIndex + 2);
          break;
        }

        v9 = 0;
        if (++v27 != v26)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

    peakedPoint = self->_peakedPoint + 1;
    self->_peakedPoint = peakedPoint;
    if (self->_length <= peakedPoint)
    {
      break;
    }

    v36 = v17++ >= lengthCopy2;
    v37 = !v36 && v9 == 0;
    v12 = v37;
  }

  while (v37);
  lengthCopy = v39;
  if (!unicodeCopy)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (lengthCopy | v9)
  {
    result = v9;
  }

  else
  {
    result = 65537;
  }

  if ((lengthCopy | v9) == 0 && !v12)
  {
    ABDiagnosticsEnabled();
    _ABLog2(3, "[ABVCardLexer nextTokenPeakUnicode:length:]", 406, 0, @"vCard Syntax Error, character: %d : %c", v14, v15, v16, self->_cursor);
    ++self->_errorCount;
    return 65538;
  }

  return result;
}

- (int)nextTokenPeak:(BOOL)peak
{
  if (self->_unicode)
  {
    return [(ABVCardLexer *)self nextTokenPeakUnicode:peak length:0];
  }

  else
  {
    return [(ABVCardLexer *)self nextTokenPeakSingle:peak length:0];
  }
}

- (id)nextQuotedPrintableData
{
  bytes = self->_bytes;
  cursor = self->_cursor;
  v4 = bytes[cursor];
  self->_cursor = cursor + 1;
  if (v4 == 13 || v4 == 10)
  {
    [(ABVCardLexer *)self advancePastEOL];
    return 0;
  }

  else
  {
    v7 = bytes[(cursor + 1)];
    if (v4 <= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = 9;
    }

    v9 = v8 + v4;
    if (v7 <= 0x40)
    {
      v10 = -48;
    }

    else
    {
      v10 = -55;
    }

    if (v7 > 0x60)
    {
      v10 = -87;
    }

    v11 = v7 + 16 * v9 + v10;
    v18 = v11;
    self->_cursor = cursor + 2;
    if (v11 == 13 && (v12 = (cursor + 4), self->_length > v12))
    {
      if (bytes[(cursor + 2)] == 61)
      {
        v13 = bytes[(cursor + 3)];
        v14 = bytes[v12];
        if (v13 <= 0x40)
        {
          v15 = 64;
        }

        else
        {
          v15 = 9;
        }

        v16 = v15 + v13;
        if (v14 <= 0x40)
        {
          v17 = -48;
        }

        else
        {
          v17 = -55;
        }

        if (v14 > 0x60)
        {
          v17 = -87;
        }

        if ((v17 + v14 + 16 * v16) == 10)
        {
          self->_cursor = cursor + 5;
        }
      }

      return ABReturnDelimiterData;
    }

    else
    {
      return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v18 length:1];
    }
  }
}

- (id)nextEscapedCharacter
{
  if ([(ABVCardLexer *)self advancedPastToken:0x8000])
  {
    [(ABVCardLexer *)self advancedPastToken:0x4000];
  }

  bytes = self->_bytes;
  cursor = self->_cursor;
  v5 = bytes[cursor];
  v13 = bytes[cursor];
  v6 = cursor + 1;
  self->_cursor = cursor + 1;
  unicode = self->_unicode;
  if (unicode)
  {
    v5 = bytes[v6];
    v13 = bytes[v6];
    self->_cursor = cursor + 2;
  }

  if (v5 == 110)
  {
    LOBYTE(v5) = 10;
    v13 = 10;
  }

  if (unicode)
  {
    v12[0] = 0;
    v12[1] = v5;
    v8 = MEMORY[0x1E695DEF0];
    v9 = v12;
    v10 = 2;
  }

  else
  {
    v8 = MEMORY[0x1E695DEF0];
    v9 = &v13;
    v10 = 1;
  }

  return [v8 dataWithBytes:v9 length:v10];
}

- (BOOL)advancedPastToken:(int)token
{
  cursor = self->_cursor;
  LODWORD(v4) = self->_cursor;
  if (self->_length > cursor)
  {
    while (([(ABVCardLexer *)self tokenAtCursor]& token) != 0)
    {
      if (self->_unicode)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v4 = self->_cursor + v7;
      self->_cursor = v4;
      if (self->_length <= v4)
      {
        return v4 > cursor;
      }
    }

    LODWORD(v4) = self->_cursor;
  }

  return v4 > cursor;
}

- (id)nextSingleByteStringInEncoding:(unint64_t)encoding quotedPrintable:(BOOL)printable stopTokens:(int)tokens trim:(BOOL)trim
{
  trimCopy = trim;
  printableCopy = printable;
  cursor = self->_cursor;
  v9 = [(ABVCardLexer *)self tokenSetForLength:1];
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v41[1] = 0;
  v11 = self->_cursor;
  if (self->_length <= v11)
  {
LABEL_36:

    self->_cursor = self->_peakedPoint;
    return 0;
  }

  v12 = 0;
  v13 = 0;
  v38 = 0;
  v14 = 1;
  while (1)
  {
    v41[0] = self->_bytes[v11];
    Count = CFArrayGetCount(v9);
    if (Count < 1)
    {
LABEL_15:
      v26 = 0;
      if (!trimCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = Count;
      v17 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v17);
        v19 = ValueAtIndex[2];
        v20 = v41;
        do
        {
          while (1)
          {
            v22 = *v19++;
            v21 = v22;
            v24 = *v20++;
            v23 = v24;
            if (v24 != v21)
            {
              break;
            }

            if (!v21)
            {
              goto LABEL_17;
            }
          }
        }

        while ((v23 - 97) <= 0x19 && v23 - 32 == v21);
        if (v23)
        {
          if (++v17 != v16)
          {
            continue;
          }

          goto LABEL_15;
        }

        break;
      }

LABEL_17:
      v26 = *(ValueAtIndex + 2);
      if (!trimCopy)
      {
        goto LABEL_21;
      }
    }

    if ((v26 & 0x4000) != 0)
    {
      break;
    }

    v14 &= (v26 & tokens) != 0;
    if ((v26 & tokens) == 0)
    {
      v13 = 0;
    }

LABEL_21:
    if (printableCopy && v26 == 1025)
    {
      v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&self->_bytes[cursor] length:v12 freeWhenDone:0];
      [v10 appendData:v27];

      ++self->_cursor;
      nextQuotedPrintableData = [(ABVCardLexer *)self nextQuotedPrintableData];
      if (nextQuotedPrintableData)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v26 != 513)
      {
        goto LABEL_33;
      }

      v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&self->_bytes[cursor] length:v12 freeWhenDone:0];
      [v10 appendData:v29];

      ++self->_cursor;
      nextQuotedPrintableData = [(ABVCardLexer *)self nextEscapedCharacter];
      if (nextQuotedPrintableData)
      {
LABEL_24:
        [v10 appendData:nextQuotedPrintableData];
      }
    }

    v12 = 0;
    v11 = self->_cursor;
    cursor = v11;
LABEL_35:
    if (self->_length <= v11)
    {
      goto LABEL_36;
    }
  }

  v30 = (v14 & 1) == 0;
  v14 = (v14 & 1) != 0;
  v31 = v38;
  if (!v30)
  {
    v31 = v38 + 1;
  }

  v38 = v31;
  if (v30)
  {
    ++v13;
  }

LABEL_33:
  if ((v26 & tokens) == 0)
  {
    ++v12;
    v11 = self->_cursor + 1;
    self->_cursor = v11;
    goto LABEL_35;
  }

  v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&self->_bytes[cursor] length:v12 freeWhenDone:0];
  [v10 appendData:v33];

  if (trimCopy && v38 | v13)
  {
    v34 = [v10 subdataWithRange:{v38, objc_msgSend(v10, "length") - (v13 + v38)}];

    v10 = v34;
  }

  if (encoding == 4000100)
  {
    v35 = v10;

    return [v35 abDecodedUTF7];
  }

  else
  {
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:encoding];

    return v36;
  }
}

- (id)nextUnicodeStringStopTokens:(int)tokens quotedPrintable:(BOOL)printable trim:(BOOL)trim
{
  trimCopy = trim;
  printableCopy = printable;
  cursor = self->_cursor;
  v8 = [(ABVCardLexer *)self tokenSetForLength:1];
  data = [MEMORY[0x1E695DF88] data];
  v41 = 0;
  v10 = self->_cursor;
  if (self->_length <= v10)
  {
LABEL_36:
    self->_cursor = self->_peakedPoint;
    return 0;
  }

  v11 = data;
  v12 = 0;
  v13 = 0;
  v37 = 0;
  v14 = 1;
  while (1)
  {
    bytes = self->_bytes;
    v40[1] = bytes[v10];
    v16 = v10 + 1;
    self->_cursor = v16;
    v40[0] = bytes[v16];
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
LABEL_15:
      v28 = 0;
      if (!trimCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v18 = Count;
      v19 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v19);
        v21 = ValueAtIndex[2];
        v22 = v40;
        do
        {
          while (1)
          {
            v24 = *v21++;
            v23 = v24;
            v26 = *v22++;
            v25 = v26;
            if (v26 != v23)
            {
              break;
            }

            if (!v23)
            {
              goto LABEL_17;
            }
          }
        }

        while ((v25 - 97) <= 0x19 && v25 - 32 == v23);
        if (v25)
        {
          if (++v19 != v18)
          {
            continue;
          }

          goto LABEL_15;
        }

        break;
      }

LABEL_17:
      v28 = *(ValueAtIndex + 2);
      if (!trimCopy)
      {
        goto LABEL_21;
      }
    }

    if ((v28 & 0x4000) != 0)
    {
      break;
    }

    v14 &= (v28 & tokens) != 0;
    if ((v28 & tokens) == 0)
    {
      v13 = 0;
    }

LABEL_21:
    if (printableCopy && v28 == 1025)
    {
      v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&self->_bytes[cursor] length:v12 freeWhenDone:0];
      [v11 appendData:v29];

      ++self->_cursor;
      nextQuotedPrintableData = [(ABVCardLexer *)self nextQuotedPrintableData];
      if (nextQuotedPrintableData)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v28 != 513)
      {
        goto LABEL_33;
      }

      v31 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&self->_bytes[cursor] length:v12 freeWhenDone:0];
      [v11 appendData:v31];

      ++self->_cursor;
      nextQuotedPrintableData = [(ABVCardLexer *)self nextEscapedCharacter];
      if (nextQuotedPrintableData)
      {
LABEL_24:
        [v11 appendData:nextQuotedPrintableData];
      }
    }

    v12 = 0;
    v10 = self->_cursor;
    cursor = v10;
LABEL_35:
    if (self->_length <= v10)
    {
      goto LABEL_36;
    }
  }

  v32 = v37;
  v33 = (v14 & 1) == 0;
  v14 = (v14 & 1) != 0;
  if (!v33)
  {
    v32 = v37 + 2;
  }

  v37 = v32;
  if (v33)
  {
    v13 += 2;
  }

LABEL_33:
  if ((v28 & tokens) == 0)
  {
    v12 += 2;
    v10 = self->_cursor + 1;
    self->_cursor = v10;
    goto LABEL_35;
  }

  v35 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&self->_bytes[cursor] length:v12 freeWhenDone:0];
  [v11 appendData:v35];

  if (trimCopy && v37 | v13)
  {
    v11 = [v11 subdataWithRange:{v37, objc_msgSend(v11, "length") - (v13 + v37)}];
  }

  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:10];
  --self->_cursor;

  return v36;
}

- (BOOL)_advancePastLineFoldingSequenceIfNeeded
{
  if (self->_unicode)
  {
    if (([(ABVCardLexer *)self nextTokenPeakUnicode:1 length:1]& 0x8000) != 0)
    {
      [(ABVCardLexer *)self advancePastEOL];
      if (([(ABVCardLexer *)self nextTokenPeakUnicode:1 length:1]& 0x4000) == 0)
      {
        result = 0;
        v4 = self->_cursor - 2;
LABEL_9:
        self->_cursor = v4;
        return result;
      }

      goto LABEL_10;
    }

    return 0;
  }

  if (([(ABVCardLexer *)self nextTokenPeakSingle:1 length:1]& 0x8000) == 0)
  {
    return 0;
  }

  [(ABVCardLexer *)self advancePastEOL];
  if (([(ABVCardLexer *)self nextTokenPeakSingle:1 length:1]& 0x4000) == 0)
  {
    result = 0;
    v4 = self->_cursor - 1;
    goto LABEL_9;
  }

LABEL_10:
  [(ABVCardLexer *)self advanceToPeakPoint];
  return 1;
}

- (void)_applyNextStringInEncoding:(unint64_t)encoding quotedPrintable:(BOOL)printable stopTokens:(int)tokens trim:(BOOL)trim intoString:(id)string
{
  trimCopy = trim;
  v9 = *&tokens;
  printableCopy = printable;
  if (!self->_unicode)
  {
    v13 = [(ABVCardLexer *)self nextSingleByteStringInEncoding:encoding quotedPrintable:printable stopTokens:*&tokens trim:trim];
    if (!v13)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = [(ABVCardLexer *)self nextUnicodeStringStopTokens:*&tokens quotedPrintable:printable trim:trim];
  if (v13)
  {
LABEL_5:
    [string appendString:v13];
  }

LABEL_6:
  if ([(ABVCardLexer *)self _advancePastLineFoldingSequenceIfNeeded])
  {

    [(ABVCardLexer *)self _applyNextStringInEncoding:encoding quotedPrintable:printableCopy stopTokens:v9 trim:trimCopy intoString:string];
  }
}

- (id)nextStringInEncoding:(unint64_t)encoding quotedPrintable:(BOOL)printable stopTokens:(int)tokens trim:(BOOL)trim
{
  trimCopy = trim;
  v7 = *&tokens;
  printableCopy = printable;
  v11 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(ABVCardLexer *)self _applyNextStringInEncoding:encoding quotedPrintable:printableCopy stopTokens:v7 trim:0 intoString:v11];
  if (trimCopy)
  {
    v12 = _ABStringByTrimmingWhiteSpace(v11);

    v11 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v12];
  }

  return v11;
}

- (int)tokenAtCursor
{
  cursor = self->_cursor;
  v4 = [(ABVCardLexer *)self tokenSetForLength:1];
  v5 = v4;
  if (!self->_unicode)
  {
    v30[1] = 0;
    v30[0] = self->_bytes[cursor];
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v20 = Count;
      v21 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v21);
        v22 = *(ValueAtIndex + 2);
        v23 = v30;
        do
        {
          while (1)
          {
            v25 = *v22++;
            v24 = v25;
            v27 = *v23++;
            v26 = v27;
            if (v27 != v24)
            {
              break;
            }

            if (!v24)
            {
              return *(ValueAtIndex + 2);
            }
          }
        }

        while ((v26 - 97) <= 0x19 && v26 - 32 == v24);
        if (!v26)
        {
          break;
        }

        if (++v21 == v20)
        {
          return 0;
        }
      }

      return *(ValueAtIndex + 2);
    }

    return 0;
  }

  bytes = self->_bytes;
  v7 = bytes[cursor];
  v32 = 0;
  v31[1] = v7;
  v31[0] = bytes[(cursor + 1)];
  v8 = CFArrayGetCount(v4);
  if (v8 < 1)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
    v12 = *(ValueAtIndex + 2);
    v13 = v31;
    do
    {
      while (1)
      {
        v15 = *v12++;
        v14 = v15;
        v17 = *v13++;
        v16 = v17;
        if (v17 != v14)
        {
          break;
        }

        if (!v14)
        {
          return *(ValueAtIndex + 2);
        }
      }
    }

    while ((v16 - 97) <= 0x19 && v16 - 32 == v14);
    if (!v16)
    {
      break;
    }

    if (++v10 == v9)
    {
      return 0;
    }
  }

  return *(ValueAtIndex + 2);
}

- (id)nextArraySeperatedByToken:(int)token stoppingAt:(int)at inEncoding:(unint64_t)encoding
{
  array = [MEMORY[0x1E695DF70] array];
  [(ABVCardLexer *)self _advancePastLineFoldingSequenceIfNeeded];
  while (([(ABVCardLexer *)self tokenAtCursor]& at) == 0)
  {
    if (self->_length <= self->_cursor)
    {
      break;
    }

    v10 = [(ABVCardLexer *)self nextStringInEncoding:encoding quotedPrintable:0 stopTokens:at | token trim:1];
    if (v10)
    {
      v11 = v10;
      if ([v10 length])
      {
        [array addObject:v11];
      }
    }

    if (([(ABVCardLexer *)self tokenAtCursor]& token) != 0)
    {
      if (self->_unicode)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      self->_cursor += v12;
    }
  }

  return array;
}

- (id)nextUnicodeBase64Line:(BOOL *)line
{
  data = [MEMORY[0x1E695DF88] data];
  v6 = [(ABVCardLexer *)self tokenSetForLength:1];
  v22 = 0;
  cursor = self->_cursor;
  if (self->_length <= cursor)
  {
    return data;
  }

  v8 = v6;
  do
  {
    bytes = self->_bytes;
    v21[1] = bytes[cursor];
    v10 = cursor + 1;
    self->_cursor = v10;
    v21[0] = bytes[v10];
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
LABEL_20:
      [data appendBytes:v21 length:1];
      goto LABEL_23;
    }

    v12 = Count;
    v13 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v13);
      for (i = 0; ; i += 2)
      {
        v16 = *(ValueAtIndex[2] + i);
        v17 = *&v21[i];
        if (v17 != v16)
        {
          break;
        }

        if (!*(ValueAtIndex[2] + i))
        {
          goto LABEL_18;
        }

LABEL_14:
        ;
      }

      if ((v17 - 97) <= 0x19 && v17 - 32 == v16)
      {
        goto LABEL_14;
      }

      if (*&v21[i])
      {
        if (++v13 != v12)
        {
          continue;
        }

        goto LABEL_20;
      }

      break;
    }

LABEL_18:
    v19 = *(ValueAtIndex + 2);
    if (v19 == 1025)
    {
      [data appendBytes:v21 length:1];
      *line = 1;
      goto LABEL_23;
    }

    if (!v19)
    {
      goto LABEL_20;
    }

    if ((v19 & 0x8000) != 0)
    {
      --self->_cursor;
      return data;
    }

LABEL_23:
    cursor = self->_cursor + 1;
    self->_cursor = cursor;
  }

  while (self->_length > cursor);
  return data;
}

- (id)nextSingleByteBase64Line:(BOOL *)line
{
  data = [MEMORY[0x1E695DF88] data];
  v6 = [(ABVCardLexer *)self tokenSetForLength:1];
  v19[1] = 0;
  cursor = self->_cursor;
  if (self->_length <= cursor)
  {
    return data;
  }

  v8 = v6;
  while (2)
  {
    v19[0] = self->_bytes[cursor];
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
LABEL_20:
      [data appendBytes:v19 length:1];
      goto LABEL_23;
    }

    v10 = Count;
    v11 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
      for (i = 0; ; ++i)
      {
        v14 = *(ValueAtIndex[2] + i);
        v15 = v19[i];
        if (v15 != v14)
        {
          break;
        }

        if (!*(ValueAtIndex[2] + i))
        {
          goto LABEL_18;
        }

LABEL_14:
        ;
      }

      if ((v15 - 97) <= 0x19 && v15 - 32 == v14)
      {
        goto LABEL_14;
      }

      if (v19[i])
      {
        if (++v11 != v10)
        {
          continue;
        }

        goto LABEL_20;
      }

      break;
    }

LABEL_18:
    v17 = *(ValueAtIndex + 2);
    if (v17 == 1025)
    {
      [data appendBytes:v19 length:1];
      *line = 1;
      goto LABEL_23;
    }

    if (!v17)
    {
      goto LABEL_20;
    }

    if ((v17 & 0x8000) == 0)
    {
LABEL_23:
      cursor = self->_cursor + 1;
      self->_cursor = cursor;
      if (self->_length <= cursor)
      {
        return data;
      }

      continue;
    }

    return data;
  }
}

- (id)nextBase64Line:(BOOL *)line
{
  if (self->_unicode)
  {
    return [(ABVCardLexer *)self nextUnicodeBase64Line:line];
  }

  else
  {
    return [(ABVCardLexer *)self nextSingleByteBase64Line:line];
  }
}

- (id)nextBase64Data
{
  v7 = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF88]);
  do
  {
    v4 = [(ABVCardLexer *)self nextBase64Line:&v7];
    if (!v4)
    {
      break;
    }

    [v3 appendData:v4];
    [v3 appendData:ABReturnDelimiterData];
    cursor = self->_cursor;
    [(ABVCardLexer *)self advanceToEOL];
    [(ABVCardLexer *)self advancePastEOL];
    if (![(ABVCardLexer *)self advanceToString])
    {
      v7 = 1;
      self->_cursor = cursor;
      return v3;
    }
  }

  while ((v7 & 1) == 0);
  return v3;
}

- (int)advanceToUnicodeString
{
  v3 = [(ABVCardLexer *)self tokenSetForLength:1];
  v22 = 0;
  cursor = self->_cursor;
  self->_peakedPoint = cursor;
  if (self->_length <= cursor)
  {
LABEL_18:
    v6 = 0;
  }

  else
  {
    v5 = v3;
    v6 = 0;
    while (1)
    {
      bytes = self->_bytes;
      v21[1] = bytes[cursor];
      v8 = cursor + 1;
      self->_peakedPoint = v8;
      v21[0] = bytes[v8];
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        break;
      }

      v10 = Count;
      v11 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v11);
        v13 = ValueAtIndex[2];
        v14 = v21;
        do
        {
          while (1)
          {
            v16 = *v13++;
            v15 = v16;
            v18 = *v14++;
            v17 = v18;
            if (v18 != v15)
            {
              break;
            }

            if (!v15)
            {
              goto LABEL_16;
            }
          }
        }

        while ((v17 - 97) <= 0x19 && v17 - 32 == v15);
        if (v17)
        {
          if (++v11 != v10)
          {
            continue;
          }

          goto LABEL_19;
        }

        break;
      }

LABEL_16:
      if ((*(ValueAtIndex + 9) & 0x40) == 0)
      {
        break;
      }

      ++v6;
      cursor = self->_peakedPoint + 1;
      self->_peakedPoint = cursor;
      if (self->_length <= cursor)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    LODWORD(cursor) = self->_peakedPoint - 1;
    self->_peakedPoint = cursor;
  }

  self->_cursor = cursor;
  return v6;
}

- (int)advanceToSingleByteString
{
  v3 = [(ABVCardLexer *)self tokenSetForLength:1];
  v19[1] = 0;
  cursor = self->_cursor;
  self->_peakedPoint = cursor;
  if (self->_length <= cursor)
  {
LABEL_18:
    v6 = 0;
  }

  else
  {
    v5 = v3;
    v6 = 0;
    while (1)
    {
      v19[0] = self->_bytes[cursor];
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        break;
      }

      v8 = Count;
      v9 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        v11 = ValueAtIndex[2];
        v12 = v19;
        do
        {
          while (1)
          {
            v14 = *v11++;
            v13 = v14;
            v16 = *v12++;
            v15 = v16;
            if (v16 != v13)
            {
              break;
            }

            if (!v13)
            {
              goto LABEL_16;
            }
          }
        }

        while ((v15 - 97) <= 0x19 && v15 - 32 == v13);
        if (v15)
        {
          if (++v9 != v8)
          {
            continue;
          }

          goto LABEL_19;
        }

        break;
      }

LABEL_16:
      if ((*(ValueAtIndex + 9) & 0x40) == 0)
      {
        break;
      }

      ++v6;
      cursor = self->_peakedPoint + 1;
      self->_peakedPoint = cursor;
      if (self->_length <= cursor)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    LODWORD(cursor) = self->_peakedPoint;
  }

  self->_cursor = cursor;
  return v6;
}

- (int)advanceToString
{
  if (self->_unicode)
  {
    return [(ABVCardLexer *)self advanceToUnicodeString];
  }

  else
  {
    return [(ABVCardLexer *)self advanceToSingleByteString];
  }
}

- (BOOL)advanceToToken:(int)token throughTypes:(int)types
{
  v7 = 0;
  while (v7 != token)
  {
    v8 = [(ABVCardLexer *)self nextTokenPeak:0];
    if (v8 == token)
    {
      break;
    }

    v7 = v8;
    result = 0;
    v11 = (v7 & types) == 0 && types != 0;
    if ((v7 - 65537) < 2 || v11)
    {
      return result;
    }
  }

  return 1;
}

- (BOOL)advanceToEOLUnicode
{
  length = self->_length;
  cursor = self->_cursor;
  if (length <= cursor)
  {
    return 0;
  }

  bytes = self->_bytes;
  for (i = cursor + 2; ; i += 2)
  {
    v6 = bytes[i - 1] | (bytes[cursor] << 8);
    if (v6 == 10 || v6 == 13)
    {
      break;
    }

    self->_cursor = i;
    cursor = i;
    if (length <= i)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)advanceToEOLSingle
{
  length = self->_length;
  cursor = self->_cursor;
  if (length <= cursor)
  {
    return 0;
  }

  bytes = self->_bytes;
  for (i = cursor + 1; ; ++i)
  {
    v6 = bytes[cursor];
    if (v6 == 10 || v6 == 13)
    {
      break;
    }

    self->_cursor = i;
    cursor = i;
    if (length <= i)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)advanceToEOL
{
  if (self->_unicode)
  {
    return [(ABVCardLexer *)self advanceToEOLUnicode];
  }

  else
  {
    return [(ABVCardLexer *)self advanceToEOLSingle];
  }
}

- (BOOL)advancePastEOLUnicode
{
  v3 = [(ABVCardLexer *)self tokenSetForLength:1];
  v21 = 0;
  cursor = self->_cursor;
  self->_peakedPoint = cursor;
  if (self->_length <= cursor)
  {
LABEL_18:
    result = 0;
  }

  else
  {
    v5 = v3;
    while (1)
    {
      bytes = self->_bytes;
      v20[1] = bytes[cursor];
      v7 = cursor + 1;
      self->_peakedPoint = v7;
      v20[0] = bytes[v7];
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        break;
      }

      v9 = Count;
      v10 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v10);
        v12 = ValueAtIndex[2];
        v13 = v20;
        do
        {
          while (1)
          {
            v15 = *v12++;
            v14 = v15;
            v17 = *v13++;
            v16 = v17;
            if (v17 != v14)
            {
              break;
            }

            if (!v14)
            {
              goto LABEL_16;
            }
          }
        }

        while ((v16 - 97) <= 0x19 && v16 - 32 == v14);
        if (v16)
        {
          if (++v10 != v9)
          {
            continue;
          }

          goto LABEL_19;
        }

        break;
      }

LABEL_16:
      if ((*(ValueAtIndex + 9) & 0x80) == 0)
      {
        break;
      }

      cursor = self->_peakedPoint + 1;
      self->_peakedPoint = cursor;
      if (self->_length <= cursor)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    LODWORD(cursor) = self->_peakedPoint - 1;
    self->_peakedPoint = cursor;
    result = 1;
  }

  self->_cursor = cursor;
  return result;
}

- (BOOL)advancePastEOLSingle
{
  self->_peakedPoint = self->_cursor;
  v3 = [(ABVCardLexer *)self tokenSetForLength:1];
  v18[1] = 0;
  peakedPoint = self->_peakedPoint;
  if (self->_length <= peakedPoint)
  {
LABEL_18:
    result = 0;
  }

  else
  {
    v5 = v3;
    while (1)
    {
      v18[0] = self->_bytes[peakedPoint];
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
        break;
      }

      v7 = Count;
      v8 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        v10 = ValueAtIndex[2];
        v11 = v18;
        do
        {
          while (1)
          {
            v13 = *v10++;
            v12 = v13;
            v15 = *v11++;
            v14 = v15;
            if (v15 != v12)
            {
              break;
            }

            if (!v12)
            {
              goto LABEL_16;
            }
          }
        }

        while ((v14 - 97) <= 0x19 && v14 - 32 == v12);
        if (v14)
        {
          if (++v8 != v7)
          {
            continue;
          }

          goto LABEL_19;
        }

        break;
      }

LABEL_16:
      if ((*(ValueAtIndex + 9) & 0x80) == 0)
      {
        break;
      }

      peakedPoint = self->_peakedPoint + 1;
      self->_peakedPoint = peakedPoint;
      if (self->_length <= peakedPoint)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    LODWORD(peakedPoint) = self->_peakedPoint;
    result = 1;
  }

  self->_cursor = peakedPoint;
  return result;
}

- (BOOL)advancePastEOL
{
  if (self->_unicode)
  {
    return [(ABVCardLexer *)self advancePastEOLUnicode];
  }

  else
  {
    return [(ABVCardLexer *)self advancePastEOLSingle];
  }
}

@end