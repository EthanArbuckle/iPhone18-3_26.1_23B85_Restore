@interface ADRansacLine2DSolver
- (ADRansacLine2DSolver)initWithParameters:(id)parameters;
- (id).cxx_construct;
- (id)fitWithX:(float *)x y:(float *)y count:(unsigned int)count;
@end

@implementation ADRansacLine2DSolver

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)fitWithX:(float *)x y:(float *)y count:(unsigned int)count
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (count)
  {
    operator new();
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  if (!DisparityToDepth::Ransac<float,float>::fit(self->_solver.__ptr_, &v16, &__p))
  {
    v9 = 0;
    v10 = __p;
    if (!__p)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = [ADRansacLineResult alloc];
  v6 = (*(*self->_model2D.__ptr_ + 48))(self->_model2D.__ptr_);
  v7 = (*(*self->_model2D.__ptr_ + 56))(self->_model2D.__ptr_);
  LODWORD(v8) = LODWORD(v7);
  *&v7 = v6;
  v9 = [(ADRansacLineResult *)v5 initWithSlope:v7 intercept:v8];
  v10 = __p;
  if (__p)
  {
LABEL_7:
    v14 = v10;
    operator delete(v10);
  }

LABEL_8:
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  return v9;
}

- (ADRansacLine2DSolver)initWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v6.receiver = self;
  v6.super_class = ADRansacLine2DSolver;
  if ([(ADRansacLine2DSolver *)&v6 init])
  {
    operator new();
  }

  return 0;
}

@end