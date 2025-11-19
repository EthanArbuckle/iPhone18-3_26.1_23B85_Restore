@interface BCUIMappedImageCache
+ (id)sharedCache;
@end

@implementation BCUIMappedImageCache

+ (id)sharedCache
{
  if (sharedCache___once != -1)
  {
    +[BCUIMappedImageCache sharedCache];
  }

  v3 = sharedCache___cache;

  return v3;
}

uint64_t __35__BCUIMappedImageCache_sharedCache__block_invoke()
{
  v0 = [[BCUIMappedImageCache alloc] initWithUniqueIdentifier:@"BCUIMappedImageCache"];
  v1 = sharedCache___cache;
  sharedCache___cache = v0;

  v2 = sharedCache___cache;

  return [v2 removeAllImagesWithCompletion:0];
}

@end