@interface PDFTextSelectionRect
- (CGRect)rect;
- (PDFTextSelectionRect)initWithRect:(CGRect)a3 onPage:(id)a4;
- (id)description;
@end

@implementation PDFTextSelectionRect

- (PDFTextSelectionRect)initWithRect:(CGRect)a3 onPage:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PDFTextSelectionRect;
  v11 = [(PDFTextSelectionRect *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_rect.origin.x = x;
    v11->_rect.origin.y = y;
    v11->_rect.size.width = width;
    v11->_rect.size.height = height;
    objc_storeStrong(&v11->_page, a4);
  }

  return v12;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)description
{
  v3 = self->_page;
  v4 = [(PDFPage *)v3 document];
  v5 = [v4 indexForPage:v3];

  v6 = "No";
  if (self->_isStartingRect)
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  if (self->_isEndingRect)
  {
    v6 = "Yes";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Page index %d, rect {(%.2f, %.2f), (%.2f, %.2f) }, is start? %s, is end? %s", v5, *&self->_rect.origin, *&self->_rect.size.width, *&self->_rect.size.height, v7, v6];
}

@end