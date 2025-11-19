@interface ONOXPathEnumerator
- (id)allObjects;
- (id)nextObject;
- (id)objectAtIndex:(int64_t)a3;
- (void)dealloc;
@end

@implementation ONOXPathEnumerator

- (id)nextObject
{
  v3 = [(ONOXPathEnumerator *)self cursor];
  if (v3 >= *[(ONOXPathEnumerator *)self xmlXPath][8])
  {
    v5 = 0;
  }

  else
  {
    v4 = [(ONOXPathEnumerator *)self cursor];
    [(ONOXPathEnumerator *)self setCursor:v4 + 1];
    v5 = [(ONOXPathEnumerator *)self objectAtIndex:v4];
  }

  return v5;
}

- (id)allObjects
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{*-[ONOXPathEnumerator xmlXPath](self, "xmlXPath")[8]}];
  for (i = 0; ; ++i)
  {
    v5 = [(ONOXPathEnumerator *)self xmlXPath][8];
    if (v5)
    {
      v5 = *[(ONOXPathEnumerator *)self xmlXPath][8];
    }

    if (i >= v5)
    {
      break;
    }

    v6 = [(ONOXPathEnumerator *)self objectAtIndex:i];
    if (v6)
    {
      [v3 addObject:v6];
    }
  }

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v3];

  return v7;
}

- (id)objectAtIndex:(int64_t)a3
{
  v5 = [(ONOXPathEnumerator *)self xmlXPath][8];
  if (v5)
  {
    v5 = *[(ONOXPathEnumerator *)self xmlXPath][8];
  }

  if (v5 <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(ONOXPathEnumerator *)self document];
    v7 = [v6 elementWithNode:{*(*(-[ONOXPathEnumerator xmlXPath](self, "xmlXPath")[8] + 8) + 8 * a3)}];
  }

  return v7;
}

- (void)dealloc
{
  xmlXPath = self->_xmlXPath;
  if (xmlXPath)
  {
    xmlXPathFreeObject(xmlXPath);
  }

  v4.receiver = self;
  v4.super_class = ONOXPathEnumerator;
  [(ONOXPathEnumerator *)&v4 dealloc];
}

@end