@interface QLPrintSession
- (CGSize)printSize;
- (void)dealloc;
@end

@implementation QLPrintSession

- (void)dealloc
{
  pdfDocumentRef = self->_pdfDocumentRef;
  if (pdfDocumentRef)
  {
    CGPDFDocumentRelease(pdfDocumentRef);
  }

  dataProvider = self->_dataProvider;
  if (dataProvider)
  {
    CGDataProviderRelease(dataProvider);
  }

  v5.receiver = self;
  v5.super_class = QLPrintSession;
  [(QLPrintSession *)&v5 dealloc];
}

- (CGSize)printSize
{
  objc_copyStruct(v4, &self->_printSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end