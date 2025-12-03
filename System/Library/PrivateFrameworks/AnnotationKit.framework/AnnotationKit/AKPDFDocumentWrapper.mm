@interface AKPDFDocumentWrapper
- (AKPDFDocumentWrapper)initWithPDF:(CGPDFDocument *)f;
- (void)dealloc;
@end

@implementation AKPDFDocumentWrapper

- (AKPDFDocumentWrapper)initWithPDF:(CGPDFDocument *)f
{
  v6.receiver = self;
  v6.super_class = AKPDFDocumentWrapper;
  v4 = [(AKPDFDocumentWrapper *)&v6 init];
  if (v4)
  {
    v4->_pdfDocument = CGPDFDocumentRetain(f);
  }

  return v4;
}

- (void)dealloc
{
  pdfDocument = self->_pdfDocument;
  if (pdfDocument)
  {
    CGPDFDocumentRelease(pdfDocument);
    self->_pdfDocument = 0;
  }

  v4.receiver = self;
  v4.super_class = AKPDFDocumentWrapper;
  [(AKPDFDocumentWrapper *)&v4 dealloc];
}

@end