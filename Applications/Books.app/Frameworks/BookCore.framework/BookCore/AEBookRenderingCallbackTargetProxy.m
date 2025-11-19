@interface AEBookRenderingCallbackTargetProxy
- (AEBookRenderingCallbackTargetProxy)initWithTarget:(id)a3;
- (IMRenderingCacheCallback)target;
- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4;
- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4 pageNumber:(int64_t)a5;
@end

@implementation AEBookRenderingCallbackTargetProxy

- (AEBookRenderingCallbackTargetProxy)initWithTarget:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AEBookRenderingCallbackTargetProxy;
  v5 = [(AEBookRenderingCallbackTargetProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, v4);
  }

  return v6;
}

- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained renderingCacheCallbackImage:v7 context:v6];
}

- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4 pageNumber:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained renderingCacheCallbackImage:v9 context:v8 pageNumber:a5];
}

- (IMRenderingCacheCallback)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end