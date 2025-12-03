@interface AMSUIDHomeScreenIcons
+ (CGSize)size;
+ (double)cornerRadius;
+ (double)scaledCornerRadiusForSize:(CGSize)size;
+ (int)variant;
@end

@implementation AMSUIDHomeScreenIcons

+ (double)cornerRadius
{
  variant = [self variant];

  MEMORY[0x1EEE1E2A0](variant);
  return result;
}

+ (CGSize)size
{
  variant = [self variant];

  MEMORY[0x1EEE1E2B0](variant);
  result.height = v4;
  result.width = v3;
  return result;
}

+ (double)scaledCornerRadiusForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [self size];
  v7 = v6;
  v9 = v8;
  [self cornerRadius];
  v11 = height / v9;
  if (width > height)
  {
    v11 = width / v7;
  }

  return v10 * v11;
}

+ (int)variant
{
  if (qword_1EC43C8B8 != -1)
  {
    dispatch_once(&qword_1EC43C8B8, &__block_literal_global);
  }

  return _MergedGlobals;
}

uint64_t __32__AMSUIDHomeScreenIcons_variant__block_invoke()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 scale];
  v2 = v1;

  v4 = v2;
  result = [MEMORY[0x1E69DCAB8] _iconVariantForUIApplicationIconFormat:2 scale:&v4];
  _MergedGlobals = result;
  return result;
}

@end