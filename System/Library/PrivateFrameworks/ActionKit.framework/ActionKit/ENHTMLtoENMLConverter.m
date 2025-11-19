@interface ENHTMLtoENMLConverter
- (ENHTMLtoENMLConverterDelegate)delegate;
- (id)enmlFromContentsOfHTMLFile:(id)a3;
- (id)enmlFromHTMLContent:(id)a3;
- (id)enmlWriter;
- (id)htmlParser;
- (void)cancel;
- (void)finish;
- (void)parser:(id)a3 didEndElement:(id)a4;
- (void)parser:(id)a3 didFailWithError:(id)a4;
- (void)parser:(id)a3 didStartElement:(id)a4 attributes:(id)a5;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parserDidStartDocument:(id)a3;
- (void)writeData:(id)a3;
- (void)xmlWriter:(id)a3 didGenerateData:(id)a4;
- (void)xmlWriterDidEndWritingDocument:(id)a3;
@end

@implementation ENHTMLtoENMLConverter

- (ENHTMLtoENMLConverterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)xmlWriterDidEndWritingDocument:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained htmlConverterDidFinish:self];
    WeakRetained = v5;
  }
}

- (void)xmlWriter:(id)a3 didGenerateData:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a4;
  v9 = [[v5 alloc] initWithData:v6 encoding:4];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained htmlConverter:self didGenerateString:v9];
  }

  else
  {
    [(NSMutableString *)self->_enml appendString:v9];
  }
}

- (void)parser:(id)a3 didFailWithError:(id)a4
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained htmlConverter:self didFailWithError:v7];
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v5 = a4;
  if (self->_inHTMLBody && self->_skipCount <= 0)
  {
    v6 = v5;
    [(ENXMLWriter *)self->_enmlWriter writeString:v5];
    v5 = v6;
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = v6;
  skipCount = self->_skipCount;
  v9 = __OFSUB__(skipCount, 1);
  v10 = skipCount - 1;
  if (v10 < 0 != v9)
  {
    if (self->_inHTMLBody)
    {
      v11 = [v6 lowercaseString];
      v12 = [v11 isEqualToString:@"body"];

      if (v12)
      {
        self->_inHTMLBody = 0;
      }

      else
      {
        [(ENXMLWriter *)self->_enmlWriter endElement];
      }
    }
  }

  else
  {
    self->_skipCount = v10;
  }
}

- (void)parser:(id)a3 didStartElement:(id)a4 attributes:(id)a5
{
  v7 = a5;
  skipCount = self->_skipCount;
  if (skipCount >= 1)
  {
    self->_skipCount = skipCount + 1;
    goto LABEL_12;
  }

  v17 = v7;
  v9 = [a4 lowercaseString];
  v10 = v9;
  if (self->_inHTMLBody)
  {
    v11 = [v17 objectForKey:@"class"];
    v12 = [v11 componentsSeparatedByString:@" "];

    if (([v12 containsObject:@"en-ignore"] & 1) == 0)
    {
      if ([(ENMLWriter *)self->_enmlWriter startElement:v10 attributes:v17])
      {
LABEL_10:

        goto LABEL_11;
      }

      v13 = +[ENSession sharedSession];
      v14 = [v13 logger];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"startElement:%@ returned NO, skipping element and children", v10];
      [v14 evernoteLogInfoString:v15];
    }

    ++self->_skipCount;
    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"body"])
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
    [v12 removeObjectForKey:@"class"];
    v16 = [(ENHTMLtoENMLConverter *)self enmlWriter];
    [v16 startDocumentWithAttributes:v17];

    self->_inHTMLBody = 1;
    goto LABEL_10;
  }

LABEL_11:

  v7 = v17;
LABEL_12:
}

- (void)parserDidStartDocument:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained htmlConverterDidStart:self];
    WeakRetained = v5;
  }
}

- (void)cancel
{
  v3 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [v3 stopParser];

  v4 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [v4 setDelegate:0];
}

- (void)finish
{
  v2 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [v2 finalizeParser];
}

- (void)writeData:(id)a3
{
  v4 = a3;
  v5 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [v5 appendData:v4];
}

- (id)enmlFromHTMLContent:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  enml = self->_enml;
  self->_enml = v6;

  v8 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [v8 parseContents:v5];

  v9 = MEMORY[0x277CCACA8];
  v10 = self->_enml;

  return [v9 stringWithString:v10];
}

- (id)enmlFromContentsOfHTMLFile:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  enml = self->_enml;
  self->_enml = v6;

  v8 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [v8 parseContentsOfFile:v5];

  v9 = MEMORY[0x277CCACA8];
  v10 = self->_enml;

  return [v9 stringWithString:v10];
}

- (id)htmlParser
{
  htmlParser = self->_htmlParser;
  if (!htmlParser)
  {
    v4 = objc_alloc_init(ENXMLSaxParser);
    v5 = self->_htmlParser;
    self->_htmlParser = v4;

    [(ENXMLSaxParser *)self->_htmlParser setIsHTML:1];
    [(ENXMLSaxParser *)self->_htmlParser setDelegate:self];
    htmlParser = self->_htmlParser;
  }

  return htmlParser;
}

- (id)enmlWriter
{
  enmlWriter = self->_enmlWriter;
  if (!enmlWriter)
  {
    v4 = [(ENXMLWriter *)[ENMLWriter alloc] initWithDelegate:self];
    v5 = self->_enmlWriter;
    self->_enmlWriter = v4;

    enmlWriter = self->_enmlWriter;
  }

  return enmlWriter;
}

@end