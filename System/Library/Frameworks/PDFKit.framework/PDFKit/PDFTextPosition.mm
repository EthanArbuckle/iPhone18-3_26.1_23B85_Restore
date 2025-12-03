@interface PDFTextPosition
- (PDFPage)page;
- (PDFTextPosition)initWithOffset:(int64_t)offset onPage:(id)page;
- (id)description;
@end

@implementation PDFTextPosition

- (PDFTextPosition)initWithOffset:(int64_t)offset onPage:(id)page
{
  pageCopy = page;
  v10.receiver = self;
  v10.super_class = PDFTextPosition;
  v7 = [(PDFTextPosition *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_offset = offset;
    objc_storeWeak(&v7->_page, pageCopy);
  }

  return v8;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v4 = MEMORY[0x1E696AEC0];
  offset = self->_offset;
  document = [WeakRetained document];
  v7 = [v4 stringWithFormat:@"Offset %d on page index %d", offset, objc_msgSend(document, "indexForPage:", WeakRetained)];

  return v7;
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end