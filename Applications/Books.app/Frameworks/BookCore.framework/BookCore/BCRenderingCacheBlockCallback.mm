@interface BCRenderingCacheBlockCallback
- (BCRenderingCacheBlockCallback)initWithCompletion:(id)a3;
- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4;
@end

@implementation BCRenderingCacheBlockCallback

- (BCRenderingCacheBlockCallback)initWithCompletion:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BCRenderingCacheBlockCallback;
  v5 = [(BCRenderingCacheBlockCallback *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BCRenderingCacheBlockCallback *)v5 setCompletion:v4];
  }

  return v6;
}

- (void)renderingCacheCallbackImage:(id)a3 context:(id)a4
{
  v7 = a3;
  v5 = [(BCRenderingCacheBlockCallback *)self completion];
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
  }

  [(BCRenderingCacheBlockCallback *)self setCompletion:0];
}

@end