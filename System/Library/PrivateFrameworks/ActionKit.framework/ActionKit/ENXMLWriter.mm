@interface ENXMLWriter
- (BOOL)startElement:(id)element;
- (BOOL)startElement:(id)element attributes:(id)attributes;
- (BOOL)writeAttributeName:(id)name value:(id)value;
- (BOOL)writeElement:(id)element attributes:(id)attributes content:(id)content;
- (ENXMLWriter)initWithDelegate:(id)delegate;
- (ENXMLWriterDelegate)delegate;
- (void)dealloc;
- (void)endCDATA;
- (void)endDocument;
- (void)endElement;
- (void)startCDATA;
- (void)startDocument;
- (void)writeCDATA:(id)a;
- (void)writeString:(id)string raw:(BOOL)raw;
@end

@implementation ENXMLWriter

- (ENXMLWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)endCDATA
{
  v2 = xmlTextWriterEndCDATA(self->_xmlWriter);

  CheckXMLResult(v2, @"xmlTextWriterEndCDATA");
}

- (void)writeCDATA:(id)a
{
  xmlWriter = self->_xmlWriter;
  aCopy = a;
  v6 = xmlTextWriterWriteCDATA(xmlWriter, [a cStringUsingEncoding:4]);

  CheckXMLResult(v6, @"xmlTextWriterWriteCDATA");
}

- (void)startCDATA
{
  started = xmlTextWriterStartCDATA(self->_xmlWriter);

  CheckXMLResult(started, @"xmlTextWriterStartCDATA");
}

- (void)writeString:(id)string raw:(BOOL)raw
{
  rawCopy = raw;
  stringCopy = string;
  if (stringCopy)
  {
    xmlWriter = self->_xmlWriter;
    v11 = stringCopy;
    v8 = [v11 cStringUsingEncoding:4];
    if (rawCopy)
    {
      v9 = xmlTextWriterWriteRaw(xmlWriter, v8);
      v10 = @"xmlTextWriterWriteRaw";
    }

    else
    {
      v9 = xmlTextWriterWriteString(xmlWriter, v8);
      v10 = @"xmlTextWriterWriteString";
    }

    CheckXMLResult(v9, v10);
    stringCopy = v11;
  }
}

- (BOOL)writeAttributeName:(id)name value:(id)value
{
  nameCopy = name;
  valueCopy = value;
  if (valueCopy)
  {
    v8 = valueCopy;
  }

  else
  {
    v8 = &stru_2850323E8;
  }

  dtd = self->_dtd;
  if (dtd && ![(ENXMLDTD *)dtd isAttributeLegal:nameCopy inElement:self->_currentElementName])
  {
    v12 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v8];
    [v10 replaceOccurrencesOfString:@"&#38;" withString:@"&" options:0 range:{0, objc_msgSend(v10, "length")}];
    v11 = xmlTextWriterWriteAttribute(self->_xmlWriter, [nameCopy cStringUsingEncoding:4], objc_msgSend(v10, "cStringUsingEncoding:", 4));
    CheckXMLResult(v11, @"xmlTextWriterWriteAttribute");

    v12 = 1;
  }

  return v12;
}

- (BOOL)writeElement:(id)element attributes:(id)attributes content:(id)content
{
  contentCopy = content;
  v9 = [(ENXMLWriter *)self startElement:element attributes:attributes];
  if (v9)
  {
    [(ENXMLWriter *)self writeString:contentCopy];
    [(ENXMLWriter *)self endElement];
  }

  return v9;
}

- (void)endElement
{
  v3 = xmlTextWriterEndElement(self->_xmlWriter);
  CheckXMLResult(v3, @"xmlTextWriterEndElement");
  [(ENXMLWriter *)self setCurrentElementName:0];
  --self->_openElementCount;
}

- (BOOL)startElement:(id)element attributes:(id)attributes
{
  v22 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v7 = [(ENXMLWriter *)self startElement:element];
  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [attributesCopy allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [attributesCopy objectForKeyedSubscript:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ENXMLWriter *)self writeAttributeName:v13 value:v14];
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)startElement:(id)element
{
  elementCopy = element;
  dtd = self->_dtd;
  if (dtd && ![(ENXMLDTD *)dtd isElementLegal:elementCopy])
  {
    v7 = 0;
  }

  else
  {
    started = xmlTextWriterStartElement(self->_xmlWriter, [elementCopy cStringUsingEncoding:4]);
    CheckXMLResult(started, @"xmlTextWriterStartElement");
    ++self->_openElementCount;
    [(ENXMLWriter *)self setCurrentElementName:elementCopy];
    v7 = 1;
  }

  return v7;
}

- (void)endDocument
{
  v3 = xmlTextWriterEndDocument(self->_xmlWriter);
  CheckXMLResult(v3, @"xmlTextWriterEndDocument");
  xmlFreeTextWriter(self->_xmlWriter);
  self->_xmlWriter = 0;
}

- (void)startDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained)
  {
    v4 = ENXMLWriter_delegateWriteCallback;
    v5 = ENXMLWriter_delegateCloseCallback;
    selfCopy = self;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    contents = self->_contents;
    self->_contents = v7;

    selfCopy = self->_contents;
    v4 = ENXMLWriter_contentsWriteCallback;
    v5 = 0;
  }

  IO = xmlOutputBufferCreateIO(v4, v5, selfCopy, 0);
  self->_xmlOutputBuffer = IO;
  if (IO)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0xFFFFFFFFLL;
  }

  CheckXMLResult(v10, @"xmlOutputBufferCreateIO");
  v11 = xmlNewTextWriter(self->_xmlOutputBuffer);
  self->_xmlWriter = v11;
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

  CheckXMLResult(v12, @"xmlNewTextWriter");
  v13 = xmlTextWriterSetIndent(self->_xmlWriter, 0);
  CheckXMLResult(v13, @"xmlTextWriterSetIndent");
  dtd = self->_dtd;
  if (dtd)
  {
    docTypeDeclaration = [(ENXMLDTD *)dtd docTypeDeclaration];

    if (docTypeDeclaration)
    {
      xmlWriter = self->_xmlWriter;
      CharEncodingName = xmlGetCharEncodingName(XML_CHAR_ENCODING_UTF8);
      started = xmlTextWriterStartDocument(xmlWriter, 0, CharEncodingName, "no");
      CheckXMLResult(started, @"xmlTextWriterStartDocument");
      v19 = self->_xmlWriter;
      docTypeDeclaration2 = [(ENXMLDTD *)self->_dtd docTypeDeclaration];
      v21 = xmlTextWriterWriteRaw(v19, [docTypeDeclaration2 cStringUsingEncoding:4]);

      CheckXMLResult(v21, @"xmlTextWriterWriteRaw");
    }
  }

  v22 = xmlTextWriterWriteRaw(self->_xmlWriter, "\n");

  CheckXMLResult(v22, @"xmlTextWriterWriteRaw");
}

- (void)dealloc
{
  xmlWriter = self->_xmlWriter;
  if (xmlWriter)
  {
    xmlFreeTextWriter(xmlWriter);
    self->_xmlWriter = 0;
  }

  v4.receiver = self;
  v4.super_class = ENXMLWriter;
  [(ENXMLWriter *)&v4 dealloc];
}

- (ENXMLWriter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = ENXMLWriter;
  v5 = [(ENXMLWriter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENXMLWriter *)v5 setDelegate:delegateCopy];
  }

  return v6;
}

@end