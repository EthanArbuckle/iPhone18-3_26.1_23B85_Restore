@interface KSXMLWriter
+ (id)stringFromAttributeValue:(id)a3;
+ (id)stringFromCharacters:(id)a3;
+ (void)initialize;
- (BOOL)hasOpenElement:(id)a3;
- (BOOL)validateElement:(id)a3;
- (KSXMLWriter)initWithOutputWriter:(id)a3;
- (KSXMLWriter)initWithOutputWriter:(id)a3 encoding:(unint64_t)a4;
- (NSArray)openElements;
- (id)currentAttributes;
- (id)validateAttribute:(id)a3 value:(id)a4 ofElement:(id)a5;
- (id)writeElement:(id)a3 contentsInvocationTarget:(id)a4;
- (void)close;
- (void)decreaseIndentationLevel;
- (void)didStartElement;
- (void)endElement;
- (void)increaseIndentationLevel;
- (void)popElement;
- (void)setEncoding:(unint64_t)a3;
- (void)startDocumentWithDocType:(id)a3 encoding:(unint64_t)a4;
- (void)startElement:(id)a3;
- (void)startElement:(id)a3 attributes:(id)a4;
- (void)startElement:(id)a3 writeInline:(BOOL)a4;
- (void)startNewline;
- (void)startWritingInline;
- (void)writeAttribute:(id)a3 value:(id)a4;
- (void)writeAttributeValue:(id)a3;
- (void)writeComment:(id)a3;
- (void)writeElement:(id)a3 text:(id)a4;
- (void)writeEndTag:(id)a3;
- (void)writeString:(id)a3;
- (void)writeStringByEscapingXMLEntities:(id)a3 escapeQuot:(BOOL)a4;
@end

@implementation KSXMLWriter

- (void)writeString:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:563 description:{@"Invalid parameter not satisfying: %@", @"nil != string"}];
  }

  if (self->_elementIsEmpty && [(__CFString *)v5 length])
  {
    self->_elementIsEmpty = 0;
    [(KSXMLWriter *)self closeStartTag];
  }

  Length = CFStringGetLength(v5);
  if (Length)
  {
    v7 = Length;
    v8 = 0;
    do
    {
      v9 = CFStringConvertNSStringEncodingToEncoding([(KSXMLWriter *)self encoding]);
      v27.location = v8;
      v27.length = v7;
      Bytes = CFStringGetBytes(v5, v27, v9, 0, 0, 0, 0, 0);
      if (Bytes >= v7)
      {
        if (v8)
        {
          v28.location = v8;
          v28.length = v7;
          v15 = CFStringCreateWithSubstring(0, v5, v28);
          v17.receiver = self;
          v17.super_class = KSXMLWriter;
          [(KSForwardingWriter *)&v17 writeString:v15];
          CFRelease(v15);
        }

        else
        {
          v18.receiver = self;
          v18.super_class = KSXMLWriter;
          [(KSForwardingWriter *)&v18 writeString:v5];
        }

        break;
      }

      v11 = Bytes;
      if (Bytes)
      {
        v12 = [(__CFString *)v5 substringWithRange:v8, Bytes];
        v26.receiver = self;
        v26.super_class = KSXMLWriter;
        [(KSForwardingWriter *)&v26 writeString:v12];
      }

      v13 = [(__CFString *)v5 characterAtIndex:v11 + v8];
      if (v13 > 8210)
      {
        switch(v13)
        {
          case 0x2013:
            v22.receiver = self;
            v22.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v22 writeString:@"&ndash;"];
            break;
          case 0x2014:
            v21.receiver = self;
            v21.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v21 writeString:@"&mdash;"];
            break;
          case 0x20AC:
            v20.receiver = self;
            v20.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v20 writeString:@"&euro;"];
            break;
          default:
            goto LABEL_22;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xA0:
            v25.receiver = self;
            v25.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v25 writeString:@"&nbsp;"];
            break;
          case 0xA9:
            v24.receiver = self;
            v24.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v24 writeString:@"&copy;"];
            break;
          case 0xAE:
            v23.receiver = self;
            v23.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v23 writeString:@"&reg;"];
            break;
          default:
LABEL_22:
            v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"&#%d", v13];;
            v19.receiver = self;
            v19.super_class = KSXMLWriter;
            [(KSForwardingWriter *)&v19 writeString:v14];

            break;
        }
      }

      v8 += v11 + 1;
      v7 -= v11 + 1;
    }

    while (v7);
  }
}

- (void)setEncoding:(unint64_t)a3
{
  if (a3 > 0xA || ((1 << a3) & 0x432) == 0)
  {
    v5 = CFStringConvertNSStringEncodingToEncoding(a3);
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported character encoding %@ (%u)", CFStringGetNameOfEncoding(v5), a3}];
  }

  self->_encoding = a3;
}

