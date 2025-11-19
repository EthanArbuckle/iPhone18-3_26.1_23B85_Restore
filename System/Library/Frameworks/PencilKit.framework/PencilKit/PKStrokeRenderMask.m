@interface PKStrokeRenderMask
- (PKStrokeRenderMask)initWithStroke:(id)a3 renderCache:(id)a4 maskPaths:(const void *)a5;
- (id).cxx_construct;
@end

@implementation PKStrokeRenderMask

- (PKStrokeRenderMask)initWithStroke:(id)a3 renderCache:(id)a4 maskPaths:(const void *)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PKStrokeRenderMask;
  v11 = [(PKStrokeRenderMask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    p_maskPaths = &v11->_maskPaths;
    if (&v12->_maskPaths != a5)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__assign_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(p_maskPaths, *a5, *(a5 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 1) - *a5) >> 3));
    }

    objc_storeStrong(&v12->_stroke, a3);
    objc_storeStrong(&v12->_renderCache, a4);
  }

  return v12;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end