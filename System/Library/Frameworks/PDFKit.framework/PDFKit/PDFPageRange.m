@interface PDFPageRange
- (BOOL)isEqual:(id)a3;
- (PDFPageRange)initWithPage:(id)a3 range:(_NSRange)a4;
- (_NSRange)range;
- (id)description;
- (id)page;
@end

@implementation PDFPageRange

- (PDFPageRange)initWithPage:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PDFPageRange;
  v8 = [(PDFPageRange *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(PDFPageRangePrivate);
    v10 = v8->_private;
    v8->_private = v9;

    objc_storeWeak(&v8->_private->page, v7);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 page];
  v6 = [(PDFPageRange *)self page];

  if (v5 == v6)
  {
    v8 = [v4 range];
    v10 = v9;
    v7 = v8 == [(PDFPageRange *)self range]&& v10 == v11;
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
  v5 = [WeakRetained document];
  v6 = objc_msgSend(v4, "stringWithFormat:", @"Page index = %ld Range = (%ld, %ld]\n"), objc_msgSend(v5, "indexForPage:", WeakRetained), self->_private->range.location, self->_private->range.length;

  return v6;
}

@end