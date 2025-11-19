@interface PDFPointerRegion
- (CGRect)rect;
- (PDFPointerRegion)initWithRect:(CGRect)a3 identifier:(id)a4;
@end

@implementation PDFPointerRegion

- (PDFPointerRegion)initWithRect:(CGRect)a3 identifier:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = PDFPointerRegion;
  v11 = [(PDFPointerRegion *)&v16 init];
  if (v11)
  {
    v12 = objc_alloc_init(PDFPointerRegionPrivate);
    v13 = v11->_private;
    v11->_private = v12;

    v14 = v11->_private;
    v14->rect.origin.x = x;
    v14->rect.origin.y = y;
    v14->rect.size.width = width;
    v14->rect.size.height = height;
    objc_storeStrong(&v11->_private->identifier, a4);
  }

  return v11;
}

- (CGRect)rect
{
  v2 = self->_private;
  x = v2->rect.origin.x;
  y = v2->rect.origin.y;
  width = v2->rect.size.width;
  height = v2->rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end