@interface ENXMLWriter
- (BOOL)startElement:(id)a3;
- (BOOL)startElement:(id)a3 attributes:(id)a4;
- (BOOL)writeAttributeName:(id)a3 value:(id)a4;
- (BOOL)writeElement:(id)a3 attributes:(id)a4 content:(id)a5;
- (ENXMLWriter)initWithDelegate:(id)a3;
- (ENXMLWriterDelegate)delegate;
- (void)dealloc;
- (void)endCDATA;
- (void)endDocument;
- (void)endElement;
- (void)startCDATA;
- (void)startDocument;
- (void)writeCDATA:(id)a3;
- (void)writeString:(id)a3 raw:(BOOL)a4;
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

- (void)writeCDATA:(id)a3
{
  xmlWriter = self->_xmlWriter;
  v5 = a3;
  v6 = xmlTextWriterWriteCDATA(xmlWriter, [a3 cStringUsingEncoding:4]);

  CheckXMLResult(v6, @"xmlTextWriterWriteCDATA");
}

- (void)startCDATA
{
  started = xmlTextWriterStartCDATA(self->_xmlWriter);

  CheckXMLResult(started, @"xmlTextWriterStartCDATA");
}

- (void)writeString:(id)a3 raw:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    xmlWriter = self->_xmlWriter;
    v11 = v6;
    v8 = [v11 cStringUsingEncoding:4];
    if (v4)
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
    v6 = v11;
  }
}

- (BOOL)writeAttributeName:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_2850323E8;
  }

  dtd = self->_dtd;
  if (dtd && ![(ENXMLDTD *)dtd isAttributeLegal:v6 inElement:self->_currentElementName])
  {
    v12 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v8];
    [v10 replaceOccurrencesOfString:@"&#38;" withString:@"&" options:0 range:{0, objc_msgSend(v10, "length")}];
    v11 = xmlTextWriterWriteAttribute(self->_xmlWriter, [v6 cStringUsingEncoding:4], objc_msgSend(v10, "cStringUsingEncoding:", 4));
    CheckXMLResult(v11, @"xmlTextWriterWriteAttribute");

    v12 = 1;
  }

  return v12;
}

- (BOOL)writeElement:(id)a3 attributes:(id)a4 content:(id)a5
{
  v8 = a5;
  v9 = [(ENXMLWriter *)self startElement:a3 attributes:a4];
  if (v9)
  {
    [(ENXMLWriter *)self writeString:v8];
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

- (BOOL)startElement:(id)a3 attributes:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(ENXMLWriter *)self startElement:a3];
  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v6 allKeys];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          v14 = [v6 objectForKeyedSubscript:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(ENXMLWriter *)self writeAttributeName:v13 value:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)startElement:(id)a3
{
  v4 = a3;
  dtd = self->_dtd;
  if (dtd && ![(ENXMLDTD *)dtd isElementLegal:v4])
  {
    v7 = 0;
  }

  else
  {
    started = xmlTextWriterStartElement(self->_xmlWriter, [v4 cStringUsingEncoding:4]);
    CheckXMLResult(started, @"xmlTextWriterStartElement");
    ++self->_openElementCount;
    [(ENXMLWriter *)self setCurrentElementName:v4];
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
    v6 = self;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    contents = self->_contents;
    self->_contents = v7;

    v6 = self->_contents;
    v4 = ENXMLWriter_contentsWriteCallback;
    v5 = 0;
  }

  IO = xmlOutputBufferCreateIO(v4, v5, v6, 0);
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
    v15 = [(ENXMLDTD *)dtd docTypeDeclaration];

    if (v15)
    {
      xmlWriter = self->_xmlWriter;
      CharEncodingName = xmlGetCharEncodingName(XML_CHAR_ENCODING_UTF8);
      started = xmlTextWriterStartDocument(xmlWriter, 0, CharEncodingName, "no");
      CheckXMLResult(started, @"xmlTextWriterStartDocument");
      v19 = self->_xmlWriter;
      v20 = [(ENXMLDTD *)self->_dtd docTypeDeclaration];
      v21 = xmlTextWriterWriteRaw(v19, [v20 cStringUsingEncoding:4]);

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

- (ENXMLWriter)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ENXMLWriter;
  v5 = [(ENXMLWriter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ENXMLWriter *)v5 setDelegate:v4];
  }

  return v6;
}

@end