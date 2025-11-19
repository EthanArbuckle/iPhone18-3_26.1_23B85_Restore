@interface OpenCVWrapperContours
- (CGPoint)getPointAtContourIndex:(unint64_t)a3 pointIndex:(unint64_t)a4;
- (OpenCVWrapperContours)initWithContours:(void *)a3 originalImageSize:(const MatSize *)a4;
- (id).cxx_construct;
@end

@implementation OpenCVWrapperContours

- (OpenCVWrapperContours)initWithContours:(void *)a3 originalImageSize:(const MatSize *)a4
{
  v10.receiver = self;
  v10.super_class = OpenCVWrapperContours;
  v6 = [(OpenCVWrapperContours *)&v10 init];
  v7 = v6;
  if (v6)
  {
    p_contours = &v6->_contours;
    if (&v7->_contours != a3)
    {
      sub_10000A884(p_contours, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
    }

    v7->_originalImageSize = vrev64_s32(*a4->p);
  }

  return v7;
}

- (CGPoint)getPointAtContourIndex:(unint64_t)a3 pointIndex:(unint64_t)a4
{
  v4 = (*(self->_contours.__begin_ + 3 * a3) + 8 * a4);
  v5 = *v4;
  v6 = v4[1];
  result.y = v6;
  result.x = v5;
  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end