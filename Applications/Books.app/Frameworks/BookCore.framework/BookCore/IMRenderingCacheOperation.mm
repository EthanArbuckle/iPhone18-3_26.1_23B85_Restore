@interface IMRenderingCacheOperation
- (CGSize)desiredSize;
- (IMRenderingCache)imageCache;
- (IMRenderingCacheOperation)initWithOptions:(int64_t)options;
- (SEL)selector;
- (id)description;
- (id)renderingCacheCallbackInvocationWithImage:(id)image pageNumber:(int64_t)number;
- (id)target;
- (void)cancel;
- (void)clearCallbackState;
- (void)dealloc;
- (void)main;
- (void)performCallbackWithImage:(id)image;
- (void)performOperation;
- (void)setSelector:(SEL)selector;
- (void)storeImage:(id)image forKey:(id)key size:(CGSize)size;
@end

@implementation IMRenderingCacheOperation

- (IMRenderingCacheOperation)initWithOptions:(int64_t)options
{
  v7.receiver = self;
  v7.super_class = IMRenderingCacheOperation;
  v4 = [(IMRenderingCacheOperation *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(IMRenderingCacheOperation *)v4 setSerializeFormat:1];
    v5->_options = options;
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

- (id)renderingCacheCallbackInvocationWithImage:(id)image pageNumber:(int64_t)number
{
  imageCopy = image;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  target = [(IMRenderingCacheOperation *)selfCopy target];
  selector = [(IMRenderingCacheOperation *)selfCopy selector];
  context = [(IMRenderingCacheOperation *)selfCopy context];
  objc_sync_exit(selfCopy);

  v11 = 0;
  if (target && selector)
  {
    v12 = [[AEBookRenderingCallbackTargetProxy alloc] initWithTarget:target];
    numberCopy = number;
    v13 = [target methodSignatureForSelector:selector];
    numberOfArguments = [v13 numberOfArguments];
    v11 = [NSInvocation invocationWithMethodSignature:v13];
    [v11 setSelector:selector];
    [v11 setTarget:v12];
    v17 = imageCopy;
    [v11 setArgument:&v17 atIndex:2];
    if (numberOfArguments - 2 >= 2)
    {
      v16 = context;
      [v11 setArgument:&v16 atIndex:3];
      if (numberOfArguments != &dword_4)
      {
        [v11 setArgument:&numberCopy atIndex:4];
      }
    }

    [v11 retainArguments];

    context = 0;
    target = 0;
  }

  return v11;
}

- (void)storeImage:(id)image forKey:(id)key size:(CGSize)size
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  imageCopy = image;
  imageCache = [(IMRenderingCacheOperation *)self imageCache];
  [imageCache storeImage:imageCopy forKey:keyCopy size:-[IMRenderingCacheOperation serializeFormat](self format:{"serializeFormat"), width, height}];
}

- (void)performOperation
{
  if (([(IMRenderingCacheOperation *)self isCancelled]& 1) != 0)
  {
    return;
  }

  target = [(IMRenderingCacheOperation *)self target];

  imageCache = [(IMRenderingCacheOperation *)self imageCache];
  storageKey = [(IMRenderingCacheOperation *)self storageKey];

  if (storageKey)
  {
    storageKey2 = [(IMRenderingCacheOperation *)self storageKey];
    if (target)
    {
      v24 = [imageCache fetchImageForKey:storageKey2];

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
      [imageCache primaryImageSize];
      v11 = v9;
      v12 = v10;
      v13 = v9 == CGSizeZero.width && v10 == CGSizeZero.height;
      if (v13 || ((p_desiredSize = &self->_desiredSize, self->_desiredSize.width == v9) ? (v15 = self->_desiredSize.height == v10) : (v15 = 0), v15 || (-[IMRenderingCacheOperation masterImageKey](self, "masterImageKey"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 length], v16, !v17) || p_desiredSize->width > v11 || self->_desiredSize.height > v12))
      {
        v24 = [(IMRenderingCacheOperation *)self generateImage:self->_desiredSize.width, self->_desiredSize.height];
        storageKey3 = [(IMRenderingCacheOperation *)self storageKey];
        width = self->_desiredSize.width;
        height = self->_desiredSize.height;
      }

      else
      {
        masterImageKey = [(IMRenderingCacheOperation *)self masterImageKey];
        v22 = [imageCache fetchImageForKey:masterImageKey canAcceptSurfaceBacked:0];

        if (!v22)
        {
          v22 = [(IMRenderingCacheOperation *)self generateImage:v11, v12];
          masterImageKey2 = [(IMRenderingCacheOperation *)self masterImageKey];
          [(IMRenderingCacheOperation *)self storeImage:v22 forKey:masterImageKey2 size:v11, v12];
        }

        v24 = [IMThumbnailUtilities scaleImage:v22 toSize:[(IMRenderingCacheOperation *)self options] options:self->_desiredSize.width, self->_desiredSize.height];

        storageKey3 = [(IMRenderingCacheOperation *)self storageKey];
        width = p_desiredSize->width;
        height = self->_desiredSize.height;
      }

      [(IMRenderingCacheOperation *)self storeImage:v24 forKey:storageKey3 size:width, height];

      goto LABEL_22;
    }

    v8 = [imageCache hasImageForKey:storageKey2];

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

- (void)performCallbackWithImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_target);
  if (!WeakRetained || !selfCopy->_selector)
  {

    objc_sync_exit(selfCopy);
    goto LABEL_9;
  }

  objc_sync_exit(selfCopy);
  if (([(IMRenderingCacheOperation *)selfCopy isCancelled]& 1) == 0)
  {
    v6 = +[NSThread isMainThread];
    v7 = [(IMRenderingCacheOperation *)selfCopy callbackInvocationWithImage:imageCopy];
    selfCopy = v7;
    if ((v6 & 1) == 0)
    {
      [(IMRenderingCacheOperation *)v7 performSelectorOnMainThread:"invoke" withObject:0 waitUntilDone:1];
      goto LABEL_14;
    }

    if (v7)
    {
      [(IMRenderingCacheOperation *)v7 invoke];
LABEL_14:
      [(IMRenderingCacheOperation *)selfCopy setTarget:0];
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

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
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