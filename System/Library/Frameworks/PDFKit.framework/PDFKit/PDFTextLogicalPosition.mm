@interface PDFTextLogicalPosition
- (PDFPage)page;
- (PDFTextLogicalPosition)initWithPage:(id)page offset:(int64_t)offset;
@end

@implementation PDFTextLogicalPosition

- (PDFTextLogicalPosition)initWithPage:(id)page offset:(int64_t)offset
{
  pageCopy = page;
  v10.receiver = self;
  v10.super_class = PDFTextLogicalPosition;
  v7 = [(PDFTextLogicalPosition *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_page, pageCopy);
    v8->_offset = offset;
  }

  return v8;
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end