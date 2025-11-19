@interface NUISizeCache
- (BOOL)getSize:(CGSize *)a3 forTargetSize:(CGSize)a4 isSizeDependentOnPerpendicularAxis:(BOOL)a5;
- (id).cxx_construct;
- (id)initForAsynchronousAccess:(BOOL)a3;
- (void)dealloc;
- (void)insertSize:(CGSize)a3 forTargetSize:(CGSize)a4;
- (void)invalidateCache;
@end

@implementation NUISizeCache

- (id)initForAsynchronousAccess:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NUISizeCache;
  result = [(NUISizeCache *)&v5 init];
  if (result)
  {
    *(result + 32) = a3;
  }

  return result;
}

- (void)dealloc
{
  if (self->_threadSafe)
  {
    objc_sync_enter(self);
    self->_sizeCache.__end_ = self->_sizeCache.__begin_;
    objc_sync_exit(self);
  }

  else
  {
    self->_sizeCache.__end_ = self->_sizeCache.__begin_;
  }

  v3.receiver = self;
  v3.super_class = NUISizeCache;
  [(NUISizeCache *)&v3 dealloc];
}

- (BOOL)getSize:(CGSize *)a3 forTargetSize:(CGSize)a4 isSizeDependentOnPerpendicularAxis:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  if (self->_threadSafe)
  {
    objc_sync_enter(self);
    v14.width = width;
    v14.height = height;
    size = nui_size_cache::find_size(&self->_sizeCache, v14, a5, a3);
    objc_sync_exit(self);
    return size;
  }

  else
  {
    p_sizeCache = &self->_sizeCache;

    return nui_size_cache::find_size(p_sizeCache, a4, a5, a3);
  }
}

- (void)insertSize:(CGSize)a3 forTargetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  if (self->_threadSafe)
  {
    objc_sync_enter(self);
    v15.width = width;
    v15.height = height;
    v16.width = v7;
    v16.height = v6;
    nui_size_cache::insert_size(&self->_sizeCache, v15, v16);

    objc_sync_exit(self);
  }

  else
  {
    p_sizeCache = &self->_sizeCache;
    v10 = a4.width;
    v11 = a4.height;
    v12 = v7;
    v13 = v6;

    nui_size_cache::insert_size(p_sizeCache, *&v10, *&v12);
  }
}

- (void)invalidateCache
{
  if (self->_threadSafe)
  {
    objc_sync_enter(self);
    self->_sizeCache.__end_ = self->_sizeCache.__begin_;

    objc_sync_exit(self);
  }

  else
  {
    self->_sizeCache.__end_ = self->_sizeCache.__begin_;
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end