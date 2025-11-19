@interface ONOXMLDocument
- (BOOL)isEqual:(id)a3;
- (NSString)version;
- (ONOXMLDocument)initWithCoder:(id)a3;
- (id)CSS:(id)a3;
- (id)XPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)elementWithNode:(_xmlNode *)a3;
- (id)enumeratorWithXPathObject:(_xmlXPathObject *)a3;
- (id)firstChildWithCSS:(id)a3;
- (id)firstChildWithXPath:(id)a3;
- (id)functionResultByEvaluatingXPath:(id)a3;
- (unint64_t)stringEncoding;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateElementsWithCSS:(id)a3 block:(id)a4;
- (void)enumerateElementsWithCSS:(id)a3 usingBlock:(id)a4;
- (void)enumerateElementsWithXPath:(id)a3 block:(id)a4;
- (void)enumerateElementsWithXPath:(id)a3 usingBlock:(id)a4;
@end

@implementation ONOXMLDocument

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLDocument *)self version];
  v6 = NSStringFromSelector(sel_version);
  [v4 encodeObject:v5 forKey:v6];

  v8 = [(ONOXMLDocument *)self rootElement];
  v7 = NSStringFromSelector(sel_rootElement);
  [v4 encodeObject:v8 forKey:v7];
}

- (ONOXMLDocument)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ONOXMLDocument;
  v5 = [(ONOXMLDocument *)&v13 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_version);
    v7 = [v4 decodeObjectForKey:v6];

    v8 = NSStringFromSelector(sel_rootElement);
    v9 = [v4 decodeObjectForKey:v8];

    if (v7)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      [(ONOXMLDocument *)v5 setVersion:v7];
      [(ONOXMLDocument *)v5 setRootElement:v9];
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(ONOXMLDocument *)self version];
  [v4 setVersion:v5];

  v6 = [(ONOXMLDocument *)self rootElement];
  [v4 setRootElement:v6];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ONOXMLDocument *)self hash];
      v6 = v5 == [(ONOXMLDocument *)v4 hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v2 = [(ONOXMLDocument *)self rootElement];
  v3 = [v2 description];

  return v3;
}

- (unint64_t)stringEncoding
{
  if (!self->_stringEncoding && [(ONOXMLDocument *)self xmlDocument][112])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{-[ONOXMLDocument xmlDocument](self, "xmlDocument")[112]}];
    v4 = CFStringConvertIANACharSetNameToEncoding(v3);
    if (v4 != -1)
    {
      [(ONOXMLDocument *)self setStringEncoding:CFStringConvertEncodingToNSStringEncoding(v4)];
    }
  }

  return self->_stringEncoding;
}

- (NSString)version
{
  if (!self->_version && [(ONOXMLDocument *)self xmlDocument][104])
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{-[ONOXMLDocument xmlDocument](self, "xmlDocument")[104]}];
    [(ONOXMLDocument *)self setVersion:v3];
  }

  version = self->_version;

  return version;
}

- (id)firstChildWithCSS:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLDocument *)self rootElement];
  v6 = [v5 firstChildWithCSS:v4];

  return v6;
}

- (void)enumerateElementsWithCSS:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ONOXMLDocument *)self rootElement];
  [v8 enumerateElementsWithCSS:v7 usingBlock:v6];
}

- (void)enumerateElementsWithCSS:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ONOXMLDocument *)self rootElement];
  [v8 enumerateElementsWithCSS:v7 block:v6];
}

- (id)CSS:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLDocument *)self rootElement];
  v6 = [v5 CSS:v4];

  return v6;
}

- (id)firstChildWithXPath:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLDocument *)self rootElement];
  v6 = [v5 firstChildWithXPath:v4];

  return v6;
}

- (void)enumerateElementsWithXPath:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ONOXMLDocument *)self rootElement];
  [v8 enumerateElementsWithXPath:v7 usingBlock:v6];
}

- (void)enumerateElementsWithXPath:(id)a3 block:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [(ONOXMLDocument *)self rootElement];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__ONOXMLDocument_enumerateElementsWithXPath_block___block_invoke;
    v9[3] = &unk_278C1C618;
    v10 = v6;
    [v8 enumerateElementsWithXPath:v7 usingBlock:v9];
  }
}

- (id)functionResultByEvaluatingXPath:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLDocument *)self rootElement];
  v6 = [v5 functionResultByEvaluatingXPath:v4];

  return v6;
}

- (id)XPath:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLDocument *)self rootElement];
  v6 = [v5 XPath:v4];

  return v6;
}

- (id)enumeratorWithXPathObject:(_xmlXPathObject *)a3
{
  if (a3 && (nodesetval = a3->nodesetval) != 0 && nodesetval->nodeNr && nodesetval->nodeTab)
  {
    v6 = objc_alloc_init(ONOXPathEnumerator);
    [(ONOXPathEnumerator *)v6 setXmlXPath:a3];
    [(ONOXPathEnumerator *)v6 setDocument:self];
  }

  else
  {
    xmlXPathFreeObject(a3);
    v6 = 0;
  }

  return v6;
}

- (id)elementWithNode:(_xmlNode *)a3
{
  if (a3)
  {
    v5 = objc_alloc_init(ONOXMLElement);
    [(ONOXMLElement *)v5 setXmlNode:a3];
    [(ONOXMLElement *)v5 setDocument:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end