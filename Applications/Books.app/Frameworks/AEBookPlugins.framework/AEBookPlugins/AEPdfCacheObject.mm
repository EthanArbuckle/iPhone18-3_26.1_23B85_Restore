@interface AEPdfCacheObject
- (AEPdfCacheObject)initWithPdfDocument:(id)document;
- (NSUndoManager)pdfUndoManager;
@end

@implementation AEPdfCacheObject

- (AEPdfCacheObject)initWithPdfDocument:(id)document
{
  documentCopy = document;
  v6 = [(AEPdfCacheObject *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_document, document);
  }

  return v7;
}

- (NSUndoManager)pdfUndoManager
{
  pdfUndoManager = self->_pdfUndoManager;
  if (!pdfUndoManager)
  {
    v4 = objc_opt_new();
    v5 = self->_pdfUndoManager;
    self->_pdfUndoManager = v4;

    pdfUndoManager = self->_pdfUndoManager;
  }

  return pdfUndoManager;
}

@end