@interface PhotosAppSpec
+ (id)specForIdiom:(int64_t)idiom;
@end

@implementation PhotosAppSpec

+ (id)specForIdiom:(int64_t)idiom
{
  if (!idiom)
  {
    v4 = &off_100058B58;
LABEL_5:
    v5 = objc_alloc_init(*v4);

    return v5;
  }

  if (idiom == 1)
  {
    v4 = off_100058B50;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end