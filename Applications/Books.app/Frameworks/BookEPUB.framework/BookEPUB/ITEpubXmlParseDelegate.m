@interface ITEpubXmlParseDelegate
- (void)dealloc;
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)setDecoder:(void *)a3;
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

- (void)setDecoder:(void *)a3
{
  decoder = self->decoder;
  if (decoder)
  {
    ITRetain::release(decoder);
  }

  self->decoder = a3;
  if (a3)
  {

    ITRetain::retain(a3);
  }
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v13 = a3;
  v6 = a4;
  foundCharacters = self->foundCharacters;
  if (!foundCharacters)
  {
    foundCharacters = &stru_33E120;
  }

  v8 = foundCharacters;
  v9 = [(__CFString *)v8 stringByAppendingString:v6];
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

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v17 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  decoder = self->decoder;
  if (decoder)
  {
    (*(*decoder + 40))(decoder, v13);
    (*(*self->decoder + 16))(self->decoder, v12, v15);
  }
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  decoder = self->decoder;
  if (decoder)
  {
    (*(*decoder + 40))(decoder, v11);
    (*(*self->decoder + 32))(self->decoder, v10);
  }
}

@end