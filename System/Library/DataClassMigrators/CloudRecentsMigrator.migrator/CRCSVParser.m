@interface CRCSVParser
- (BOOL)_ensureBufferSize:(unint64_t)a3;
- (BOOL)parse;
- (CRCSVParser)initWithPath:(id)a3;
- (id)_consumeSingleCharacter:(char)a3;
- (id)_parseEscapedText;
- (id)_parseField;
- (id)_parseLineSeparator;
- (id)_parseRecord;
- (id)_parseSeparator;
- (id)_parseText;
- (id)_parseTwoDoubleQuotes;
- (void)_fillBuffer:(unint64_t)a3;
- (void)dealloc;
- (void)didFindError:(id)a3;
- (void)didFinishParsing;
- (void)setParsedLineBlock:(id)a3;
- (void)setSeparator:(id)a3;
@end

@implementation CRCSVParser

- (CRCSVParser)initWithPath:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRCSVParser;
  v5 = [(CRCSVParser *)&v13 init];
  v6 = v5;
  if (v5)
  {
    [(CRCSVParser *)v5 setSeparator:@", "];
    v7 = objc_alloc_init(NSMutableData);
    data = v6->_data;
    v6->_data = v7;

    v9 = [[NSInputStream alloc] initWithFileAtPath:v4];
    stream = v6->_stream;
    v6->_stream = v9;

    [(NSInputStream *)v6->_stream open];
    v11 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(NSInputStream *)self->_stream close];
  v3.receiver = self;
  v3.super_class = CRCSVParser;
  [(CRCSVParser *)&v3 dealloc];
}

- (void)setSeparator:(id)a3
{
  v4 = a3;
  if (self->_separator != v4)
  {
    v9 = v4;
    v5 = [(NSString *)v4 copy];
    separator = self->_separator;
    self->_separator = v5;

    v7 = [(NSString *)v9 dataUsingEncoding:4];
    separatorData = self->_separatorData;
    self->_separatorData = v7;

    v4 = v9;
  }
}

- (void)setParsedLineBlock:(id)a3
{
  v4 = objc_retainBlock(a3);
  parsedLineBlock = self->_parsedLineBlock;
  self->_parsedLineBlock = v4;

  _objc_release_x1();
}

- (void)didFindError:(id)a3
{
  v5 = a3;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_22B4(v5, v6);
  }

  parserError = self->_parserError;
  p_parserError = &self->_parserError;
  if (!parserError)
  {
    objc_storeStrong(p_parserError, a3);
  }
}

- (void)didFinishParsing
{
  [(NSInputStream *)self->_stream close];
  stream = self->_stream;
  self->_stream = 0;
}

- (void)_fillBuffer:(unint64_t)a3
{
  v3 = __chkstk_darwin(self, a2, a3);
  v5 = v4;
  v6 = v3;
  if ([v3 shouldProceedParsing] && objc_msgSend(v6, "_availableBytes") < v5)
  {
    v7 = 4096;
    v8 = __b;
    memset(__b, 170, sizeof(__b));
    if (v5 > 0x1000)
    {
      v8 = malloc_type_malloc(v5, 0x555C47BDuLL);
      v7 = v5;
    }

    v9 = [v6[2] read:v8 maxLength:v7];
    if ((v9 & 0x8000000000000000) != 0)
    {
      v11 = [NSError errorWithDomain:@"CRCSVParserErrorDomain" code:0 userInfo:0];
      [v6 didFindError:v11];
    }

    else
    {
      v10 = v6[5];
      if (v10)
      {
        [v6[4] replaceBytesInRange:0 withBytes:v10 length:{0, 0}];
        v6[5] = 0;
      }

      if (v9)
      {
        [v6[4] appendBytes:v8 length:v9];
      }
    }

    if (v8 != __b)
    {
      free(v8);
    }
  }
}

- (BOOL)_ensureBufferSize:(unint64_t)a3
{
  [(CRCSVParser *)self _fillBuffer:?];
  if ([(CRCSVParser *)self _availableBytes]< a3)
  {
    v5 = [NSError errorWithDomain:@"CRCSVParserErrorDomain" code:1 userInfo:0];
    [(CRCSVParser *)self didFindError:v5];
  }

  v6 = [(CRCSVParser *)self shouldProceedParsing];
  if (v6)
  {
    LOBYTE(v6) = [(CRCSVParser *)self _availableBytes]>= a3;
  }

  return v6;
}

