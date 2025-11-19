@interface PDFTextLogicalPosition
- (PDFPage)page;
- (PDFTextLogicalPosition)initWithPage:(id)a3 offset:(int64_t)a4;
@end

@implementation PDFTextLogicalPosition

- (PDFTextLogicalPosition)initWithPage:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PDFTextLogicalPosition;
  v7 = [(PDFTextLogicalPosition *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_page, v6);
    v8->_offset = a4;
  }

  return v8;
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end