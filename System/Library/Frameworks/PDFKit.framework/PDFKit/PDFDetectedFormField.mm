@interface PDFDetectedFormField
- (BOOL)canBeMergedWith:(id)with;
- (CGRect)rect;
- (PDFDetectedFormField)initWithRect:(CGRect)rect andKind:(int64_t)kind;
@end

@implementation PDFDetectedFormField

- (PDFDetectedFormField)initWithRect:(CGRect)rect andKind:(int64_t)kind
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10.receiver = self;
  v10.super_class = PDFDetectedFormField;
  result = [(PDFDetectedFormField *)&v10 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_kind = kind;
  }

  return result;
}

- (BOOL)canBeMergedWith:(id)with
{
  withCopy = with;
  [(PDFDetectedFormField *)self minY];
  v6 = v5;
  [withCopy minY];
  if (v6 == v7 && (-[PDFDetectedFormField maxY](self, "maxY"), v9 = v8, [withCopy maxY], v9 == v10))
  {
    [withCopy minX];
    v12 = v11;
    [(PDFDetectedFormField *)self maxX];
    v14 = v12 - v13 <= 1.0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)rect
{
  objc_copyStruct(v6, &self->_rect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end