- (id)_consumeSingleCharacter:(char)a3
{
  v3 = a3;
  if ([(CRCSVParser *)self _ensureBufferSize:1]&& (v5 = [(NSMutableData *)self->_data bytes], v3 == v5[self->_head]))
  {
    v6 = [[NSString alloc] initWithBytes:&v5[self->_head++] length:1 encoding:4];
    self->_consumedNullText = 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_parseLineSeparator
{
  v3 = [(CRCSVParser *)self _consumeSingleCharacter:13];
  if (v3)
  {
    [(CRCSVParser *)self _consumeSingleCharacter:10];

    return @"\n";
  }

  v4 = [(CRCSVParser *)self _consumeSingleCharacter:10];

  if (v4)
  {
    return @"\n";
  }

  return 0;
}

- (id)_parseTwoDoubleQuotes
{
  if (![(CRCSVParser *)self _ensureBufferSize:2])
  {
    return 0;
  }

  v3 = [(NSMutableData *)self->_data bytes];
  head = self->_head;
  if (v3[head] != 34 || v3[head + 1] != 34)
  {
    return 0;
  }

  self->_head = head + 2;
  self->_consumedNullText = 0;
  return @"";
}

- (id)_parseSeparator
{
  if ([(CRCSVParser *)self _ensureBufferSize:[(NSData *)self->_separatorData length]]&& ([(NSMutableData *)self->_data rangeOfData:self->_separatorData options:2 range:self->_head, [(NSMutableData *)self->_data length]- self->_head], v3 == [(NSData *)self->_separatorData length]))
  {
    v4 = self->_separator;
    self->_head += [(NSData *)self->_separatorData length];
    self->_consumedNullText = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_parseText
{
  if (self->_consumedNullText || ([(CRCSVParser *)self _fillBuffer:128], v3 = [(NSMutableData *)self->_data bytes], head = self->_head, v5 = [(CRCSVParser *)self _availableBytes], v6 = [(NSData *)self->_separatorData bytes], v7 = [(NSData *)self->_separatorData length], ![(CRCSVParser *)self shouldProceedParsing]))
  {
LABEL_27:
    v18 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 128;
    if (v5 >= 0x80)
    {
      v10 = 128;
    }

    else
    {
      v10 = v5;
    }

    v11 = &v3[head];
    while (v8 >= v10)
    {
LABEL_18:
      v9 *= 2;
      [(CRCSVParser *)self _fillBuffer:v9];
      v15 = [(CRCSVParser *)self _availableBytes];
      if (v9 >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v9;
      }

      if (v16 == v10)
      {
        v19 = [NSError errorWithDomain:@"CRCSVParserErrorDomain" code:1 userInfo:0];
        [(CRCSVParser *)self didFindError:v19];
        goto LABEL_26;
      }

      v11 = [(NSMutableData *)self->_data bytes]+ self->_head;
      v17 = [(CRCSVParser *)self shouldProceedParsing];
      v18 = 0;
      v10 = v16;
      if ((v17 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    while (1)
    {
      v12 = v11[v8];
      if (v12 <= 0x22 && ((1 << v12) & 0x400002400) != 0)
      {
        break;
      }

      if (v12 == *v6)
      {
        if (v10 - v8 < v7)
        {
          goto LABEL_18;
        }

        [(NSMutableData *)self->_data rangeOfData:self->_separatorData options:2 range:self->_head + v8, [(NSMutableData *)self->_data length]- v8 - self->_head];
        if (v14 == v7)
        {
          break;
        }
      }

      if (++v8 == v10)
      {
        v8 = v10;
        goto LABEL_18;
      }
    }

    v18 = [[NSString alloc] initWithBytes:v11 length:v8 encoding:4];
    self->_head += v8;
    self->_consumedNullText = v8 == 0;
    if (!v18)
    {
      v19 = [NSError errorWithDomain:@"CRCSVParserErrorDomain" code:3 userInfo:0];
      [(CRCSVParser *)self didFindError:v19];
LABEL_26:

      goto LABEL_27;
    }
  }

LABEL_28:

  return v18;
}

- (id)_parseEscapedText
{
  v3 = [(CRCSVParser *)self _parseDoubleQuote];

  if (v3)
  {
    v3 = +[NSMutableString string];
    while (1)
    {
      v4 = [(CRCSVParser *)self _parseText];
      if (!v4)
      {
        v4 = [(CRCSVParser *)self _parseSeparator];
        if (!v4)
        {
          v4 = [(CRCSVParser *)self _parseLineSeparator];
          if (!v4)
          {
            v5 = [(CRCSVParser *)self _parseTwoDoubleQuotes];

            v4 = @"";
            if (!v5)
            {
              break;
            }
          }
        }
      }

      [v3 appendString:v4];
    }

    v6 = [(CRCSVParser *)self _parseDoubleQuote];

    if (!v6)
    {
      v7 = [NSError errorWithDomain:@"CRCSVParserErrorDomain" code:4 userInfo:0];
      [(CRCSVParser *)self didFindError:v7];

      v3 = 0;
    }
  }

  return v3;
}

- (id)_parseField
{
  v3 = [(CRCSVParser *)self _parseEscapedText];
  if (!v3)
  {
    v3 = [(CRCSVParser *)self _parseText];
  }

  return v3;
}

- (id)_parseRecord
{
  if ([(CRCSVParser *)self parseableDataAvailable]&& ([(CRCSVParser *)self _parseField], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    for (i = [NSMutableArray arrayWithObject:v3];
    {
      v6 = [(CRCSVParser *)self _parseSeparator];

      if (!v6)
      {
        break;
      }

      v7 = [(CRCSVParser *)self _parseField];

      if (!v7)
      {
        v8 = [NSError errorWithDomain:@"CRCSVParserErrorDomain" code:2 userInfo:0];
        [(CRCSVParser *)self didFindError:v8];

        v4 = 0;
        i = 0;
        break;
      }

      v4 = v7;
    }
  }

  else
  {
    i = 0;
  }

  return i;
}

- (BOOL)parse
{
  if (!self->_stream)
  {
    sub_232C();
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [(CRCSVParser *)self _parseRecord];
  if ([v4 count])
  {
    (*(self->_parsedLineBlock + 2))();
  }

  objc_autoreleasePoolPop(v3);
  if ([(CRCSVParser *)self shouldProceedParsing])
  {
    do
    {
      if (![(CRCSVParser *)self parseableDataAvailable])
      {
        break;
      }

      v5 = objc_autoreleasePoolPush();
      v6 = [(CRCSVParser *)self _parseLineSeparator];
      v7 = [(CRCSVParser *)self _parseRecord];
      if ([v7 count])
      {
        (*(self->_parsedLineBlock + 2))();
      }

      objc_autoreleasePoolPop(v5);
    }

    while ([(CRCSVParser *)self shouldProceedParsing]);
  }

  if ([(CRCSVParser *)self shouldProceedParsing])
  {
    [(CRCSVParser *)self didFinishParsing];
  }

  return self->_parserError == 0;
}

@end