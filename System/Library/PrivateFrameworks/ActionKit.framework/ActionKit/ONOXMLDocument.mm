@interface ONOXMLDocument
- (BOOL)isEqual:(id)equal;
- (NSString)version;
- (ONOXMLDocument)initWithCoder:(id)coder;
- (id)CSS:(id)s;
- (id)XPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)elementWithNode:(_xmlNode *)node;
- (id)enumeratorWithXPathObject:(_xmlXPathObject *)object;
- (id)firstChildWithCSS:(id)s;
- (id)firstChildWithXPath:(id)path;
- (id)functionResultByEvaluatingXPath:(id)path;
- (unint64_t)stringEncoding;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateElementsWithCSS:(id)s block:(id)block;
- (void)enumerateElementsWithCSS:(id)s usingBlock:(id)block;
- (void)enumerateElementsWithXPath:(id)path block:(id)block;
- (void)enumerateElementsWithXPath:(id)path usingBlock:(id)block;
@end

@implementation ONOXMLDocument

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  version = [(ONOXMLDocument *)self version];
  v6 = NSStringFromSelector(sel_version);
  [coderCopy encodeObject:version forKey:v6];

  rootElement = [(ONOXMLDocument *)self rootElement];
  v7 = NSStringFromSelector(sel_rootElement);
  [coderCopy encodeObject:rootElement forKey:v7];
}

- (ONOXMLDocument)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ONOXMLDocument;
  v5 = [(ONOXMLDocument *)&v13 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_version);
    v7 = [coderCopy decodeObjectForKey:v6];

    v8 = NSStringFromSelector(sel_rootElement);
    v9 = [coderCopy decodeObjectForKey:v8];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  version = [(ONOXMLDocument *)self version];
  [v4 setVersion:version];

  rootElement = [(ONOXMLDocument *)self rootElement];
  [v4 setRootElement:rootElement];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ONOXMLDocument *)self hash];
      v6 = v5 == [(ONOXMLDocument *)equalCopy hash];
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
  rootElement = [(ONOXMLDocument *)self rootElement];
  v3 = [rootElement description];

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

- (id)firstChildWithCSS:(id)s
{
  sCopy = s;
  rootElement = [(ONOXMLDocument *)self rootElement];
  v6 = [rootElement firstChildWithCSS:sCopy];

  return v6;
}

- (void)enumerateElementsWithCSS:(id)s usingBlock:(id)block
{
  blockCopy = block;
  sCopy = s;
  rootElement = [(ONOXMLDocument *)self rootElement];
  [rootElement enumerateElementsWithCSS:sCopy usingBlock:blockCopy];
}

- (void)enumerateElementsWithCSS:(id)s block:(id)block
{
  blockCopy = block;
  sCopy = s;
  rootElement = [(ONOXMLDocument *)self rootElement];
  [rootElement enumerateElementsWithCSS:sCopy block:blockCopy];
}

- (id)CSS:(id)s
{
  sCopy = s;
  rootElement = [(ONOXMLDocument *)self rootElement];
  v6 = [rootElement CSS:sCopy];

  return v6;
}

- (id)firstChildWithXPath:(id)path
{
  pathCopy = path;
  rootElement = [(ONOXMLDocument *)self rootElement];
  v6 = [rootElement firstChildWithXPath:pathCopy];

  return v6;
}

- (void)enumerateElementsWithXPath:(id)path usingBlock:(id)block
{
  blockCopy = block;
  pathCopy = path;
  rootElement = [(ONOXMLDocument *)self rootElement];
  [rootElement enumerateElementsWithXPath:pathCopy usingBlock:blockCopy];
}

- (void)enumerateElementsWithXPath:(id)path block:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    pathCopy = path;
    rootElement = [(ONOXMLDocument *)self rootElement];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__ONOXMLDocument_enumerateElementsWithXPath_block___block_invoke;
    v9[3] = &unk_278C1C618;
    v10 = blockCopy;
    [rootElement enumerateElementsWithXPath:pathCopy usingBlock:v9];
  }
}

- (id)functionResultByEvaluatingXPath:(id)path
{
  pathCopy = path;
  rootElement = [(ONOXMLDocument *)self rootElement];
  v6 = [rootElement functionResultByEvaluatingXPath:pathCopy];

  return v6;
}

- (id)XPath:(id)path
{
  pathCopy = path;
  rootElement = [(ONOXMLDocument *)self rootElement];
  v6 = [rootElement XPath:pathCopy];

  return v6;
}

- (id)enumeratorWithXPathObject:(_xmlXPathObject *)object
{
  if (object && (nodesetval = object->nodesetval) != 0 && nodesetval->nodeNr && nodesetval->nodeTab)
  {
    v6 = objc_alloc_init(ONOXPathEnumerator);
    [(ONOXPathEnumerator *)v6 setXmlXPath:object];
    [(ONOXPathEnumerator *)v6 setDocument:self];
  }

  else
  {
    xmlXPathFreeObject(object);
    v6 = 0;
  }

  return v6;
}

- (id)elementWithNode:(_xmlNode *)node
{
  if (node)
  {
    v5 = objc_alloc_init(ONOXMLElement);
    [(ONOXMLElement *)v5 setXmlNode:node];
    [(ONOXMLElement *)v5 setDocument:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end