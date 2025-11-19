@interface IMRenderingCacheOperation
- (CGSize)desiredSize;
- (IMRenderingCache)imageCache;
- (IMRenderingCacheOperation)initWithOptions:(int64_t)a3;
- (SEL)selector;
- (id)description;
- (id)renderingCacheCallbackInvocationWithImage:(id)a3 pageNumber:(int64_t)a4;
- (id)target;
- (void)cancel;
- (void)clearCallbackState;
- (void)dealloc;
- (void)main;
- (void)performCallbackWithImage:(id)a3;
- (void)performOperation;
- (void)setSelector:(SEL)a3;
- (void)storeImage:(id)a3 forKey:(id)a4 size:(CGSize)a5;
@end

@implementation IMRenderingCacheOperation

- (IMRenderingCacheOperation)initWithOptions:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = IMRenderingCacheOperation;
  v4 = [(IMRenderingCacheOperation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IMRenderingCacheOperation *)v4 setSerializeFormat:1];
    v5->_options = a3;
  }

  return v5;
}

- (void)dealloc
{
  [(IMRenderingCacheOperation *)self clearCallbackState];
  v3.receiver = self;
  v3.super_class = IMRenderingCacheOperation;
  [(IMRenderingCacheOperation *)&v3 dealloc];
}

- (void)clearCallbackState
{
  obj = self;
  objc_sync_enter(obj);
  objc_storeWeak(&obj->_target, 0);
  obj->_selector = 0;
  context = obj->_context;
  obj->_context = 0;

  objc_sync_exit(obj);
}

- (void)cancel
{
  [(IMRenderingCacheOperation *)self clearCallbackState];
  v3.receiver = self;
  v3.super_class = IMRenderingCacheOperation;
  [(IMRenderingCacheOperation *)&v3 cancel];
}

- (id)renderingCacheCallbackInvocationWithImage:(id)a3 pageNumber:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(IMRenderingCacheOperation *)v7 target];
  v9 = [(IMRenderingCacheOperation *)v7 selector];
  v10 = [(IMRenderingCacheOperation *)v7 context];
  objc_sync_exit(v7);

  v11 = 0;
  if (v8 && v9)
  {
    v12 = [[AEBookRenderingCallbackTargetProxy alloc] initWithTarget:v8];
    v18 = a4;
    v13 = [v8 methodSignatureForSelector:v9];
    v14 = [v13 numberOfArguments];
    v11 = [NSInvocation invocationWithMethodSignature:v13];
    [v11 setSelector:v9];
    [v11 setTarget:v12];
    v17 = v6;
    [v11 setArgument:&v17 atIndex:2];
    if (v14 - 2 >= 2)
    {
      v16 = v10;
      [v11 setArgument:&v16 atIndex:3];
      if (v14 != &dword_4)
      {
        [v11 setArgument:&v18 atIndex:4];
      }
    }

    [v11 retainArguments];

    v10 = 0;
    v8 = 0;
  }

  return v11;
}

- (void)storeImage:(id)a3 forKey:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = a3;
  v11 = [(IMRenderingCacheOperation *)self imageCache];
  [v11 storeImage:v10 forKey:v9 size:-[IMRenderingCacheOperation serializeFormat](self format:{"serializeFormat"), width, height}];
}

