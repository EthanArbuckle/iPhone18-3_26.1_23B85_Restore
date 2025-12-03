@interface BCRenderingCacheBlockCallback
- (BCRenderingCacheBlockCallback)initWithCompletion:(id)completion;
- (void)renderingCacheCallbackImage:(id)image context:(id)context;
@end

@implementation BCRenderingCacheBlockCallback

- (BCRenderingCacheBlockCallback)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v8.receiver = self;
  v8.super_class = BCRenderingCacheBlockCallback;
  v5 = [(BCRenderingCacheBlockCallback *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BCRenderingCacheBlockCallback *)v5 setCompletion:completionCopy];
  }

  return v6;
}

- (void)renderingCacheCallbackImage:(id)image context:(id)context
{
  imageCopy = image;
  completion = [(BCRenderingCacheBlockCallback *)self completion];
  v6 = completion;
  if (completion)
  {
    (*(completion + 16))(completion, imageCopy);
  }

  [(BCRenderingCacheBlockCallback *)self setCompletion:0];
}

@end