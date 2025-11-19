@interface PDFTextPosition
- (PDFPage)page;
- (PDFTextPosition)initWithOffset:(int64_t)a3 onPage:(id)a4;
- (id)description;
@end

@implementation PDFTextPosition

- (PDFTextPosition)initWithOffset:(int64_t)a3 onPage:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = PDFTextPosition;
  v7 = [(PDFTextPosition *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_offset = a3;
    objc_storeWeak(&v7->_page, v6);
  }

  return v8;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_page);
  v4 = MEMORY[0x1E696AEC0];
  offset = self->_offset;
  v6 = [WeakRetained document];
  v7 = [v4 stringWithFormat:@"Offset %d on page index %d", offset, objc_msgSend(v6, "indexForPage:", WeakRetained)];

  return v7;
}

- (PDFPage)page
{
  WeakRetained = objc_loadWeakRetained(&self->_page);

  return WeakRetained;
}

@end