- (void)writeStringByEscapingXMLEntities:(id)a3 escapeQuot:(BOOL)a4
{
  v4 = a4;
  v24 = a3;
  v7 = &sCharactersToEntityEscapeWithQuot;
  if (!v4)
  {
    v7 = &sCharactersToEntityEscapeWithoutQuot;
  }

  v8 = *v7;
  v9 = [v24 length];
  v10 = [v24 rangeOfCharacterFromSet:v8 options:0 range:{0, v9}];
  v12 = v24;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(KSXMLWriter *)self writeString:v24];
    goto LABEL_27;
  }

  if (v9)
  {
    v13 = v10;
    v14 = v11;
    v15 = 0;
    do
    {
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = v9;
      }

      else
      {
        v16 = v13 - v15;
      }

      if (v16)
      {
        v17 = [v24 substringWithRange:v15];
        [(KSXMLWriter *)self writeString:v17];
      }

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v14 != 1)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:516 description:@"trying to escaping non-single character string"];
      }

      v18 = [v24 characterAtIndex:v13];
      if (v18 > 59)
      {
        if (v18 == 60)
        {
          v19 = self;
          v20 = @"&lt;";
          goto LABEL_25;
        }

        if (v18 == 62)
        {
          v19 = self;
          v20 = @"&gt;";
          goto LABEL_25;
        }
      }

      else
      {
        if (v18 == 34)
        {
          v19 = self;
          v20 = @"&quot;";
          goto LABEL_25;
        }

        if (v18 == 38)
        {
          v19 = self;
          v20 = @"&amp;";
LABEL_25:
          [(KSXMLWriter *)v19 writeString:v20];
          goto LABEL_26;
        }
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"&#%d", v18];;
      [(KSXMLWriter *)self writeString:v21];

LABEL_26:
      v15 = v13 + v14;
      v9 = [v24 length] - (v13 + v14);
      v13 = [v24 rangeOfCharacterFromSet:v8 options:0 range:{v13 + v14, v9}];
      v14 = v22;
    }

    while (v9);
  }

LABEL_27:
}

- (void)startWritingInline
{
  if (self->_inlineWritingLevel - 0x7FFFFFFFFFFFFFFFLL <= 0x8000000000000001)
  {
    self->_inlineWritingLevel = [(KSXMLWriter *)self openElementsCount];
  }
}

- (void)writeEndTag:(id)a3
{
  v4 = a3;
  [(KSXMLWriter *)self writeString:@"</"];
  [(KSXMLWriter *)self writeString:v4];

  [(KSXMLWriter *)self writeString:@">"];
}

- (void)didStartElement
{
  v3 = [(KSXMLWriter *)self topElement];
  self->_elementIsEmpty = [(KSXMLWriter *)self elementCanBeEmpty:v3];

  if (!self->_elementIsEmpty)
  {

    [(KSXMLWriter *)self closeStartTag];
  }
}

- (BOOL)hasOpenElement:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_openElements;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:{v4, v11}])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (NSArray)openElements
{
  v2 = [(NSMutableArray *)self->_openElements copy];

  return v2;
}

- (id)validateAttribute:(id)a3 value:(id)a4 ofElement:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"element"}];

LABEL_3:

  return v10;
}

- (BOOL)validateElement:(id)a3
{
  if (!a3)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"element"}];
  }

  return 1;
}

- (void)decreaseIndentationLevel
{
  v3 = [(KSXMLWriter *)self indentationLevel]- 1;

  [(KSXMLWriter *)self setIndentationLevel:v3];
}

- (void)increaseIndentationLevel
{
  v3 = [(KSXMLWriter *)self indentationLevel]+ 1;

  [(KSXMLWriter *)self setIndentationLevel:v3];
}

- (void)writeComment:(id)a3
{
  v4 = a3;
  [(KSXMLWriter *)self openComment];
  [(KSXMLWriter *)self writeStringByEscapingXMLEntities:v4 escapeQuot:1];

  [(KSXMLWriter *)self closeComment];
}

- (void)startNewline
{
  [(KSXMLWriter *)self writeString:@"\n"];
  if ([(KSXMLWriter *)self indentationLevel]>= 1)
  {
    v3 = 0;
    do
    {
      [(KSXMLWriter *)self writeString:@"\t"];
      ++v3;
    }

    while ([(KSXMLWriter *)self indentationLevel]> v3);
  }
}

- (void)writeAttribute:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [v6 description];
  [(KSXMLWriter *)self writeString:@" "];
  [(KSXMLWriter *)self writeString:v7];

  v8 = [MEMORY[0x277CBEB68] null];

  if (v8 != v6)
  {
    [(KSXMLWriter *)self writeString:@"="];
    [(KSXMLWriter *)self writeAttributeValue:v9];
    [(KSXMLWriter *)self writeString:@""];
  }
}

- (void)writeAttributeValue:(id)a3
{
  v4 = [a3 stringByUnescapingCrititcalXMLEntities];
  [(KSXMLWriter *)self writeStringByEscapingXMLEntities:v4 escapeQuot:1];
}

- (id)currentAttributes
{
  v2 = [(KSXMLAttributes *)self->_attributes copy];

  return v2;
}

- (void)popElement
{
  self->_elementIsEmpty = 0;
  [(NSMutableArray *)self->_openElements removeLastObject];
  if (![(KSXMLWriter *)self isWritingInline])
  {

    [(KSXMLWriter *)self stopWritingInline];
  }
}

