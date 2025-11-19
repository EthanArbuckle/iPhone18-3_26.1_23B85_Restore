@interface CoreTextGraphicsContextProvider
+ (id)sharedProvider;
- (CGContext)CGContext;
- (void)restoreGraphicsState;
- (void)saveGraphicsState;
@end

@implementation CoreTextGraphicsContextProvider

+ (id)sharedProvider
{
  if (sharedProvider_once != -1)
  {
    +[CoreTextGraphicsContextProvider sharedProvider];
  }

  return sharedProvider_sharedPvdr;
}

uint64_t __49__CoreTextGraphicsContextProvider_sharedProvider__block_invoke()
{
  sharedProvider_sharedPvdr = objc_alloc_init(CoreTextGraphicsContextProvider);
  v0 = MEMORY[0x1E69DB818];
  v1 = objc_opt_class();

  return [v0 setTextGraphicsContextProviderClass:v1];
}

- (CGContext)CGContext
{
  v2 = +[CoreGraphicsContext current];

  return [(CoreGraphicsContext *)v2 CGContext];
}

- (void)saveGraphicsState
{
  v2 = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (v2)
  {

    CGContextSaveGState(v2);
  }
}

- (void)restoreGraphicsState
{
  v2 = [+[CoreGraphicsContext current](CoreGraphicsContext CGContext];
  if (v2)
  {

    CGContextRestoreGState(v2);
  }
}

@end