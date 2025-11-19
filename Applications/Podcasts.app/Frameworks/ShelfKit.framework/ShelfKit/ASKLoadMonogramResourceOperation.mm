@interface ASKLoadMonogramResourceOperation
- (ASKLoadMonogramResourceOperation)initWithMonogramResourceURL:(id)a3 size:(CGSize)a4;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (BOOL)isRTL;
- (void)start;
@end

@implementation ASKLoadMonogramResourceOperation

- (ASKLoadMonogramResourceOperation)initWithMonogramResourceURL:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ASKLoadMonogramResourceOperation;
  v8 = [(ASKLoadMonogramResourceOperation *)&v12 init];
  if (v8)
  {
    v9 = [MTMonogramConfig monogramWithURL:v7];
    [(ASKLoadMonogramResourceOperation *)v8 setMonogramConfig:v9];

    v10 = [(ASKLoadMonogramResourceOperation *)v8 monogramConfig];
    [v10 setSize:{width, height}];
  }

  return v8;
}

- (BOOL)isExecuting
{
  v3 = [(ASKLoadMonogramResourceOperation *)self isRendering];
  if (v3)
  {
    LOBYTE(v3) = [(ASKLoadMonogramResourceOperation *)self isCancelled]^ 1;
  }

  return v3;
}

- (BOOL)isFinished
{
  if (![(ASKLoadMonogramResourceOperation *)self isRendering])
  {
    return 1;
  }

  return [(ASKLoadMonogramResourceOperation *)self isCancelled];
}

- (BOOL)isRTL
{
  v2 = +[NSLocale preferredLanguages];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [NSLocale characterDirectionForLanguage:v3]== &dword_0 + 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)start
{
  v3 = [(ASKLoadMonogramResourceOperation *)self monogramConfig];
  if (v3 && ![(ASKLoadMonogramResourceOperation *)self isCancelled])
  {
    v4 = [(ASKLoadMonogramResourceOperation *)self monogramConfig];
    v5 = [v4 formattedValue];

    if (v5)
    {
      [(ASKLoadMonogramResourceOperation *)self setIsRendering:1];
      v6 = [CNAvatarImageRenderer alloc];
      v7 = +[CNAvatarImageRendererSettings defaultSettings];
      v8 = [v6 initWithSettings:v7];

      v9 = [(ASKLoadMonogramResourceOperation *)self monogramConfig];
      [v9 size];
      v12 = [CNAvatarImageRenderingScope scopeWithPointSize:[(ASKLoadMonogramResourceOperation *)self isRTL] scale:0 rightToLeft:v10 style:v11, 1.0];

      objc_initWeak(&location, self);
      v13 = [(ASKLoadMonogramResourceOperation *)self monogramConfig];
      v14 = [v13 formattedValue];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __41__ASKLoadMonogramResourceOperation_start__block_invoke;
      v16[3] = &unk_4AF400;
      objc_copyWeak(&v17, &location);
      v15 = [v8 renderMonogramForString:v14 scope:v12 imageHandler:v16];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);

      return;
    }
  }

  else
  {
  }

  [(ASKLoadMonogramResourceOperation *)self setIsRendering:0];
}

void __41__ASKLoadMonogramResourceOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __41__ASKLoadMonogramResourceOperation_start__block_invoke_2;
  v5[3] = &unk_4AF3D8;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void __41__ASKLoadMonogramResourceOperation_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained didCompleteWithResource:*(a1 + 32) error:0];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setIsRendering:0];
}

@end