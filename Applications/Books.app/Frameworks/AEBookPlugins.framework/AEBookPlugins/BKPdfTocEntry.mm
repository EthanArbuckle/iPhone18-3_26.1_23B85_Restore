@interface BKPdfTocEntry
- (BKPdfTocEntry)initWithTocParser:(id)parser pdfDictionary:(CGPDFDictionary *)dictionary forDocument:(CGPDFDocument *)document parent:(id)parent;
- (BOOL)childDictionaryReferencesParent:(CGPDFDictionary *)parent;
- (id)childAtIndex:(unint64_t)index;
- (int64_t)_getDestination;
- (unint64_t)_pageDictionaryToPageNumber:(CGPDFDictionary *)number;
@end

@implementation BKPdfTocEntry

- (id)childAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_children count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_children objectAtIndex:index];
  }

  return v5;
}

- (BOOL)childDictionaryReferencesParent:(CGPDFDictionary *)parent
{
  numberOfChildren = [(BKPdfTocEntry *)self numberOfChildren];
  if (numberOfChildren)
  {
    v6 = numberOfChildren;
    v7 = 0;
    while (1)
    {
      v8 = [(BKPdfTocEntry *)self childAtIndex:v7];
      dictionary = [v8 dictionary];

      if (dictionary == parent)
      {
        return 1;
      }

      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    selfCopy = self;
    do
    {
      dictionary2 = [(BKPdfTocEntry *)selfCopy dictionary];
      v12 = dictionary2 == parent;
      if (dictionary2 == parent)
      {
        break;
      }

      parent = [(BKPdfTocEntry *)selfCopy parent];

      selfCopy = parent;
    }

    while (parent);
  }

  return v12;
}

- (unint64_t)_pageDictionaryToPageNumber:(CGPDFDictionary *)number
{
  numberCopy = number;
  pageDictionaryToPageNumber = [(BKPdfTocParser *)self->_tocParser pageDictionaryToPageNumber];
  if (pageDictionaryToPageNumber)
  {
    v4 = [[NSValue alloc] initWithBytes:&numberCopy objCType:"^v"];
    v5 = [pageDictionaryToPageNumber objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return integerValue;
}

- (int64_t)_getDestination
{
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  array = 0;
  object = 0;
  value = 0;
  if (CGPDFDictionaryGetDictionary(self->_dictionary, "A", &value))
  {
    __s1 = 0;
    CGPDFDictionaryGetName(value, "S", &__s1);
    if (!strcmp(__s1, "GoTo"))
    {
      dictionary = value;
LABEL_6:
      CGPDFDictionaryGetObject(dictionary, "D", &object);
    }
  }

  else if (!CGPDFDictionaryGetObject(self->_dictionary, "Dest", &object))
  {
    dictionary = self->_dictionary;
    goto LABEL_6;
  }

  if (!object)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (CGPDFObjectGetValue(object, kCGPDFObjectTypeString, 0) || CGPDFObjectGetValue(object, kCGPDFObjectTypeName, 0))
  {
    Destination = CGPDFDocumentGetDestination();
    object = Destination;
    if (Destination)
    {
      __s1 = 0;
      if (CGPDFObjectGetValue(Destination, kCGPDFObjectTypeDictionary, &__s1))
      {
        CGPDFDictionaryGetObject(__s1, "D", &object);
      }
    }
  }

  if (!CGPDFObjectGetValue(object, kCGPDFObjectTypeArray, &array) || !CGPDFArrayGetCount(array))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  __s1 = 0;
  if (CGPDFArrayGetDictionary(array, 0, &__s1))
  {
    return [(BKPdfTocEntry *)self _pageDictionaryToPageNumber:__s1];
  }

  Integer = CGPDFArrayGetInteger(array, 0, &v12);
  result = v12;
  if (Integer)
  {
    ++v12;
    NumberOfPages = CGPDFDocumentGetNumberOfPages(self->_document);
    if (v12 <= NumberOfPages)
    {
      return v12;
    }

    else
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (BKPdfTocEntry)initWithTocParser:(id)parser pdfDictionary:(CGPDFDictionary *)dictionary forDocument:(CGPDFDocument *)document parent:(id)parent
{
  parserCopy = parser;
  parentCopy = parent;
  value = 0;
  v13 = [(BKPdfTocEntry *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_tocParser, parser);
    v14->_document = document;
    v14->_dictionary = dictionary;
    objc_storeStrong(&v14->_parent, parent);
    v14->_pageNumber = 0x7FFFFFFFFFFFFFFFLL;
    if (parentCopy)
    {
      if (CGPDFDictionaryGetString(v14->_dictionary, "Title", &value))
      {
        v15 = CGPDFStringCopyTextString(value);
        title = v14->_title;
        v14->_title = &v15->isa;
      }

      v14->_pageNumber = [(BKPdfTocEntry *)v14 _getDestination];
    }

    dict = 0;
    if (CGPDFDictionaryGetDictionary(v14->_dictionary, "First", &dict))
    {
      v17 = [[NSMutableArray alloc] initWithCapacity:3];
      children = v14->_children;
      v14->_children = v17;

      if (!v14->_children)
      {
LABEL_13:
        v22 = 0;
        goto LABEL_12;
      }

      do
      {
        if ([(BKPdfTocEntry *)v14 childDictionaryReferencesParent:dict])
        {
          break;
        }

        v19 = [BKPdfTocEntry alloc];
        v20 = [(BKPdfTocEntry *)v19 initWithTocParser:v14->_tocParser pdfDictionary:dict forDocument:v14->_document parent:v14];
        if (!v20)
        {
          goto LABEL_13;
        }

        v21 = v20;
        [(NSMutableArray *)v14->_children addObject:v20];
      }

      while (CGPDFDictionaryGetDictionary(dict, "Next", &dict));
    }
  }

  v22 = v14;
LABEL_12:

  return v22;
}

@end