@interface MKLinkPreviewSnapshot
+ (CGSize)size;
@end

@implementation MKLinkPreviewSnapshot

+ (CGSize)size
{
  if (size_onceToken != -1)
  {
    dispatch_once(&size_onceToken, &__block_literal_global_43173);
  }

  v2 = *&size_size_0;
  v3 = *&size_size_1;
  result.height = v3;
  result.width = v2;
  return result;
}

@end