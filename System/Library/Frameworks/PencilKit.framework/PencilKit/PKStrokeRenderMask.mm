@interface PKStrokeRenderMask
- (PKStrokeRenderMask)initWithStroke:(id)stroke renderCache:(id)cache maskPaths:(const void *)paths;
- (id).cxx_construct;
@end

@implementation PKStrokeRenderMask

- (PKStrokeRenderMask)initWithStroke:(id)stroke renderCache:(id)cache maskPaths:(const void *)paths
{
  strokeCopy = stroke;
  cacheCopy = cache;
  v15.receiver = self;
  v15.super_class = PKStrokeRenderMask;
  v11 = [(PKStrokeRenderMask *)&v15 init];
  v12 = v11;
  if (v11)
  {
    p_maskPaths = &v11->_maskPaths;
    if (&v12->_maskPaths != paths)
    {
      std::vector<std::vector<ClipperLib::IntPoint>>::__assign_with_size[abi:ne200100]<std::vector<ClipperLib::IntPoint>*,std::vector<ClipperLib::IntPoint>*>(p_maskPaths, *paths, *(paths + 1), 0xAAAAAAAAAAAAAAABLL * ((*(paths + 1) - *paths) >> 3));
    }

    objc_storeStrong(&v12->_stroke, stroke);
    objc_storeStrong(&v12->_renderCache, cache);
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