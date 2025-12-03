@interface PDFPageRange
- (BOOL)isEqual:(id)equal;
- (PDFPageRange)initWithPage:(id)page range:(_NSRange)range;
- (_NSRange)range;
- (id)description;
- (id)page;
@end

@implementation PDFPageRange

- (PDFPageRange)initWithPage:(id)page range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  pageCopy = page;
  v13.receiver = self;
  v13.super_class = PDFPageRange;
  v8 = [(PDFPageRange *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(PDFPageRangePrivate);
    v10 = v8->_private;
    v8->_private = v9;

    objc_storeWeak(&v8->_private->page, pageCopy);
    v11 = v8->_private;
    v11->range.location = location;
    v11->range.length = length;
  }

  return v8;
}

- (id)page
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);

  return WeakRetained;
}

- (_NSRange)range
{
  v2 = self->_private;
  location = v2->range.location;
  length = v2->range.length;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  page = [equalCopy page];
  page2 = [(PDFPageRange *)self page];

  if (page == page2)
  {
    range = [equalCopy range];
    v10 = v9;
    v7 = range == [(PDFPageRange *)self range]&& v10 == v11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  WeakRetained = objc_loadWeakRetained(&self->_private->page);
  v4 = MEMORY[0x1E696AEC0];
  document = [WeakRetained document];
  v6 = objc_msgSend(v4, "stringWithFormat:", @"Page index = %ld Range = (%ld, %ld]\n"), objc_msgSend(document, "indexForPage:", WeakRetained), self->_private->range.location, self->_private->range.length;

  return v6;
}

@end