- (void)performOperation
{
  if (([(IMRenderingCacheOperation *)self isCancelled]& 1) != 0)
  {
    return;
  }

  v3 = [(IMRenderingCacheOperation *)self target];

  v4 = [(IMRenderingCacheOperation *)self imageCache];
  v5 = [(IMRenderingCacheOperation *)self storageKey];

  if (v5)
  {
    v6 = [(IMRenderingCacheOperation *)self storageKey];
    if (v3)
    {
      v24 = [v4 fetchImageForKey:v6];

      if (v24)
      {
LABEL_22:
        if (([(IMRenderingCacheOperation *)self isCancelled]& 1) == 0)
        {
          [(IMRenderingCacheOperation *)self performCallbackWithImage:v24];
        }

        goto LABEL_24;
      }

LABEL_9:
      [v4 primaryImageSize];
      v11 = v9;
      v12 = v10;
      v13 = v9 == CGSizeZero.width && v10 == CGSizeZero.height;
      if (v13 || ((p_desiredSize = &self->_desiredSize, self->_desiredSize.width == v9) ? (v15 = self->_desiredSize.height == v10) : (v15 = 0), v15 || (-[IMRenderingCacheOperation masterImageKey](self, "masterImageKey"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 length], v16, !v17) || p_desiredSize->width > v11 || self->_desiredSize.height > v12))
      {
        v24 = [(IMRenderingCacheOperation *)self generateImage:self->_desiredSize.width, self->_desiredSize.height];
        v18 = [(IMRenderingCacheOperation *)self storageKey];
        width = self->_desiredSize.width;
        height = self->_desiredSize.height;
      }

      else
      {
        v21 = [(IMRenderingCacheOperation *)self masterImageKey];
        v22 = [v4 fetchImageForKey:v21 canAcceptSurfaceBacked:0];

        if (!v22)
        {
          v22 = [(IMRenderingCacheOperation *)self generateImage:v11, v12];
          v23 = [(IMRenderingCacheOperation *)self masterImageKey];
          [(IMRenderingCacheOperation *)self storeImage:v22 forKey:v23 size:v11, v12];
        }

        v24 = [IMThumbnailUtilities scaleImage:v22 toSize:[(IMRenderingCacheOperation *)self options] options:self->_desiredSize.width, self->_desiredSize.height];

        v18 = [(IMRenderingCacheOperation *)self storageKey];
        width = p_desiredSize->width;
        height = self->_desiredSize.height;
      }

      [(IMRenderingCacheOperation *)self storeImage:v24 forKey:v18 size:width, height];

      goto LABEL_22;
    }

    v8 = [v4 hasImageForKey:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(IMRenderingCacheOperation *)self desiredSize];
    v7 = [(IMRenderingCacheOperation *)self generateImage:?];
  }

  v24 = 0;
LABEL_24:
}

- (void)performCallbackWithImage:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  WeakRetained = objc_loadWeakRetained(&v4->_target);
  if (!WeakRetained || !v4->_selector)
  {

    objc_sync_exit(v4);
    goto LABEL_9;
  }

  objc_sync_exit(v4);
  if (([(IMRenderingCacheOperation *)v4 isCancelled]& 1) == 0)
  {
    v6 = +[NSThread isMainThread];
    v7 = [(IMRenderingCacheOperation *)v4 callbackInvocationWithImage:v8];
    v4 = v7;
    if ((v6 & 1) == 0)
    {
      [(IMRenderingCacheOperation *)v7 performSelectorOnMainThread:"invoke" withObject:0 waitUntilDone:1];
      goto LABEL_14;
    }

    if (v7)
    {
      [(IMRenderingCacheOperation *)v7 invoke];
LABEL_14:
      [(IMRenderingCacheOperation *)v4 setTarget:0];
    }

LABEL_9:
  }
}

- (void)main
{
  if (([(IMRenderingCacheOperation *)self isCancelled]& 1) == 0)
  {
    v3 = objc_autoreleasePoolPush();
    [(IMRenderingCacheOperation *)self performOperation];

    objc_autoreleasePoolPop(v3);
  }
}

- (id)description
{
  v3 = objc_opt_class();
  assetID = self->_assetID;
  storageKey = self->_storageKey;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  context = self->_context;
  v8 = NSStringFromCGSize(self->_desiredSize);
  v9 = [NSString stringWithFormat:@"<%@: %p> [AssetID: %@] [Key: %@] [Target: %p %p] [Size: %@]", v3, self, assetID, storageKey, WeakRetained, context, v8];;

  return v9;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_selector = v3;
}

- (CGSize)desiredSize
{
  width = self->_desiredSize.width;
  height = self->_desiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (IMRenderingCache)imageCache
{
  WeakRetained = objc_loadWeakRetained(&self->_imageCache);

  return WeakRetained;
}

@end