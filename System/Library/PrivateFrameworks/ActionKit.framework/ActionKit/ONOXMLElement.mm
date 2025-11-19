@interface ONOXMLElement
- (ONOXMLDocument)document;
- (ONOXMLElement)initWithCoder:(id)a3;
- (_xmlXPathObject)xmlXPathObjectPtrWithXPath:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)firstChildWithCSS:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateElementsWithCSS:(id)a3 usingBlock:(id)a4;
- (void)forwardInvocation:(id)a3;
@end

@implementation ONOXMLElement

- (ONOXMLDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ONOXMLElement *)self tag];
  v6 = NSStringFromSelector("tag");
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(ONOXMLElement *)self attributes];
  v8 = NSStringFromSelector(sel_attributes);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(ONOXMLElement *)self stringValue];
  v10 = NSStringFromSelector(sel_stringValue);
  [v4 encodeObject:v9 forKey:v10];

  v12 = [(ONOXMLElement *)self children];
  v11 = NSStringFromSelector(sel_children);
  [v4 encodeObject:v12 forKey:v11];
}

- (ONOXMLElement)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ONOXMLElement;
  v5 = [(ONOXMLElement *)&v16 init];
  if (v5)
  {
    v6 = NSStringFromSelector("tag");
    v7 = [v4 decodeObjectForKey:v6];

    v8 = NSStringFromSelector(sel_attributes);
    v9 = [v4 decodeObjectForKey:v8];

    v10 = NSStringFromSelector(sel_stringValue);
    v11 = [v4 decodeObjectForKey:v10];

    v12 = NSStringFromSelector(sel_children);
    v13 = [v4 decodeObjectForKey:v12];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setXmlNode:{-[ONOXMLElement xmlNode](self, "xmlNode")}];
  v5 = [(ONOXMLElement *)self document];
  [v4 setDocument:v5];

  return v4;
}

- (void)forwardInvocation:(id)a3
{
  v5 = a3;
  v4 = [(ONOXMLElement *)self stringValue];
  if (v4)
  {
    [v5 invokeWithTarget:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(ONOXMLElement *)self stringValue];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

- (_xmlXPathObject)xmlXPathObjectPtrWithXPath:(id)a3
{
  v4 = a3;
  v5 = xmlXPathNewContext([(ONOXMLElement *)self xmlNode][64]);
  if (v5)
  {
    v6 = v5;
    v5->node = [(ONOXMLElement *)self xmlNode];
    v7 = [(ONOXMLElement *)self xmlNode];
    p_parent = &v7->parent;
    parent = v7->parent;
    if (parent)
    {
      while (1)
      {
        nsDef = v7->nsDef;
        if (nsDef)
        {
          break;
        }

LABEL_14:
        v7 = parent;
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

        v11 = [(ONOXMLElement *)self document];
        v12 = [v11 defaultNamespaces];

        if (v12)
        {
          v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:nsDef->href];
          v14 = [(ONOXMLElement *)self document];
          v15 = [v14 defaultNamespaces];
          v16 = [v15 objectForKeyedSubscript:v13];

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
    v18 = MEMORY[0x23EF07980]([v4 UTF8String], v6);
    xmlXPathFreeContext(v6);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)firstChildWithCSS:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v7, 0, sizeof(v7));
  v3 = [(ONOXMLElement *)self CSS:a3, 0];
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

- (void)enumerateElementsWithCSS:(id)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = ONOXPathFromCSS(a3);
  [(ONOXMLElement *)self enumerateElementsWithXPath:v7 usingBlock:v6];
}

@end