@interface ONOXMLElement
- (ONOXMLDocument)document;
- (ONOXMLElement)initWithCoder:(id)coder;
- (_xmlXPathObject)xmlXPathObjectPtrWithXPath:(id)path;
- (id)copyWithZone:(_NSZone *)zone;
- (id)firstChildWithCSS:(id)s;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateElementsWithCSS:(id)s usingBlock:(id)block;
- (void)forwardInvocation:(id)invocation;
@end

@implementation ONOXMLElement

- (ONOXMLDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ONOXMLElement *)self tag];
  v6 = NSStringFromSelector("tag");
  [coderCopy encodeObject:v5 forKey:v6];

  attributes = [(ONOXMLElement *)self attributes];
  v8 = NSStringFromSelector(sel_attributes);
  [coderCopy encodeObject:attributes forKey:v8];

  stringValue = [(ONOXMLElement *)self stringValue];
  v10 = NSStringFromSelector(sel_stringValue);
  [coderCopy encodeObject:stringValue forKey:v10];

  children = [(ONOXMLElement *)self children];
  v11 = NSStringFromSelector(sel_children);
  [coderCopy encodeObject:children forKey:v11];
}

- (ONOXMLElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ONOXMLElement;
  v5 = [(ONOXMLElement *)&v16 init];
  if (v5)
  {
    v6 = NSStringFromSelector("tag");
    v7 = [coderCopy decodeObjectForKey:v6];

    v8 = NSStringFromSelector(sel_attributes);
    v9 = [coderCopy decodeObjectForKey:v8];

    v10 = NSStringFromSelector(sel_stringValue);
    v11 = [coderCopy decodeObjectForKey:v10];

    v12 = NSStringFromSelector(sel_children);
    v13 = [coderCopy decodeObjectForKey:v12];

    v14 = 0;
    if (v7 && v9 && v11 && v13)
    {
      [(ONOXMLElement *)v5 setTag:v7];
      [(ONOXMLElement *)v5 setAttributes:v9];
      [(ONOXMLElement *)v5 setStringValue:v11];
      [(ONOXMLElement *)v5 setChildren:v13];
      v14 = v5;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setXmlNode:{-[ONOXMLElement xmlNode](self, "xmlNode")}];
  document = [(ONOXMLElement *)self document];
  [v4 setDocument:document];

  return v4;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  stringValue = [(ONOXMLElement *)self stringValue];
  if (stringValue)
  {
    [invocationCopy invokeWithTarget:stringValue];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  stringValue = [(ONOXMLElement *)self stringValue];
  v5 = [stringValue methodSignatureForSelector:selector];

  return v5;
}

- (_xmlXPathObject)xmlXPathObjectPtrWithXPath:(id)path
{
  pathCopy = path;
  v5 = xmlXPathNewContext([(ONOXMLElement *)self xmlNode][64]);
  if (v5)
  {
    v6 = v5;
    v5->node = [(ONOXMLElement *)self xmlNode];
    xmlNode = [(ONOXMLElement *)self xmlNode];
    p_parent = &xmlNode->parent;
    parent = xmlNode->parent;
    if (parent)
    {
      while (1)
      {
        nsDef = xmlNode->nsDef;
        if (nsDef)
        {
          break;
        }

LABEL_14:
        xmlNode = parent;
        p_parent = &parent->parent;
        parent = parent->parent;
        if (!parent)
        {
          goto LABEL_15;
        }
      }

      while (1)
      {
        prefix = nsDef->prefix;
        if (prefix)
        {
          goto LABEL_11;
        }

        document = [(ONOXMLElement *)self document];
        defaultNamespaces = [document defaultNamespaces];

        if (defaultNamespaces)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:nsDef->href];
          document2 = [(ONOXMLElement *)self document];
          defaultNamespaces2 = [document2 defaultNamespaces];
          v16 = [defaultNamespaces2 objectForKeyedSubscript:v13];

          if (v16)
          {
            prefix = [v16 UTF8String];

            if (!prefix)
            {
              goto LABEL_12;
            }

LABEL_11:
            xmlXPathRegisterNs(v6, prefix, nsDef->href);
            goto LABEL_12;
          }
        }

LABEL_12:
        nsDef = nsDef->next;
        if (!nsDef)
        {
          parent = *p_parent;
          goto LABEL_14;
        }
      }
    }

LABEL_15:
    v18 = MEMORY[0x23EF07980]([pathCopy UTF8String], v6);
    xmlXPathFreeContext(v6);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)firstChildWithCSS:(id)s
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v3 = [(ONOXMLElement *)self CSS:s, 0];
  if ([v3 countByEnumeratingWithState:v7 objects:v8 count:16])
  {
    v4 = **(&v7[0] + 1);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)enumerateElementsWithCSS:(id)s usingBlock:(id)block
{
  blockCopy = block;
  v7 = ONOXPathFromCSS(s);
  [(ONOXMLElement *)self enumerateElementsWithXPath:v7 usingBlock:blockCopy];
}

@end