@interface BKPdfTocParser
- (BKPdfTocParser)initWithDocument:(CGPDFDocument *)document;
- (id)pageDictionaryToPageNumber;
- (void)dealloc;
- (void)parse;
@end

@implementation BKPdfTocParser

- (BKPdfTocParser)initWithDocument:(CGPDFDocument *)document
{
  v4 = [(BKPdfTocParser *)self init];
  if (v4)
  {
    v4->_document = CGPDFDocumentRetain(document);
    [(BKPdfTocParser *)v4 parse];
  }

  return v4;
}

- (void)dealloc
{
  CGPDFDocumentRelease(self->_document);
  v3.receiver = self;
  v3.super_class = BKPdfTocParser;
  [(BKPdfTocParser *)&v3 dealloc];
}

- (void)parse
{
  Catalog = CGPDFDocumentGetCatalog(self->_document);
  if (Catalog)
  {
    value = 0;
    if (CGPDFDictionaryGetDictionary(Catalog, "Outlines", &value))
    {
      v8 = 0;
      if (!CGPDFDictionaryGetInteger(value, "Count", &v8) || v8 >= 1)
      {
        v4 = [BKPdfTocEntry alloc];
        v5 = [(BKPdfTocEntry *)v4 initWithTocParser:self pdfDictionary:value forDocument:self->_document parent:0];
        tocRoot = self->_tocRoot;
        self->_tocRoot = v5;

        if (![(BKPdfTocEntry *)self->_tocRoot numberOfChildren])
        {
          v7 = self->_tocRoot;
          self->_tocRoot = 0;
        }
      }
    }
  }
}

- (id)pageDictionaryToPageNumber
{
  pageDictionaryToPageNumber = self->_pageDictionaryToPageNumber;
  if (!pageDictionaryToPageNumber)
  {
    NumberOfPages = CGPDFDocumentGetNumberOfPages(self->_document);
    v5 = [[NSMutableArray alloc] initWithCapacity:NumberOfPages];
    v6 = [[NSMutableArray alloc] initWithCapacity:NumberOfPages];
    if (NumberOfPages)
    {
      v7 = 1;
      do
      {
        Page = CGPDFDocumentGetPage(self->_document, v7);
        if (Page)
        {
          Dictionary = CGPDFPageGetDictionary(Page);
          if (Dictionary)
          {
            v9 = [[NSValue alloc] initWithBytes:&Dictionary objCType:"^v"];
            v10 = [[NSNumber alloc] initWithInteger:v7];
            [v5 addObject:v9];
            [v6 addObject:v10];
          }
        }

        ++v7;
        --NumberOfPages;
      }

      while (NumberOfPages);
    }

    v11 = [[NSDictionary alloc] initWithObjects:v6 forKeys:v5];
    v12 = self->_pageDictionaryToPageNumber;
    self->_pageDictionaryToPageNumber = v11;

    pageDictionaryToPageNumber = self->_pageDictionaryToPageNumber;
  }

  return pageDictionaryToPageNumber;
}

@end