- (void)endElement
{
  [(KSXMLWriter *)self decreaseIndentationLevel];
  if (![(KSXMLWriter *)self isWritingInline])
  {
    [(KSXMLWriter *)self startNewline];
  }

  if (self->_elementIsEmpty)
  {
    [(KSXMLWriter *)self popElement];

    [(KSXMLWriter *)self closeEmptyElementTag];
  }

  else
  {
    v3 = [(KSXMLWriter *)self topElement];
    [(KSXMLWriter *)self writeEndTag:v3];

    [(KSXMLWriter *)self popElement];
  }
}

- (void)startElement:(id)a3 attributes:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        [(KSXMLWriter *)self pushAttribute:v12 value:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(KSXMLWriter *)self startElement:v6];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startElement:(id)a3 writeInline:(BOOL)a4
{
  v6 = a3;
  if (!a4)
  {
    [(KSXMLWriter *)self startNewline];
    [(KSXMLWriter *)self stopWritingInline];
  }

  [(KSXMLWriter *)self willStartElement:v6];
  [(KSXMLWriter *)self writeString:@"<"];
  [(KSXMLWriter *)self writeString:v6];
  [(KSXMLWriter *)self pushElement:v6];
  [(KSXMLWriter *)self startWritingInline];
  [(KSXMLAttributes *)self->_attributes writeAttributes:self];
  [(KSXMLAttributes *)self->_attributes close];
  [(KSXMLWriter *)self didStartElement];
  [(KSXMLWriter *)self increaseIndentationLevel];
}

- (void)startElement:(id)a3
{
  v4 = a3;
  [(KSXMLWriter *)self startElement:v4 writeInline:[(KSXMLWriter *)self canWriteElementInline:v4]];
}

- (void)writeElement:(id)a3 text:(id)a4
{
  v6 = a4;
  [(KSXMLWriter *)self startElement:a3 attributes:0];
  [(KSXMLWriter *)self writeCharacters:v6];

  [(KSXMLWriter *)self endElement];
}

- (id)writeElement:(id)a3 contentsInvocationTarget:(id)a4
{
  v6 = a4;
  [(KSXMLWriter *)self startElement:a3];
  [(KSXMLElementContentsProxy *)self->_contentsProxy ks_prepareWithTarget:v6 XMLWriter:self];

  contentsProxy = self->_contentsProxy;

  return contentsProxy;
}

- (void)startDocumentWithDocType:(id)a3 encoding:(unint64_t)a4
{
  v6 = a3;
  [(KSXMLWriter *)self writeString:@"<!DOCTYPE "];
  [(KSXMLWriter *)self writeString:v6];

  [(KSXMLWriter *)self writeString:@">"];
  [(KSXMLWriter *)self startNewline];

  [(KSXMLWriter *)self setEncoding:a4];
}

- (void)close
{
  [(KSXMLWriter *)self flush];
  v3.receiver = self;
  v3.super_class = KSXMLWriter;
  [(KSForwardingWriter *)&v3 close];
}

- (KSXMLWriter)initWithOutputWriter:(id)a3 encoding:(unint64_t)a4
{
  v5 = [(KSXMLWriter *)self initWithOutputWriter:a3];
  v6 = v5;
  if (v5)
  {
    [(KSXMLWriter *)v5 setEncoding:a4];
  }

  return v6;
}

- (KSXMLWriter)initWithOutputWriter:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = KSXMLWriter;
  v5 = [(KSForwardingWriter *)&v14 initWithOutputWriter:v4];
  if (v5)
  {
    v6 = objc_alloc_init(KSXMLAttributes);
    attributes = v5->_attributes;
    v5->_attributes = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    openElements = v5->_openElements;
    v5->_openElements = v8;

    if (objc_opt_respondsToSelector())
    {
      v10 = [v4 encoding];
    }

    else
    {
      v10 = 4;
    }

    v5->_encoding = v10;
    v11 = [KSXMLElementContentsProxy alloc];
    contentsProxy = v5->_contentsProxy;
    v5->_contentsProxy = v11;
  }

  return v5;
}

+ (void)initialize
{
  if (!sCharactersToEntityEscapeWithQuot)
  {
    v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"&<>"];
    v3 = sCharactersToEntityEscapeWithQuot;
    sCharactersToEntityEscapeWithQuot = v2;
  }

  if (!sCharactersToEntityEscapeWithoutQuot)
  {
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"&<>"];
    v5 = sCharactersToEntityEscapeWithoutQuot;
    sCharactersToEntityEscapeWithoutQuot = v4;
  }
}

+ (id)stringFromAttributeValue:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [v4 string];
  v7 = [[a1 alloc] initWithOutputWriter:v6];
  [v7 writeAttributeValue:v5];

  return v6;
}

+ (id)stringFromCharacters:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = [v4 string];
  v7 = [[a1 alloc] initWithOutputWriter:v6];
  [v7 writeCharacters:v5];

  return v6;
}

@end