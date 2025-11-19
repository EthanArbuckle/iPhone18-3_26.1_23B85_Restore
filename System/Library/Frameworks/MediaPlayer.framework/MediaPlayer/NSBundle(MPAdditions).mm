@interface NSBundle(MPAdditions)
+ (id)mediaPlayerBundle;
@end

@implementation NSBundle(MPAdditions)

+ (id)mediaPlayerBundle
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__NSBundle_MPAdditions__mediaPlayerBundle__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a1;
  if (mediaPlayerBundle___once != -1)
  {
    dispatch_once(&mediaPlayerBundle___once, v4);
  }

  v2 = mediaPlayerBundle___mediaPlayerBundle;

  return v2;
}

@end