@interface ARUndistortionMapping
- (ARUndistortionMapping)initWithImageSize:(CGSize)a3;
- (id).cxx_construct;
- (void)createVImageMappingIfNeededForImage:(vImage_Buffer *)a3;
- (void)dealloc;
@end

@implementation ARUndistortionMapping

- (ARUndistortionMapping)initWithImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = ARUndistortionMapping;
  v5 = [(ARUndistortionMapping *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 1) = width;
    *(v5 + 2) = height;
    std::vector<float>::resize(v5 + 1, (width * height));
    std::vector<float>::resize(v6 + 2, (*&v6->__end_ * *&v6->__end_cap_.__value_));
  }

  return v6;
}

- (void)createVImageMappingIfNeededForImage:(vImage_Buffer *)a3
{
  if (!self->_mapping)
  {
    kdebug_trace();
    v8 = 0;
    v9 = 0;
    v7 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v7, self->_mappingU.__begin_, self->_mappingU.__end_, self->_mappingU.__end_ - self->_mappingU.__begin_);
    __p = 0;
    v5 = 0;
    v6 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, self->_mappingV.__begin_, self->_mappingV.__end_, self->_mappingV.__end_ - self->_mappingV.__begin_);
    v10 = 0;
    self->_mapping = vImageMapping_CreateFromMap_Image8U();
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }

    kdebug_trace();
  }
}

- (void)dealloc
{
  if (self->_mapping)
  {
    vImageMapping_Release();
  }

  v3.receiver = self;
  v3.super_class = ARUndistortionMapping;
  [(ARUndistortionMapping *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end