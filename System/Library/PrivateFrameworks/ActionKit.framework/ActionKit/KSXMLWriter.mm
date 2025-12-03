@interface KSXMLWriter
+ (id)stringFromAttributeValue:(id)value;
+ (id)stringFromCharacters:(id)characters;
+ (void)initialize;
- (BOOL)hasOpenElement:(id)element;
- (BOOL)validateElement:(id)element;
- (KSXMLWriter)initWithOutputWriter:(id)writer;
- (KSXMLWriter)initWithOutputWriter:(id)writer encoding:(unint64_t)encoding;
- (NSArray)openElements;
- (id)currentAttributes;
- (id)validateAttribute:(id)attribute value:(id)value ofElement:(id)element;
- (id)writeElement:(id)element contentsInvocationTarget:(id)target;
- (void)close;
- (void)decreaseIndentationLevel;
- (void)didStartElement;
- (void)endElement;
- (void)increaseIndentationLevel;
- (void)popElement;
- (void)setEncoding:(unint64_t)encoding;
- (void)startDocumentWithDocType:(id)type encoding:(unint64_t)encoding;
- (void)startElement:(id)element;
- (void)startElement:(id)element attributes:(id)attributes;
- (void)startElement:(id)element writeInline:(BOOL)inline;
- (void)startNewline;
- (void)startWritingInline;
- (void)writeAttribute:(id)attribute value:(id)value;
- (void)writeAttributeValue:(id)value;
- (void)writeComment:(id)comment;
- (void)writeElement:(id)element text:(id)text;
- (void)writeEndTag:(id)tag;
- (void)writeString:(id)string;
- (void)writeStringByEscapingXMLEntities:(id)entities escapeQuot:(BOOL)quot;
@end

@implementation KSXMLWriter

- (void)writeString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:563 description:{@"Invalid parameter not satisfying: %@", @"nil != string"}];
  }

  if (self->_elementIsEmpty && [(__CFString *)stringCopy length])
  {
    self->_elementIsEmpty = 0;
    [(KSXMLWriter *)self closeStartTag];
  }

  Length = CFStringGetLength(stringCopy);
  if (Length)
  {
    v7 = Length;
    v8 = 0;
    do
    {
      v9 = CFStringConvertNSStringEncodingToEncoding([(KSXMLWriter *)self encoding]);
      v27.location = v8;
      v27.length = v7;
      Bytes = CFStringGetBytes(stringCopy, v27, v9, 0, 0, 0, 0, 0);
      if (Bytes >= v7)
      {
        if (v8)
        {
          v28.location = v8;
          v28.length = v7;
          v15 = CFStringCreateWithSubstring(0, stringCopy, v28);
          v17.receiver = self;
          v17.super_class = KSXMLWriter;
          [(KSForwardingWriter *)&v17 writeString:v15];
          CFRelease(v15);
        }

        else
        {
          v18.receiver = self;
          v18.super_class = KSXMLWriter;
          [(KSForwardingWriter *)&v18 writeString:stringCopy];
        }

        break;
      }

      v11 = Bytes;
      if (Bytes)
      {
        bytes = [(__CFString *)stringCopy substringWithRange:v8, Bytes];
        v26.receiver = self;
        v26.super_class = KSXMLWriter;
        [(KSForwardingWriter *)&v26 writeString:bytes];
      }

      v13 = [(__CFString *)stringCopy characterAtIndex:v11 + v8];
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

- (void)setEncoding:(unint64_t)encoding
{
  if (encoding > 0xA || ((1 << encoding) & 0x432) == 0)
  {
    v5 = CFStringConvertNSStringEncodingToEncoding(encoding);
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported character encoding %@ (%u)", CFStringGetNameOfEncoding(v5), encoding}];
  }

  self->_encoding = encoding;
}

- (void)writeStringByEscapingXMLEntities:(id)entities escapeQuot:(BOOL)quot
{
  quotCopy = quot;
  entitiesCopy = entities;
  v7 = &sCharactersToEntityEscapeWithQuot;
  if (!quotCopy)
  {
    v7 = &sCharactersToEntityEscapeWithoutQuot;
  }

  v8 = *v7;
  v9 = [entitiesCopy length];
  v10 = [entitiesCopy rangeOfCharacterFromSet:v8 options:0 range:{0, v9}];
  v12 = entitiesCopy;
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(KSXMLWriter *)self writeString:entitiesCopy];
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
        v17 = [entitiesCopy substringWithRange:v15];
        [(KSXMLWriter *)self writeString:v17];
      }

      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v14 != 1)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:516 description:@"trying to escaping non-single character string"];
      }

      v18 = [entitiesCopy characterAtIndex:v13];
      if (v18 > 59)
      {
        if (v18 == 60)
        {
          selfCopy4 = self;
          v20 = @"&lt;";
          goto LABEL_25;
        }

        if (v18 == 62)
        {
          selfCopy4 = self;
          v20 = @"&gt;";
          goto LABEL_25;
        }
      }

      else
      {
        if (v18 == 34)
        {
          selfCopy4 = self;
          v20 = @"&quot;";
          goto LABEL_25;
        }

        if (v18 == 38)
        {
          selfCopy4 = self;
          v20 = @"&amp;";
LABEL_25:
          [(KSXMLWriter *)selfCopy4 writeString:v20];
          goto LABEL_26;
        }
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"&#%d", v18];;
      [(KSXMLWriter *)self writeString:v21];

