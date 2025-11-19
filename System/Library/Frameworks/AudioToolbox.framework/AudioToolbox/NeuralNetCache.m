@interface NeuralNetCache
+ (id)sharedCache;
- (NeuralNetCache)initWithImpl:()unique_ptr<NeuralNetImpl;
- (unique_ptr<NeuralNetImpl,)impl;
@end

@implementation NeuralNetCache

- (unique_ptr<NeuralNetImpl,)impl
{
  ptr = self->_impl.__ptr_;
  self->_impl.__ptr_ = 0;
  *v2 = ptr;
  return self;
}

- (NeuralNetCache)initWithImpl:()unique_ptr<NeuralNetImpl
{
  v9.receiver = self;
  v9.super_class = NeuralNetCache;
  v4 = [(NeuralNetCache *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *a3.__ptr_;
    *a3.__ptr_ = 0;
    ptr = v4->_impl.__ptr_;
    v5->_impl.__ptr_ = v6;
    if (ptr)
    {
      (*(*ptr + 8))(ptr);
    }
  }

  return v5;
}

+ (id)sharedCache
{
  if (+[NeuralNetCache sharedCache]::onceToken != -1)
  {
    dispatch_once(&+[NeuralNetCache sharedCache]::onceToken, &__block_literal_global_25187);
  }

  v3 = sNeuralNetCache;

  return v3;
}

void __29__NeuralNetCache_sharedCache__block_invoke()
{
  if (!sNeuralNetCache)
  {
    sNeuralNetCache = objc_alloc_init(MEMORY[0x1E695DEE0]);

    MEMORY[0x1EEE66BB8]();
  }
}

@end