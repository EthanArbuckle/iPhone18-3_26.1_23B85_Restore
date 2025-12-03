@interface ENHTMLtoENMLConverter
- (ENHTMLtoENMLConverterDelegate)delegate;
- (id)enmlFromContentsOfHTMLFile:(id)file;
- (id)enmlFromHTMLContent:(id)content;
- (id)enmlWriter;
- (id)htmlParser;
- (void)cancel;
- (void)finish;
- (void)parser:(id)parser didEndElement:(id)element;
- (void)parser:(id)parser didFailWithError:(id)error;
- (void)parser:(id)parser didStartElement:(id)element attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)parserDidStartDocument:(id)document;
- (void)writeData:(id)data;
- (void)xmlWriter:(id)writer didGenerateData:(id)data;
- (void)xmlWriterDidEndWritingDocument:(id)document;
@end

@implementation ENHTMLtoENMLConverter

- (ENHTMLtoENMLConverterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)xmlWriterDidEndWritingDocument:(id)document
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained htmlConverterDidFinish:self];
    WeakRetained = v5;
  }
}

- (void)xmlWriter:(id)writer didGenerateData:(id)data
{
  v5 = MEMORY[0x277CCACA8];
  dataCopy = data;
  v9 = [[v5 alloc] initWithData:dataCopy encoding:4];

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

- (void)parser:(id)parser didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained htmlConverter:self didFailWithError:errorCopy];
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  charactersCopy = characters;
  if (self->_inHTMLBody && self->_skipCount <= 0)
  {
    v6 = charactersCopy;
    [(ENXMLWriter *)self->_enmlWriter writeString:charactersCopy];
    charactersCopy = v6;
  }
}

- (void)parser:(id)parser didEndElement:(id)element
{
  parserCopy = parser;
  elementCopy = element;
  v7 = elementCopy;
  skipCount = self->_skipCount;
  v9 = __OFSUB__(skipCount, 1);
  v10 = skipCount - 1;
  if (v10 < 0 != v9)
  {
    if (self->_inHTMLBody)
    {
      lowercaseString = [elementCopy lowercaseString];
      v12 = [lowercaseString isEqualToString:@"body"];

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

- (void)parser:(id)parser didStartElement:(id)element attributes:(id)attributes
{
  attributesCopy = attributes;
  skipCount = self->_skipCount;
  if (skipCount >= 1)
  {
    self->_skipCount = skipCount + 1;
    goto LABEL_12;
  }

  v17 = attributesCopy;
  lowercaseString = [element lowercaseString];
  v10 = lowercaseString;
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
      logger = [v13 logger];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"startElement:%@ returned NO, skipping element and children", v10];
      [logger evernoteLogInfoString:v15];
    }

    ++self->_skipCount;
    goto LABEL_10;
  }

  if ([lowercaseString isEqualToString:@"body"])
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v17];
    [v12 removeObjectForKey:@"class"];
    enmlWriter = [(ENHTMLtoENMLConverter *)self enmlWriter];
    [enmlWriter startDocumentWithAttributes:v17];

    self->_inHTMLBody = 1;
    goto LABEL_10;
  }

LABEL_11:

  attributesCopy = v17;
LABEL_12:
}

- (void)parserDidStartDocument:(id)document
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
  htmlParser = [(ENHTMLtoENMLConverter *)self htmlParser];
  [htmlParser stopParser];

  htmlParser2 = [(ENHTMLtoENMLConverter *)self htmlParser];
  [htmlParser2 setDelegate:0];
}

- (void)finish
{
  htmlParser = [(ENHTMLtoENMLConverter *)self htmlParser];
  [htmlParser finalizeParser];
}

- (void)writeData:(id)data
{
  dataCopy = data;
  htmlParser = [(ENHTMLtoENMLConverter *)self htmlParser];
  [htmlParser appendData:dataCopy];
}

- (id)enmlFromHTMLContent:(id)content
{
  v4 = MEMORY[0x277CCAB68];
  contentCopy = content;
  v6 = objc_alloc_init(v4);
  enml = self->_enml;
  self->_enml = v6;

  htmlParser = [(ENHTMLtoENMLConverter *)self htmlParser];
  [htmlParser parseContents:contentCopy];

  v9 = MEMORY[0x277CCACA8];
  v10 = self->_enml;

  return [v9 stringWithString:v10];
}

- (id)enmlFromContentsOfHTMLFile:(id)file
{
  v4 = MEMORY[0x277CCAB68];
  fileCopy = file;
  v6 = objc_alloc_init(v4);
  enml = self->_enml;
  self->_enml = v6;

  htmlParser = [(ENHTMLtoENMLConverter *)self htmlParser];
  [htmlParser parseContentsOfFile:fileCopy];

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