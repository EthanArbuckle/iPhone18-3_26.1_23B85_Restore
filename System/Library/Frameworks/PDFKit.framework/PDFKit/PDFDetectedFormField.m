@interface PDFDetectedFormField
- (BOOL)canBeMergedWith:(id)a3;
- (CGRect)rect;
- (PDFDetectedFormField)initWithRect:(CGRect)a3 andKind:(int64_t)a4;
@end

@implementation PDFDetectedFormField

- (PDFDetectedFormField)initWithRect:(CGRect)a3 andKind:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = PDFDetectedFormField;
  result = [(PDFDetectedFormField *)&v10 init];
  if (result)
  {
    result->_rect.origin.x = x;
    result->_rect.origin.y = y;
    result->_rect.size.width = width;
    result->_rect.size.height = height;
    result->_kind = a4;
  }

  return result;
}

- (BOOL)canBeMergedWith:(id)a3
{
  v4 = a3;
  [(PDFDetectedFormField *)self minY];
  v6 = v5;
  [v4 minY];
  if (v6 == v7 && (-[PDFDetectedFormField maxY](self, "maxY"), v9 = v8, [v4 maxY], v9 == v10))
  {
    [v4 minX];
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