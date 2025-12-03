@interface NUISizeCache
- (BOOL)getSize:(CGSize *)size forTargetSize:(CGSize)targetSize isSizeDependentOnPerpendicularAxis:(BOOL)axis;
- (id).cxx_construct;
- (id)initForAsynchronousAccess:(BOOL)access;
- (void)dealloc;
- (void)insertSize:(CGSize)size forTargetSize:(CGSize)targetSize;
- (void)invalidateCache;
@end

@implementation NUISizeCache

- (id)initForAsynchronousAccess:(BOOL)access
{
  v5.receiver = self;
  v5.super_class = NUISizeCache;
  result = [(NUISizeCache *)&v5 init];
  if (result)
  {
    *(result + 32) = access;
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

- (BOOL)getSize:(CGSize *)size forTargetSize:(CGSize)targetSize isSizeDependentOnPerpendicularAxis:(BOOL)axis
{
  height = targetSize.height;
  width = targetSize.width;
  if (self->_threadSafe)
  {
    objc_sync_enter(self);
    v14.width = width;
    v14.height = height;
    size = nui_size_cache::find_size(&self->_sizeCache, v14, axis, size);
    objc_sync_exit(self);
    return size;
  }

  else
  {
    p_sizeCache = &self->_sizeCache;

    return nui_size_cache::find_size(p_sizeCache, targetSize, axis, size);
  }
}

- (void)insertSize:(CGSize)size forTargetSize:(CGSize)targetSize
{
  height = targetSize.height;
  width = targetSize.width;
  v6 = size.height;
  v7 = size.width;
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
    v10 = targetSize.width;
    v11 = targetSize.height;
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