LABEL_26:
      v15 = v13 + v14;
      v9 = [entitiesCopy length] - (v13 + v14);
      v13 = [entitiesCopy rangeOfCharacterFromSet:v8 options:0 range:{v13 + v14, v9}];
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

- (void)writeEndTag:(id)tag
{
  tagCopy = tag;
  [(KSXMLWriter *)self writeString:@"</"];
  [(KSXMLWriter *)self writeString:tagCopy];

  [(KSXMLWriter *)self writeString:@">"];
}

- (void)didStartElement
{
  topElement = [(KSXMLWriter *)self topElement];
  self->_elementIsEmpty = [(KSXMLWriter *)self elementCanBeEmpty:topElement];

  if (!self->_elementIsEmpty)
  {

    [(KSXMLWriter *)self closeStartTag];
  }
}

- (BOOL)hasOpenElement:(id)element
{
  v16 = *MEMORY[0x277D85DE8];
  elementCopy = element;
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

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:{elementCopy, v11}])
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

- (id)validateAttribute:(id)attribute value:(id)value ofElement:(id)element
{
  attributeCopy = attribute;
  valueCopy = value;
  elementCopy = element;
  v12 = elementCopy;
  if (attributeCopy)
  {
    if (elementCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"element"}];

LABEL_3:

  return valueCopy;
}

