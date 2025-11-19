@interface OpenCVWrapperCorners
- (OpenCVWrapperCorners)init;
- (OpenCVWrapperCorners)initWithCorners:(void *)a3;
- (id).cxx_construct;
@end

@implementation OpenCVWrapperCorners

- (OpenCVWrapperCorners)init
{
  v3.receiver = self;
  v3.super_class = OpenCVWrapperCorners;
  return [(OpenCVWrapperCorners *)&v3 init];
}

- (OpenCVWrapperCorners)initWithCorners:(void *)a3
{
  v4 = [(OpenCVWrapperCorners *)self init];
  v5 = v4;
  if (v4)
  {
    p_corners = &v4->_corners;
    if (&v5->_corners != a3)
    {
      sub_10000AD58(p_corners, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
    }
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end