@interface ITEpubXmlParseDelegate
- (void)dealloc;
- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name;
- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes;
- (void)parser:(id)parser foundCharacters:(id)characters;
- (void)setDecoder:(void *)decoder;
@end

@implementation ITEpubXmlParseDelegate

- (void)dealloc
{
  decoder = self->decoder;
  if (decoder)
  {
    ITRetain::release(decoder);
    self->decoder = 0;
  }

  foundCharacters = self->foundCharacters;
  self->foundCharacters = 0;

  v5.receiver = self;
  v5.super_class = ITEpubXmlParseDelegate;
  [(ITEpubXmlParseDelegate *)&v5 dealloc];
}

- (void)setDecoder:(void *)decoder
{
  decoder = self->decoder;
  if (decoder)
  {
    ITRetain::release(decoder);
  }

  self->decoder = decoder;
  if (decoder)
  {

    ITRetain::retain(decoder);
  }
}

- (void)parser:(id)parser foundCharacters:(id)characters
{
  parserCopy = parser;
  charactersCopy = characters;
  foundCharacters = self->foundCharacters;
  if (!foundCharacters)
  {
    foundCharacters = &stru_33E120;
  }

  v8 = foundCharacters;
  v9 = [(__CFString *)v8 stringByAppendingString:charactersCopy];
  v10 = self->foundCharacters;
  self->foundCharacters = v9;

  if ([(NSString *)self->foundCharacters length])
  {
    decoder = self->decoder;
    if (decoder)
    {
      (*(*decoder + 24))(decoder, self->foundCharacters);
    }
  }

  v12 = self->foundCharacters;
  self->foundCharacters = 0;
}

- (void)parser:(id)parser didStartElement:(id)element namespaceURI:(id)i qualifiedName:(id)name attributes:(id)attributes
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  attributesCopy = attributes;
  decoder = self->decoder;
  if (decoder)
  {
    (*(*decoder + 40))(decoder, iCopy);
    (*(*self->decoder + 16))(self->decoder, elementCopy, attributesCopy);
  }
}

- (void)parser:(id)parser didEndElement:(id)element namespaceURI:(id)i qualifiedName:(id)name
{
  parserCopy = parser;
  elementCopy = element;
  iCopy = i;
  nameCopy = name;
  decoder = self->decoder;
  if (decoder)
  {
    (*(*decoder + 40))(decoder, iCopy);
    (*(*self->decoder + 32))(self->decoder, elementCopy);
  }
}

@end