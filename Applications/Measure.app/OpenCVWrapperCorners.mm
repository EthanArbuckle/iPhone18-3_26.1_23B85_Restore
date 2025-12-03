@interface OpenCVWrapperCorners
- (OpenCVWrapperCorners)init;
- (OpenCVWrapperCorners)initWithCorners:(void *)corners;
- (id).cxx_construct;
@end

@implementation OpenCVWrapperCorners

- (OpenCVWrapperCorners)init
{
  v3.receiver = self;
  v3.super_class = OpenCVWrapperCorners;
  return [(OpenCVWrapperCorners *)&v3 init];
}

- (OpenCVWrapperCorners)initWithCorners:(void *)corners
{
  v4 = [(OpenCVWrapperCorners *)self init];
  v5 = v4;
  if (v4)
  {
    p_corners = &v4->_corners;
    if (&v5->_corners != corners)
    {
      sub_10000AD58(p_corners, *corners, *(corners + 1), 0xAAAAAAAAAAAAAAABLL * ((*(corners + 1) - *corners) >> 3));
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