- (BOOL)validateElement:(id)element
{
  if (!element)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"KSXMLWriter.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"element"}];
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

- (void)writeComment:(id)comment
{
  commentCopy = comment;
  [(KSXMLWriter *)self openComment];
  [(KSXMLWriter *)self writeStringByEscapingXMLEntities:commentCopy escapeQuot:1];

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

- (void)writeAttribute:(id)attribute value:(id)value
{
  valueCopy = value;
  attributeCopy = attribute;
  v9 = [valueCopy description];
  [(KSXMLWriter *)self writeString:@" "];
  [(KSXMLWriter *)self writeString:attributeCopy];

  null = [MEMORY[0x277CBEB68] null];

  if (null != valueCopy)
  {
    [(KSXMLWriter *)self writeString:@"="];
    [(KSXMLWriter *)self writeAttributeValue:v9];
    [(KSXMLWriter *)self writeString:@""];
  }
}

- (void)writeAttributeValue:(id)value
{
  stringByUnescapingCrititcalXMLEntities = [value stringByUnescapingCrititcalXMLEntities];
  [(KSXMLWriter *)self writeStringByEscapingXMLEntities:stringByUnescapingCrititcalXMLEntities escapeQuot:1];
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
    topElement = [(KSXMLWriter *)self topElement];
    [(KSXMLWriter *)self writeEndTag:topElement];

    [(KSXMLWriter *)self popElement];
  }
}

- (void)startElement:(id)element attributes:(id)attributes
{
  v20 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  attributesCopy = attributes;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(attributesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [attributesCopy objectForKey:v12];
        [(KSXMLWriter *)self pushAttribute:v12 value:v13];
      }

      v9 = [attributesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(KSXMLWriter *)self startElement:elementCopy];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)startElement:(id)element writeInline:(BOOL)inline
{
  elementCopy = element;
  if (!inline)
  {
    [(KSXMLWriter *)self startNewline];
    [(KSXMLWriter *)self stopWritingInline];
  }

  [(KSXMLWriter *)self willStartElement:elementCopy];
  [(KSXMLWriter *)self writeString:@"<"];
  [(KSXMLWriter *)self writeString:elementCopy];
  [(KSXMLWriter *)self pushElement:elementCopy];
  [(KSXMLWriter *)self startWritingInline];
  [(KSXMLAttributes *)self->_attributes writeAttributes:self];
  [(KSXMLAttributes *)self->_attributes close];
  [(KSXMLWriter *)self didStartElement];
  [(KSXMLWriter *)self increaseIndentationLevel];
}

- (void)startElement:(id)element
{
  elementCopy = element;
  [(KSXMLWriter *)self startElement:elementCopy writeInline:[(KSXMLWriter *)self canWriteElementInline:elementCopy]];
}

- (void)writeElement:(id)element text:(id)text
{
  textCopy = text;
  [(KSXMLWriter *)self startElement:element attributes:0];
  [(KSXMLWriter *)self writeCharacters:textCopy];

  [(KSXMLWriter *)self endElement];
}

- (id)writeElement:(id)element contentsInvocationTarget:(id)target
{
  targetCopy = target;
  [(KSXMLWriter *)self startElement:element];
  [(KSXMLElementContentsProxy *)self->_contentsProxy ks_prepareWithTarget:targetCopy XMLWriter:self];

  contentsProxy = self->_contentsProxy;

  return contentsProxy;
}

- (void)startDocumentWithDocType:(id)type encoding:(unint64_t)encoding
{
  typeCopy = type;
  [(KSXMLWriter *)self writeString:@"<!DOCTYPE "];
  [(KSXMLWriter *)self writeString:typeCopy];

  [(KSXMLWriter *)self writeString:@">"];
  [(KSXMLWriter *)self startNewline];

  [(KSXMLWriter *)self setEncoding:encoding];
}

- (void)close
{
  [(KSXMLWriter *)self flush];
  v3.receiver = self;
  v3.super_class = KSXMLWriter;
  [(KSForwardingWriter *)&v3 close];
}

- (KSXMLWriter)initWithOutputWriter:(id)writer encoding:(unint64_t)encoding
{
  v5 = [(KSXMLWriter *)self initWithOutputWriter:writer];
  v6 = v5;
  if (v5)
  {
    [(KSXMLWriter *)v5 setEncoding:encoding];
  }

  return v6;
}

- (KSXMLWriter)initWithOutputWriter:(id)writer
{
  writerCopy = writer;
  v14.receiver = self;
  v14.super_class = KSXMLWriter;
  v5 = [(KSForwardingWriter *)&v14 initWithOutputWriter:writerCopy];
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
      encoding = [writerCopy encoding];
    }

    else
    {
      encoding = 4;
    }

    v5->_encoding = encoding;
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

+ (id)stringFromAttributeValue:(id)value
{
  v4 = MEMORY[0x277CCAB68];
  valueCopy = value;
  string = [v4 string];
  v7 = [[self alloc] initWithOutputWriter:string];
  [v7 writeAttributeValue:valueCopy];

  return string;
}

+ (id)stringFromCharacters:(id)characters
{
  v4 = MEMORY[0x277CCAB68];
  charactersCopy = characters;
  string = [v4 string];
  v7 = [[self alloc] initWithOutputWriter:string];
  [v7 writeCharacters:charactersCopy];

  return string;
}

@end