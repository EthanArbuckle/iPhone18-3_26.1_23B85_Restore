@interface AEBookRenderingCallbackTargetProxy
- (AEBookRenderingCallbackTargetProxy)initWithTarget:(id)target;
- (IMRenderingCacheCallback)target;
- (void)renderingCacheCallbackImage:(id)image context:(id)context;
- (void)renderingCacheCallbackImage:(id)image context:(id)context pageNumber:(int64_t)number;
@end

@implementation AEBookRenderingCallbackTargetProxy

- (AEBookRenderingCallbackTargetProxy)initWithTarget:(id)target
{
  targetCopy = target;
  v8.receiver = self;
  v8.super_class = AEBookRenderingCallbackTargetProxy;
  v5 = [(AEBookRenderingCallbackTargetProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, targetCopy);
  }

  return v6;
}

- (void)renderingCacheCallbackImage:(id)image context:(id)context
{
  contextCopy = context;
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained renderingCacheCallbackImage:imageCopy context:contextCopy];
}

- (void)renderingCacheCallbackImage:(id)image context:(id)context pageNumber:(int64_t)number
{
  contextCopy = context;
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [WeakRetained renderingCacheCallbackImage:imageCopy context:contextCopy pageNumber:number];
}

- (IMRenderingCacheCallback)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end