@interface PhotosAppSpec
+ (id)specForIdiom:(int64_t)a3;
@end

@implementation PhotosAppSpec

+ (id)specForIdiom:(int64_t)a3
{
  if (!a3)
  {
    v4 = &off_100058B58;
LABEL_5:
    v5 = objc_alloc_init(*v4);

    return v5;
  }

  if (a3 == 1)
  {
    v4 = off_100058B50;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

@end