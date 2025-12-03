@interface SKTextureCache
- (CGSize)pixelSize;
- (CGSize)size;
- (SKTextureCache)init;
- (id).cxx_construct;
- (shared_ptr<jet_texture>)backingTexture;
- (void)_reset;
- (void)dealloc;
- (void)setBackingTexture:(shared_ptr<jet_texture>)texture;
@end

@implementation SKTextureCache

- (SKTextureCache)init
{
  v6.receiver = self;
  v6.super_class = SKTextureCache;
  v2 = [(SKTextureCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = *MEMORY[0x277CBF3A8];
    v2->size = *MEMORY[0x277CBF3A8];
    v2->pixelSize = v4;
    *&v2->hasAlpha = 1;
    v2->pixelData = 0;
    v2->state = 0;
    pthread_mutex_init(&v2->lock, 0);
    v3->filteringMode = 1;
    *&v3->_textureFormat = 3;
  }

  return v3;
}

- (void)dealloc
{
  [(SKTextureCache *)self _reset];
  v3.receiver = self;
  v3.super_class = SKTextureCache;
  [(SKTextureCache *)&v3 dealloc];
}

- (void)_reset
{
  if (self->_backingTexture.__ptr_)
  {
    cntrl = self->_backingTexture.__cntrl_;
    self->_backingTexture.__ptr_ = 0;
    self->_backingTexture.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  pixelData = self->pixelData;
  if (pixelData)
  {
    free(pixelData);
    self->pixelData = 0;
  }

  v5 = MEMORY[0x277CBF3A8];
  self->state = 0;
  v6 = *v5;
  self->size = *v5;
  self->pixelSize = v6;
  *&self->hasAlpha = 1;
  pthread_mutex_init(&self->lock, 0);
  self->filteringMode = 1;
  *&self->_textureFormat = 3;
}

- (CGSize)size
{
  width = self->size.width;
  height = self->size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pixelSize
{
  width = self->pixelSize.width;
  height = self->pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (shared_ptr<jet_texture>)backingTexture
{
  cntrl = self->_backingTexture.__cntrl_;
  *v2 = self->_backingTexture.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setBackingTexture:(shared_ptr<jet_texture>)texture
{
  v4 = *texture.__ptr_;
  v3 = *(texture.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_backingTexture.__cntrl_;
  self->_backingTexture.__ptr_ = v4;
  self->_backingTexture.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  return self;
}

@end