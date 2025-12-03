@interface OpenCVWrapperContours
- (CGPoint)getPointAtContourIndex:(unint64_t)index pointIndex:(unint64_t)pointIndex;
- (OpenCVWrapperContours)initWithContours:(void *)contours originalImageSize:(const MatSize *)size;
- (id).cxx_construct;
@end

@implementation OpenCVWrapperContours

- (OpenCVWrapperContours)initWithContours:(void *)contours originalImageSize:(const MatSize *)size
{
  v10.receiver = self;
  v10.super_class = OpenCVWrapperContours;
  v6 = [(OpenCVWrapperContours *)&v10 init];
  v7 = v6;
  if (v6)
  {
    p_contours = &v6->_contours;
    if (&v7->_contours != contours)
    {
      sub_10000A884(p_contours, *contours, *(contours + 1), 0xAAAAAAAAAAAAAAABLL * ((*(contours + 1) - *contours) >> 3));
    }

    v7->_originalImageSize = vrev64_s32(*size->p);
  }

  return v7;
}

- (CGPoint)getPointAtContourIndex:(unint64_t)index pointIndex:(unint64_t)pointIndex
{
  v4 = (*(self->_contours.__begin_ + 3 * index) + 8 * pointIndex);
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